import * as _chain from "as-chain";
import { check, Encoder, Utils, Decoder, Variant } from "..";
import { decode, encode } from "./base58";
import { RESERVED } from "./atomicassets.constants";


@packer(nocodegen)
export class AtomicFormat implements _chain.Packer {
    
    constructor (
        public name: string = "",
        public type: string = "",
    ) {}
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.name);
        enc.packString(this.type);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.name = dec.unpackString();
        this.type = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.name);
        size += _chain.Utils.calcPackedStringLength(this.type);
        return size;
    }
}


@packer(nocodegen)
export class AtomicAttribute implements _chain.Packer {
    
    constructor (
        public key: string = "",
        public value: AtomicValue = new AtomicValue()
    ) {}

    @inline @operator('==')
    static eq(a: AtomicAttribute, b: AtomicAttribute): bool {
        return a.key == b.key && Utils.bytesCmp(a.value.pack(), b.value.pack()) == 0;
    }

    @inline @operator('!=')
    static neq(a: AtomicAttribute, b: AtomicAttribute): bool {
        return a.key != b.key || Utils.bytesCmp(a.value.pack(), b.value.pack()) != 0;
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.key);
        enc.pack(this.value);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.key = dec.unpackString();
        
        {
            let obj = new AtomicValue();
            dec.unpack(obj);
            this.value = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.key);
        size += this.value.getSize();
        return size;
    }
}


@variant(nocodegen)
export class AtomicValue implements _chain.Packer {
    _index: u8;
    value: usize;

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u8>(this._index);
        if (this._index == 0) {
            let value = changetype<_chain.VariantValue<i8>>(this.value);
            enc.packNumber<i8>(value.value);
        }

        if (this._index == 1) {
            let value = changetype<_chain.VariantValue<i16>>(this.value);
            enc.packNumber<i16>(value.value);
        }

        if (this._index == 2) {
            let value = changetype<_chain.VariantValue<i32>>(this.value);
            enc.packNumber<i32>(value.value);
        }

        if (this._index == 3) {
            let value = changetype<_chain.VariantValue<i64>>(this.value);
            enc.packNumber<i64>(value.value);
        }

        if (this._index == 4) {
            let value = changetype<_chain.VariantValue<u8>>(this.value);
            enc.packNumber<u8>(value.value);
        }

        if (this._index == 5) {
            let value = changetype<_chain.VariantValue<u16>>(this.value);
            enc.packNumber<u16>(value.value);
        }

        if (this._index == 6) {
            let value = changetype<_chain.VariantValue<u32>>(this.value);
            enc.packNumber<u32>(value.value);
        }

        if (this._index == 7) {
            let value = changetype<_chain.VariantValue<u64>>(this.value);
            enc.packNumber<u64>(value.value);
        }

        if (this._index == 8) {
            let value = changetype<_chain.VariantValue<f32>>(this.value);
            enc.packNumber<f32>(value.value);
        }

        if (this._index == 9) {
            let value = changetype<_chain.VariantValue<f64>>(this.value);
            enc.packNumber<f64>(value.value);
        }

        if (this._index == 10) {
            let value = changetype<_chain.VariantValue<string>>(this.value);
            enc.packString(value.value);
        }

        if (this._index == 11) {
            let value = changetype<_chain.VariantValue<i8[]>>(this.value);
            enc.packNumberArray<i8>(value.value)
        }

        if (this._index == 12) {
            let value = changetype<_chain.VariantValue<i16[]>>(this.value);
            enc.packNumberArray<i16>(value.value)
        }

        if (this._index == 13) {
            let value = changetype<_chain.VariantValue<i32[]>>(this.value);
            enc.packNumberArray<i32>(value.value)
        }

        if (this._index == 14) {
            let value = changetype<_chain.VariantValue<i64[]>>(this.value);
            enc.packNumberArray<i64>(value.value)
        }

        if (this._index == 15) {
            let value = changetype<_chain.VariantValue<u8[]>>(this.value);
            enc.packNumberArray<u8>(value.value)
        }

        if (this._index == 16) {
            let value = changetype<_chain.VariantValue<u16[]>>(this.value);
            enc.packNumberArray<u16>(value.value)
        }

        if (this._index == 17) {
            let value = changetype<_chain.VariantValue<u32[]>>(this.value);
            enc.packNumberArray<u32>(value.value)
        }

        if (this._index == 18) {
            let value = changetype<_chain.VariantValue<u64[]>>(this.value);
            enc.packNumberArray<u64>(value.value)
        }

        if (this._index == 19) {
            let value = changetype<_chain.VariantValue<f32[]>>(this.value);
            enc.packNumberArray<f32>(value.value)
        }

        if (this._index == 20) {
            let value = changetype<_chain.VariantValue<f64[]>>(this.value);
            enc.packNumberArray<f64>(value.value)
        }

        if (this._index == 21) {
            let value = changetype<_chain.VariantValue<string[]>>(this.value);
            enc.packStringArray(value.value)
        }

        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this._index = dec.unpackNumber<u8>();
        if (this._index == 0) {
            let innerValue: i8;
            innerValue = dec.unpackNumber<i8>();
            let value = new _chain.VariantValue<i8>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 1) {
            let innerValue: i16;
            innerValue = dec.unpackNumber<i16>();
            let value = new _chain.VariantValue<i16>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 2) {
            let innerValue: i32;
            innerValue = dec.unpackNumber<i32>();
            let value = new _chain.VariantValue<i32>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 3) {
            let innerValue: i64;
            innerValue = dec.unpackNumber<i64>();
            let value = new _chain.VariantValue<i64>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 4) {
            let innerValue: u8;
            innerValue = dec.unpackNumber<u8>();
            let value = new _chain.VariantValue<u8>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 5) {
            let innerValue: u16;
            innerValue = dec.unpackNumber<u16>();
            let value = new _chain.VariantValue<u16>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 6) {
            let innerValue: u32;
            innerValue = dec.unpackNumber<u32>();
            let value = new _chain.VariantValue<u32>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 7) {
            let innerValue: u64;
            innerValue = dec.unpackNumber<u64>();
            let value = new _chain.VariantValue<u64>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 8) {
            let innerValue: f32;
            innerValue = dec.unpackNumber<f32>();
            let value = new _chain.VariantValue<f32>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 9) {
            let innerValue: f64;
            innerValue = dec.unpackNumber<f64>();
            let value = new _chain.VariantValue<f64>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 10) {
            let innerValue: string;
            innerValue = dec.unpackString();
            let value = new _chain.VariantValue<string>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 11) {
            let innerValue: i8[];
            innerValue = dec.unpackNumberArray<i8>();
            let value = new _chain.VariantValue<i8[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 12) {
            let innerValue: i16[];
            innerValue = dec.unpackNumberArray<i16>();
            let value = new _chain.VariantValue<i16[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 13) {
            let innerValue: i32[];
            innerValue = dec.unpackNumberArray<i32>();
            let value = new _chain.VariantValue<i32[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 14) {
            let innerValue: i64[];
            innerValue = dec.unpackNumberArray<i64>();
            let value = new _chain.VariantValue<i64[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 15) {
            let innerValue: u8[];
            innerValue = dec.unpackNumberArray<u8>();
            let value = new _chain.VariantValue<u8[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 16) {
            let innerValue: u16[];
            innerValue = dec.unpackNumberArray<u16>();
            let value = new _chain.VariantValue<u16[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 17) {
            let innerValue: u32[];
            innerValue = dec.unpackNumberArray<u32>();
            let value = new _chain.VariantValue<u32[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 18) {
            let innerValue: u64[];
            innerValue = dec.unpackNumberArray<u64>();
            let value = new _chain.VariantValue<u64[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 19) {
            let innerValue: f32[];
            innerValue = dec.unpackNumberArray<f32>();
            let value = new _chain.VariantValue<f32[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 20) {
            let innerValue: f64[];
            innerValue = dec.unpackNumberArray<f64>();
            let value = new _chain.VariantValue<f64[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        if (this._index == 21) {
            let innerValue: string[];
            innerValue = dec.unpackStringArray();
            let value = new _chain.VariantValue<string[]>(innerValue);
            this.value = changetype<usize>(value);
        }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 1;
        if (this._index == 0) {
            let value = changetype<_chain.VariantValue<i8>>(this.value);
            size += sizeof<i8>();
        }

        if (this._index == 1) {
            let value = changetype<_chain.VariantValue<i16>>(this.value);
            size += sizeof<i16>();
        }

        if (this._index == 2) {
            let value = changetype<_chain.VariantValue<i32>>(this.value);
            size += sizeof<i32>();
        }

        if (this._index == 3) {
            let value = changetype<_chain.VariantValue<i64>>(this.value);
            size += sizeof<i64>();
        }

        if (this._index == 4) {
            let value = changetype<_chain.VariantValue<u8>>(this.value);
            size += sizeof<u8>();
        }

        if (this._index == 5) {
            let value = changetype<_chain.VariantValue<u16>>(this.value);
            size += sizeof<u16>();
        }

        if (this._index == 6) {
            let value = changetype<_chain.VariantValue<u32>>(this.value);
            size += sizeof<u32>();
        }

        if (this._index == 7) {
            let value = changetype<_chain.VariantValue<u64>>(this.value);
            size += sizeof<u64>();
        }

        if (this._index == 8) {
            let value = changetype<_chain.VariantValue<f32>>(this.value);
            size += sizeof<f32>();
        }

        if (this._index == 9) {
            let value = changetype<_chain.VariantValue<f64>>(this.value);
            size += sizeof<f64>();
        }

        if (this._index == 10) {
            let value = changetype<_chain.VariantValue<string>>(this.value);
            size += _chain.Utils.calcPackedStringLength(value.value);
        }

        if (this._index == 11) {
            let value = changetype<_chain.VariantValue<i8[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<i8>()*value.value.length;
        }

        if (this._index == 12) {
            let value = changetype<_chain.VariantValue<i16[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<i16>()*value.value.length;
        }

        if (this._index == 13) {
            let value = changetype<_chain.VariantValue<i32[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<i32>()*value.value.length;
        }

        if (this._index == 14) {
            let value = changetype<_chain.VariantValue<i64[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<i64>()*value.value.length;
        }

        if (this._index == 15) {
            let value = changetype<_chain.VariantValue<u8[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<u8>()*value.value.length;
        }

        if (this._index == 16) {
            let value = changetype<_chain.VariantValue<u16[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<u16>()*value.value.length;
        }

        if (this._index == 17) {
            let value = changetype<_chain.VariantValue<u32[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<u32>()*value.value.length;
        }

        if (this._index == 18) {
            let value = changetype<_chain.VariantValue<u64[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<u64>()*value.value.length;
        }

        if (this._index == 19) {
            let value = changetype<_chain.VariantValue<f32[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<f32>()*value.value.length;
        }

        if (this._index == 20) {
            let value = changetype<_chain.VariantValue<f64[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);size += sizeof<f64>()*value.value.length;
        }

        if (this._index == 21) {
            let value = changetype<_chain.VariantValue<string[]>>(this.value);
            size += _chain.calcPackedVarUint32Length(value.value.length);
                    for (let i=0; i<value.value.length; i++) {
                        size += _chain.Utils.calcPackedStringLength(value.value[i]);
                    }
            
        }

        return size;
    }

    static new<T>(value: T): AtomicValue {
        let obj = new AtomicValue();
        let v = new _chain.VariantValue<T>(value);
        obj.value = changetype<usize>(v);
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i8>>()) {
            obj._index = 0;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i16>>()) {
            obj._index = 1;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i32>>()) {
            obj._index = 2;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i64>>()) {
            obj._index = 3;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u8>>()) {
            obj._index = 4;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u16>>()) {
            obj._index = 5;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u32>>()) {
            obj._index = 6;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u64>>()) {
            obj._index = 7;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f32>>()) {
            obj._index = 8;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f64>>()) {
            obj._index = 9;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<string>>()) {
            obj._index = 10;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i8[]>>()) {
            obj._index = 11;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i16[]>>()) {
            obj._index = 12;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i32[]>>()) {
            obj._index = 13;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i64[]>>()) {
            obj._index = 14;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u8[]>>()) {
            obj._index = 15;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u16[]>>()) {
            obj._index = 16;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u32[]>>()) {
            obj._index = 17;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u64[]>>()) {
            obj._index = 18;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f32[]>>()) {
            obj._index = 19;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f64[]>>()) {
            obj._index = 20;
        }

        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<string[]>>()) {
            obj._index = 21;
        }

        return obj;
    }

    
    isi8(): bool {
        return this._index == 0;
    }


    geti8(): i8 {
        _chain.check(this._index == 0, "wrong variant type");
        let value = changetype<_chain.VariantValue<i8>>(this.value);
        return value.value;
    }

    
    isi16(): bool {
        return this._index == 1;
    }


    geti16(): i16 {
        _chain.check(this._index == 1, "wrong variant type");
        let value = changetype<_chain.VariantValue<i16>>(this.value);
        return value.value;
    }

    
    isi32(): bool {
        return this._index == 2;
    }


    geti32(): i32 {
        _chain.check(this._index == 2, "wrong variant type");
        let value = changetype<_chain.VariantValue<i32>>(this.value);
        return value.value;
    }

    
    isi64(): bool {
        return this._index == 3;
    }


    geti64(): i64 {
        _chain.check(this._index == 3, "wrong variant type");
        let value = changetype<_chain.VariantValue<i64>>(this.value);
        return value.value;
    }

    
    isu8(): bool {
        return this._index == 4;
    }


    getu8(): u8 {
        _chain.check(this._index == 4, "wrong variant type");
        let value = changetype<_chain.VariantValue<u8>>(this.value);
        return value.value;
    }

    
    isu16(): bool {
        return this._index == 5;
    }


    getu16(): u16 {
        _chain.check(this._index == 5, "wrong variant type");
        let value = changetype<_chain.VariantValue<u16>>(this.value);
        return value.value;
    }

    
    isu32(): bool {
        return this._index == 6;
    }


    getu32(): u32 {
        _chain.check(this._index == 6, "wrong variant type");
        let value = changetype<_chain.VariantValue<u32>>(this.value);
        return value.value;
    }

    
    isu64(): bool {
        return this._index == 7;
    }


    getu64(): u64 {
        _chain.check(this._index == 7, "wrong variant type");
        let value = changetype<_chain.VariantValue<u64>>(this.value);
        return value.value;
    }

    
    isfloat(): bool {
        return this._index == 8;
    }


    getfloat(): f32 {
        _chain.check(this._index == 8, "wrong variant type");
        let value = changetype<_chain.VariantValue<f32>>(this.value);
        return value.value;
    }

    
    isdouble(): bool {
        return this._index == 9;
    }


    getdouble(): f64 {
        _chain.check(this._index == 9, "wrong variant type");
        let value = changetype<_chain.VariantValue<f64>>(this.value);
        return value.value;
    }

    
    isstring(): bool {
        return this._index == 10;
    }


    getstring(): string {
        _chain.check(this._index == 10, "wrong variant type");
        let value = changetype<_chain.VariantValue<string>>(this.value);
        return value.value;
    }

    
    isINT8_VEC(): bool {
        return this._index == 11;
    }


    getINT8_VEC(): i8[] {
        _chain.check(this._index == 11, "wrong variant type");
        let value = changetype<_chain.VariantValue<i8[]>>(this.value);
        return value.value;
    }

    
    isINT16_VEC(): bool {
        return this._index == 12;
    }


    getINT16_VEC(): i16[] {
        _chain.check(this._index == 12, "wrong variant type");
        let value = changetype<_chain.VariantValue<i16[]>>(this.value);
        return value.value;
    }

    
    isINT32_VEC(): bool {
        return this._index == 13;
    }


    getINT32_VEC(): i32[] {
        _chain.check(this._index == 13, "wrong variant type");
        let value = changetype<_chain.VariantValue<i32[]>>(this.value);
        return value.value;
    }

    
    isINT64_VEC(): bool {
        return this._index == 14;
    }


    getINT64_VEC(): i64[] {
        _chain.check(this._index == 14, "wrong variant type");
        let value = changetype<_chain.VariantValue<i64[]>>(this.value);
        return value.value;
    }

    
    isUINT8_VEC(): bool {
        return this._index == 15;
    }


    getUINT8_VEC(): u8[] {
        _chain.check(this._index == 15, "wrong variant type");
        let value = changetype<_chain.VariantValue<u8[]>>(this.value);
        return value.value;
    }

    
    isUINT16_VEC(): bool {
        return this._index == 16;
    }


    getUINT16_VEC(): u16[] {
        _chain.check(this._index == 16, "wrong variant type");
        let value = changetype<_chain.VariantValue<u16[]>>(this.value);
        return value.value;
    }

    
    isUINT32_VEC(): bool {
        return this._index == 17;
    }


    getUINT32_VEC(): u32[] {
        _chain.check(this._index == 17, "wrong variant type");
        let value = changetype<_chain.VariantValue<u32[]>>(this.value);
        return value.value;
    }

    
    isUINT64_VEC(): bool {
        return this._index == 18;
    }


    getUINT64_VEC(): u64[] {
        _chain.check(this._index == 18, "wrong variant type");
        let value = changetype<_chain.VariantValue<u64[]>>(this.value);
        return value.value;
    }

    
    isFLOAT_VEC(): bool {
        return this._index == 19;
    }


    getFLOAT_VEC(): f32[] {
        _chain.check(this._index == 19, "wrong variant type");
        let value = changetype<_chain.VariantValue<f32[]>>(this.value);
        return value.value;
    }

    
    isDOUBLE_VEC(): bool {
        return this._index == 20;
    }


    getDOUBLE_VEC(): f64[] {
        _chain.check(this._index == 20, "wrong variant type");
        let value = changetype<_chain.VariantValue<f64[]>>(this.value);
        return value.value;
    }

    
    isSTRING_VEC(): bool {
        return this._index == 21;
    }


    getSTRING_VEC(): string[] {
        _chain.check(this._index == 21, "wrong variant type");
        let value = changetype<_chain.VariantValue<string[]>>(this.value);
        return value.value;
    }


    get<T>(): T {
        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i8>>()) {
            _chain.check(this._index == 0, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i16>>()) {
            _chain.check(this._index == 1, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i32>>()) {
            _chain.check(this._index == 2, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i64>>()) {
            _chain.check(this._index == 3, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u8>>()) {
            _chain.check(this._index == 4, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u16>>()) {
            _chain.check(this._index == 5, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u32>>()) {
            _chain.check(this._index == 6, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u64>>()) {
            _chain.check(this._index == 7, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f32>>()) {
            _chain.check(this._index == 8, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f64>>()) {
            _chain.check(this._index == 9, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<string>>()) {
            _chain.check(this._index == 10, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i8[]>>()) {
            _chain.check(this._index == 11, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i16[]>>()) {
            _chain.check(this._index == 12, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i32[]>>()) {
            _chain.check(this._index == 13, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i64[]>>()) {
            _chain.check(this._index == 14, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u8[]>>()) {
            _chain.check(this._index == 15, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u16[]>>()) {
            _chain.check(this._index == 16, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u32[]>>()) {
            _chain.check(this._index == 17, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u64[]>>()) {
            _chain.check(this._index == 18, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f32[]>>()) {
            _chain.check(this._index == 19, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f64[]>>()) {
            _chain.check(this._index == 20, "wrong variant type");
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<string[]>>()) {
            _chain.check(this._index == 21, "wrong variant type");
        }

        let value = changetype<_chain.VariantValue<T>>(this.value);
        return value.value;
    }

    is<T>(): bool {
        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i8>>()) {
            return this._index == 0;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i16>>()) {
            return this._index == 1;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i32>>()) {
            return this._index == 2;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i64>>()) {
            return this._index == 3;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u8>>()) {
            return this._index == 4;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u16>>()) {
            return this._index == 5;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u32>>()) {
            return this._index == 6;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u64>>()) {
            return this._index == 7;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f32>>()) {
            return this._index == 8;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f64>>()) {
            return this._index == 9;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<string>>()) {
            return this._index == 10;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i8[]>>()) {
            return this._index == 11;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i16[]>>()) {
            return this._index == 12;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i32[]>>()) {
            return this._index == 13;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<i64[]>>()) {
            return this._index == 14;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u8[]>>()) {
            return this._index == 15;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u16[]>>()) {
            return this._index == 16;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u32[]>>()) {
            return this._index == 17;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<u64[]>>()) {
            return this._index == 18;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f32[]>>()) {
            return this._index == 19;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<f64[]>>()) {
            return this._index == 20;
        }

        
        if (idof<_chain.VariantValue<T>>() == idof<_chain.VariantValue<string[]>>()) {
            return this._index == 21;
        }

        return false;
    }
}

export function unsignedFromVarintBytes(itr: u8[]): u64 {
    let number: u64 = 0;
    let multiplier: u64 = 1;

    while (itr[0] >= 128) {
        number += ((itr[0] - 128) * multiplier);
        itr.splice(0, 1);
        multiplier *= 128;
    }
    number += (itr[0] * multiplier);
    itr.splice(0, 1);

    return number;
}

//It is expected that the number is smaller than 2^byte_amount
export function toIntBytes(number: u64, byte_amount: u64): u8[] {
    const bytes: u8[] = [];
    for (let i: u64 = 0; i < byte_amount; i++) {
        bytes.push(<u8>(number % 256));
        number /= 256;
    }
    return bytes;
}

export function unsignedFromIntBytes(itr: u8[], original_bytes: u64 = 8): u64 {
    let number: u64 = 0;
    let multiplier: u64 = 1;

    for (let i: u64 = 0; i < original_bytes; i++) {
        number += (itr[0] * multiplier);
        multiplier *= 256;
        itr.splice(0, 1)
    }

    return number;
}

export function zigzagEncode (value: i64): u64 {
    if (value < 0) {
        return <u64>(-1 * (value + 1)) * 2 + 1;
    } else {
        return <u64>(value * 2);
    }
}

export function zigzagDecode (value: u64): i64 {
    if (value % 2 == 0) {
        return <i64>(value / 2);
    } else {
        return <i64>((value / 2) * -1 - 1);
    }
}


export function eraseAttribute (attributes: AtomicAttribute[], toErase: AtomicAttribute): void {
    if (!toErase) {
        return
    }

    const toEraseIndex = findIndexOfAttribute(attributes, toErase.key)
    if (toEraseIndex != -1) {
        attributes.splice(toEraseIndex, 1)
    }
}


export function toVarintBytes(number: u64, original_bytes: u64 = 8): u8[] {
    if (original_bytes < 8) {
        const bitmask: u64 = (<u64>(1) << original_bytes * 8) - 1;
        number &= bitmask;
    }

    const bytes: u8[] = []
    while (number >= 128) {
        // sets msb, stores remainder in lower bits
        bytes.push(<u8>(128 + number % 128));
        number /= 128;
    }
    bytes.push(<u8>(number));

    return bytes;
}


export function findIndexOfAttribute (attributes: AtomicAttribute[], key: string): i32 {
    const keys = attributes.map<string>(attr => attr.key)
    return keys.indexOf(key)
}

export function floatToBytes (float: f32): u8[] {
    let enc = new Encoder(sizeof<f32>())
    enc.packNumber<f32>(float)
    return enc.getBytes()
}

export function doubleToBytes (float: f64): u8[] {
    let enc = new Encoder(sizeof<f64>())
    enc.packNumber<f64>(float)
    return enc.getBytes()
}

export function stringToBytes (string: string): u8[] {
    const enc = new Encoder(Utils.calcPackedStringLength(string))
    enc.packString(string)
    const serialized_data: u8[] = enc.getBytes()
    return serialized_data
}

export function serialize_attribute (type: string, attr: AtomicValue): u8[]  {
    if (type.indexOf("[]") == type.length - 2) {
        if (attr.is<i8[]>()) {
            const vec = attr.get<i8[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = toVarintBytes(zigzagEncode(vec[i]), 1);
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<i16[]>()) {
            const vec = attr.get<i16[]>()
            let serialized_data = toVarintBytes(vec.length)

            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = toVarintBytes(zigzagEncode(vec[i]), 2);
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<i32[]>()) {
            const vec = attr.get<i32[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = toVarintBytes(zigzagEncode(vec[i]), 4);
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<i64[]>()) {
            const vec = attr.get<i64[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = toVarintBytes(zigzagEncode(vec[i]), 8);
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<u8[]>()) {
            const vec = attr.get<u8[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = toVarintBytes(vec[i], 1);
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<u16[]>()) {
            const vec = attr.get<u16[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = toVarintBytes(vec[i], 2);
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<u32[]>()) {
            const vec = attr.get<u32[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = toVarintBytes(vec[i], 4);
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<u64[]>()) {
            const vec = attr.get<u64[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = toVarintBytes(vec[i], 8);
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<f32[]>()) {
            const vec = attr.get<f32[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = floatToBytes(vec[i])
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        }  else if (attr.is<f64[]>()) {
            const vec = attr.get<f64[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = doubleToBytes(vec[i])
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        } else if (attr.is<string[]>()) {
            const vec = attr.get<string[]>()
            let serialized_data = toVarintBytes(vec.length)
            for (let i = 0; i < vec.length; i++) {
                const serialized_element: u8[] = stringToBytes(vec[i])
                serialized_data = serialized_data.concat(serialized_element)
            }
            return serialized_data
        }  else {
            return []
        }

    } else if (type == "int8") {
        return toVarintBytes(zigzagEncode(attr.get<i8>()), 1)
    } else if (type == "int16") {
        return toVarintBytes(zigzagEncode(attr.get<i16>()), 2)
    }  else if (type == "int32") {
        return toVarintBytes(zigzagEncode(attr.get<i32>()), 4)
    }  else if (type == "int64") {
        return toVarintBytes(zigzagEncode(attr.get<i64>()), 8)
       
    } else if (type == "uint8") {
        return toVarintBytes(attr.get<u8>(), 1)
    } else if (type == "uint16") {
        return toVarintBytes(attr.get<u16>(), 2)
    }  else if (type == "uint32") {
        return toVarintBytes(attr.get<u32>(), 4)
    }  else if (type == "uint64") {
        return toVarintBytes(attr.get<u64>(), 8)
        
    } else if (type == "fixed8" || type == "byte") {
        return toIntBytes(attr.get<u8>(), 1);
    } else if (type == "fixed16") {
        return toIntBytes(attr.get<u16>(), 2);
    } else if (type == "fixed32") {
        return toIntBytes(attr.get<u32>(), 4);
    } else if (type == "fixed64") {
        return toIntBytes(attr.get<u64>(), 8);

    } else if (type == "float") {
        return floatToBytes(attr.get<f32>())

    } else if (type == "double") {
        return doubleToBytes(attr.get<f64>())

    } else if (type == "string" || type == "image") {
        return stringToBytes(attr.get<string>())

    } else if (type == "ipfs") {
        const value = decode(attr.get<string>())
        const length_bytes: u8[] = toVarintBytes(value.length)
        return length_bytes.concat(value)

    } else if (type == "bool") {
        const value = attr.get<u8>()
        check(value == 0 || value == 1, "Bools need to be provided as an uin8_t that is either 0 or 1")
        return [<u8>(value)]

    } else {
        check(false, "No type could be matched - " + type);
        return []
    }
}

export function deserialize_attribute (type: string, itr: u8[]): AtomicValue  {
    if (type.indexOf("[]", type.length - 2) == type.length - 2) {
        const array_length = unsignedFromVarintBytes(itr)
        const base_type = type.slice(0, type.length - 2)

        if (type == "int8[]") {
            const vec: i8[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<i8>())
            }
            return AtomicValue.new<i8[]>(vec)
        } else if (type == "int16[]") {
            const vec: i16[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<i16>())
            }
            return AtomicValue.new<i16[]>(vec)
        } else if (type == "int32[]") {
            const vec: i32[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<i32>())
            }
            return AtomicValue.new<i32[]>(vec)
        } else if (type == "int64[]") {
            const vec: i64[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<i64>())
            }
            return AtomicValue.new<i64[]>(vec)

        } else if (type == "uint8[]" || type == "fixed8[]" || type == "bool[]") {
            const vec: u8[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<u8>())
            }
            return AtomicValue.new<u8[]>(vec)
        } else if (type == "uint16[]" || type == "fixed16[]") {
            const vec: u16[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<u16>())
            }
            return AtomicValue.new<u16[]>(vec)
        } else if (type == "uint32[]" || type == "fixed32[]") {
            const vec: u32[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<u32>())
            }
            return AtomicValue.new<u32[]>(vec)
        } else if (type == "uint64[]" || type == "fixed64[]") {
            const vec: u64[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<u64>())
            }
            return AtomicValue.new<u64[]>(vec)

        } else if (type == "float[]") {
            const vec: f32[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<f32>())
            }
            return AtomicValue.new<f32[]>(vec)

        } else if (type == "double[]") {
            const vec: f64[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<f64>())
            }
            return AtomicValue.new<f64[]>(vec)

        } else if (type == "string[]" || type == "image[]") {
            const vec: string[] = []
            for (let i = 0; i < <i32>(array_length); i++) {
                vec.push(deserialize_attribute(base_type, itr).get<string>())
            }
            return AtomicValue.new<string[]>(vec)
        } else {
            check(false, "No type could be matched - " + type);
            return new AtomicValue()
        }

    } else if (type == "int8") {
        return AtomicValue.new(<i8>(zigzagDecode(unsignedFromVarintBytes(itr))))
    } else if (type == "int16") {
        return AtomicValue.new(<i16>(zigzagDecode(unsignedFromVarintBytes(itr))))
    }  else if (type == "int32") {
        return AtomicValue.new(<i32>(zigzagDecode(unsignedFromVarintBytes(itr))))
    }  else if (type == "int64") {
        return AtomicValue.new(<i64>(zigzagDecode(unsignedFromVarintBytes(itr))))
       
    } else if (type == "uint8") {
        return AtomicValue.new(<u8>(unsignedFromVarintBytes(itr)))
    } else if (type == "uint16") {
        return AtomicValue.new(<u16>(unsignedFromVarintBytes(itr)))
    }  else if (type == "uint32") {
        return AtomicValue.new(<u32>(unsignedFromVarintBytes(itr)))
    }  else if (type == "uint64") {
        return AtomicValue.new(<u64>(unsignedFromVarintBytes(itr)))
        
    } else if (type == "fixed8") {
        return AtomicValue.new(<u8>(unsignedFromIntBytes(itr, 1)))
    } else if (type == "fixed16") {
        return AtomicValue.new(<u16>(unsignedFromIntBytes(itr, 2)))
    } else if (type == "fixed32") {
        return AtomicValue.new(<u32>(unsignedFromIntBytes(itr, 4)))
    } else if (type == "fixed64") {
        return AtomicValue.new(<u64>(unsignedFromIntBytes(itr, 8)))

    } else if (type == "float") {
        const dec = new Decoder(itr.splice(0, 4));
        const innerValue: f32 = dec.unpackNumber<f32>();
        return AtomicValue.new<f32>(innerValue)

    } else if (type == "double") {
        const dec = new Decoder(itr.splice(0, 8));
        const innerValue: f64 = dec.unpackNumber<f64>();
        return AtomicValue.new<f64>(innerValue)

    } else if (type == "string" || type == "image") {
        const string_length = unsignedFromVarintBytes(itr);
        const rawStr = itr.splice(0, <i32>(string_length));
        const innerValue: string = String.UTF8.decode(rawStr.buffer);
        return AtomicValue.new<string>(innerValue)

    } else if (type == "ipfs") {
        const array_length = unsignedFromVarintBytes(itr);
        const byte_array = Uint8Array.wrap(itr.splice(0, <i32>(array_length)).buffer)
        return AtomicValue.new<string>(encode(byte_array))

    } else if (type == "bool") {
        const next_byte = itr.splice(0, 1)[0]
        return AtomicValue.new<u8>(next_byte)

    } else {
        check(false, "No type could be matched - " + type);
        return new AtomicValue()
    }
}

export function serialize(attr_map: AtomicAttribute[], format_lines: AtomicFormat[]): u8[] {
    let number: u64 = 0;
    let serialized_data: u8[] = []

    for (let i = 0; i < format_lines.length; i++) {
        const line = format_lines[i];
        const attributeIndex = findIndexOfAttribute(attr_map, line.name);
        if (attributeIndex != -1) {
            const identifier: u8[] = toVarintBytes(number + RESERVED);
            serialized_data = serialized_data.concat(identifier)

            const child_data: u8[] = serialize_attribute(line.type, attr_map[attributeIndex].value)
            serialized_data = serialized_data.concat(child_data)

            attr_map.splice(attributeIndex, 1)
        }
        number++;
    }
    if (attr_map.length > 0) {
        check(false,
            "The following attribute could not be serialized, because it is not specified in the provided format: "
            + attr_map[0].key);
    }
    return serialized_data;
}

export function deserialize(data: u8[], format_lines: AtomicFormat[]): AtomicAttribute[] {
    const attr_map: AtomicAttribute[] = [];

    while (data.length) {
        const identifier = unsignedFromVarintBytes(data);
        const format = format_lines[<i32>(identifier - RESERVED)]
        const attr = deserialize_attribute(format.type, data)
        attr_map.push(
            new AtomicAttribute(format.name, attr)
        )
    }

    return attr_map;
}
