import * as _chain from "as-chain";
import { Name, Table, U128, ExtendedSymbol, EMPTY_NAME } from "..";
import { extendedSymbolToU128, U128ToExtSym } from "./allow.utils";

// scope: contract


export class AllowGlobalsDB extends _chain.MultiIndex<AllowGlobals> {

}

@table("allowglobals", singleton, nocodegen)

export class AllowGlobals implements _chain.MultiIndexValue {
    
    constructor (
        public isPaused: boolean = false,
        public isActorStrict: boolean = false,
        public isTokenStrict: boolean = false,
        public isTokensEnabled: boolean = true,
        public isNftsEnabled: boolean = true,
        public isContractsEnabled: boolean = true,
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

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x34634E323439A380);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return AllowGlobals.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return AllowGlobals.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x34634E323439A380).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<AllowGlobals> {
        return new _chain.Singleton<AllowGlobals>(code, scope, this.tableName);
    }
}

// scope: contract


export class AllowedActorDB extends _chain.MultiIndex<AllowedActor> {

}

@table("allowedactor", nocodegen)

export class AllowedActor implements _chain.MultiIndexValue {
    
    constructor (
        public actor: Name = EMPTY_NAME,
        public isAllowed: boolean = false,
        public isBlocked: boolean = false,
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.actor.N;
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor);
        enc.packNumber<boolean>(this.isAllowed);
        enc.packNumber<boolean>(this.isBlocked);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.actor = obj;
        }
        this.isAllowed = dec.unpackNumber<boolean>();
        this.isBlocked = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x34634E2926466970);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return AllowedActor.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return AllowedActor.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): AllowedActorDB {
        return new AllowedActorDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}

// scope: contract


export class AllowedTokenDB extends _chain.MultiIndex<AllowedToken> {
    get byTokenDB(): _chain.IDX128 {
        return <_chain.IDX128>this.idxdbs[0];
    }

    
    updateByToken(idxIt: _chain.SecondaryIterator, value: U128, payer: Name): void {
        let secValue = _chain.newSecondaryValue_U128(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("allowedtoken", nocodegen)

export class AllowedToken implements _chain.MultiIndexValue {
    
    constructor (
        public index: u64 = 0,
        public token: ExtendedSymbol = new ExtendedSymbol(),
        public isAllowed: boolean = false,
        public isBlocked: boolean = false,
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.index;
    }

    @secondary
    get byToken(): U128 {
        return extendedSymbolToU128(this.token)
    }

    set byToken(value: U128) {
       this.token = U128ToExtSym(value)
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.index);
        enc.pack(this.token);
        enc.packNumber<boolean>(this.isAllowed);
        enc.packNumber<boolean>(this.isBlocked);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.index = dec.unpackNumber<u64>();
        
        {
            let obj = new ExtendedSymbol();
            dec.unpack(obj);
            this.token = obj;
        }
        this.isAllowed = dec.unpackNumber<boolean>();
        this.isBlocked = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.token.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x34634E2939A41530);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX128(code.N, scope.N, idxTableBase + 0, 0),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return AllowedToken.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return AllowedToken.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_U128(this.byToken);
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
                return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
        }
    }

    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        switch (i) {
            case 0: {
                let _value = _chain.getSecondaryValue_U128(value);
                this.byToken = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): AllowedTokenDB {
        return new AllowedTokenDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}