import * as _chain from "as-chain";
import { Name, Table, ExtendedAsset, PermissionLevel, Asset, Symbol, InlineAction, ActionData, TableStore, EMPTY_NAME } from ".."

/**
 * Tables
 */


export class AccountDB extends _chain.MultiIndex<Account> {

}

@table("accounts", noabigen, nocodegen)

export class Account implements _chain.MultiIndexValue {
    
    constructor (
        public balance: Asset = new Asset()
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.balance.symbol.code();
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.balance);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.balance = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.balance.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x32114D4F38000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Account.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Account.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): AccountDB {
        return new AccountDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class StatDB extends _chain.MultiIndex<Stat> {

}

@table("stat", noabigen, nocodegen)

export class Stat implements _chain.MultiIndexValue {
    
    constructor (
       public supply: Asset = new Asset(),
       public max_supply: Asset =  new Asset(),
       public issuer: Name = EMPTY_NAME,
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.supply.symbol.code();
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.supply);
        enc.pack(this.max_supply);
        enc.pack(this.issuer);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.supply = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.max_supply = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.issuer = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.supply.getSize();
        size += this.max_supply.getSize();
        size += this.issuer.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC64D900000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Stat.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Stat.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): StatDB {
        return new StatDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}

/**
 * Helpers
 */
export function getSupply(tokenContractAccount: Name, sym: Symbol): Asset {
    const statstable = new TableStore<Stat>(tokenContractAccount, new Name(sym.code()));
    const st = statstable.requireGet(sym.code(), "token with symbol does not exist");
    return st.supply;
}

export function getBalance(tokenContractAccount: Name, owner: Name, sym: Symbol): Asset {
    const acnts = new TableStore<Account>(tokenContractAccount, owner)
    const ac = acnts.requireGet(sym.code(), "no balance object found");
    return ac.balance;
}



@packer(nocodegen)
export class Transfer implements _chain.Packer {
    
    constructor (
        public from: Name = EMPTY_NAME,
        public to: Name = EMPTY_NAME,
        public quantity: Asset = new Asset(),
        public memo: string = "",
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from);
        enc.pack(this.to);
        enc.pack(this.quantity);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.from = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.to = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.quantity = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from.getSize();
        size += this.to.getSize();
        size += this.quantity.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}


@packer(nocodegen)
export class Issue implements _chain.Packer {
    
    constructor (
        public to: Name = EMPTY_NAME,
        public quantity: Asset = new Asset(),
        public memo: string = "",
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.to);
        enc.pack(this.quantity);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.to = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.quantity = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.to.getSize();
        size += this.quantity.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}


@packer(nocodegen)
export class Retire implements _chain.Packer {
    
    constructor (
        public quantity: Asset = new Asset(),
        public memo: string = "",
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.quantity);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.quantity = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.quantity.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}

/**
 * Issue token
 * @param {Name} to - The name of the account to transfer the tokens to.
 * @param {ExtendedAsset} quantity - Quantity
 * @param {string} memo - A string that is included in the transaction. This is optional.
 */
export function sendIssue(tokenContract: Name, issuer: Name, to: Name, quantity: Asset, memo: string): void {
    const ISSUE = new InlineAction<Issue>("issue")
    const action = ISSUE.act(tokenContract, new PermissionLevel(issuer))
    const actionParams = new Issue(to, quantity, memo)
    action.send(actionParams)
}

/**
 * Retire token
 * @param {ExtendedAsset} quantity - Quantity
 * @param {string} memo - A string that is included in the transaction. This is optional.
 */
 export function sendRetire(tokenContract: Name, retiree: Name, quantity: Asset, memo: string): void {
    const RETIRE = new InlineAction<Retire>("retire")
    const action = RETIRE.act(tokenContract, new PermissionLevel(retiree))
    const actionParams = new Retire(quantity, memo)
    action.send(actionParams)
}

/**
 * Send token from one account to another
 * @param {Name} from - Name of the account to transfer tokens from.
 * @param {Name} to - The name of the account to transfer the tokens to.
 * @param {ExtendedAsset} quantity - Quantity
 * @param {string} memo - A string that is included in the transaction. This is optional.
 */
export function sendTransferToken(tokenContract: Name, from: Name, to: Name, quantity: Asset, memo: string): void {
    const TRANSFER = new InlineAction<Transfer>("transfer")
    const action = TRANSFER.act(tokenContract, new PermissionLevel(from))
    const actionParams = new Transfer(from, to, quantity, memo)
    action.send(actionParams)
}

/**
 * Send tokens from one account to another
 * @param {Name} from - Name of the account to transfer tokens from.
 * @param {Name} to - The name of the account to transfer the tokens to.
 * @param {ExtendedAsset[]} tokens - An array of ExtendedAsset objects.
 * @param {string} memo - A string that is included in the transaction. This is optional.
 */
 export function sendTransferTokens(from: Name, to: Name, tokens: ExtendedAsset[], memo: string): void {
    for (let i = 0; i < tokens.length; i++) {
        sendTransferToken(tokens[i].contract, from, to, tokens[i].quantity, memo)
    }
}