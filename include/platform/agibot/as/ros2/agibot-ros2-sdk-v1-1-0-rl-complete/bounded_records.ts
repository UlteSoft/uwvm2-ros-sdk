// @file bounded_records.ts
// @brief Full agibot as codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_rl values in as. 19 original records retain 71 fields and 19 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
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

/** Complete original builtin_interfaces/msg/Time; spellings are published in generation proof. */
export class Ros2Builtin_interfacesMsgTime
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sec, native scalar int32. */
    sec: i32 = 0;
    /** Exact native field nanosec, native scalar uint32. */
    nanosec: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 8 - n)
                return -90;
            n += 4;
            if(n > 8)
                return -90;
        }
        {
            if(4 > 8 - n)
                return -90;
            n += 4;
            if(n > 8)
                return -90;
        }
        if(this.nanosec >= 1000000000)
            return -22;
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
        w.integer(<u64>this.sec, 4);
        w.integer(<u64>this.nanosec, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Builtin_interfacesMsgTime
    {
        const value = new Ros2Builtin_interfacesMsgTime();
        {
            const decoded = <i32>r.integer(4);
            value.sec = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.nanosec = decoded;
        }
        if(value.nanosec >= 1000000000)
            r.valid = false;
        return value;
    }
}

export class Ros2Builtin_interfacesMsgTimeCodec implements VendorCodec<Ros2Builtin_interfacesMsgTime>
{
    static readonly codecIdentity: string = 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Builtin_interfacesMsgTime): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Builtin_interfacesMsgTime): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Builtin_interfacesMsgTime>
    {
        const out = new VendorDecoded<Ros2Builtin_interfacesMsgTime>();
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
        const reader = new Reader(bytes), value = Ros2Builtin_interfacesMsgTime.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Builtin_interfacesMsgTime
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Builtin_interfacesMsgTime() : changetype<Ros2Builtin_interfacesMsgTime>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/RequestHeader; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgRequestHeader
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field stamp, native scalar builtin_interfaces/msg/Time. */
    stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 8 - n)
                return -90;
            n += child;
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
        this.stamp.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgRequestHeader
    {
        const value = new Ros2Aimdk_msgsMsgRequestHeader();
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.stamp = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgRequestHeaderCodec implements VendorCodec<Ros2Aimdk_msgsMsgRequestHeader>
{
    static readonly codecIdentity: string = 'UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsMsgRequestHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgRequestHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgRequestHeader>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgRequestHeader>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgRequestHeader.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgRequestHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgRequestHeader() : changetype<Ros2Aimdk_msgsMsgRequestHeader>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/CommonRequest; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgCommonRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field header, native scalar aimdk_msgs/msg/RequestHeader. */
    header: Ros2Aimdk_msgsMsgRequestHeader = new Ros2Aimdk_msgsMsgRequestHeader();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 8 - n)
                return -90;
            n += child;
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
        this.header.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgCommonRequest
    {
        const value = new Ros2Aimdk_msgsMsgCommonRequest();
        {
            const decoded = Ros2Aimdk_msgsMsgRequestHeader.readControl(r);
            value.header = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgCommonRequestCodec implements VendorCodec<Ros2Aimdk_msgsMsgCommonRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsMsgCommonRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgCommonRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgCommonRequest>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgCommonRequest>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgCommonRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgCommonRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgCommonRequest() : changetype<Ros2Aimdk_msgsMsgCommonRequest>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/ResponseHeader; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgResponseHeader
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** Exact native field stamp, native scalar builtin_interfaces/msg/Time. */
    stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /** Exact native field code, native scalar int64. */
    code: i64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 16 - n)
                return -90;
            n += child;
            if(n > 16)
                return -90;
        }
        {
            if(8 > 16 - n)
                return -90;
            n += 8;
            if(n > 16)
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
        this.stamp.writeControl(w);
        w.integer(<u64>this.code, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgResponseHeader
    {
        const value = new Ros2Aimdk_msgsMsgResponseHeader();
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.stamp = decoded;
        }
        {
            const decoded = <i64>r.integer(8);
            value.code = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgResponseHeaderCodec implements VendorCodec<Ros2Aimdk_msgsMsgResponseHeader>
{
    static readonly codecIdentity: string = 'UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90';
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros2Aimdk_msgsMsgResponseHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgResponseHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgResponseHeader>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgResponseHeader>();
        if(bytes.length > 16)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgResponseHeader.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgResponseHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgResponseHeader() : changetype<Ros2Aimdk_msgsMsgResponseHeader>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/CommonState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgCommonState
{
    static readonly UNKNOWN: i32 = 0;
    static readonly SUCCESS: i32 = 1;
    static readonly FAILURE: i32 = 2;
    static readonly ABORTED: i32 = 3;
    static readonly TIMEOUT: i32 = 4;
    static readonly INVALID: i32 = 5;
    static readonly IN_MANUAL: i32 = 6;
    static readonly NOT_READY: i32 = 100;
    static readonly PENDING: i32 = 200;
    static readonly CREATED: i32 = 300;
    static readonly RUNNING: i32 = 400;
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 4 - n)
                return -90;
            n += 4;
            if(n > 4)
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
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgCommonState
    {
        const value = new Ros2Aimdk_msgsMsgCommonState();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgCommonStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgCommonState>
{
    static readonly codecIdentity: string = 'UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgCommonState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgCommonState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgCommonState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgCommonState>();
        if(bytes.length > 4)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgCommonState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgCommonState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgCommonState() : changetype<Ros2Aimdk_msgsMsgCommonState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/CommonResponse; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgCommonResponse
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field header, native scalar aimdk_msgs/msg/ResponseHeader. */
    header: Ros2Aimdk_msgsMsgResponseHeader = new Ros2Aimdk_msgsMsgResponseHeader();
    /** Exact native field status, native scalar aimdk_msgs/msg/CommonState. */
    status: Ros2Aimdk_msgsMsgCommonState = new Ros2Aimdk_msgsMsgCommonState();
    /** Exact native field message, native scalar string. */
    message: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 152 - n)
                return -90;
            n += child;
            if(n > 152)
                return -90;
        }
        {
            const child = this.status.wireSize();
            if(child < 0)
                return child;
            if(child > 152 - n)
                return -90;
            n += child;
            if(n > 152)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 152 - n)
                return -90;
            n += 4 + size;
            if(n > 152)
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
        this.header.writeControl(w);
        this.status.writeControl(w);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgCommonResponse
    {
        const value = new Ros2Aimdk_msgsMsgCommonResponse();
        {
            const decoded = Ros2Aimdk_msgsMsgResponseHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgCommonState.readControl(r);
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
            value.message = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgCommonResponseCodec implements VendorCodec<Ros2Aimdk_msgsMsgCommonResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsMsgCommonResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgCommonResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgCommonResponse>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgCommonResponse>();
        if(bytes.length > 152)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgCommonResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgCommonResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgCommonResponse() : changetype<Ros2Aimdk_msgsMsgCommonResponse>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/CommonTaskResponse; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgCommonTaskResponse
{
    static readonly maxWireBytes: i32 = 28;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 28;
    /** Exact native field header, native scalar aimdk_msgs/msg/ResponseHeader. */
    header: Ros2Aimdk_msgsMsgResponseHeader = new Ros2Aimdk_msgsMsgResponseHeader();
    /** Exact native field task_id, native scalar uint64. */
    task_id: u64 = 0;
    /** Exact native field state, native scalar aimdk_msgs/msg/CommonState. */
    state: Ros2Aimdk_msgsMsgCommonState = new Ros2Aimdk_msgsMsgCommonState();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 28 - n)
                return -90;
            n += child;
            if(n > 28)
                return -90;
        }
        {
            if(8 > 28 - n)
                return -90;
            n += 8;
            if(n > 28)
                return -90;
        }
        {
            const child = this.state.wireSize();
            if(child < 0)
                return child;
            if(child > 28 - n)
                return -90;
            n += child;
            if(n > 28)
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
        this.header.writeControl(w);
        w.integer(<u64>this.task_id, 8);
        this.state.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgCommonTaskResponse
    {
        const value = new Ros2Aimdk_msgsMsgCommonTaskResponse();
        {
            const decoded = Ros2Aimdk_msgsMsgResponseHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.task_id = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgCommonState.readControl(r);
            value.state = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgCommonTaskResponseCodec implements VendorCodec<Ros2Aimdk_msgsMsgCommonTaskResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2';
    static readonly maxWireBytes: i32 = 28;

    encodeChecked(value: Ros2Aimdk_msgsMsgCommonTaskResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgCommonTaskResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgCommonTaskResponse>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgCommonTaskResponse>();
        if(bytes.length > 28)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgCommonTaskResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgCommonTaskResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgCommonTaskResponse() : changetype<Ros2Aimdk_msgsMsgCommonTaskResponse>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/DomainErrorState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgDomainErrorState
{
    static readonly NONE: u8 = 0;
    static readonly DAMPING: u8 = 1;
    static readonly POWERDOWN: u8 = 2;
    static readonly DISABLE: u8 = 3;
    static readonly DISCONNECT: u8 = 4;
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field value, native scalar uint8. */
    value: u8 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
                return -90;
            n += 1;
            if(n > 1)
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
        w.integer(<u64>this.value, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgDomainErrorState
    {
        const value = new Ros2Aimdk_msgsMsgDomainErrorState();
        {
            const decoded = <u8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgDomainErrorStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgDomainErrorState>
{
    static readonly codecIdentity: string = 'UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Aimdk_msgsMsgDomainErrorState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgDomainErrorState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgDomainErrorState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgDomainErrorState>();
        if(bytes.length > 1)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgDomainErrorState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgDomainErrorState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgDomainErrorState() : changetype<Ros2Aimdk_msgsMsgDomainErrorState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/JointCommand; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgJointCommand
{
    static readonly maxWireBytes: i32 = 172;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 172;
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field position, native scalar float64. */
    position: f64 = 0;
    /** Exact native field velocity, native scalar float64. */
    velocity: f64 = 0;
    /** Exact native field effort, native scalar float64. */
    effort: f64 = 0;
    /** Exact native field stiffness, native scalar float64. */
    stiffness: f64 = 0;
    /** Exact native field damping, native scalar float64. */
    damping: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 172 - n)
                return -90;
            n += 4 + size;
            if(n > 172)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(8 > 172 - n)
                return -90;
            n += 8;
            if(n > 172)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(8 > 172 - n)
                return -90;
            n += 8;
            if(n > 172)
                return -90;
        }
        {
            if(!isFinite(this.effort))
                return -22;
            if(8 > 172 - n)
                return -90;
            n += 8;
            if(n > 172)
                return -90;
        }
        {
            if(!isFinite(this.stiffness))
                return -22;
            if(8 > 172 - n)
                return -90;
            n += 8;
            if(n > 172)
                return -90;
        }
        {
            if(!isFinite(this.damping))
                return -22;
            if(8 > 172 - n)
                return -90;
            n += 8;
            if(n > 172)
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
        w.text(this.name);
        w.integer(<u64>reinterpret<u64>(this.position), 8);
        w.integer(<u64>reinterpret<u64>(this.velocity), 8);
        w.integer(<u64>reinterpret<u64>(this.effort), 8);
        w.integer(<u64>reinterpret<u64>(this.stiffness), 8);
        w.integer(<u64>reinterpret<u64>(this.damping), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgJointCommand
    {
        const value = new Ros2Aimdk_msgsMsgJointCommand();
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
            value.name = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.position = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.velocity = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.effort = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.stiffness = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.damping = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgJointCommandCodec implements VendorCodec<Ros2Aimdk_msgsMsgJointCommand>
{
    static readonly codecIdentity: string = 'UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f';
    static readonly maxWireBytes: i32 = 172;

    encodeChecked(value: Ros2Aimdk_msgsMsgJointCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgJointCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgJointCommand>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgJointCommand>();
        if(bytes.length > 172)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 44)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgJointCommand.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgJointCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgJointCommand() : changetype<Ros2Aimdk_msgsMsgJointCommand>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/MessageHeader; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMessageHeader
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field stamp, native scalar builtin_interfaces/msg/Time. */
    stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /** Exact native field frame_id, native scalar string. */
    frame_id: string = '';
    /** Exact native field sequence, native scalar uint32. */
    sequence: u32 = 0;
    /** Exact native field meas_stamp, native scalar builtin_interfaces/msg/Time. */
    meas_stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 152 - n)
                return -90;
            n += child;
            if(n > 152)
                return -90;
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.frame_id);
            if(size > 128)
                return -22;
            if(4 + size > 152 - n)
                return -90;
            n += 4 + size;
            if(n > 152)
                return -90;
        }
        {
            if(4 > 152 - n)
                return -90;
            n += 4;
            if(n > 152)
                return -90;
        }
        {
            const child = this.meas_stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 152 - n)
                return -90;
            n += child;
            if(n > 152)
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
        this.stamp.writeControl(w);
        w.text(this.frame_id);
        w.integer(<u64>this.sequence, 4);
        this.meas_stamp.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMessageHeader
    {
        const value = new Ros2Aimdk_msgsMsgMessageHeader();
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.stamp = decoded;
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
            value.frame_id = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.sequence = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.meas_stamp = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMessageHeaderCodec implements VendorCodec<Ros2Aimdk_msgsMsgMessageHeader>
{
    static readonly codecIdentity: string = 'UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsMsgMessageHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMessageHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMessageHeader>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMessageHeader>();
        if(bytes.length > 152)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMessageHeader.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMessageHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMessageHeader() : changetype<Ros2Aimdk_msgsMsgMessageHeader>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/JointCommandArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgJointCommandArray
{
    static readonly maxWireBytes: i32 = 11164;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 11164;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field joints, native scalar aimdk_msgs/msg/JointCommand. */
    joints: Array<Ros2Aimdk_msgsMsgJointCommand> = new Array<Ros2Aimdk_msgsMsgJointCommand>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 11164 - n)
                return -90;
            n += child;
            if(n > 11164)
                return -90;
        }
        {
            if(this.joints.length > 64)
                return -22;
            if(4 > 11164 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joints.length; ++i)
            {
                const child = this.joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 11164 - n)
                    return -90;
                n += child;
                if(n > 11164)
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
        this.header.writeControl(w);
        w.u32(<u32>this.joints.length);
        for(let i = 0; i < this.joints.length; ++i)
        {
            this.joints[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgJointCommandArray
    {
        const value = new Ros2Aimdk_msgsMsgJointCommandArray();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.joints = new Array<Ros2Aimdk_msgsMsgJointCommand>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointCommand.readControl(r);
                value.joints.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgJointCommandArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgJointCommandArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6';
    static readonly maxWireBytes: i32 = 11164;

    encodeChecked(value: Ros2Aimdk_msgsMsgJointCommandArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgJointCommandArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgJointCommandArray>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgJointCommandArray>();
        if(bytes.length > 11164)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgJointCommandArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgJointCommandArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgJointCommandArray() : changetype<Ros2Aimdk_msgsMsgJointCommandArray>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/JointState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgJointState
{
    static readonly maxWireBytes: i32 = 158;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 158;
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field position, native scalar float64. */
    position: f64 = 0;
    /** Exact native field velocity, native scalar float64. */
    velocity: f64 = 0;
    /** Exact native field effort, native scalar float64. */
    effort: f64 = 0;
    /** Exact native field error_code, native scalar uint16. */
    error_code: u16 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 158 - n)
                return -90;
            n += 4 + size;
            if(n > 158)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(8 > 158 - n)
                return -90;
            n += 8;
            if(n > 158)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(8 > 158 - n)
                return -90;
            n += 8;
            if(n > 158)
                return -90;
        }
        {
            if(!isFinite(this.effort))
                return -22;
            if(8 > 158 - n)
                return -90;
            n += 8;
            if(n > 158)
                return -90;
        }
        {
            if(2 > 158 - n)
                return -90;
            n += 2;
            if(n > 158)
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
        w.text(this.name);
        w.integer(<u64>reinterpret<u64>(this.position), 8);
        w.integer(<u64>reinterpret<u64>(this.velocity), 8);
        w.integer(<u64>reinterpret<u64>(this.effort), 8);
        w.integer(<u64>this.error_code, 2);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgJointState
    {
        const value = new Ros2Aimdk_msgsMsgJointState();
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
            value.name = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.position = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.velocity = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.effort = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.error_code = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgJointStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgJointState>
{
    static readonly codecIdentity: string = 'UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53';
    static readonly maxWireBytes: i32 = 158;

    encodeChecked(value: Ros2Aimdk_msgsMsgJointState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgJointState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgJointState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgJointState>();
        if(bytes.length > 158)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 30)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgJointState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgJointState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgJointState() : changetype<Ros2Aimdk_msgsMsgJointState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/JointStateArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgJointStateArray
{
    static readonly maxWireBytes: i32 = 10269;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10269;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field state, native scalar aimdk_msgs/msg/DomainErrorState. */
    state: Ros2Aimdk_msgsMsgDomainErrorState = new Ros2Aimdk_msgsMsgDomainErrorState();
    /** Exact native field joints, native scalar aimdk_msgs/msg/JointState. */
    joints: Array<Ros2Aimdk_msgsMsgJointState> = new Array<Ros2Aimdk_msgsMsgJointState>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 10269 - n)
                return -90;
            n += child;
            if(n > 10269)
                return -90;
        }
        {
            const child = this.state.wireSize();
            if(child < 0)
                return child;
            if(child > 10269 - n)
                return -90;
            n += child;
            if(n > 10269)
                return -90;
        }
        {
            if(this.joints.length > 64)
                return -22;
            if(4 > 10269 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joints.length; ++i)
            {
                const child = this.joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10269 - n)
                    return -90;
                n += child;
                if(n > 10269)
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
        this.header.writeControl(w);
        this.state.writeControl(w);
        w.u32(<u32>this.joints.length);
        for(let i = 0; i < this.joints.length; ++i)
        {
            this.joints[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgJointStateArray
    {
        const value = new Ros2Aimdk_msgsMsgJointStateArray();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgDomainErrorState.readControl(r);
            value.state = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.joints = new Array<Ros2Aimdk_msgsMsgJointState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointState.readControl(r);
                value.joints.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgJointStateArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgJointStateArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e';
    static readonly maxWireBytes: i32 = 10269;

    encodeChecked(value: Ros2Aimdk_msgsMsgJointStateArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgJointStateArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgJointStateArray>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgJointStateArray>();
        if(bytes.length > 10269)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgJointStateArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgJointStateArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgJointStateArray() : changetype<Ros2Aimdk_msgsMsgJointStateArray>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/ModuleChannelInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgModuleChannelInfo
{
    static readonly maxWireBytes: i32 = 586;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 586;
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field type, native scalar string. */
    ros_type: string = '';
    /** Exact native field frequency, native scalar float64. */
    frequency: f64 = 0;
    /** Exact native field min_time_diff, native scalar float64. */
    min_time_diff: f64 = 0;
    /** Exact native field max_time_diff, native scalar float64. */
    max_time_diff: f64 = 0;
    /** Exact native field std_dev, native scalar float64. */
    std_dev: f64 = 0;
    /** Exact native field window_size, native scalar int32. */
    window_size: i32 = 0;
    /** Exact native field timeout_threshold, native scalar float64. */
    timeout_threshold: f64 = 0;
    /** Exact native field is_active, native scalar bool. */
    is_active: bool = false;
    /** Exact native field is_timeout, native scalar bool. */
    is_timeout: bool = false;
    /** Exact native field backends, native scalar string. */
    backends: Array<string> = new Array<string>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 586 - n)
                return -90;
            n += 4 + size;
            if(n > 586)
                return -90;
        }
        {
            if(!validUnicode(this.ros_type) || this.ros_type.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.ros_type);
            if(size > 128)
                return -22;
            if(4 + size > 586 - n)
                return -90;
            n += 4 + size;
            if(n > 586)
                return -90;
        }
        {
            if(!isFinite(this.frequency))
                return -22;
            if(8 > 586 - n)
                return -90;
            n += 8;
            if(n > 586)
                return -90;
        }
        {
            if(!isFinite(this.min_time_diff))
                return -22;
            if(8 > 586 - n)
                return -90;
            n += 8;
            if(n > 586)
                return -90;
        }
        {
            if(!isFinite(this.max_time_diff))
                return -22;
            if(8 > 586 - n)
                return -90;
            n += 8;
            if(n > 586)
                return -90;
        }
        {
            if(!isFinite(this.std_dev))
                return -22;
            if(8 > 586 - n)
                return -90;
            n += 8;
            if(n > 586)
                return -90;
        }
        {
            if(4 > 586 - n)
                return -90;
            n += 4;
            if(n > 586)
                return -90;
        }
        {
            if(!isFinite(this.timeout_threshold))
                return -22;
            if(8 > 586 - n)
                return -90;
            n += 8;
            if(n > 586)
                return -90;
        }
        {
            if(1 > 586 - n)
                return -90;
            n += 1;
            if(n > 586)
                return -90;
        }
        {
            if(1 > 586 - n)
                return -90;
            n += 1;
            if(n > 586)
                return -90;
        }
        {
            if(this.backends.length > 4)
                return -22;
            if(4 > 586 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.backends.length; ++i)
            {
                if(!validUnicode(this.backends[i]) || this.backends[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.backends[i]);
                if(size > 64)
                    return -22;
                if(4 + size > 586 - n)
                    return -90;
                n += 4 + size;
                if(n > 586)
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
        w.text(this.name);
        w.text(this.ros_type);
        w.integer(<u64>reinterpret<u64>(this.frequency), 8);
        w.integer(<u64>reinterpret<u64>(this.min_time_diff), 8);
        w.integer(<u64>reinterpret<u64>(this.max_time_diff), 8);
        w.integer(<u64>reinterpret<u64>(this.std_dev), 8);
        w.integer(<u64>this.window_size, 4);
        w.integer(<u64>reinterpret<u64>(this.timeout_threshold), 8);
        w.u8(this.is_active ? 1 : 0);
        w.u8(this.is_timeout ? 1 : 0);
        w.u32(<u32>this.backends.length);
        for(let i = 0; i < this.backends.length; ++i)
        {
            w.text(this.backends[i]);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgModuleChannelInfo
    {
        const value = new Ros2Aimdk_msgsMsgModuleChannelInfo();
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
            value.name = decoded;
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
            value.ros_type = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.frequency = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.min_time_diff = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.max_time_diff = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.std_dev = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.window_size = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.timeout_threshold = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.is_active = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.is_timeout = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.backends = new Array<string>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const size = r.u32();
                if(!r.valid || size > 64)
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
                value.backends.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgModuleChannelInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgModuleChannelInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696';
    static readonly maxWireBytes: i32 = 586;

    encodeChecked(value: Ros2Aimdk_msgsMsgModuleChannelInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgModuleChannelInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgModuleChannelInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgModuleChannelInfo>();
        if(bytes.length > 586)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 58)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgModuleChannelInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgModuleChannelInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgModuleChannelInfo() : changetype<Ros2Aimdk_msgsMsgModuleChannelInfo>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/ModuleRpcInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgModuleRpcInfo
{
    static readonly maxWireBytes: i32 = 672;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 672;
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field req_type, native scalar string. */
    req_type: string = '';
    /** Exact native field res_type, native scalar string. */
    res_type: string = '';
    /** Exact native field backends, native scalar string. */
    backends: Array<string> = new Array<string>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 672 - n)
                return -90;
            n += 4 + size;
            if(n > 672)
                return -90;
        }
        {
            if(!validUnicode(this.req_type) || this.req_type.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.req_type);
            if(size > 128)
                return -22;
            if(4 + size > 672 - n)
                return -90;
            n += 4 + size;
            if(n > 672)
                return -90;
        }
        {
            if(!validUnicode(this.res_type) || this.res_type.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.res_type);
            if(size > 128)
                return -22;
            if(4 + size > 672 - n)
                return -90;
            n += 4 + size;
            if(n > 672)
                return -90;
        }
        {
            if(this.backends.length > 4)
                return -22;
            if(4 > 672 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.backends.length; ++i)
            {
                if(!validUnicode(this.backends[i]) || this.backends[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.backends[i]);
                if(size > 64)
                    return -22;
                if(4 + size > 672 - n)
                    return -90;
                n += 4 + size;
                if(n > 672)
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
        w.text(this.name);
        w.text(this.req_type);
        w.text(this.res_type);
        w.u32(<u32>this.backends.length);
        for(let i = 0; i < this.backends.length; ++i)
        {
            w.text(this.backends[i]);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgModuleRpcInfo
    {
        const value = new Ros2Aimdk_msgsMsgModuleRpcInfo();
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
            value.name = decoded;
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
            value.req_type = decoded;
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
            value.res_type = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.backends = new Array<string>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const size = r.u32();
                if(!r.valid || size > 64)
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
                value.backends.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgModuleRpcInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgModuleRpcInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8';
    static readonly maxWireBytes: i32 = 672;

    encodeChecked(value: Ros2Aimdk_msgsMsgModuleRpcInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgModuleRpcInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgModuleRpcInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgModuleRpcInfo>();
        if(bytes.length > 672)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgModuleRpcInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgModuleRpcInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgModuleRpcInfo() : changetype<Ros2Aimdk_msgsMsgModuleRpcInfo>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/ModuleResourceInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgModuleResourceInfo
{
    static readonly maxWireBytes: i32 = 5180;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 5180;
    /** Exact native field module_name, native scalar string. */
    module_name: string = '';
    /** Exact native field rpc_clients, native scalar aimdk_msgs/msg/ModuleRpcInfo. */
    rpc_clients: Array<Ros2Aimdk_msgsMsgModuleRpcInfo> = new Array<Ros2Aimdk_msgsMsgModuleRpcInfo>();
    /** Exact native field rpc_services, native scalar aimdk_msgs/msg/ModuleRpcInfo. */
    rpc_services: Array<Ros2Aimdk_msgsMsgModuleRpcInfo> = new Array<Ros2Aimdk_msgsMsgModuleRpcInfo>();
    /** Exact native field pub_channels, native scalar aimdk_msgs/msg/ModuleChannelInfo. */
    pub_channels: Array<Ros2Aimdk_msgsMsgModuleChannelInfo> = new Array<Ros2Aimdk_msgsMsgModuleChannelInfo>();
    /** Exact native field sub_channels, native scalar aimdk_msgs/msg/ModuleChannelInfo. */
    sub_channels: Array<Ros2Aimdk_msgsMsgModuleChannelInfo> = new Array<Ros2Aimdk_msgsMsgModuleChannelInfo>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.module_name) || this.module_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.module_name);
            if(size > 128)
                return -22;
            if(4 + size > 5180 - n)
                return -90;
            n += 4 + size;
            if(n > 5180)
                return -90;
        }
        {
            if(this.rpc_clients.length > 2)
                return -22;
            if(4 > 5180 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.rpc_clients.length; ++i)
            {
                const child = this.rpc_clients[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 5180 - n)
                    return -90;
                n += child;
                if(n > 5180)
                    return -90;
            }
        }
        {
            if(this.rpc_services.length > 2)
                return -22;
            if(4 > 5180 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.rpc_services.length; ++i)
            {
                const child = this.rpc_services[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 5180 - n)
                    return -90;
                n += child;
                if(n > 5180)
                    return -90;
            }
        }
        {
            if(this.pub_channels.length > 2)
                return -22;
            if(4 > 5180 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.pub_channels.length; ++i)
            {
                const child = this.pub_channels[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 5180 - n)
                    return -90;
                n += child;
                if(n > 5180)
                    return -90;
            }
        }
        {
            if(this.sub_channels.length > 2)
                return -22;
            if(4 > 5180 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.sub_channels.length; ++i)
            {
                const child = this.sub_channels[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 5180 - n)
                    return -90;
                n += child;
                if(n > 5180)
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
        w.text(this.module_name);
        w.u32(<u32>this.rpc_clients.length);
        for(let i = 0; i < this.rpc_clients.length; ++i)
        {
            this.rpc_clients[i].writeControl(w);
        }
        w.u32(<u32>this.rpc_services.length);
        for(let i = 0; i < this.rpc_services.length; ++i)
        {
            this.rpc_services[i].writeControl(w);
        }
        w.u32(<u32>this.pub_channels.length);
        for(let i = 0; i < this.pub_channels.length; ++i)
        {
            this.pub_channels[i].writeControl(w);
        }
        w.u32(<u32>this.sub_channels.length);
        for(let i = 0; i < this.sub_channels.length; ++i)
        {
            this.sub_channels[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgModuleResourceInfo
    {
        const value = new Ros2Aimdk_msgsMsgModuleResourceInfo();
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
            value.module_name = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.rpc_clients = new Array<Ros2Aimdk_msgsMsgModuleRpcInfo>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleRpcInfo.readControl(r);
                value.rpc_clients.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.rpc_services = new Array<Ros2Aimdk_msgsMsgModuleRpcInfo>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleRpcInfo.readControl(r);
                value.rpc_services.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.pub_channels = new Array<Ros2Aimdk_msgsMsgModuleChannelInfo>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleChannelInfo.readControl(r);
                value.pub_channels.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.sub_channels = new Array<Ros2Aimdk_msgsMsgModuleChannelInfo>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleChannelInfo.readControl(r);
                value.sub_channels.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgModuleResourceInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgModuleResourceInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f';
    static readonly maxWireBytes: i32 = 5180;

    encodeChecked(value: Ros2Aimdk_msgsMsgModuleResourceInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgModuleResourceInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgModuleResourceInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgModuleResourceInfo>();
        if(bytes.length > 5180)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgModuleResourceInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgModuleResourceInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgModuleResourceInfo() : changetype<Ros2Aimdk_msgsMsgModuleResourceInfo>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/ThreadResourceInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgThreadResourceInfo
{
    static readonly maxWireBytes: i32 = 352;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 352;
    /** Exact native field thread_id, native scalar uint64. */
    thread_id: u64 = 0;
    /** Exact native field thread_name, native scalar string. */
    thread_name: string = '';
    /** Exact native field cpu_usage_ratio, native scalar float64. */
    cpu_usage_ratio: f64 = 0;
    /** Exact native field cpu_sched_policy, native scalar string. */
    cpu_sched_policy: string = '';
    /** Exact native field cpu_sched_priority, native scalar int32. */
    cpu_sched_priority: i32 = 0;
    /** Exact native field bounding_cpus, native scalar int32. */
    bounding_cpus: Array<i32> = new Array<i32>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 352 - n)
                return -90;
            n += 8;
            if(n > 352)
                return -90;
        }
        {
            if(!validUnicode(this.thread_name) || this.thread_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.thread_name);
            if(size > 128)
                return -22;
            if(4 + size > 352 - n)
                return -90;
            n += 4 + size;
            if(n > 352)
                return -90;
        }
        {
            if(!isFinite(this.cpu_usage_ratio))
                return -22;
            if(8 > 352 - n)
                return -90;
            n += 8;
            if(n > 352)
                return -90;
        }
        {
            if(!validUnicode(this.cpu_sched_policy) || this.cpu_sched_policy.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cpu_sched_policy);
            if(size > 128)
                return -22;
            if(4 + size > 352 - n)
                return -90;
            n += 4 + size;
            if(n > 352)
                return -90;
        }
        {
            if(4 > 352 - n)
                return -90;
            n += 4;
            if(n > 352)
                return -90;
        }
        {
            if(this.bounding_cpus.length > 16)
                return -22;
            if(4 > 352 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.bounding_cpus.length; ++i)
            {
                if(4 > 352 - n)
                    return -90;
                n += 4;
                if(n > 352)
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
        w.integer(<u64>this.thread_id, 8);
        w.text(this.thread_name);
        w.integer(<u64>reinterpret<u64>(this.cpu_usage_ratio), 8);
        w.text(this.cpu_sched_policy);
        w.integer(<u64>this.cpu_sched_priority, 4);
        w.u32(<u32>this.bounding_cpus.length);
        for(let i = 0; i < this.bounding_cpus.length; ++i)
        {
            w.integer(<u64>this.bounding_cpus[i], 4);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgThreadResourceInfo
    {
        const value = new Ros2Aimdk_msgsMsgThreadResourceInfo();
        {
            const decoded = <u64>r.integer(8);
            value.thread_id = decoded;
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
            value.thread_name = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.cpu_usage_ratio = decoded;
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
            value.cpu_sched_policy = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.cpu_sched_priority = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.bounding_cpus = new Array<i32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i32>r.integer(4);
                value.bounding_cpus.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgThreadResourceInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgThreadResourceInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15';
    static readonly maxWireBytes: i32 = 352;

    encodeChecked(value: Ros2Aimdk_msgsMsgThreadResourceInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgThreadResourceInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgThreadResourceInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgThreadResourceInfo>();
        if(bytes.length > 352)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 32)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgThreadResourceInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgThreadResourceInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgThreadResourceInfo() : changetype<Ros2Aimdk_msgsMsgThreadResourceInfo>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/ProcessResourceInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgProcessResourceInfo
{
    static readonly maxWireBytes: i32 = 1584;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1584;
    /** Exact native field process_id, native scalar uint64. */
    process_id: u64 = 0;
    /** Exact native field process_name, native scalar string. */
    process_name: string = '';
    /** Exact native field process_mem_usage, native scalar uint64. */
    process_mem_usage: u64 = 0;
    /** Exact native field process_mem_usage_ratio, native scalar float64. */
    process_mem_usage_ratio: f64 = 0;
    /** Exact native field process_cpu_usage_ratio, native scalar float64. */
    process_cpu_usage_ratio: f64 = 0;
    /** Exact native field thread_count, native scalar uint64. */
    thread_count: u64 = 0;
    /** Exact native field threads, native scalar aimdk_msgs/msg/ThreadResourceInfo. */
    threads: Array<Ros2Aimdk_msgsMsgThreadResourceInfo> = new Array<Ros2Aimdk_msgsMsgThreadResourceInfo>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 1584 - n)
                return -90;
            n += 8;
            if(n > 1584)
                return -90;
        }
        {
            if(!validUnicode(this.process_name) || this.process_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.process_name);
            if(size > 128)
                return -22;
            if(4 + size > 1584 - n)
                return -90;
            n += 4 + size;
            if(n > 1584)
                return -90;
        }
        {
            if(8 > 1584 - n)
                return -90;
            n += 8;
            if(n > 1584)
                return -90;
        }
        {
            if(!isFinite(this.process_mem_usage_ratio))
                return -22;
            if(8 > 1584 - n)
                return -90;
            n += 8;
            if(n > 1584)
                return -90;
        }
        {
            if(!isFinite(this.process_cpu_usage_ratio))
                return -22;
            if(8 > 1584 - n)
                return -90;
            n += 8;
            if(n > 1584)
                return -90;
        }
        {
            if(8 > 1584 - n)
                return -90;
            n += 8;
            if(n > 1584)
                return -90;
        }
        {
            if(this.threads.length > 4)
                return -22;
            if(4 > 1584 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.threads.length; ++i)
            {
                const child = this.threads[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1584 - n)
                    return -90;
                n += child;
                if(n > 1584)
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
        w.integer(<u64>this.process_id, 8);
        w.text(this.process_name);
        w.integer(<u64>this.process_mem_usage, 8);
        w.integer(<u64>reinterpret<u64>(this.process_mem_usage_ratio), 8);
        w.integer(<u64>reinterpret<u64>(this.process_cpu_usage_ratio), 8);
        w.integer(<u64>this.thread_count, 8);
        w.u32(<u32>this.threads.length);
        for(let i = 0; i < this.threads.length; ++i)
        {
            this.threads[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgProcessResourceInfo
    {
        const value = new Ros2Aimdk_msgsMsgProcessResourceInfo();
        {
            const decoded = <u64>r.integer(8);
            value.process_id = decoded;
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
            value.process_name = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.process_mem_usage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.process_mem_usage_ratio = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.process_cpu_usage_ratio = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.thread_count = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.threads = new Array<Ros2Aimdk_msgsMsgThreadResourceInfo>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgThreadResourceInfo.readControl(r);
                value.threads.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgProcessResourceInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgProcessResourceInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550';
    static readonly maxWireBytes: i32 = 1584;

    encodeChecked(value: Ros2Aimdk_msgsMsgProcessResourceInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgProcessResourceInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgProcessResourceInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgProcessResourceInfo>();
        if(bytes.length > 1584)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 48)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgProcessResourceInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgProcessResourceInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgProcessResourceInfo() : changetype<Ros2Aimdk_msgsMsgProcessResourceInfo>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/ProcessInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgProcessInfo
{
    static readonly maxWireBytes: i32 = 12232;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12232;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field app_name, native scalar string. */
    app_name: string = '';
    /** Exact native field resource, native scalar aimdk_msgs/msg/ProcessResourceInfo. */
    resource: Ros2Aimdk_msgsMsgProcessResourceInfo = new Ros2Aimdk_msgsMsgProcessResourceInfo();
    /** Exact native field modules, native scalar aimdk_msgs/msg/ModuleResourceInfo. */
    modules: Array<Ros2Aimdk_msgsMsgModuleResourceInfo> = new Array<Ros2Aimdk_msgsMsgModuleResourceInfo>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 12232 - n)
                return -90;
            n += child;
            if(n > 12232)
                return -90;
        }
        {
            if(!validUnicode(this.app_name) || this.app_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.app_name);
            if(size > 128)
                return -22;
            if(4 + size > 12232 - n)
                return -90;
            n += 4 + size;
            if(n > 12232)
                return -90;
        }
        {
            const child = this.resource.wireSize();
            if(child < 0)
                return child;
            if(child > 12232 - n)
                return -90;
            n += child;
            if(n > 12232)
                return -90;
        }
        {
            if(this.modules.length > 2)
                return -22;
            if(4 > 12232 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.modules.length; ++i)
            {
                const child = this.modules[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 12232 - n)
                    return -90;
                n += child;
                if(n > 12232)
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
        this.header.writeControl(w);
        w.text(this.app_name);
        this.resource.writeControl(w);
        w.u32(<u32>this.modules.length);
        for(let i = 0; i < this.modules.length; ++i)
        {
            this.modules[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgProcessInfo
    {
        const value = new Ros2Aimdk_msgsMsgProcessInfo();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
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
            value.app_name = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgProcessResourceInfo.readControl(r);
            value.resource = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.modules = new Array<Ros2Aimdk_msgsMsgModuleResourceInfo>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleResourceInfo.readControl(r);
                value.modules.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgProcessInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgProcessInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996';
    static readonly maxWireBytes: i32 = 12232;

    encodeChecked(value: Ros2Aimdk_msgsMsgProcessInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgProcessInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgProcessInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgProcessInfo>();
        if(bytes.length > 12232)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 80)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgProcessInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgProcessInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgProcessInfo() : changetype<Ros2Aimdk_msgsMsgProcessInfo>(out.value);
    }
}
