import * as _chain from "as-chain";
import { Name, Table, ExtendedSymbol, Asset, EMPTY_NAME } from "..";
import { AtomicFormat } from "./atomicdata";

// Scope: N/A


export class CollectionsDB extends _chain.MultiIndex<Collections> {

}

@table("collections", noabigen, nocodegen)

export class Collections implements _chain.MultiIndexValue {
    
    constructor (
        public collection_name: Name = EMPTY_NAME,
        public author: Name = EMPTY_NAME,
        public allow_notify: boolean = false,
        public authorized_accounts: Name[] = [],
        public notify_accounts: Name[] = [],
        public market_fee: f64 = <f64>(0),
        public serialized_data: u8[] = [],
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.collection_name.N;
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.collection_name);
        enc.pack(this.author);
        enc.packNumber<boolean>(this.allow_notify);
        enc.packObjectArray(this.authorized_accounts);
        enc.packObjectArray(this.notify_accounts);
        enc.packNumber<f64>(this.market_fee);
        enc.packNumberArray<u8>(this.serialized_data)
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.collection_name = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.author = obj;
        }
        this.allow_notify = dec.unpackNumber<boolean>();
        
    {
        let length = <i32>dec.unpackLength();
        this.authorized_accounts = new Array<Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new Name();
            this.authorized_accounts[i] = obj;
            dec.unpack(obj);
        }
    }

        
    {
        let length = <i32>dec.unpackLength();
        this.notify_accounts = new Array<Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new Name();
            this.notify_accounts[i] = obj;
            dec.unpack(obj);
        }
    }

        this.market_fee = dec.unpackNumber<f64>();
        this.serialized_data = dec.unpackNumberArray<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.collection_name.getSize();
        size += this.author.getSize();
        size += sizeof<boolean>();
        size += _chain.calcPackedVarUint32Length(this.authorized_accounts.length);
        for (let i=0; i<this.authorized_accounts.length; i++) {
            size += this.authorized_accounts[i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.notify_accounts.length);
        for (let i=0; i<this.notify_accounts.length; i++) {
            size += this.notify_accounts[i].getSize();
        }

        size += sizeof<f64>();
        size += _chain.calcPackedVarUint32Length(this.serialized_data.length);size += sizeof<u8>()*this.serialized_data.length;
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x452315232EA4F000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Collections.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Collections.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): CollectionsDB {
        return new CollectionsDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}

//Scope: collection_name


export class SchemasDB extends _chain.MultiIndex<Schemas> {

}

@table("schemas", noabigen, nocodegen)

export class Schemas implements _chain.MultiIndexValue {
    
    constructor (
        public schema_name: Name = EMPTY_NAME,
        public format: AtomicFormat[] = [],
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.schema_name.N;
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.schema_name);
        enc.packObjectArray(this.format);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.schema_name = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.format = new Array<AtomicFormat>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicFormat();
            this.format[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.schema_name.getSize();
        size += _chain.calcPackedVarUint32Length(this.format.length);
        for (let i=0; i<this.format.length; i++) {
            size += this.format[i].getSize();
        }

        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC21AA91B00000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Schemas.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Schemas.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): SchemasDB {
        return new SchemasDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}

//Scope: collection_name


export class TemplatesDB extends _chain.MultiIndex<Templates> {

}

@table("templates", noabigen, nocodegen)

export class Templates implements _chain.MultiIndexValue {
    
    constructor (
        public template_id: i32 = 0,
        public schema_name: Name = EMPTY_NAME,
        public transferable: boolean = true,
        public burnable: boolean = true,
        public max_supply: u32 = 0,
        public issued_supply: u32 = 0,
        public immutable_serialized_data: u8[] = [],
    ) {
        
    }

    @primary
    get primary(): u64 {
        return <u64>(this.template_id);
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<i32>(this.template_id);
        enc.pack(this.schema_name);
        enc.packNumber<boolean>(this.transferable);
        enc.packNumber<boolean>(this.burnable);
        enc.packNumber<u32>(this.max_supply);
        enc.packNumber<u32>(this.issued_supply);
        enc.packNumberArray<u8>(this.immutable_serialized_data)
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.template_id = dec.unpackNumber<i32>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.schema_name = obj;
        }
        this.transferable = dec.unpackNumber<boolean>();
        this.burnable = dec.unpackNumber<boolean>();
        this.max_supply = dec.unpackNumber<u32>();
        this.issued_supply = dec.unpackNumber<u32>();
        this.immutable_serialized_data = dec.unpackNumberArray<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<i32>();
        size += this.schema_name.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += _chain.calcPackedVarUint32Length(this.immutable_serialized_data.length);size += sizeof<u8>()*this.immutable_serialized_data.length;
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xCAA5589B2AC00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Templates.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Templates.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): TemplatesDB {
        return new TemplatesDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}

//Scope: owner


export class AssetsDB extends _chain.MultiIndex<Assets> {

}

@table("assets", noabigen, nocodegen)

export class Assets implements _chain.MultiIndexValue {
    
    constructor (
        public asset_id: u64 = 0,
        public collection_name: Name = EMPTY_NAME,
        public schema_name: Name = EMPTY_NAME,
        public template_id: i32 = 0,
        public ram_payer: Name = EMPTY_NAME,
        public backed_tokens: Asset[] = [],
        public immutable_serialized_data: u8[] = [],
        public mutable_serialized_data: u8[] = [],
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.asset_id;
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.asset_id);
        enc.pack(this.collection_name);
        enc.pack(this.schema_name);
        enc.packNumber<i32>(this.template_id);
        enc.pack(this.ram_payer);
        enc.packObjectArray(this.backed_tokens);
        enc.packNumberArray<u8>(this.immutable_serialized_data)
        enc.packNumberArray<u8>(this.mutable_serialized_data)
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.asset_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.collection_name = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.schema_name = obj;
        }
        this.template_id = dec.unpackNumber<i32>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.ram_payer = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.backed_tokens = new Array<Asset>(length)
        for (let i=0; i<length; i++) {
            let obj = new Asset();
            this.backed_tokens[i] = obj;
            dec.unpack(obj);
        }
    }

        this.immutable_serialized_data = dec.unpackNumberArray<u8>();
        this.mutable_serialized_data = dec.unpackNumberArray<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.collection_name.getSize();
        size += this.schema_name.getSize();
        size += sizeof<i32>();
        size += this.ram_payer.getSize();
        size += _chain.calcPackedVarUint32Length(this.backed_tokens.length);
        for (let i=0; i<this.backed_tokens.length; i++) {
            size += this.backed_tokens[i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.immutable_serialized_data.length);size += sizeof<u8>()*this.immutable_serialized_data.length;
        size += _chain.calcPackedVarUint32Length(this.mutable_serialized_data.length);size += sizeof<u8>()*this.mutable_serialized_data.length;
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x3630ACE000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Assets.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Assets.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): AssetsDB {
        return new AssetsDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}

// Scope: N/A


export class OffersDB extends _chain.MultiIndex<Offers> {
    get by_senderDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }
    get by_recipientDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }

    
    updateBy_sender(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBy_recipient(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("offers", noabigen, nocodegen)

export class Offers implements _chain.MultiIndexValue {
    
    constructor (
        public offer_id: u64 = 0,
        public sender: Name = EMPTY_NAME,
        public recipient: Name = EMPTY_NAME,
        public sender_asset_ids: u64[] = [],
        public recipient_asset_ids: u64[] = [],
        public memo: string = "",
        public ram_payer: Name = EMPTY_NAME,
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.offer_id;
    }

    @secondary
    get by_sender(): u64 {
        return this.sender.N
    }
    set by_sender(value: u64) {
        this.sender = Name.fromU64(value)
    }

    @secondary
    get by_recipient(): u64 {
        return this.recipient.N
    }
    set by_recipient(value: u64) {
        this.recipient = Name.fromU64(value)
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.offer_id);
        enc.pack(this.sender);
        enc.pack(this.recipient);
        enc.packNumberArray<u64>(this.sender_asset_ids)
        enc.packNumberArray<u64>(this.recipient_asset_ids)
        enc.packString(this.memo);
        enc.pack(this.ram_payer);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.offer_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.sender = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.recipient = obj;
        }
        this.sender_asset_ids = dec.unpackNumberArray<u64>();
        this.recipient_asset_ids = dec.unpackNumberArray<u64>();
        this.memo = dec.unpackString();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.ram_payer = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.sender.getSize();
        size += this.recipient.getSize();
        size += _chain.calcPackedVarUint32Length(this.sender_asset_ids.length);size += sizeof<u64>()*this.sender_asset_ids.length;
        size += _chain.calcPackedVarUint32Length(this.recipient_asset_ids.length);size += sizeof<u64>()*this.recipient_asset_ids.length;
        size += _chain.Utils.calcPackedStringLength(this.memo);
        size += this.ram_payer.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA2D6ABE000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 1, 1),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Offers.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Offers.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.by_sender);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.by_recipient);
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
                let _value = _chain.getSecondaryValue_u64(value);
                this.by_sender = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.by_recipient = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): OffersDB {
        return new OffersDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class ConfigDB extends _chain.MultiIndex<Config> {

}

@table("config", singleton, noabigen, nocodegen)

export class Config implements _chain.MultiIndexValue {
    
    constructor (
        public asset_counter: u64 = 1099511627776,
        public template_counter: u32 = 1,
        public offer_counter: u64 = 1,
        public collection_format: AtomicFormat[] = [],
        public supported_tokens: ExtendedSymbol[] = [],
    ) {
        
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.asset_counter);
        enc.packNumber<u32>(this.template_counter);
        enc.packNumber<u64>(this.offer_counter);
        enc.packObjectArray(this.collection_format);
        enc.packObjectArray(this.supported_tokens);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.asset_counter = dec.unpackNumber<u64>();
        this.template_counter = dec.unpackNumber<u32>();
        this.offer_counter = dec.unpackNumber<u64>();
        
    {
        let length = <i32>dec.unpackLength();
        this.collection_format = new Array<AtomicFormat>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicFormat();
            this.collection_format[i] = obj;
            dec.unpack(obj);
        }
    }

        
    {
        let length = <i32>dec.unpackLength();
        this.supported_tokens = new Array<ExtendedSymbol>(length)
        for (let i=0; i<length; i++) {
            let obj = new ExtendedSymbol();
            this.supported_tokens[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u32>();
        size += sizeof<u64>();
        size += _chain.calcPackedVarUint32Length(this.collection_format.length);
        for (let i=0; i<this.collection_format.length; i++) {
            size += this.collection_format[i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.supported_tokens.length);
        for (let i=0; i<this.supported_tokens.length; i++) {
            size += this.supported_tokens[i].getSize();
        }

        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x4526B73000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Config.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Config.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x4526B73000000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<Config> {
        return new _chain.Singleton<Config>(code, scope, this.tableName);
    }
}
