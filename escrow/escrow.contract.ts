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
  const MSG_CONTRACT = Name.fromString("xtokens");
  const MSG_SYMBOL = new Symbol("FOOBAR", 6);
  return new ExtendedAsset(new Asset(1, MSG_SYMBOL), MSG_CONTRACT);
}

// for real
// function GetMsgInterface(): ExtendedAsset {
//   const MSG_CONTRACT = Name.fromString("realestatese");
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
  feeReceiver: Name = Name.fromString("escrowtest1");

  // for real net
  // feeReceiver: Name = Name.fromString("escrowfees");
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
