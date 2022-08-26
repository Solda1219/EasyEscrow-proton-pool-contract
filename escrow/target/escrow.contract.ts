import * as _escrow_tables from './escrow.tables';
import * as _chain from "as-chain";
import {
  currentTimePoint,
  ExtendedAsset,
  Name,
  check,
  requireAuth,
  isAccount,
  TableStore,
  Singleton,
  EMPTY_NAME,
  Asset,
  SafeMath,
  Symbol,
} from "proton-tsc";
import { BalanceContract } from "proton-tsc/balance";
import { ESCROW_STATUS, sendLogEscrow } from "./escrow.inline";
import { EscrowGlobal, Escrow, Fee } from "./escrow.tables";

// for test net
function GetMsgInterface(): ExtendedAsset {
  const MSG_CONTRACT = Name.fromU64(0xEE69054F00000000);
  const MSG_SYMBOL = new Symbol("FOOBAR", 6);
  return new ExtendedAsset(new Asset(1, MSG_SYMBOL), MSG_CONTRACT);
}

// for real
// function GetMsgInterface(): ExtendedAsset {
//   const MSG_CONTRACT = Name.fromU64(0xBA8D156326CAB0A0);
//   const MSG_SYMBOL = new Symbol("MESSAGE", 4);
//   return new ExtendedAsset(new Asset(1, MSG_SYMBOL), MSG_CONTRACT);
// }

function GetPoolQuantity(
  fromToken: ExtendedAsset,
  winnerCount: u64
): ExtendedAsset {
  const CONTRACT = fromToken.contract;
  const amount: u64 = u64(
    SafeMath.div(<u64>fromToken.quantity.amount, <u64>winnerCount)
  );
  const SYMBOL = fromToken.quantity.symbol;
  return new ExtendedAsset(new Asset(amount, SYMBOL), CONTRACT);
}

function GetTotalQuantity(
  fromToken: ExtendedAsset,
  contesters: u64
): ExtendedAsset {
  const CONTRACT = fromToken.contract;
  const amount: u64 = fromToken.quantity.amount * (contesters + 1);
  const SYMBOL = fromToken.quantity.symbol;
  return new ExtendedAsset(new Asset(amount, SYMBOL), CONTRACT);
}

@contract
export class escrow extends BalanceContract {
  escrowsTable: TableStore<Escrow> = new TableStore<Escrow>(this.receiver);
  feeTable: TableStore<Fee> = new TableStore<Fee>(this.receiver);
  escrowGlobalSingleton: Singleton<EscrowGlobal> = new Singleton<EscrowGlobal>(
    this.receiver
  );
  //declare fee receiver
  //for test net
  feeReceiver: Name = Name.fromU64(0x56117A732AC64200);

  // for real net
  // feeReceiver: Name = Name.fromU64(0x56117A716A560000);
  @action("setfee")
  setfee(feeId: u64, feeVal: ExtendedAsset): void {
    //only this contract owner can call this action
    requireAuth(this.receiver);
    // Get Fee
    const fee = new Fee(feeId, feeVal);
    this.feeTable.set(fee, this.contract);
  }
  /**
   * It creates an escrow.
   * @param {Name} from - Name,
   * @param {Name[]} contesters - Name[],
   * @param {ExtendedAsset[]} fromTokens - ExtendedAsset[],
   * @param {u64[]} fromNfts - u64[]
   * @param {u32} expiry - u32
   */
  @action("startpool")
  startpool(
    from: Name,
    contesters: Name[],
    fromTokens: ExtendedAsset[],
    fromNfts: u64[],
    expiry: u32
  ): void {
    // Authenticate
    requireAuth(from);

    // Pre-conditions
    this.checkContractIsNotPaused();
    const fetchedFee = this.feeTable.get(0);

    if (!fetchedFee) {
      check(false, "Fee doesn't set");
      return; // just for intellisense
    }
    const feeVal = fetchedFee.feeVal;
    // Substract balances to see if user pays fee
    this.substractBalance(from, [feeVal], fromNfts);
    // Substract balances check if they invest money to our contract
    this.substractBalance(from, fromTokens, fromNfts);
    // check(
    //   expiry > currentTimePoint().secSinceEpoch(),
    //   "expiry must be in future"
    // );
    check(
      fromTokens.length || fromNfts.length,
      "must escrow at least one token or NFT on a side"
    );

    // Get and update config
    const escrowGlobal = this.escrowGlobalSingleton.get();
    const escrowId = escrowGlobal.escrowId++;
    this.escrowGlobalSingleton.set(escrowGlobal, this.contract);

    // Create escrow object
    const escrow = new Escrow(
      escrowId,
      from,
      contesters,
      fromTokens,
      fromNfts,
      expiry
    );
    // Save escrow
    this.escrowsTable.store(escrow, this.contract);
    const newPriceQuantity = GetMsgInterface();
    let memo = `You have initiated a pool. Please send this url to invite your friends to participate this pool: https://easyescrow.io/escrow/pool/${escrowId}`;
    this.withdrawAdmin(from, [newPriceQuantity], [], memo);
    // Log
    sendLogEscrow(this.contract, escrow, ESCROW_STATUS.START);
  }

  /**
   * It fills an escrow.
   * @param {Name} actor - Name,
   * @param {u64} id - u64
   */
  @action("partakepool")
  partakepool(actor: Name, id: u64): void {
    // Authenticate
    requireAuth(actor);

    // Pre-conditions
    this.checkContractIsNotPaused();

    // Get Escrow
    const escrow = this.escrowsTable.requireGet(
      id,
      `no escrow with ID ${id} found.`
    );
    const fetchedFee = this.feeTable.get(0);

    if (!fetchedFee) {
      check(false, "Fee doesn't set");
      return; // just for intellisense
    }
    const feeVal = fetchedFee.feeVal;
    // Substract balances to see if user pays fee
    this.substractBalance(actor, [feeVal], []);
    // Substract balances check if they invest money to our contract
    this.substractBalance(actor, escrow.fromTokens, escrow.fromNfts);
    escrow.contesters.push(actor);
    const newEscrow = new Escrow(
      escrow.id,
      escrow.from,
      escrow.contesters,
      escrow.fromTokens,
      escrow.fromNfts,
      escrow.expiry
    );
    // Update escrow
    this.escrowsTable.set(newEscrow, this.contract);
  }
  /**
   * It cancels an escrow.
   * @param {u64} id - u64
   */
  @action("cancelpool")
  cancelpool(actor: Name, id: u64): void {
    // Authenticate
    requireAuth(actor);

    // Pre-conditions
    this.checkContractIsNotPaused();
    const fetchedFee = this.feeTable.get(0);

    if (!fetchedFee) {
      check(false, "Fee doesn't set");
      return; // just for intellisense
    }
    const feeVal = fetchedFee.feeVal;
    // Get Escrow
    const escrow = this.escrowsTable.requireGet(
      id,
      `no escrow with ID ${id} found.`
    );

    //if calling this cancel from pool creator
    if (actor == escrow.from) {
      // Erase
      this.escrowsTable.remove(escrow);
      this.withdrawAdmin(
        escrow.from,
        [feeVal],
        [],
        `Fee for Pool ${id} cancelled`
      );
      this.withdrawAdmin(
        escrow.from,
        escrow.fromTokens,
        escrow.fromNfts,
        `Pool escrow ${id} cancelled`
      );
      for (let i = 0; i < escrow.contesters.length; i++) {
        this.withdrawAdmin(
          escrow.contesters[i],
          [feeVal],
          [],
          `Fee for Pool ${id} cancelled`
        );
        this.withdrawAdmin(
          escrow.contesters[i],
          escrow.fromTokens,
          escrow.fromNfts,
          `Pool escrow ${id} cancelled`
        );
      }
      // Log
      sendLogEscrow(this.contract, escrow, ESCROW_STATUS.CANCEL);
    } else {
      let contesters: Name[] = [];
      for (let i = 0; i < escrow.contesters.length; i++) {
        if (escrow.contesters[i] != actor) {
          contesters.push(escrow.contesters[i]);
        } else if (escrow.contesters[i] == actor) {
          this.withdrawAdmin(
            escrow.contesters[i],
            [feeVal],
            [],
            `Fee for Pool ${id} cancelled`
          );
          this.withdrawAdmin(
            escrow.contesters[i],
            escrow.fromTokens,
            escrow.fromNfts,
            `Pool escrow ${id} cancelled`
          );
        }
      }
      const newEscrow = new Escrow(
        escrow.id,
        escrow.from,
        contesters,
        escrow.fromTokens,
        escrow.fromNfts,
        escrow.expiry
      );
      // Update escrow
      this.escrowsTable.set(newEscrow, this.contract);
    }

    // Log
    sendLogEscrow(this.contract, escrow, ESCROW_STATUS.CANCEL);
  }
  @action("fillpool")
  fillpool(from: Name, id: u64, winners: Name[]): void {
    requireAuth(from);
    this.checkContractIsNotPaused();
    check(winners.length > 0, "at least one winner should be provided");
    // Get Escrow
    const escrow = this.escrowsTable.requireGet(
      id,
      `no escrow with ID ${id} found.`
    );

    check(escrow.from == from, `only ${escrow.from} can fill this escrow`);

    const fetchedFee = this.feeTable.get(0);

    if (!fetchedFee) {
      check(false, "Fee doesn't set");
      return; // just for intellisense
    }
    const feeVal = fetchedFee.feeVal;
    for (let i = 0; i < escrow.contesters.length + 1; i++) {
      //Fee collecting
      this.withdrawAdmin(
        this.feeReceiver,
        [feeVal],
        [],
        `fee collected for escrow id ${id} for pool.`
      );
    }
    // Erase
    this.escrowsTable.remove(escrow);
    //to check if winners are in contesters.
    for (let i = 0; i < winners.length; i++) {
      check(
        escrow.contesters.includes(winners[i]) || winners[i] == escrow.from,
        `there is no escrowed for ${winners[i]} user!`
      );
    }
    let totalQuantity = GetTotalQuantity(
      escrow.fromTokens[0],
      escrow.contesters.length
    );
    let poolQuantity = GetPoolQuantity(totalQuantity, winners.length);
    for (let i = 0; i < winners.length; i++) {
      this.withdrawAdmin(
        winners[i],
        [poolQuantity],
        escrow.fromNfts,
        `Pool escrow ${id} completed`
      );
    }
    // Log
    sendLogEscrow(this.contract, escrow, ESCROW_STATUS.FILL);
  }
  /**
   * It logs the escrow and its status.
   * @param {escrow} escrow - The escrow object that is being updated.
   * @param {string} status - The status of the escrow.
   */
  @action("logescrow")
  logescrow(escrow: Escrow, status: string): void {
    requireAuth(this.contract);
  }
}


class setfeeAction implements _chain.Packer {
    constructor (
        public feeId: u64 = 0,
        public feeVal: _chain.ExtendedAsset | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.feeId);
        enc.pack(this.feeVal!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.feeId = dec.unpackNumber<u64>();
        
        {
            let obj = new _chain.ExtendedAsset();
            dec.unpack(obj);
            this.feeVal! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.feeVal!.getSize();
        return size;
    }
}

class startpoolAction implements _chain.Packer {
    constructor (
        public from: _chain.Name | null = null,
        public contesters: Array<_chain.Name> | null = null,
        public fromTokens: Array<_chain.ExtendedAsset> | null = null,
        public fromNfts: Array<u64> | null = null,
        public expiry: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from!);
        enc.packObjectArray(this.contesters!);
        enc.packObjectArray(this.fromTokens!);
        enc.packNumberArray<u64>(this.fromNfts!)
        enc.packNumber<u32>(this.expiry);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.from! = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.contesters! = new Array<_chain.Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.Name();
            this.contesters![i] = obj;
            dec.unpack(obj);
        }
    }

        
    {
        let length = <i32>dec.unpackLength();
        this.fromTokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.fromTokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.fromNfts! = dec.unpackNumberArray<u64>();
        this.expiry = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from!.getSize();
        size += _chain.calcPackedVarUint32Length(this.contesters!.length);
        for (let i=0; i<this.contesters!.length; i++) {
            size += this.contesters![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.fromTokens!.length);
        for (let i=0; i<this.fromTokens!.length; i++) {
            size += this.fromTokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.fromNfts!.length);size += sizeof<u64>()*this.fromNfts!.length;
        size += sizeof<u32>();
        return size;
    }
}

class partakepoolAction implements _chain.Packer {
    constructor (
        public actor: _chain.Name | null = null,
        public id: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor!);
        enc.packNumber<u64>(this.id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.actor! = obj;
        }
        this.id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

class cancelpoolAction implements _chain.Packer {
    constructor (
        public actor: _chain.Name | null = null,
        public id: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor!);
        enc.packNumber<u64>(this.id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.actor! = obj;
        }
        this.id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

class fillpoolAction implements _chain.Packer {
    constructor (
        public from: _chain.Name | null = null,
        public id: u64 = 0,
        public winners: Array<_chain.Name> | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from!);
        enc.packNumber<u64>(this.id);
        enc.packObjectArray(this.winners!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.from! = obj;
        }
        this.id = dec.unpackNumber<u64>();
        
    {
        let length = <i32>dec.unpackLength();
        this.winners! = new Array<_chain.Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.Name();
            this.winners![i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from!.getSize();
        size += sizeof<u64>();
        size += _chain.calcPackedVarUint32Length(this.winners!.length);
        for (let i=0; i<this.winners!.length; i++) {
            size += this.winners![i].getSize();
        }

        return size;
    }
}

class logescrowAction implements _chain.Packer {
    constructor (
        public escrow: _escrow_tables.Escrow | null = null,
        public status: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.escrow!);
        enc.packString(this.status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _escrow_tables.Escrow();
            dec.unpack(obj);
            this.escrow! = obj;
        }
        this.status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.escrow!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.status);
        return size;
    }
}

class transferAction implements _chain.Packer {
    constructor (
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        return size;
    }
}

class withdrawAction implements _chain.Packer {
    constructor (
        public actor: _chain.Name | null = null,
        public tokens: Array<_chain.ExtendedAsset> | null = null,
        public nfts: Array<u64> | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor!);
        enc.packObjectArray(this.tokens!);
        enc.packNumberArray<u64>(this.nfts!)
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.actor! = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.tokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.tokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.nfts! = dec.unpackNumberArray<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor!.getSize();
        size += _chain.calcPackedVarUint32Length(this.tokens!.length);
        for (let i=0; i<this.tokens!.length; i++) {
            size += this.tokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.nfts!.length);size += sizeof<u64>()*this.nfts!.length;
        return size;
    }
}

class setglobalsAction implements _chain.Packer {
    constructor (
        public isPaused: boolean = 0,
        public isActorStrict: boolean = 0,
        public isTokenStrict: boolean = 0,
        public isTokensEnabled: boolean = 0,
        public isNftsEnabled: boolean = 0,
        public isContractsEnabled: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<boolean>(this.isPaused);
        enc.packNumber<boolean>(this.isActorStrict);
        enc.packNumber<boolean>(this.isTokenStrict);
        enc.packNumber<boolean>(this.isTokensEnabled);
        enc.packNumber<boolean>(this.isNftsEnabled);
        enc.packNumber<boolean>(this.isContractsEnabled);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.isPaused = dec.unpackNumber<boolean>();
        this.isActorStrict = dec.unpackNumber<boolean>();
        this.isTokenStrict = dec.unpackNumber<boolean>();
        this.isTokensEnabled = dec.unpackNumber<boolean>();
        this.isNftsEnabled = dec.unpackNumber<boolean>();
        this.isContractsEnabled = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }
}

class settokenAction implements _chain.Packer {
    constructor (
        public token: _chain.ExtendedSymbol | null = null,
        public isAllowed: boolean = 0,
        public isBlocked: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token!);
        enc.packNumber<boolean>(this.isAllowed);
        enc.packNumber<boolean>(this.isBlocked);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.ExtendedSymbol();
            dec.unpack(obj);
            this.token! = obj;
        }
        this.isAllowed = dec.unpackNumber<boolean>();
        this.isBlocked = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token!.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }
}

class setactorAction implements _chain.Packer {
    constructor (
        public actor: _chain.Name | null = null,
        public isAllowed: boolean = 0,
        public isBlocked: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor!);
        enc.packNumber<boolean>(this.isAllowed);
        enc.packNumber<boolean>(this.isBlocked);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.actor! = obj;
        }
        this.isAllowed = dec.unpackNumber<boolean>();
        this.isBlocked = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor!.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new escrow(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0xC2B2B52800000000) {//setfee
            const args = new setfeeAction();
            args.unpack(actionData);
            mycontract.setfee(args.feeId,args.feeVal!);
        }
		if (action == 0xC64D7CD694880000) {//startpool
            const args = new startpoolAction();
            args.unpack(actionData);
            mycontract.startpool(args.from!,args.contesters!,args.fromTokens!,args.fromNfts!,args.expiry);
        }
		if (action == 0xA9AF934155A52200) {//partakepool
            const args = new partakepoolAction();
            args.unpack(actionData);
            mycontract.partakepool(args.actor!,args.id);
        }
		if (action == 0x41A68546B4A44000) {//cancelpool
            const args = new cancelpoolAction();
            args.unpack(actionData);
            mycontract.cancelpool(args.actor!,args.id);
        }
		if (action == 0x5BA31AD291000000) {//fillpool
            const args = new fillpoolAction();
            args.unpack(actionData);
            mycontract.fillpool(args.from!,args.id,args.winners!);
        }
		if (action == 0x8D18AC22F4E00000) {//logescrow
            const args = new logescrowAction();
            args.unpack(actionData);
            mycontract.logescrow(args.escrow!,args.status);
        }
		
		if (action == 0xE3B2D4DCDC000000) {//withdraw
            const args = new withdrawAction();
            args.unpack(actionData);
            mycontract.withdraw(args.actor!,args.tokens!,args.nfts!);
        }
		if (action == 0xC2B2C8D0E68E0000) {//setglobals
            const args = new setglobalsAction();
            args.unpack(actionData);
            mycontract.setglobals(args.isPaused,args.isActorStrict,args.isTokenStrict,args.isTokensEnabled,args.isNftsEnabled,args.isContractsEnabled);
        }
		if (action == 0xC2B39A4153000000) {//settoken
            const args = new settokenAction();
            args.unpack(actionData);
            mycontract.settoken(args.token!,args.isAllowed,args.isBlocked);
        }
		if (action == 0xC2B2646697000000) {//setactor
            const args = new setactorAction();
            args.unpack(actionData);
            mycontract.setactor(args.actor!,args.isAllowed,args.isBlocked);
        }
	}
  
	if (receiver != firstReceiver) {
		if (action == 0xCDCD3C2D57000000) {//transfer
            const args = new transferAction();
            args.unpack(actionData);
            mycontract.transfer();
        }
	}
	return;
}
