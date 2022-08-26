import * as _chain from "as-chain";
import { Name, Symbol, Asset, InlineAction, ActionData, PermissionLevel, EMPTY_NAME } from "..";
import { AtomicAttribute, AtomicFormat } from "./atomicdata";
import { ATOMICASSETS_CONTRACT } from "./atomicassets.constants";

//------------------- Interfaces ------------------------------//

@packer(nocodegen)
export class TransferNfts implements _chain.Packer {
    
    constructor (
        public from: Name = EMPTY_NAME,
        public to: Name = EMPTY_NAME,
        public asset_ids: u64[] = [],
        public memo: string = ""
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from);
        enc.pack(this.to);
        enc.packNumberArray<u64>(this.asset_ids)
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
        this.asset_ids = dec.unpackNumberArray<u64>();
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from.getSize();
        size += this.to.getSize();
        size += _chain.calcPackedVarUint32Length(this.asset_ids.length);size += sizeof<u64>()*this.asset_ids.length;
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}


@packer(nocodegen)
export class AdminColEdit implements _chain.Packer {
    
    constructor (public collectionFormatExtension: AtomicFormat[] = []) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packObjectArray(this.collectionFormatExtension);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
    {
        let length = <i32>dec.unpackLength();
        this.collectionFormatExtension = new Array<AtomicFormat>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicFormat();
            this.collectionFormatExtension[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.calcPackedVarUint32Length(this.collectionFormatExtension.length);
        for (let i=0; i<this.collectionFormatExtension.length; i++) {
            size += this.collectionFormatExtension[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class SetVersion implements _chain.Packer {
    
    constructor (public newVersion: string = "") {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.newVersion);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.newVersion = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.newVersion);
        return size;
    }
}


@packer(nocodegen)
export class AddConfigToken implements _chain.Packer {
    
    constructor (
        public tokenContract: Name = EMPTY_NAME,
        public tokenSymbol: Symbol = new Symbol(),
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.tokenContract);
        enc.pack(this.tokenSymbol);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.tokenContract = obj;
        }
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.tokenSymbol = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.tokenContract.getSize();
        size += this.tokenSymbol.getSize();
        return size;
    }
}


@packer(nocodegen)
export class CreateCollection implements _chain.Packer {
    
    constructor (
        public author: Name = EMPTY_NAME,
        public collection_name: Name = EMPTY_NAME,
        public allow_notify: boolean = false,
        public authorized_accounts: Name[] = [],
        public notify_accounts: Name[] = [],
        public market_fee: f64 = 0,
        public data: AtomicAttribute[] = []
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.author);
        enc.pack(this.collection_name);
        enc.packNumber<boolean>(this.allow_notify);
        enc.packObjectArray(this.authorized_accounts);
        enc.packObjectArray(this.notify_accounts);
        enc.packNumber<f64>(this.market_fee);
        enc.packObjectArray(this.data);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.author = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.collection_name = obj;
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
        
    {
        let length = <i32>dec.unpackLength();
        this.data = new Array<AtomicAttribute>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicAttribute();
            this.data[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.author.getSize();
        size += this.collection_name.getSize();
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
        size += _chain.calcPackedVarUint32Length(this.data.length);
        for (let i=0; i<this.data.length; i++) {
            size += this.data[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class SetCollectionData implements _chain.Packer {
    
    constructor (
        public collection_name: Name = EMPTY_NAME,
        public data: AtomicAttribute[] = []
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.collection_name);
        enc.packObjectArray(this.data);
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
        let length = <i32>dec.unpackLength();
        this.data = new Array<AtomicAttribute>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicAttribute();
            this.data[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.collection_name.getSize();
        size += _chain.calcPackedVarUint32Length(this.data.length);
        for (let i=0; i<this.data.length; i++) {
            size += this.data[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class AddCollectionAuth implements _chain.Packer {
    
    constructor (
        public collection_name: Name = EMPTY_NAME,
        public account_to_add: Name = EMPTY_NAME,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.collection_name);
        enc.pack(this.account_to_add);
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
            this.account_to_add = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.collection_name.getSize();
        size += this.account_to_add.getSize();
        return size;
    }
}


@packer(nocodegen)
export class RemoveCollectionAuth implements _chain.Packer {
    
    constructor (
        public collection_name: Name = EMPTY_NAME,
        public account_to_remove: Name = EMPTY_NAME,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.collection_name);
        enc.pack(this.account_to_remove);
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
            this.account_to_remove = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.collection_name.getSize();
        size += this.account_to_remove.getSize();
        return size;
    }
}


@packer(nocodegen)
export class AddNotifyAccount implements _chain.Packer {
    
    constructor (
        public collection_name: Name = EMPTY_NAME,
        public account_to_add: Name = EMPTY_NAME,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.collection_name);
        enc.pack(this.account_to_add);
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
            this.account_to_add = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.collection_name.getSize();
        size += this.account_to_add.getSize();
        return size;
    }
}


@packer(nocodegen)
export class RemoveNotifyAccount implements _chain.Packer {
    
    constructor (
        public collection_name: Name = EMPTY_NAME,
        public account_to_remove: Name = EMPTY_NAME,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.collection_name);
        enc.pack(this.account_to_remove);
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
            this.account_to_remove = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.collection_name.getSize();
        size += this.account_to_remove.getSize();
        return size;
    }
}


@packer(nocodegen)
export class SetMarketFee implements _chain.Packer {
    
    constructor (
        public collection_name: Name = EMPTY_NAME,
        public market_fee: f64 = 0,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.collection_name);
        enc.packNumber<f64>(this.market_fee);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.collection_name = obj;
        }
        this.market_fee = dec.unpackNumber<f64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.collection_name.getSize();
        size += sizeof<f64>();
        return size;
    }
}


@packer(nocodegen)
export class ForbidNotify implements _chain.Packer {
    
    constructor (
        public collection_name: Name = EMPTY_NAME,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.collection_name);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.collection_name = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.collection_name.getSize();
        return size;
    }
}



@packer(nocodegen)
export class CreateSchema implements _chain.Packer {
    
    constructor (
        public authorized_creator: Name = EMPTY_NAME,
        public collection_name: Name = EMPTY_NAME,
        public schema_name: Name = EMPTY_NAME,
        public schema_format: AtomicFormat[] = [],
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.authorized_creator);
        enc.pack(this.collection_name);
        enc.pack(this.schema_name);
        enc.packObjectArray(this.schema_format);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.authorized_creator = obj;
        }
        
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
        
    {
        let length = <i32>dec.unpackLength();
        this.schema_format = new Array<AtomicFormat>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicFormat();
            this.schema_format[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.authorized_creator.getSize();
        size += this.collection_name.getSize();
        size += this.schema_name.getSize();
        size += _chain.calcPackedVarUint32Length(this.schema_format.length);
        for (let i=0; i<this.schema_format.length; i++) {
            size += this.schema_format[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class ExtendSchema implements _chain.Packer {
    
    constructor (
        public authorized_editor: Name = EMPTY_NAME,
        public collection_name: Name = EMPTY_NAME,
        public schema_name: Name = EMPTY_NAME,
        public schema_format_extension: AtomicFormat[] = [],
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.authorized_editor);
        enc.pack(this.collection_name);
        enc.pack(this.schema_name);
        enc.packObjectArray(this.schema_format_extension);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.authorized_editor = obj;
        }
        
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
        
    {
        let length = <i32>dec.unpackLength();
        this.schema_format_extension = new Array<AtomicFormat>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicFormat();
            this.schema_format_extension[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.authorized_editor.getSize();
        size += this.collection_name.getSize();
        size += this.schema_name.getSize();
        size += _chain.calcPackedVarUint32Length(this.schema_format_extension.length);
        for (let i=0; i<this.schema_format_extension.length; i++) {
            size += this.schema_format_extension[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class CreateTemplate implements _chain.Packer {
    
    constructor (
        public authorized_creator: Name = EMPTY_NAME,
        public collection_name: Name = EMPTY_NAME,
        public schema_name: Name = EMPTY_NAME,
        public transferable: boolean = true,
        public burnable: boolean = true,
        public max_supply: u32 = 0,
        public immutable_data: AtomicAttribute[] = []
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.authorized_creator);
        enc.pack(this.collection_name);
        enc.pack(this.schema_name);
        enc.packNumber<boolean>(this.transferable);
        enc.packNumber<boolean>(this.burnable);
        enc.packNumber<u32>(this.max_supply);
        enc.packObjectArray(this.immutable_data);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.authorized_creator = obj;
        }
        
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
        this.transferable = dec.unpackNumber<boolean>();
        this.burnable = dec.unpackNumber<boolean>();
        this.max_supply = dec.unpackNumber<u32>();
        
    {
        let length = <i32>dec.unpackLength();
        this.immutable_data = new Array<AtomicAttribute>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicAttribute();
            this.immutable_data[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.authorized_creator.getSize();
        size += this.collection_name.getSize();
        size += this.schema_name.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<u32>();
        size += _chain.calcPackedVarUint32Length(this.immutable_data.length);
        for (let i=0; i<this.immutable_data.length; i++) {
            size += this.immutable_data[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class LockTemplate implements _chain.Packer {
    
    constructor (
        public authorized_editor: Name = EMPTY_NAME,
        public collection_name: Name = EMPTY_NAME,
        public template_id: i32 = 0,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.authorized_editor);
        enc.pack(this.collection_name);
        enc.packNumber<i32>(this.template_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.authorized_editor = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.collection_name = obj;
        }
        this.template_id = dec.unpackNumber<i32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.authorized_editor.getSize();
        size += this.collection_name.getSize();
        size += sizeof<i32>();
        return size;
    }
}


@packer(nocodegen)
export class MintAsset implements _chain.Packer {
    
    constructor (
        public authorized_minter: Name = EMPTY_NAME,
        public collection_name: Name = EMPTY_NAME,
        public schema_name: Name = EMPTY_NAME,
        public template_id: i32 = 0,
        public newasset_owner: Name = EMPTY_NAME,
        public immutable_data: AtomicAttribute[] = [],
        public mutable_data: AtomicAttribute[] = [],
        public tokens_to_back: Asset[] = []
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.authorized_minter);
        enc.pack(this.collection_name);
        enc.pack(this.schema_name);
        enc.packNumber<i32>(this.template_id);
        enc.pack(this.newasset_owner);
        enc.packObjectArray(this.immutable_data);
        enc.packObjectArray(this.mutable_data);
        enc.packObjectArray(this.tokens_to_back);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.authorized_minter = obj;
        }
        
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
            this.newasset_owner = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.immutable_data = new Array<AtomicAttribute>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicAttribute();
            this.immutable_data[i] = obj;
            dec.unpack(obj);
        }
    }

        
    {
        let length = <i32>dec.unpackLength();
        this.mutable_data = new Array<AtomicAttribute>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicAttribute();
            this.mutable_data[i] = obj;
            dec.unpack(obj);
        }
    }

        
    {
        let length = <i32>dec.unpackLength();
        this.tokens_to_back = new Array<Asset>(length)
        for (let i=0; i<length; i++) {
            let obj = new Asset();
            this.tokens_to_back[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.authorized_minter.getSize();
        size += this.collection_name.getSize();
        size += this.schema_name.getSize();
        size += sizeof<i32>();
        size += this.newasset_owner.getSize();
        size += _chain.calcPackedVarUint32Length(this.immutable_data.length);
        for (let i=0; i<this.immutable_data.length; i++) {
            size += this.immutable_data[i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.mutable_data.length);
        for (let i=0; i<this.mutable_data.length; i++) {
            size += this.mutable_data[i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.tokens_to_back.length);
        for (let i=0; i<this.tokens_to_back.length; i++) {
            size += this.tokens_to_back[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class SetAssetData implements _chain.Packer {
    
    constructor (
        public authorized_editor: Name = EMPTY_NAME,
        public asset_owner: Name = EMPTY_NAME,
        public asset_id: u64 = 0,
        public new_mutable_data: AtomicAttribute[] = [],
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.authorized_editor);
        enc.pack(this.asset_owner);
        enc.packNumber<u64>(this.asset_id);
        enc.packObjectArray(this.new_mutable_data);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.authorized_editor = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.asset_owner = obj;
        }
        this.asset_id = dec.unpackNumber<u64>();
        
    {
        let length = <i32>dec.unpackLength();
        this.new_mutable_data = new Array<AtomicAttribute>(length)
        for (let i=0; i<length; i++) {
            let obj = new AtomicAttribute();
            this.new_mutable_data[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.authorized_editor.getSize();
        size += this.asset_owner.getSize();
        size += sizeof<u64>();
        size += _chain.calcPackedVarUint32Length(this.new_mutable_data.length);
        for (let i=0; i<this.new_mutable_data.length; i++) {
            size += this.new_mutable_data[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class Withdraw implements _chain.Packer {
    
    constructor (
        public owner: Name = EMPTY_NAME,
        public token_to_withdraw: Asset = new Asset(),
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.owner);
        enc.pack(this.token_to_withdraw);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.owner = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.token_to_withdraw = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.owner.getSize();
        size += this.token_to_withdraw.getSize();
        return size;
    }
}


@packer(nocodegen)
export class BackAsset implements _chain.Packer {
    
    constructor (
        public payer: Name = EMPTY_NAME,
        public asset_owner: Name = EMPTY_NAME,
        public asset_id: u64 = 0,
        public token_to_back: Asset = new Asset(),
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.payer);
        enc.pack(this.asset_owner);
        enc.packNumber<u64>(this.asset_id);
        enc.pack(this.token_to_back);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.payer = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.asset_owner = obj;
        }
        this.asset_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.token_to_back = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.payer.getSize();
        size += this.asset_owner.getSize();
        size += sizeof<u64>();
        size += this.token_to_back.getSize();
        return size;
    }
}


@packer(nocodegen)
export class BurnAsset implements _chain.Packer {
    
    constructor (
        public asset_owner: Name = EMPTY_NAME,
        public asset_id: u64 = 0,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.asset_owner);
        enc.packNumber<u64>(this.asset_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.asset_owner = obj;
        }
        this.asset_id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.asset_owner.getSize();
        size += sizeof<u64>();
        return size;
    }
}


@packer(nocodegen)
export class CreateOffer implements _chain.Packer {
    
    constructor (
        public sender: Name = EMPTY_NAME,
        public recipient: Name = EMPTY_NAME,
        public sender_asset_ids: u64[] = [],
        public recipient_asset_ids: u64[] = [],
        public memo: string = "",
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.sender);
        enc.pack(this.recipient);
        enc.packNumberArray<u64>(this.sender_asset_ids)
        enc.packNumberArray<u64>(this.recipient_asset_ids)
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
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
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.sender.getSize();
        size += this.recipient.getSize();
        size += _chain.calcPackedVarUint32Length(this.sender_asset_ids.length);size += sizeof<u64>()*this.sender_asset_ids.length;
        size += _chain.calcPackedVarUint32Length(this.recipient_asset_ids.length);size += sizeof<u64>()*this.recipient_asset_ids.length;
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}


@packer(nocodegen)
export class CancelOffer implements _chain.Packer {
    
    constructor (
        public offer_id: u64 = 0,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.offer_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.offer_id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        return size;
    }
}


@packer(nocodegen)
export class AcceptOffer implements _chain.Packer {
    
    constructor (
        public offer_id: u64 = 0,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.offer_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.offer_id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        return size;
    }
}


@packer(nocodegen)
export class DeclineOffer implements _chain.Packer {
    
    constructor (
        public offer_id: u64 = 0,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.offer_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.offer_id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        return size;
    }
}


@packer(nocodegen)
export class PayOfferRam implements _chain.Packer {
    
    constructor (
        public payer: Name = EMPTY_NAME,
        public offer_id: u64 = 0,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.payer);
        enc.packNumber<u64>(this.offer_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.payer = obj;
        }
        this.offer_id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.payer.getSize();
        size += sizeof<u64>();
        return size;
    }
}


//------------------- Helper functions ------------------------------//

// Inline action
/**
 * Send a transfer action to the contract with the given parameters
 * @param {Name} from - Name of the account that is sending the NFTs
 * @param {Name} to - Name of the account to transfer the NFTs to.
 * @param {u64[]} nfts - An array of u64s representing the NFTs to transfer.
 * @param {string} memo - A string that will be stored in the blockchain as the memo for this transfer.
 */
 export function sendTransferNfts(from: Name, to: Name, asset_ids: u64[], memo: string): void {
    const TRANSFER_ACTION = new InlineAction<TransferNfts>("transfer")

    if (asset_ids.length > 0) {
        const action = TRANSFER_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(from))
        const actionParams = new TransferNfts(from, to, asset_ids, memo)
        action.send(actionParams)
    }
}

export function sendAdminCollectionEdit(contract: Name, collectionFormatExtension: AtomicFormat[]): void {
    const ADMINCOLEDIT_ACTION = new InlineAction<AdminColEdit>("admincoledit")
    const action = ADMINCOLEDIT_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new AdminColEdit(collectionFormatExtension)
    action.send(actionParams)
}

export function sendSetVersion(contract: Name, newVersion: string): void {
    const SETVERSION_ACTION = new InlineAction<SetVersion>("setversion")
    const action = SETVERSION_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new SetVersion(newVersion)
    action.send(actionParams)
}

export function sendAddConfigToken(contract: Name, tokenContract: Name, tokenSymbol: Symbol): void {
    const ADDCONFTOKEN_ACTION = new InlineAction<AddConfigToken>("addconftoken")
    const action = ADDCONFTOKEN_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new AddConfigToken(tokenContract, tokenSymbol)
    action.send(actionParams)
}

export function sendCreateColllection(contract: Name, author: Name, collection_name: Name, allow_notify: boolean, authorized_accounts: Name[], notify_accounts: Name[], market_fee: f64, data: AtomicAttribute[]): void {
    const CREATECOL_ACTION = new InlineAction<CreateCollection>("createcol")
    const action = CREATECOL_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new CreateCollection(author, collection_name, allow_notify, authorized_accounts, notify_accounts, market_fee, data)
    action.send(actionParams)
}

export function sendSetCollectionData(contract: Name, collection_name: Name, data: AtomicAttribute[]): void {
    const SETCOLDATA_ACTION = new InlineAction<SetCollectionData>("setcoldata")
    const action = SETCOLDATA_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new SetCollectionData(collection_name, data)
    action.send(actionParams)
}

export function sendAddCollectionAuth(contract: Name, collection_name: Name, account_to_add: Name): void {
    const ADDCOLAUTH_ACTION = new InlineAction<AddCollectionAuth>("addcolauth")
    const action = ADDCOLAUTH_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new AddCollectionAuth(collection_name, account_to_add)
    action.send(actionParams)
}

export function sendRemoveCollectionAuth(contract: Name, collection_name: Name, account_to_remove: Name): void {
    const REMCOLAUTH_ACTION = new InlineAction<RemoveCollectionAuth>("removecolauth")
    const action = REMCOLAUTH_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new RemoveCollectionAuth(collection_name, account_to_remove)
    action.send(actionParams)
}

export function sendAddNotifyAccount(contract: Name, collection_name: Name, account_to_add: Name): void {
    const ADDNOTIFYACC_ACTION = new InlineAction<AddNotifyAccount>("addnotifyacc")
    const action = ADDNOTIFYACC_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new AddNotifyAccount(collection_name, account_to_add)
    action.send(actionParams)
}

export function sendRemoveNotifyAccount(contract: Name, collection_name: Name, account_to_remove: Name): void {
    const REMNOTIFYACC_ACTION = new InlineAction<RemoveNotifyAccount>("remnotifyacc")
    const action = REMNOTIFYACC_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new RemoveNotifyAccount(collection_name, account_to_remove)
    action.send(actionParams)
}

export function sendSetMarketFee(contract: Name, collection_name: Name, market_fee: f64): void {
    const SETMARKETFEE_ACTION = new InlineAction<SetMarketFee>("setmarketfee")
    const action = SETMARKETFEE_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new SetMarketFee(collection_name, market_fee)
    action.send(actionParams)
}

export function sendForbidNotify(contract: Name, collection_name: Name): void {
    const FORBIDNOTIFY_ACTION = new InlineAction<ForbidNotify>("forbidnotify")
    const action = FORBIDNOTIFY_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new ForbidNotify(collection_name)
    action.send(actionParams)
}

export function sendCreateSchema(contract: Name, authorized_creator: Name, collection_name: Name, schema_name: Name, schema_format: AtomicFormat[]): void {
    const CREATESCHEMA_ACTION = new InlineAction<CreateSchema>("createschema")
    const action = CREATESCHEMA_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new CreateSchema(authorized_creator, collection_name, schema_name, schema_format)
    action.send(actionParams)
}

export function sendExtendSchema(contract: Name, authorized_editor: Name, collection_name: Name, schema_name: Name, schema_format_extension: AtomicFormat[]): void {
    const EXTENDSCHEMA_ACTION = new InlineAction<ExtendSchema>("extendschema")
    const action = EXTENDSCHEMA_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new ExtendSchema(authorized_editor, collection_name, schema_name, schema_format_extension)
    action.send(actionParams)
}

//------------------- Action Names ------------------------------//
export function sendCreateTemplate(contract: Name, authorized_creator: Name, collection_name: Name, schema_name: Name, transferable: boolean, burnable: boolean, max_supply: u32, immutable_data: AtomicAttribute[]): void {
    const CREATETEMPL_ACTION = new InlineAction<CreateTemplate>("createtempl")
    const action = CREATETEMPL_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new CreateTemplate(authorized_creator, collection_name, schema_name, transferable, burnable, max_supply, immutable_data)
    action.send(actionParams)
}

export function sendLockTemplate(contract: Name, authorized_editor: Name, collection_name: Name, template_id: i32): void {
    const LOCKTEMPLATE_ACTION = new InlineAction<LockTemplate>("locktemplate")
    const action = LOCKTEMPLATE_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new LockTemplate(authorized_editor, collection_name, template_id)
    action.send(actionParams)
}

export function sendMintAsset(contract: Name, authorized_minter: Name, collection_name: Name, schema_name: Name, template_id: i32, newasset_owner: Name, immutable_data: AtomicAttribute[], mutable_data: AtomicAttribute[], tokens_to_back: Asset[]): void {
    const MINTASSET_ACTION = new InlineAction<MintAsset>("mintasset")
    const action = MINTASSET_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new MintAsset(authorized_minter, collection_name, schema_name, template_id, newasset_owner, immutable_data, mutable_data, tokens_to_back)
    action.send(actionParams)
}

export function sendSetAssetData(contract: Name, authorized_editor: Name, asset_owner: Name, asset_id: u64, new_mutable_data: AtomicAttribute[]): void {
    const SETASSETDATA_ACTION = new InlineAction<SetAssetData>("setassetdata")
    const action = SETASSETDATA_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new SetAssetData(authorized_editor, asset_owner, asset_id, new_mutable_data)
    action.send(actionParams)
}

export function sendWithdraw(contract: Name, owner: Name, token_to_withdraw: Asset): void {
    const WITHDRAW_ACTION = new InlineAction<Withdraw>("withdraw")
    const action = WITHDRAW_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new Withdraw(owner, token_to_withdraw)
    action.send(actionParams)
}

export function sendBackAsset(contract: Name, payer: Name, asset_owner: Name, asset_id: u64, token_to_back: Asset): void {
    const BACKASSET_ACTION = new InlineAction<BackAsset>("backasset")
    const action = BACKASSET_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new BackAsset(payer, asset_owner, asset_id, token_to_back)
    action.send(actionParams)
}

export function sendBurnAsset(contract: Name, asset_owner: Name, asset_id: u64): void {
    const BURNASSET_ACTION = new InlineAction<BurnAsset>("burnasset")
    const action = BURNASSET_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new BurnAsset(asset_owner, asset_id)
    action.send(actionParams)
}

export function sendCreateOffer(contract: Name, sender: Name, recipient: Name, sender_asset_ids: u64[], recipient_asset_ids: u64[], memo: string): void {
    const CREATEOFFER_ACTION = new InlineAction<CreateOffer>("createoffer")
    const action = CREATEOFFER_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new CreateOffer(sender, recipient, sender_asset_ids, recipient_asset_ids, memo)
    action.send(actionParams)
}

export function sendCancelOffer(contract: Name, offer_id: u64): void {
    const CANCELOFFER_ACTION = new InlineAction<CancelOffer>("canceloffer")
    const action = CANCELOFFER_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new CancelOffer(offer_id)
    action.send(actionParams)
}

export function sendAcceptOffer(contract: Name, offer_id: u64): void {
    const ACCEPTOFFER_ACTION = new InlineAction<AcceptOffer>("acceptoffer")
    const action = ACCEPTOFFER_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new AcceptOffer(offer_id)
    action.send(actionParams)
}

export function sendDeclineOffer(contract: Name, offer_id: u64): void {
    const DECLINEOFFER_ACTION = new InlineAction<DeclineOffer>("declineoffer")
    const action = DECLINEOFFER_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new DeclineOffer(offer_id)
    action.send(actionParams)
}

export function sendPayOfferRam(contract: Name, payer: Name, offer_id: u64): void {
    const PAYOFFERRAM_ACTION = new InlineAction<PayOfferRam>("payofferram")
    const action = PAYOFFERRAM_ACTION.act(ATOMICASSETS_CONTRACT, new PermissionLevel(contract))
    const actionParams = new PayOfferRam(payer, offer_id)
    action.send(actionParams)
}
