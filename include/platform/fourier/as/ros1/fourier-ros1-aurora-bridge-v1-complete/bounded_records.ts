// @file bounded_records.ts
// @brief Full fourier as codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in as. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
/** Complete industrial canonical records. No I/O or authority. */
import {Codec, Reader, validUnicode, validUtf8} from '../../assemblyscript/codecs';

export class VendorEncoded
{
    constructor(
        public status: u32 = 0,
        public bytes: Uint8Array = new Uint8Array(0),
    )
    {
    }
}

export class VendorDecoded<T>
{
    value: T|null = null;

    constructor(public status: u32 = 0)
    {
    }
}

export interface VendorCodec<T> extends Codec<T> {
    encode(value: T): Uint8Array;
    valid(bytes: Uint8Array): bool;
    decode(bytes: Uint8Array): T;
    encodeChecked(value: T): VendorEncoded;
    decodeChecked(bytes: Uint8Array): VendorDecoded<T>;
}

/** One exact-size private linear buffer; finish refuses any unexpected extent. */
class VendorWriter
{
    private b: Uint8Array;
    private at: i32 = 0;
    private good: bool = true;

    constructor(n: i32)
    {
        if(n < 0 || n > 32768)
        {
            this.good = false;
            n = 0;
        }
        this.b = new Uint8Array(n);
    }

    u8(v: u8): void
    {
        if(!this.good || this.at >= this.b.length)
        {
            this.good = false;
            return;
        }
        this.b[this.at++] = v;
    }

    integer(v: u64, n: i32): void
    {
        if(!this.good || n < 0 || n > 8 || n > this.b.length - this.at)
        {
            this.good = false;
            return;
        }
        for(let i = 0; i < n; ++i)
            this.b[this.at++] = <u8>(v >> (i * 8));
    }

    u32(v: u32): void
    {
        this.integer(v, 4);
    }

    blob(v: Uint8Array): void
    {
        this.u32(<u32>v.length);
        if(!this.good || v.length > this.b.length - this.at)
        {
            this.good = false;
            return;
        }
        this.b.set(v, this.at);
        this.at += v.length;
    }

    text(v: string): void
    {
        this.blob(Uint8Array.wrap(String.UTF8.encode(v)));
    }

    finish(): VendorEncoded
    {
        return this.good && this.at == this.b.length ? new VendorEncoded(0, this.b) : new VendorEncoded(22);
    }
}

/** Complete original uwvm_fourier_bridge/MotionRecipe; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeMotionRecipe
{
    static readonly maxWireBytes: i32 = 1170;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1170;
    /** Exact native field move_type, native scalar uint8. */
    move_type: u8 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field position, native scalar float64. */
    position: Array<f64> = new Array<f64>();
    /** Exact native field has_velocity, native scalar bool. */
    has_velocity: bool = false;
    /** Exact native field velocity, native scalar float64. */
    velocity: Array<f64> = new Array<f64>();
    /** Exact native field expected_velocity, native scalar int32. */
    expected_velocity: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1170 - n)
                return -90;
            n += 1;
            if(n > 1170)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 1170 - n)
                return -90;
            n += 4 + size;
            if(n > 1170)
                return -90;
        }
        {
            if(this.position.length > 64)
                return -22;
            if(4 > 1170 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                    return -22;
                if(8 > 1170 - n)
                    return -90;
                n += 8;
                if(n > 1170)
                    return -90;
            }
        }
        {
            if(1 > 1170 - n)
                return -90;
            n += 1;
            if(n > 1170)
                return -90;
        }
        {
            if(this.velocity.length > 64)
                return -22;
            if(4 > 1170 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                    return -22;
                if(8 > 1170 - n)
                    return -90;
                n += 8;
                if(n > 1170)
                    return -90;
            }
        }
        {
            if(4 > 1170 - n)
                return -90;
            n += 4;
            if(n > 1170)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.move_type, 1);
        w.text(this.group);
        w.u32(<u32>this.position.length);
        for(let i = 0; i < this.position.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.position[i]), 8);
        }
        w.u8(this.has_velocity ? 1 : 0);
        w.u32(<u32>this.velocity.length);
        for(let i = 0; i < this.velocity.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.velocity[i]), 8);
        }
        w.integer(<u64>this.expected_velocity, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeMotionRecipe
    {
        const value = new Ros1Uwvm_fourier_bridgeMotionRecipe();
        {
            const decoded = <u8>r.integer(1);
            value.move_type = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.position = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.position.push(decoded);
            }
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.has_velocity = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.velocity = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.velocity.push(decoded);
            }
        }
        {
            const decoded = <i32>r.integer(4);
            value.expected_velocity = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeMotionRecipeCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeMotionRecipe>
{
    static readonly codecIdentity: string = 'UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a';
    static readonly maxWireBytes: i32 = 1170;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeMotionRecipe): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeMotionRecipe): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeMotionRecipe>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeMotionRecipe>();
        if(bytes.length > 1170)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 18)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeMotionRecipe.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeMotionRecipe
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeMotionRecipe() : changetype<Ros1Uwvm_fourier_bridgeMotionRecipe>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/ExecuteMoveRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeExecuteMoveRequest
{
    static readonly maxWireBytes: i32 = 9372;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9372;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field moves, native scalar uwvm_fourier_bridge/MotionRecipe. */
    moves: Array<Ros1Uwvm_fourier_bridgeMotionRecipe> = new Array<Ros1Uwvm_fourier_bridgeMotionRecipe>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 9372 - n)
                return -90;
            n += 8;
            if(n > 9372)
                return -90;
        }
        {
            if(this.moves.length > 8)
                return -22;
            if(4 > 9372 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.moves.length; ++i)
            {
                const child = this.moves[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 9372 - n)
                    return -90;
                n += child;
                if(n > 9372)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.u32(<u32>this.moves.length);
        for(let i = 0; i < this.moves.length; ++i)
        {
            this.moves[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeExecuteMoveRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeExecuteMoveRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.moves = new Array<Ros1Uwvm_fourier_bridgeMotionRecipe>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeMotionRecipe.readControl(r);
                value.moves.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeExecuteMoveRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b';
    static readonly maxWireBytes: i32 = 9372;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeExecuteMoveRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeExecuteMoveRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeExecuteMoveRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeExecuteMoveRequest>();
        if(bytes.length > 9372)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeExecuteMoveRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeExecuteMoveRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeExecuteMoveRequest() : changetype<Ros1Uwvm_fourier_bridgeExecuteMoveRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/ExecuteMoveResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeExecuteMoveResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeExecuteMoveResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeExecuteMoveResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeExecuteMoveResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeExecuteMoveResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeExecuteMoveResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeExecuteMoveResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeExecuteMoveResponse>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeExecuteMoveResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeExecuteMoveResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeExecuteMoveResponse() : changetype<Ros1Uwvm_fourier_bridgeExecuteMoveResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetBaseDataRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetBaseDataRequest
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 140 - n)
                return -90;
            n += 8;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetBaseDataRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetBaseDataRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetBaseDataRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetBaseDataRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetBaseDataRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetBaseDataRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetBaseDataRequest>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetBaseDataRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetBaseDataRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetBaseDataRequest() : changetype<Ros1Uwvm_fourier_bridgeGetBaseDataRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetBaseDataResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetBaseDataResponse
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetBaseDataResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetBaseDataResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetBaseDataResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetBaseDataResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetBaseDataResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetBaseDataResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetBaseDataResponse>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetBaseDataResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetBaseDataResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetBaseDataResponse() : changetype<Ros1Uwvm_fourier_bridgeGetBaseDataResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetCartesianStateRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 272 - n)
                return -90;
            n += 8;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.text(this.group);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetCartesianStateRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetCartesianStateRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetCartesianStateRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetCartesianStateRequest>();
        if(bytes.length > 272)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetCartesianStateRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetCartesianStateRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetCartesianStateResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetCartesianStateResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetCartesianStateResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetCartesianStateResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetCartesianStateResponse>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetCartesianStateResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetCartesianStateResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetContactDataRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetContactDataRequest
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 140 - n)
                return -90;
            n += 8;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetContactDataRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetContactDataRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetContactDataRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetContactDataRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetContactDataRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetContactDataRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetContactDataRequest>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetContactDataRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetContactDataRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetContactDataRequest() : changetype<Ros1Uwvm_fourier_bridgeGetContactDataRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetContactDataResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetContactDataResponse
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetContactDataResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetContactDataResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetContactDataResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetContactDataResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetContactDataResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetContactDataResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetContactDataResponse>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetContactDataResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetContactDataResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetContactDataResponse() : changetype<Ros1Uwvm_fourier_bridgeGetContactDataResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetFsmNameRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetFsmNameRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetFsmNameRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetFsmNameRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetFsmNameRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetFsmNameRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetFsmNameRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetFsmNameRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetFsmNameRequest>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetFsmNameRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetFsmNameRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetFsmNameRequest() : changetype<Ros1Uwvm_fourier_bridgeGetFsmNameRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetFsmNameResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetFsmNameResponse
{
    static readonly maxWireBytes: i32 = 268;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 268;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar string. */
    value: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 268 - n)
                return -90;
            n += 4;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.value) || this.value.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.value);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.text(this.value);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetFsmNameResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetFsmNameResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetFsmNameResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55';
    static readonly maxWireBytes: i32 = 268;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetFsmNameResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetFsmNameResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetFsmNameResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetFsmNameResponse>();
        if(bytes.length > 268)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetFsmNameResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetFsmNameResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetFsmNameResponse() : changetype<Ros1Uwvm_fourier_bridgeGetFsmNameResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetFsmStateRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetFsmStateRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetFsmStateRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetFsmStateRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetFsmStateRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetFsmStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetFsmStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetFsmStateRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetFsmStateRequest>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetFsmStateRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetFsmStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetFsmStateRequest() : changetype<Ros1Uwvm_fourier_bridgeGetFsmStateRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetFsmStateResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetFsmStateResponse
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetFsmStateResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetFsmStateResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetFsmStateResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetFsmStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetFsmStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetFsmStateResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetFsmStateResponse>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetFsmStateResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetFsmStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetFsmStateResponse() : changetype<Ros1Uwvm_fourier_bridgeGetFsmStateResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetGroupMotionStateRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 140 - n)
                return -90;
            n += 8;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.text(this.group);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetGroupMotionStateResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetGroupMotorCfgRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 272 - n)
                return -90;
            n += 8;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.text(this.group);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest>();
        if(bytes.length > 272)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetGroupMotorCfgResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetGroupStateRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetGroupStateRequest
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 272 - n)
                return -90;
            n += 8;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.text(this.group);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetGroupStateRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetGroupStateRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetGroupStateRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetGroupStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetGroupStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupStateRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupStateRequest>();
        if(bytes.length > 272)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetGroupStateRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetGroupStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetGroupStateRequest() : changetype<Ros1Uwvm_fourier_bridgeGetGroupStateRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetGroupStateResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetGroupStateResponse
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetGroupStateResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetGroupStateResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetGroupStateResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetGroupStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetGroupStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupStateResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetGroupStateResponse>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetGroupStateResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetGroupStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetGroupStateResponse() : changetype<Ros1Uwvm_fourier_bridgeGetGroupStateResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetSnapshotRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetSnapshotRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetSnapshotRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetSnapshotRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetSnapshotRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetSnapshotRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetSnapshotRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetSnapshotRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetSnapshotRequest>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetSnapshotRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetSnapshotRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetSnapshotRequest() : changetype<Ros1Uwvm_fourier_bridgeGetSnapshotRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GroupState; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGroupState
{
    static readonly maxWireBytes: i32 = 1684;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1684;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field position, native scalar float64. */
    position: Array<f64> = new Array<f64>();
    /** Exact native field velocity, native scalar float64. */
    velocity: Array<f64> = new Array<f64>();
    /** Exact native field effort, native scalar float64. */
    effort: Array<f64> = new Array<f64>();
    /** Exact native field motion_state, native scalar int32. */
    motion_state: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 1684 - n)
                return -90;
            n += 4 + size;
            if(n > 1684)
                return -90;
        }
        {
            if(this.position.length > 64)
                return -22;
            if(4 > 1684 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                    return -22;
                if(8 > 1684 - n)
                    return -90;
                n += 8;
                if(n > 1684)
                    return -90;
            }
        }
        {
            if(this.velocity.length > 64)
                return -22;
            if(4 > 1684 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                    return -22;
                if(8 > 1684 - n)
                    return -90;
                n += 8;
                if(n > 1684)
                    return -90;
            }
        }
        {
            if(this.effort.length > 64)
                return -22;
            if(4 > 1684 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 1684 - n)
                    return -90;
                n += 8;
                if(n > 1684)
                    return -90;
            }
        }
        {
            if(4 > 1684 - n)
                return -90;
            n += 4;
            if(n > 1684)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.group);
        w.u32(<u32>this.position.length);
        for(let i = 0; i < this.position.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.position[i]), 8);
        }
        w.u32(<u32>this.velocity.length);
        for(let i = 0; i < this.velocity.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.velocity[i]), 8);
        }
        w.u32(<u32>this.effort.length);
        for(let i = 0; i < this.effort.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.effort[i]), 8);
        }
        w.integer(<u64>this.motion_state, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGroupState
    {
        const value = new Ros1Uwvm_fourier_bridgeGroupState();
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.position = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.position.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.velocity = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.velocity.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.effort = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.effort.push(decoded);
            }
        }
        {
            const decoded = <i32>r.integer(4);
            value.motion_state = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGroupStateCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGroupState>
{
    static readonly codecIdentity: string = 'UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855';
    static readonly maxWireBytes: i32 = 1684;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGroupState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGroupState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGroupState>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGroupState>();
        if(bytes.length > 1684)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGroupState.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGroupState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGroupState() : changetype<Ros1Uwvm_fourier_bridgeGroupState>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/Status; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeStatus
{
    static readonly maxWireBytes: i32 = 14400;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 14400;
    /** Exact native field fsm_state, native scalar int32. */
    fsm_state: i32 = 0;
    /** Exact native field fsm_name, native scalar string. */
    fsm_name: string = '';
    /** Exact native field upper_fsm_state, native scalar int32. */
    upper_fsm_state: i32 = 0;
    /** Exact native field upper_fsm_name, native scalar string. */
    upper_fsm_name: string = '';
    /** Exact native field velocity_source, native scalar int32. */
    velocity_source: i32 = 0;
    /** Exact native field velocity_source_name, native scalar string. */
    velocity_source_name: string = '';
    /** Exact native field stand_pose, native scalar float64. */
    stand_pose: Array<f64> = new Array<f64>();
    /** Exact native field groups, native scalar uwvm_fourier_bridge/GroupState. */
    groups: Array<Ros1Uwvm_fourier_bridgeGroupState> = new Array<Ros1Uwvm_fourier_bridgeGroupState>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 14400 - n)
                return -90;
            n += 4;
            if(n > 14400)
                return -90;
        }
        {
            if(!validUnicode(this.fsm_name) || this.fsm_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.fsm_name);
            if(size > 128)
                return -22;
            if(4 + size > 14400 - n)
                return -90;
            n += 4 + size;
            if(n > 14400)
                return -90;
        }
        {
            if(4 > 14400 - n)
                return -90;
            n += 4;
            if(n > 14400)
                return -90;
        }
        {
            if(!validUnicode(this.upper_fsm_name) || this.upper_fsm_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.upper_fsm_name);
            if(size > 128)
                return -22;
            if(4 + size > 14400 - n)
                return -90;
            n += 4 + size;
            if(n > 14400)
                return -90;
        }
        {
            if(4 > 14400 - n)
                return -90;
            n += 4;
            if(n > 14400)
                return -90;
        }
        {
            if(!validUnicode(this.velocity_source_name) || this.velocity_source_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.velocity_source_name);
            if(size > 128)
                return -22;
            if(4 + size > 14400 - n)
                return -90;
            n += 4 + size;
            if(n > 14400)
                return -90;
        }
        {
            if(this.stand_pose.length > 64)
                return -22;
            if(4 > 14400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.stand_pose.length; ++i)
            {
                if(!isFinite(this.stand_pose[i]))
                    return -22;
                if(8 > 14400 - n)
                    return -90;
                n += 8;
                if(n > 14400)
                    return -90;
            }
        }
        {
            if(this.groups.length > 8)
                return -22;
            if(4 > 14400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.groups.length; ++i)
            {
                const child = this.groups[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 14400 - n)
                    return -90;
                n += child;
                if(n > 14400)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.fsm_state, 4);
        w.text(this.fsm_name);
        w.integer(<u64>this.upper_fsm_state, 4);
        w.text(this.upper_fsm_name);
        w.integer(<u64>this.velocity_source, 4);
        w.text(this.velocity_source_name);
        w.u32(<u32>this.stand_pose.length);
        for(let i = 0; i < this.stand_pose.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.stand_pose[i]), 8);
        }
        w.u32(<u32>this.groups.length);
        for(let i = 0; i < this.groups.length; ++i)
        {
            this.groups[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeStatus
    {
        const value = new Ros1Uwvm_fourier_bridgeStatus();
        {
            const decoded = <i32>r.integer(4);
            value.fsm_state = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.fsm_name = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.upper_fsm_state = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.upper_fsm_name = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.velocity_source = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.velocity_source_name = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.stand_pose = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.stand_pose.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.groups = new Array<Ros1Uwvm_fourier_bridgeGroupState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupState.readControl(r);
                value.groups.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeStatusCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e';
    static readonly maxWireBytes: i32 = 14400;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeStatus>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeStatus>();
        if(bytes.length > 14400)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 32)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeStatus.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeStatus() : changetype<Ros1Uwvm_fourier_bridgeStatus>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetSnapshotResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetSnapshotResponse
{
    static readonly maxWireBytes: i32 = 14536;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 14536;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar uwvm_fourier_bridge/Status. */
    value: Ros1Uwvm_fourier_bridgeStatus = new Ros1Uwvm_fourier_bridgeStatus();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 14536 - n)
                return -90;
            n += 4;
            if(n > 14536)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 14536 - n)
                return -90;
            n += 4 + size;
            if(n > 14536)
                return -90;
        }
        {
            const child = this.value.wireSize();
            if(child < 0)
                return child;
            if(child > 14536 - n)
                return -90;
            n += child;
            if(n > 14536)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        this.value.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetSnapshotResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetSnapshotResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = Ros1Uwvm_fourier_bridgeStatus.readControl(r);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetSnapshotResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a';
    static readonly maxWireBytes: i32 = 14536;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetSnapshotResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetSnapshotResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetSnapshotResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetSnapshotResponse>();
        if(bytes.length > 14536)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetSnapshotResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetSnapshotResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetSnapshotResponse() : changetype<Ros1Uwvm_fourier_bridgeGetSnapshotResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetStandPoseRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetStandPoseRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetStandPoseRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetStandPoseRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetStandPoseRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetStandPoseRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetStandPoseRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetStandPoseRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetStandPoseRequest>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetStandPoseRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetStandPoseRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetStandPoseRequest() : changetype<Ros1Uwvm_fourier_bridgeGetStandPoseRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetStandPoseResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetStandPoseResponse
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetStandPoseResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetStandPoseResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetStandPoseResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetStandPoseResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetStandPoseResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetStandPoseResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetStandPoseResponse>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetStandPoseResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetStandPoseResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetStandPoseResponse() : changetype<Ros1Uwvm_fourier_bridgeGetStandPoseResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetUpperFsmNameRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest() : changetype<Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetUpperFsmNameResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
{
    static readonly maxWireBytes: i32 = 268;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 268;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar string. */
    value: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 268 - n)
                return -90;
            n += 4;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.value) || this.value.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.value);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.text(this.value);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe';
    static readonly maxWireBytes: i32 = 268;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse>();
        if(bytes.length > 268)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetUpperFsmStateRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetUpperFsmStateResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetVelocitySourceRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetVelocitySourceResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetVelocitySourceNameRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GetVelocitySourceNameResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
{
    static readonly maxWireBytes: i32 = 268;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 268;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar string. */
    value: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 268 - n)
                return -90;
            n += 4;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.value) || this.value.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.value);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.text(this.value);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b';
    static readonly maxWireBytes: i32 = 268;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse>();
        if(bytes.length > 268)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/GroupValues; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeGroupValues
{
    static readonly maxWireBytes: i32 = 648;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 648;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 648 - n)
                return -90;
            n += 4 + size;
            if(n > 648)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 648 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 648 - n)
                    return -90;
                n += 8;
                if(n > 648)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.group);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeGroupValues
    {
        const value = new Ros1Uwvm_fourier_bridgeGroupValues();
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeGroupValuesCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeGroupValues>
{
    static readonly codecIdentity: string = 'UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c';
    static readonly maxWireBytes: i32 = 648;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeGroupValues): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeGroupValues): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeGroupValues>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeGroupValues>();
        if(bytes.length > 648)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeGroupValues.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeGroupValues
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeGroupValues() : changetype<Ros1Uwvm_fourier_bridgeGroupValues>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetFsmStateRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetFsmStateRequest
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field state, native scalar int32. */
    state: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 12 - n)
                return -90;
            n += 8;
            if(n > 12)
                return -90;
        }
        {
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>this.state, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetFsmStateRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeSetFsmStateRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.state = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetFsmStateRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetFsmStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetFsmStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetFsmStateRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetFsmStateRequest>();
        if(bytes.length > 12)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetFsmStateRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetFsmStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetFsmStateRequest() : changetype<Ros1Uwvm_fourier_bridgeSetFsmStateRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetFsmStateResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetFsmStateResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetFsmStateResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeSetFsmStateResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetFsmStateResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetFsmStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetFsmStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetFsmStateResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetFsmStateResponse>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetFsmStateResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetFsmStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetFsmStateResponse() : changetype<Ros1Uwvm_fourier_bridgeSetFsmStateResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetGroupCommandRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
{
    static readonly maxWireBytes: i32 = 15572;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 15572;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field position, native scalar uwvm_fourier_bridge/GroupValues. */
    position: Array<Ros1Uwvm_fourier_bridgeGroupValues> = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();
    /** Exact native field velocity, native scalar uwvm_fourier_bridge/GroupValues. */
    velocity: Array<Ros1Uwvm_fourier_bridgeGroupValues> = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();
    /** Exact native field torque, native scalar uwvm_fourier_bridge/GroupValues. */
    torque: Array<Ros1Uwvm_fourier_bridgeGroupValues> = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 15572 - n)
                return -90;
            n += 8;
            if(n > 15572)
                return -90;
        }
        {
            if(this.position.length > 8)
                return -22;
            if(4 > 15572 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                const child = this.position[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 15572 - n)
                    return -90;
                n += child;
                if(n > 15572)
                    return -90;
            }
        }
        {
            if(this.velocity.length > 8)
                return -22;
            if(4 > 15572 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                const child = this.velocity[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 15572 - n)
                    return -90;
                n += child;
                if(n > 15572)
                    return -90;
            }
        }
        {
            if(this.torque.length > 8)
                return -22;
            if(4 > 15572 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.torque.length; ++i)
            {
                const child = this.torque[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 15572 - n)
                    return -90;
                n += child;
                if(n > 15572)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.u32(<u32>this.position.length);
        for(let i = 0; i < this.position.length; ++i)
        {
            this.position[i].writeControl(w);
        }
        w.u32(<u32>this.velocity.length);
        for(let i = 0; i < this.velocity.length; ++i)
        {
            this.velocity[i].writeControl(w);
        }
        w.u32(<u32>this.torque.length);
        for(let i = 0; i < this.torque.length; ++i)
        {
            this.torque[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeSetGroupCommandRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.position = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValues.readControl(r);
                value.position.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.velocity = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValues.readControl(r);
                value.velocity.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.torque = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValues.readControl(r);
                value.torque.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetGroupCommandRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220';
    static readonly maxWireBytes: i32 = 15572;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetGroupCommandRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetGroupCommandRequest>();
        if(bytes.length > 15572)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetGroupCommandRequest() : changetype<Ros1Uwvm_fourier_bridgeSetGroupCommandRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetGroupCommandResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeSetGroupCommandResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetGroupCommandResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetGroupCommandResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetGroupCommandResponse>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetGroupCommandResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeSetGroupCommandResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetMotorCfgPdRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
{
    static readonly maxWireBytes: i32 = 10384;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10384;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field kp, native scalar uwvm_fourier_bridge/GroupValues. */
    kp: Array<Ros1Uwvm_fourier_bridgeGroupValues> = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();
    /** Exact native field kd, native scalar uwvm_fourier_bridge/GroupValues. */
    kd: Array<Ros1Uwvm_fourier_bridgeGroupValues> = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 10384 - n)
                return -90;
            n += 8;
            if(n > 10384)
                return -90;
        }
        {
            if(this.kp.length > 8)
                return -22;
            if(4 > 10384 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.kp.length; ++i)
            {
                const child = this.kp[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10384 - n)
                    return -90;
                n += child;
                if(n > 10384)
                    return -90;
            }
        }
        {
            if(this.kd.length > 8)
                return -22;
            if(4 > 10384 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.kd.length; ++i)
            {
                const child = this.kd[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10384 - n)
                    return -90;
                n += child;
                if(n > 10384)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.u32(<u32>this.kp.length);
        for(let i = 0; i < this.kp.length; ++i)
        {
            this.kp[i].writeControl(w);
        }
        w.u32(<u32>this.kd.length);
        for(let i = 0; i < this.kd.length; ++i)
        {
            this.kd[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.kp = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValues.readControl(r);
                value.kp.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.kd = new Array<Ros1Uwvm_fourier_bridgeGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValues.readControl(r);
                value.kd.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d';
    static readonly maxWireBytes: i32 = 10384;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest>();
        if(bytes.length > 10384)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest() : changetype<Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetMotorCfgPdResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse() : changetype<Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetStandPoseRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetStandPoseRequest
{
    static readonly maxWireBytes: i32 = 32;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 32;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field delta_z, native scalar float64. */
    delta_z: f64 = 0;
    /** Exact native field delta_pitch, native scalar float64. */
    delta_pitch: f64 = 0;
    /** Exact native field delta_yaw, native scalar float64. */
    delta_yaw: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.delta_z))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.delta_pitch))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.delta_yaw))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>reinterpret<u64>(this.delta_z), 8);
        w.integer(<u64>reinterpret<u64>(this.delta_pitch), 8);
        w.integer(<u64>reinterpret<u64>(this.delta_yaw), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetStandPoseRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeSetStandPoseRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.delta_z = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.delta_pitch = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.delta_yaw = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetStandPoseRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed';
    static readonly maxWireBytes: i32 = 32;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetStandPoseRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetStandPoseRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetStandPoseRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetStandPoseRequest>();
        if(bytes.length > 32)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 32)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetStandPoseRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetStandPoseRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetStandPoseRequest() : changetype<Ros1Uwvm_fourier_bridgeSetStandPoseRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetStandPoseResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetStandPoseResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetStandPoseResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeSetStandPoseResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetStandPoseResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetStandPoseResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetStandPoseResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetStandPoseResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetStandPoseResponse>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetStandPoseResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetStandPoseResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetStandPoseResponse() : changetype<Ros1Uwvm_fourier_bridgeSetStandPoseResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetUpperFsmStateRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field state, native scalar int32. */
    state: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 12 - n)
                return -90;
            n += 8;
            if(n > 12)
                return -90;
        }
        {
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>this.state, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.state = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest>();
        if(bytes.length > 12)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetUpperFsmStateResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetVelocityRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetVelocityRequest
{
    static readonly maxWireBytes: i32 = 40;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 40;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field vx, native scalar float64. */
    vx: f64 = 0;
    /** Exact native field vy, native scalar float64. */
    vy: f64 = 0;
    /** Exact native field yaw, native scalar float64. */
    yaw: f64 = 0;
    /** Exact native field duration, native scalar float64. */
    duration: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.vx))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.vy))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.yaw))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.duration))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>reinterpret<u64>(this.vx), 8);
        w.integer(<u64>reinterpret<u64>(this.vy), 8);
        w.integer(<u64>reinterpret<u64>(this.yaw), 8);
        w.integer(<u64>reinterpret<u64>(this.duration), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetVelocityRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeSetVelocityRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vx = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vy = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.yaw = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.duration = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetVelocityRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d';
    static readonly maxWireBytes: i32 = 40;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetVelocityRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetVelocityRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetVelocityRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetVelocityRequest>();
        if(bytes.length > 40)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetVelocityRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetVelocityRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetVelocityRequest() : changetype<Ros1Uwvm_fourier_bridgeSetVelocityRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetVelocityResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetVelocityResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetVelocityResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeSetVelocityResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetVelocityResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetVelocityResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetVelocityResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetVelocityResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetVelocityResponse>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetVelocityResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetVelocityResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetVelocityResponse() : changetype<Ros1Uwvm_fourier_bridgeSetVelocityResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetVelocitySourceRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field source, native scalar int32. */
    source: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 12 - n)
                return -90;
            n += 8;
            if(n > 12)
                return -90;
        }
        {
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>this.source, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.source = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest>();
        if(bytes.length > 12)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/SetVelocitySourceResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/VelocityCommand; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeVelocityCommand
{
    static readonly maxWireBytes: i32 = 40;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 40;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field vx, native scalar float64. */
    vx: f64 = 0;
    /** Exact native field vy, native scalar float64. */
    vy: f64 = 0;
    /** Exact native field yaw, native scalar float64. */
    yaw: f64 = 0;
    /** Exact native field duration, native scalar float64. */
    duration: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.vx))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.vy))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.yaw))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.duration))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>reinterpret<u64>(this.vx), 8);
        w.integer(<u64>reinterpret<u64>(this.vy), 8);
        w.integer(<u64>reinterpret<u64>(this.yaw), 8);
        w.integer(<u64>reinterpret<u64>(this.duration), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeVelocityCommand
    {
        const value = new Ros1Uwvm_fourier_bridgeVelocityCommand();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vx = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vy = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.yaw = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.duration = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeVelocityCommandCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeVelocityCommand>
{
    static readonly codecIdentity: string = 'UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54';
    static readonly maxWireBytes: i32 = 40;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeVelocityCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeVelocityCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeVelocityCommand>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeVelocityCommand>();
        if(bytes.length > 40)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeVelocityCommand.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeVelocityCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeVelocityCommand() : changetype<Ros1Uwvm_fourier_bridgeVelocityCommand>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
{
    static readonly maxWireBytes: i32 = 1084;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1084;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field groups, native scalar string. */
    groups: Array<string> = new Array<string>();
    /** Exact native field timeout_seconds, native scalar float64. */
    timeout_seconds: f64 = 0;
    /** Exact native field poll_seconds, native scalar float64. */
    poll_seconds: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 1084 - n)
                return -90;
            n += 8;
            if(n > 1084)
                return -90;
        }
        {
            if(this.groups.length > 8)
                return -22;
            if(4 > 1084 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.groups.length; ++i)
            {
                if(!validUnicode(this.groups[i]) || this.groups[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.groups[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 1084 - n)
                    return -90;
                n += 4 + size;
                if(n > 1084)
                    return -90;
            }
        }
        {
            if(!isFinite(this.timeout_seconds))
                return -22;
            if(8 > 1084 - n)
                return -90;
            n += 8;
            if(n > 1084)
                return -90;
        }
        {
            if(!isFinite(this.poll_seconds))
                return -22;
            if(8 > 1084 - n)
                return -90;
            n += 8;
            if(n > 1084)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sequence, 8);
        w.u32(<u32>this.groups.length);
        for(let i = 0; i < this.groups.length; ++i)
        {
            w.text(this.groups[i]);
        }
        w.integer(<u64>reinterpret<u64>(this.timeout_seconds), 8);
        w.integer(<u64>reinterpret<u64>(this.poll_seconds), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
    {
        const value = new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.groups = new Array<string>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const size = r.u32();
                if(!r.valid || size > 128)
                {
                    r.valid = false;
                    return value;
                }
                const raw = r.take(size);
                if(!r.valid || !validUtf8(raw, false))
                {
                    r.valid = false;
                    return value;
                }
                const decoded = String.UTF8.decode(raw.buffer);
                value.groups.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.timeout_seconds = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.poll_seconds = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33';
    static readonly maxWireBytes: i32 = 1084;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest>();
        if(bytes.length > 1084)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest()
                                  : changetype<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse; spellings are published in generation proof. */
export class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
{
    static readonly maxWireBytes: i32 = 137;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 137;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field complete, native scalar bool. */
    complete: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 137 - n)
                return -90;
            n += 4;
            if(n > 137)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 137 - n)
                return -90;
            n += 4 + size;
            if(n > 137)
                return -90;
        }
        {
            if(1 > 137 - n)
                return -90;
            n += 1;
            if(n > 137)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u8(this.complete ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
    {
        const value = new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.complete = decoded;
        }
        return value;
    }
}

export class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec implements VendorCodec<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8';
    static readonly maxWireBytes: i32 = 137;

    encodeChecked(value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse>
    {
        const out = new VendorDecoded<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse>();
        if(bytes.length > 137)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 9)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse()
                                  : changetype<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse>(out.value);
    }
}
