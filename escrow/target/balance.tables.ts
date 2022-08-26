import * as _chain from "as-chain";
import { ExtendedAsset, Name, Table, EMPTY_NAME } from "..";



export class BalanceDB extends _chain.MultiIndex<Balance> {

}

@table("balances", nocodegen)

export class Balance implements _chain.MultiIndexValue {
    
    constructor (
        public account: Name = EMPTY_NAME,
        public tokens: ExtendedAsset[] = [],
        public nfts: u64[] = [],
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.account.N;
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packObjectArray(this.tokens);
        enc.packNumberArray<u64>(this.nfts)
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.account = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.tokens = new Array<ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new ExtendedAsset();
            this.tokens[i] = obj;
            dec.unpack(obj);
        }
    }

        this.nfts = dec.unpackNumberArray<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += _chain.calcPackedVarUint32Length(this.tokens.length);
        for (let i=0; i<this.tokens.length; i++) {
            size += this.tokens[i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.nfts.length);size += sizeof<u64>()*this.nfts.length;
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x39A269A158000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Balance.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Balance.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): BalanceDB {
        return new BalanceDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}