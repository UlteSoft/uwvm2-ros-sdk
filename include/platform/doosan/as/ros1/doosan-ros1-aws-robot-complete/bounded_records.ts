/**
 * @file bounded_records.ts
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-aws-robot-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/** Complete industrial canonical records. No I/O or authority. */
import {Codec, Reader, validUnicode, validUtf8} from "ros/as/codecs";

export class VendorEncoded
{
    constructor(public status: u32 = 0, public bytes: Uint8Array = new Uint8Array(0))
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

export interface VendorCodec<T> {
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

/** Complete original dsr_msgs/ConfigCreateModbusRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigCreateModbusRequest
{
    static readonly maxWireBytes: i32 = 531;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 531;
    /** Exact native field name, native scalar string. */
    name: string = "";
    /** Exact native field ip, native scalar string. */
    ip: string = "";
    /** Exact native field port, native scalar int32. */
    port: i32 = 0;
    /** Exact native field reg_type, native scalar int8. */
    reg_type: i8 = 0;
    /** Exact native field index, native scalar int8. */
    index: i8 = 0;
    /** Exact native field value, native scalar int8. */
    value: i8 = 0;
    /** Exact native field slave_id, native scalar int32. */
    slave_id: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 531 - n)
                return -90;
            n += 4 + size;
            if(n > 531)
                return -90;
        }
        {
            if(!validUnicode(this.ip) || this.ip.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.ip);
            if(size > 256)
                return -22;
            if(4 + size > 531 - n)
                return -90;
            n += 4 + size;
            if(n > 531)
                return -90;
        }
        {
            if(4 > 531 - n)
                return -90;
            n += 4;
            if(n > 531)
                return -90;
        }
        {
            if(1 > 531 - n)
                return -90;
            n += 1;
            if(n > 531)
                return -90;
        }
        {
            if(1 > 531 - n)
                return -90;
            n += 1;
            if(n > 531)
                return -90;
        }
        {
            if(1 > 531 - n)
                return -90;
            n += 1;
            if(n > 531)
                return -90;
        }
        {
            if(4 > 531 - n)
                return -90;
            n += 4;
            if(n > 531)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
        w.text(this.ip);
        w.integer(<u64>this.port, 4);
        w.integer(<u64>this.reg_type, 1);
        w.integer(<u64>this.index, 1);
        w.integer(<u64>this.value, 1);
        w.integer(<u64>this.slave_id, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigCreateModbusRequest
    {
        const value = new Ros1Dsr_msgsConfigCreateModbusRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            if(!r.valid || size > 256)
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
            value.ip = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.port = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.reg_type = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.index = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.value = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.slave_id = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigCreateModbusRequestCodec implements VendorCodec<Ros1Dsr_msgsConfigCreateModbusRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f";
    static readonly maxWireBytes: i32 = 531;

    encodeChecked(value: Ros1Dsr_msgsConfigCreateModbusRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigCreateModbusRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigCreateModbusRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigCreateModbusRequest>();
        if(bytes.length > 531)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 19)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigCreateModbusRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigCreateModbusRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigCreateModbusRequest() : changetype<Ros1Dsr_msgsConfigCreateModbusRequest>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigCreateModbusResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigCreateModbusResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigCreateModbusResponse
    {
        const value = new Ros1Dsr_msgsConfigCreateModbusResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigCreateModbusResponseCodec implements VendorCodec<Ros1Dsr_msgsConfigCreateModbusResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsConfigCreateModbusResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigCreateModbusResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigCreateModbusResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigCreateModbusResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigCreateModbusResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigCreateModbusResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigCreateModbusResponse() : changetype<Ros1Dsr_msgsConfigCreateModbusResponse>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigCreateTcpRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigCreateTcpRequest
{
    static readonly maxWireBytes: i32 = 308;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 308;
    /** Exact native field name, native scalar string. */
    name: string = "";
    /** Exact native field pos, native scalar float64. */
    pos: Array < f64 >= new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.pos.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 308 - n)
                return -90;
            n += 4 + size;
            if(n > 308)
                return -90;
        }
        {
            if(this.pos.length != 6)
                return -22;
            for(let i = 0; i < this.pos.length; ++i)
            {
                if(!isFinite(this.pos[i]))
                    return -22;
                if(8 > 308 - n)
                    return -90;
                n += 8;
                if(n > 308)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
        for(let i = 0; i < this.pos.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.pos[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigCreateTcpRequest
    {
        const value = new Ros1Dsr_msgsConfigCreateTcpRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pos = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pos.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigCreateTcpRequestCodec implements VendorCodec<Ros1Dsr_msgsConfigCreateTcpRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744";
    static readonly maxWireBytes: i32 = 308;

    encodeChecked(value: Ros1Dsr_msgsConfigCreateTcpRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigCreateTcpRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigCreateTcpRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigCreateTcpRequest>();
        if(bytes.length > 308)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 52)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigCreateTcpRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigCreateTcpRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigCreateTcpRequest() : changetype<Ros1Dsr_msgsConfigCreateTcpRequest>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigCreateTcpResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigCreateTcpResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigCreateTcpResponse
    {
        const value = new Ros1Dsr_msgsConfigCreateTcpResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigCreateTcpResponseCodec implements VendorCodec<Ros1Dsr_msgsConfigCreateTcpResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsConfigCreateTcpResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigCreateTcpResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigCreateTcpResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigCreateTcpResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigCreateTcpResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigCreateTcpResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigCreateTcpResponse() : changetype<Ros1Dsr_msgsConfigCreateTcpResponse>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigCreateToolRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigCreateToolRequest
{
    static readonly maxWireBytes: i32 = 340;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 340;
    /** Exact native field name, native scalar string. */
    name: string = "";
    /** Exact native field weight, native scalar float64. */
    weight: f64 = 0;
    /** Exact native field cog, native scalar float64. */
    cog: Array < f64 >= new Array<f64>();
    /** Exact native field inertia, native scalar float64. */
    inertia: Array < f64 >= new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
            this.cog.push(0);
        for(let i = 0; i < 6; ++i)
            this.inertia.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 340 - n)
                return -90;
            n += 4 + size;
            if(n > 340)
                return -90;
        }
        {
            if(!isFinite(this.weight))
                return -22;
            if(8 > 340 - n)
                return -90;
            n += 8;
            if(n > 340)
                return -90;
        }
        {
            if(this.cog.length != 3)
                return -22;
            for(let i = 0; i < this.cog.length; ++i)
            {
                if(!isFinite(this.cog[i]))
                    return -22;
                if(8 > 340 - n)
                    return -90;
                n += 8;
                if(n > 340)
                    return -90;
            }
        }
        {
            if(this.inertia.length != 6)
                return -22;
            for(let i = 0; i < this.inertia.length; ++i)
            {
                if(!isFinite(this.inertia[i]))
                    return -22;
                if(8 > 340 - n)
                    return -90;
                n += 8;
                if(n > 340)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
        w.integer(<u64>reinterpret<u64>(this.weight), 8);
        for(let i = 0; i < this.cog.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.cog[i]), 8);
        }
        for(let i = 0; i < this.inertia.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.inertia[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigCreateToolRequest
    {
        const value = new Ros1Dsr_msgsConfigCreateToolRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.weight = decoded;
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.cog = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.cog.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.inertia = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.inertia.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigCreateToolRequestCodec implements VendorCodec<Ros1Dsr_msgsConfigCreateToolRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44";
    static readonly maxWireBytes: i32 = 340;

    encodeChecked(value: Ros1Dsr_msgsConfigCreateToolRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigCreateToolRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigCreateToolRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigCreateToolRequest>();
        if(bytes.length > 340)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 84)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigCreateToolRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigCreateToolRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigCreateToolRequest() : changetype<Ros1Dsr_msgsConfigCreateToolRequest>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigCreateToolResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigCreateToolResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigCreateToolResponse
    {
        const value = new Ros1Dsr_msgsConfigCreateToolResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigCreateToolResponseCodec implements VendorCodec<Ros1Dsr_msgsConfigCreateToolResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsConfigCreateToolResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigCreateToolResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigCreateToolResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigCreateToolResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigCreateToolResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigCreateToolResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigCreateToolResponse() : changetype<Ros1Dsr_msgsConfigCreateToolResponse>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigDeleteModbusRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigDeleteModbusRequest
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field name, native scalar string. */
    name: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigDeleteModbusRequest
    {
        const value = new Ros1Dsr_msgsConfigDeleteModbusRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
        return value;
    }
}

export class Ros1Dsr_msgsConfigDeleteModbusRequestCodec implements VendorCodec<Ros1Dsr_msgsConfigDeleteModbusRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsConfigDeleteModbusRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigDeleteModbusRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigDeleteModbusRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigDeleteModbusRequest>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigDeleteModbusRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigDeleteModbusRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigDeleteModbusRequest() : changetype<Ros1Dsr_msgsConfigDeleteModbusRequest>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigDeleteModbusResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigDeleteModbusResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigDeleteModbusResponse
    {
        const value = new Ros1Dsr_msgsConfigDeleteModbusResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigDeleteModbusResponseCodec implements VendorCodec<Ros1Dsr_msgsConfigDeleteModbusResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsConfigDeleteModbusResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigDeleteModbusResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigDeleteModbusResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigDeleteModbusResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigDeleteModbusResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigDeleteModbusResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigDeleteModbusResponse() : changetype<Ros1Dsr_msgsConfigDeleteModbusResponse>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigDeleteTcpRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigDeleteTcpRequest
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field name, native scalar string. */
    name: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigDeleteTcpRequest
    {
        const value = new Ros1Dsr_msgsConfigDeleteTcpRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
        return value;
    }
}

export class Ros1Dsr_msgsConfigDeleteTcpRequestCodec implements VendorCodec<Ros1Dsr_msgsConfigDeleteTcpRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsConfigDeleteTcpRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigDeleteTcpRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigDeleteTcpRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigDeleteTcpRequest>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigDeleteTcpRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigDeleteTcpRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigDeleteTcpRequest() : changetype<Ros1Dsr_msgsConfigDeleteTcpRequest>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigDeleteTcpResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigDeleteTcpResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigDeleteTcpResponse
    {
        const value = new Ros1Dsr_msgsConfigDeleteTcpResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigDeleteTcpResponseCodec implements VendorCodec<Ros1Dsr_msgsConfigDeleteTcpResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsConfigDeleteTcpResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigDeleteTcpResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigDeleteTcpResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigDeleteTcpResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigDeleteTcpResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigDeleteTcpResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigDeleteTcpResponse() : changetype<Ros1Dsr_msgsConfigDeleteTcpResponse>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigDeleteToolRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigDeleteToolRequest
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field name, native scalar string. */
    name: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigDeleteToolRequest
    {
        const value = new Ros1Dsr_msgsConfigDeleteToolRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
        return value;
    }
}

export class Ros1Dsr_msgsConfigDeleteToolRequestCodec implements VendorCodec<Ros1Dsr_msgsConfigDeleteToolRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsConfigDeleteToolRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigDeleteToolRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigDeleteToolRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigDeleteToolRequest>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigDeleteToolRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigDeleteToolRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigDeleteToolRequest() : changetype<Ros1Dsr_msgsConfigDeleteToolRequest>(out.value);
    }
}

/** Complete original dsr_msgs/ConfigDeleteToolResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsConfigDeleteToolResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsConfigDeleteToolResponse
    {
        const value = new Ros1Dsr_msgsConfigDeleteToolResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsConfigDeleteToolResponseCodec implements VendorCodec<Ros1Dsr_msgsConfigDeleteToolResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsConfigDeleteToolResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsConfigDeleteToolResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsConfigDeleteToolResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsConfigDeleteToolResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsConfigDeleteToolResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsConfigDeleteToolResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsConfigDeleteToolResponse() : changetype<Ros1Dsr_msgsConfigDeleteToolResponse>(out.value);
    }
}

/** Complete original dsr_msgs/DrlPauseRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsDrlPauseRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsDrlPauseRequest
    {
        const value = new Ros1Dsr_msgsDrlPauseRequest();
        return value;
    }
}

export class Ros1Dsr_msgsDrlPauseRequestCodec implements VendorCodec<Ros1Dsr_msgsDrlPauseRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsDrlPauseRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsDrlPauseRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsDrlPauseRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsDrlPauseRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsDrlPauseRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsDrlPauseRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsDrlPauseRequest() : changetype<Ros1Dsr_msgsDrlPauseRequest>(out.value);
    }
}

/** Complete original dsr_msgs/DrlPauseResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsDrlPauseResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsDrlPauseResponse
    {
        const value = new Ros1Dsr_msgsDrlPauseResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsDrlPauseResponseCodec implements VendorCodec<Ros1Dsr_msgsDrlPauseResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsDrlPauseResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsDrlPauseResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsDrlPauseResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsDrlPauseResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsDrlPauseResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsDrlPauseResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsDrlPauseResponse() : changetype<Ros1Dsr_msgsDrlPauseResponse>(out.value);
    }
}

/** Complete original dsr_msgs/DrlResumeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsDrlResumeRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsDrlResumeRequest
    {
        const value = new Ros1Dsr_msgsDrlResumeRequest();
        return value;
    }
}

export class Ros1Dsr_msgsDrlResumeRequestCodec implements VendorCodec<Ros1Dsr_msgsDrlResumeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsDrlResumeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsDrlResumeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsDrlResumeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsDrlResumeRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsDrlResumeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsDrlResumeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsDrlResumeRequest() : changetype<Ros1Dsr_msgsDrlResumeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/DrlResumeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsDrlResumeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsDrlResumeResponse
    {
        const value = new Ros1Dsr_msgsDrlResumeResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsDrlResumeResponseCodec implements VendorCodec<Ros1Dsr_msgsDrlResumeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsDrlResumeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsDrlResumeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsDrlResumeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsDrlResumeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsDrlResumeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsDrlResumeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsDrlResumeResponse() : changetype<Ros1Dsr_msgsDrlResumeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/DrlStartRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsDrlStartRequest
{
    static readonly maxWireBytes: i32 = 261;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 261;
    /** Exact native field robotSystem, native scalar int8. */
    robotSystem: i8 = 0;
    /** Exact native field code, native scalar string. */
    code: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 261 - n)
                return -90;
            n += 1;
            if(n > 261)
                return -90;
        }
        {
            if(!validUnicode(this.code) || this.code.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.code);
            if(size > 256)
                return -22;
            if(4 + size > 261 - n)
                return -90;
            n += 4 + size;
            if(n > 261)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.robotSystem, 1);
        w.text(this.code);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsDrlStartRequest
    {
        const value = new Ros1Dsr_msgsDrlStartRequest();
        {
            const decoded = <i8>r.integer(1);
            value.robotSystem = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.code = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsDrlStartRequestCodec implements VendorCodec<Ros1Dsr_msgsDrlStartRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65";
    static readonly maxWireBytes: i32 = 261;

    encodeChecked(value: Ros1Dsr_msgsDrlStartRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsDrlStartRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsDrlStartRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsDrlStartRequest>();
        if(bytes.length > 261)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 5)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsDrlStartRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsDrlStartRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsDrlStartRequest() : changetype<Ros1Dsr_msgsDrlStartRequest>(out.value);
    }
}

/** Complete original dsr_msgs/DrlStartResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsDrlStartResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsDrlStartResponse
    {
        const value = new Ros1Dsr_msgsDrlStartResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsDrlStartResponseCodec implements VendorCodec<Ros1Dsr_msgsDrlStartResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsDrlStartResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsDrlStartResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsDrlStartResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsDrlStartResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsDrlStartResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsDrlStartResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsDrlStartResponse() : changetype<Ros1Dsr_msgsDrlStartResponse>(out.value);
    }
}

/** Complete original dsr_msgs/DrlStopRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsDrlStopRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field stop_mode, native scalar int8. */
    stop_mode: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.stop_mode, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsDrlStopRequest
    {
        const value = new Ros1Dsr_msgsDrlStopRequest();
        {
            const decoded = <i8>r.integer(1);
            value.stop_mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsDrlStopRequestCodec implements VendorCodec<Ros1Dsr_msgsDrlStopRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsDrlStopRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsDrlStopRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsDrlStopRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsDrlStopRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsDrlStopRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsDrlStopRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsDrlStopRequest() : changetype<Ros1Dsr_msgsDrlStopRequest>(out.value);
    }
}

/** Complete original dsr_msgs/DrlStopResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsDrlStopResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsDrlStopResponse
    {
        const value = new Ros1Dsr_msgsDrlStopResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsDrlStopResponseCodec implements VendorCodec<Ros1Dsr_msgsDrlStopResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsDrlStopResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsDrlStopResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsDrlStopResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsDrlStopResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsDrlStopResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsDrlStopResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsDrlStopResponse() : changetype<Ros1Dsr_msgsDrlStopResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetCtrlBoxAnalogInputRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field channel, native scalar int8. */
    channel: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.channel, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest
    {
        const value = new Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest();
        {
            const decoded = <i8>r.integer(1);
            value.channel = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec implements VendorCodec<Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest() : changetype<Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetCtrlBoxAnalogInputResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field value, native scalar float64. */
    value: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.value))
                return -22;
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.value), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse
    {
        const value = new Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec implements VendorCodec<Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_53fc14db79f9c63ee04e5e055961e397d6ceefa553e0912c4c944f858376b4b2";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse() : changetype<Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetCtrlBoxDigitalInputRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field index, native scalar int8. */
    index: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.index, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest
    {
        const value = new Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest();
        {
            const decoded = <i8>r.integer(1);
            value.index = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec implements VendorCodec<Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest() : changetype<Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetCtrlBoxDigitalInputResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field value, native scalar bool. */
    value: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.value ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse
    {
        const value = new Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec implements VendorCodec<Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_b24172ba7a1d82456b33bcbfccde50c1e0a40d4ce870dae704c00a553591a6a2";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse() : changetype<Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetCurrentPoseRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCurrentPoseRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field space_type, native scalar int8. */
    space_type: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.space_type, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCurrentPoseRequest
    {
        const value = new Ros1Dsr_msgsGetCurrentPoseRequest();
        {
            const decoded = <i8>r.integer(1);
            value.space_type = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCurrentPoseRequestCodec implements VendorCodec<Ros1Dsr_msgsGetCurrentPoseRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetCurrentPoseRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCurrentPoseRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCurrentPoseRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCurrentPoseRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCurrentPoseRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCurrentPoseRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCurrentPoseRequest() : changetype<Ros1Dsr_msgsGetCurrentPoseRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetCurrentPoseResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCurrentPoseResponse
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** Exact native field pos, native scalar float64. */
    pos: Array < f64 >= new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.pos.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos.length != 6)
                return -22;
            for(let i = 0; i < this.pos.length; ++i)
            {
                if(!isFinite(this.pos[i]))
                    return -22;
                if(8 > 48 - n)
                    return -90;
                n += 8;
                if(n > 48)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.pos.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.pos[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCurrentPoseResponse
    {
        const value = new Ros1Dsr_msgsGetCurrentPoseResponse();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pos = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pos.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCurrentPoseResponseCodec implements VendorCodec<Ros1Dsr_msgsGetCurrentPoseResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_cae2a551df6b2c548e171cdb181bbbe1fcbfe9fc3039b68f4edab2043ef8b9d6";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros1Dsr_msgsGetCurrentPoseResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCurrentPoseResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCurrentPoseResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCurrentPoseResponse>();
        if(bytes.length > 48)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 48)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCurrentPoseResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCurrentPoseResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCurrentPoseResponse() : changetype<Ros1Dsr_msgsGetCurrentPoseResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetCurrentSolutionSpaceRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCurrentSolutionSpaceRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCurrentSolutionSpaceRequest
    {
        const value = new Ros1Dsr_msgsGetCurrentSolutionSpaceRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec implements VendorCodec<Ros1Dsr_msgsGetCurrentSolutionSpaceRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetCurrentSolutionSpaceRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCurrentSolutionSpaceRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCurrentSolutionSpaceRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCurrentSolutionSpaceRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCurrentSolutionSpaceRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCurrentSolutionSpaceRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCurrentSolutionSpaceRequest() : changetype<Ros1Dsr_msgsGetCurrentSolutionSpaceRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetCurrentSolutionSpaceResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCurrentSolutionSpaceResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field solution_space, native scalar int8. */
    solution_space: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.solution_space, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCurrentSolutionSpaceResponse
    {
        const value = new Ros1Dsr_msgsGetCurrentSolutionSpaceResponse();
        {
            const decoded = <i8>r.integer(1);
            value.solution_space = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec implements VendorCodec<Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_57e390c7f039b26fc69fe35d07420ee94084ce9d9531e7e8c6d6a09729b5986f";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetCurrentSolutionSpaceResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCurrentSolutionSpaceResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCurrentSolutionSpaceResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCurrentSolutionSpaceResponse() : changetype<Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetCurrentTcpRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCurrentTcpRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCurrentTcpRequest
    {
        const value = new Ros1Dsr_msgsGetCurrentTcpRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetCurrentTcpRequestCodec implements VendorCodec<Ros1Dsr_msgsGetCurrentTcpRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetCurrentTcpRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCurrentTcpRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCurrentTcpRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCurrentTcpRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCurrentTcpRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCurrentTcpRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCurrentTcpRequest() : changetype<Ros1Dsr_msgsGetCurrentTcpRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetCurrentTcpResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCurrentTcpResponse
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field info, native scalar string. */
    info: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.info) || this.info.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.info);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.info);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCurrentTcpResponse
    {
        const value = new Ros1Dsr_msgsGetCurrentTcpResponse();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.info = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCurrentTcpResponseCodec implements VendorCodec<Ros1Dsr_msgsGetCurrentTcpResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_8076cd565188d0adcda508a0637b240969a434a924daeed7cf3b7e442b901ee3";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsGetCurrentTcpResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCurrentTcpResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCurrentTcpResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCurrentTcpResponse>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCurrentTcpResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCurrentTcpResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCurrentTcpResponse() : changetype<Ros1Dsr_msgsGetCurrentTcpResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetCurrentToolRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCurrentToolRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCurrentToolRequest
    {
        const value = new Ros1Dsr_msgsGetCurrentToolRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetCurrentToolRequestCodec implements VendorCodec<Ros1Dsr_msgsGetCurrentToolRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetCurrentToolRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCurrentToolRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCurrentToolRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCurrentToolRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCurrentToolRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCurrentToolRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCurrentToolRequest() : changetype<Ros1Dsr_msgsGetCurrentToolRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetCurrentToolResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetCurrentToolResponse
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field info, native scalar string. */
    info: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.info) || this.info.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.info);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.info);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetCurrentToolResponse
    {
        const value = new Ros1Dsr_msgsGetCurrentToolResponse();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.info = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetCurrentToolResponseCodec implements VendorCodec<Ros1Dsr_msgsGetCurrentToolResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_8afef46263fd34fe71e4c33d9add7d71672cb9d95aa237a60e17c3c3cdd58e43";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsGetCurrentToolResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetCurrentToolResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetCurrentToolResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetCurrentToolResponse>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetCurrentToolResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetCurrentToolResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetCurrentToolResponse() : changetype<Ros1Dsr_msgsGetCurrentToolResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetDrlStateRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetDrlStateRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetDrlStateRequest
    {
        const value = new Ros1Dsr_msgsGetDrlStateRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetDrlStateRequestCodec implements VendorCodec<Ros1Dsr_msgsGetDrlStateRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetDrlStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetDrlStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetDrlStateRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetDrlStateRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetDrlStateRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetDrlStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetDrlStateRequest() : changetype<Ros1Dsr_msgsGetDrlStateRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetDrlStateResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetDrlStateResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field drl_state, native scalar int8. */
    drl_state: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.drl_state, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetDrlStateResponse
    {
        const value = new Ros1Dsr_msgsGetDrlStateResponse();
        {
            const decoded = <i8>r.integer(1);
            value.drl_state = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetDrlStateResponseCodec implements VendorCodec<Ros1Dsr_msgsGetDrlStateResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_d8238b34c53f1da07057059fadfc1bbc767be38453b0410a90bccb84d99d1a94";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetDrlStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetDrlStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetDrlStateResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetDrlStateResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetDrlStateResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetDrlStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetDrlStateResponse() : changetype<Ros1Dsr_msgsGetDrlStateResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetExternalTorqueRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetExternalTorqueRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetExternalTorqueRequest
    {
        const value = new Ros1Dsr_msgsGetExternalTorqueRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetExternalTorqueRequestCodec implements VendorCodec<Ros1Dsr_msgsGetExternalTorqueRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetExternalTorqueRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetExternalTorqueRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetExternalTorqueRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetExternalTorqueRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetExternalTorqueRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetExternalTorqueRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetExternalTorqueRequest() : changetype<Ros1Dsr_msgsGetExternalTorqueRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetExternalTorqueResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetExternalTorqueResponse
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** Exact native field ext_torque, native scalar float64. */
    ext_torque: Array < f64 >= new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.ext_torque.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.ext_torque.length != 6)
                return -22;
            for(let i = 0; i < this.ext_torque.length; ++i)
            {
                if(!isFinite(this.ext_torque[i]))
                    return -22;
                if(8 > 48 - n)
                    return -90;
                n += 8;
                if(n > 48)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.ext_torque.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.ext_torque[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetExternalTorqueResponse
    {
        const value = new Ros1Dsr_msgsGetExternalTorqueResponse();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.ext_torque = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.ext_torque.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetExternalTorqueResponseCodec implements VendorCodec<Ros1Dsr_msgsGetExternalTorqueResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_52c063acee790649e0e439390ee3c8bd4e7ac2a124911093ba0fd00f06a07ff2";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros1Dsr_msgsGetExternalTorqueResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetExternalTorqueResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetExternalTorqueResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetExternalTorqueResponse>();
        if(bytes.length > 48)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 48)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetExternalTorqueResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetExternalTorqueResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetExternalTorqueResponse() : changetype<Ros1Dsr_msgsGetExternalTorqueResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetJointTorqueRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetJointTorqueRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetJointTorqueRequest
    {
        const value = new Ros1Dsr_msgsGetJointTorqueRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetJointTorqueRequestCodec implements VendorCodec<Ros1Dsr_msgsGetJointTorqueRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetJointTorqueRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetJointTorqueRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetJointTorqueRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetJointTorqueRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetJointTorqueRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetJointTorqueRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetJointTorqueRequest() : changetype<Ros1Dsr_msgsGetJointTorqueRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetJointTorqueResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetJointTorqueResponse
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** Exact native field joint_torque, native scalar float64. */
    joint_torque: Array < f64 >= new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.joint_torque.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.joint_torque.length != 6)
                return -22;
            for(let i = 0; i < this.joint_torque.length; ++i)
            {
                if(!isFinite(this.joint_torque[i]))
                    return -22;
                if(8 > 48 - n)
                    return -90;
                n += 8;
                if(n > 48)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.joint_torque.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.joint_torque[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetJointTorqueResponse
    {
        const value = new Ros1Dsr_msgsGetJointTorqueResponse();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.joint_torque = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_torque.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetJointTorqueResponseCodec implements VendorCodec<Ros1Dsr_msgsGetJointTorqueResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_25bda80075428cb48858ba2ab3d38b52d4fe631596e919c001cf1a4f96391bf1";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros1Dsr_msgsGetJointTorqueResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetJointTorqueResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetJointTorqueResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetJointTorqueResponse>();
        if(bytes.length > 48)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 48)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetJointTorqueResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetJointTorqueResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetJointTorqueResponse() : changetype<Ros1Dsr_msgsGetJointTorqueResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetLastAlarmRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetLastAlarmRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetLastAlarmRequest
    {
        const value = new Ros1Dsr_msgsGetLastAlarmRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetLastAlarmRequestCodec implements VendorCodec<Ros1Dsr_msgsGetLastAlarmRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetLastAlarmRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetLastAlarmRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetLastAlarmRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetLastAlarmRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetLastAlarmRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetLastAlarmRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetLastAlarmRequest() : changetype<Ros1Dsr_msgsGetLastAlarmRequest>(out.value);
    }
}

/** Complete original dsr_msgs/LogAlarm; spellings are published in generation proof. */
export class Ros1Dsr_msgsLogAlarm
{
    static readonly maxWireBytes: i32 = 792;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 792;
    /** Exact native field level, native scalar int32. */
    level: i32 = 0;
    /** Exact native field group, native scalar int32. */
    group: i32 = 0;
    /** Exact native field index, native scalar int32. */
    index: i32 = 0;
    /** Exact native field param, native scalar string. */
    param: Array < string >= new Array<string>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
            this.param.push("");
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 792 - n)
                return -90;
            n += 4;
            if(n > 792)
                return -90;
        }
        {
            if(4 > 792 - n)
                return -90;
            n += 4;
            if(n > 792)
                return -90;
        }
        {
            if(4 > 792 - n)
                return -90;
            n += 4;
            if(n > 792)
                return -90;
        }
        {
            if(this.param.length != 3)
                return -22;
            for(let i = 0; i < this.param.length; ++i)
            {
                if(!validUnicode(this.param[i]) || this.param[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.param[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 792 - n)
                    return -90;
                n += 4 + size;
                if(n > 792)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.level, 4);
        w.integer(<u64>this.group, 4);
        w.integer(<u64>this.index, 4);
        for(let i = 0; i < this.param.length; ++i)
        {
            w.text(this.param[i]);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsLogAlarm
    {
        const value = new Ros1Dsr_msgsLogAlarm();
        {
            const decoded = <i32>r.integer(4);
            value.level = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.group = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.index = decoded;
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.param = new Array<string>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const size = r.u32();
                if(!r.valid || size > 256)
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
                value.param.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Dsr_msgsLogAlarmCodec implements VendorCodec<Ros1Dsr_msgsLogAlarm>
{
    static readonly codecIdentity: string = "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f";
    static readonly maxWireBytes: i32 = 792;

    encodeChecked(value: Ros1Dsr_msgsLogAlarm): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsLogAlarm): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsLogAlarm>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsLogAlarm>();
        if(bytes.length > 792)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsLogAlarm.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsLogAlarm
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsLogAlarm() : changetype<Ros1Dsr_msgsLogAlarm>(out.value);
    }
}

/** Complete original dsr_msgs/GetLastAlarmResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetLastAlarmResponse
{
    static readonly maxWireBytes: i32 = 792;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 792;
    /** Exact native field log_alarm, native scalar dsr_msgs/LogAlarm. */
    log_alarm: Ros1Dsr_msgsLogAlarm = new Ros1Dsr_msgsLogAlarm();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.log_alarm.wireSize();
            if(child < 0)
                return child;
            if(child > 792 - n)
                return -90;
            n += child;
            if(n > 792)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.log_alarm.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetLastAlarmResponse
    {
        const value = new Ros1Dsr_msgsGetLastAlarmResponse();
        {
            const decoded = Ros1Dsr_msgsLogAlarm.readControl(r);
            value.log_alarm = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetLastAlarmResponseCodec implements VendorCodec<Ros1Dsr_msgsGetLastAlarmResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_cbf970486efc6fc6dbda7ecfd673f3642f228b27e1a406156d2592d71467995c";
    static readonly maxWireBytes: i32 = 792;

    encodeChecked(value: Ros1Dsr_msgsGetLastAlarmResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetLastAlarmResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetLastAlarmResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetLastAlarmResponse>();
        if(bytes.length > 792)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetLastAlarmResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetLastAlarmResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetLastAlarmResponse() : changetype<Ros1Dsr_msgsGetLastAlarmResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetModbusInputRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetModbusInputRequest
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field name, native scalar string. */
    name: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetModbusInputRequest
    {
        const value = new Ros1Dsr_msgsGetModbusInputRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
        return value;
    }
}

export class Ros1Dsr_msgsGetModbusInputRequestCodec implements VendorCodec<Ros1Dsr_msgsGetModbusInputRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsGetModbusInputRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetModbusInputRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetModbusInputRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetModbusInputRequest>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetModbusInputRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetModbusInputRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetModbusInputRequest() : changetype<Ros1Dsr_msgsGetModbusInputRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetModbusInputResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetModbusInputResponse
{
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
        return n < 0 ? <u32>(-n) : 0;
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
    static readControl(r: Reader): Ros1Dsr_msgsGetModbusInputResponse
    {
        const value = new Ros1Dsr_msgsGetModbusInputResponse();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetModbusInputResponseCodec implements VendorCodec<Ros1Dsr_msgsGetModbusInputResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_5a9baa85959370b7562c32510a9ebe6bd48ccb01b5d71d3898126e69fe60afb3";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros1Dsr_msgsGetModbusInputResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetModbusInputResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetModbusInputResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetModbusInputResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetModbusInputResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetModbusInputResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetModbusInputResponse() : changetype<Ros1Dsr_msgsGetModbusInputResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetRobotModeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetRobotModeRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetRobotModeRequest
    {
        const value = new Ros1Dsr_msgsGetRobotModeRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetRobotModeRequestCodec implements VendorCodec<Ros1Dsr_msgsGetRobotModeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetRobotModeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetRobotModeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetRobotModeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetRobotModeRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetRobotModeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetRobotModeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetRobotModeRequest() : changetype<Ros1Dsr_msgsGetRobotModeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetRobotModeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetRobotModeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field robot_mode, native scalar int8. */
    robot_mode: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.robot_mode, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetRobotModeResponse
    {
        const value = new Ros1Dsr_msgsGetRobotModeResponse();
        {
            const decoded = <i8>r.integer(1);
            value.robot_mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetRobotModeResponseCodec implements VendorCodec<Ros1Dsr_msgsGetRobotModeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_3049e13cf2157e75860253953231b258ac495b2fc424aa2c6343fcf0f91044b5";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetRobotModeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetRobotModeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetRobotModeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetRobotModeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetRobotModeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetRobotModeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetRobotModeResponse() : changetype<Ros1Dsr_msgsGetRobotModeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetRobotSpeedModeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetRobotSpeedModeRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetRobotSpeedModeRequest
    {
        const value = new Ros1Dsr_msgsGetRobotSpeedModeRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetRobotSpeedModeRequestCodec implements VendorCodec<Ros1Dsr_msgsGetRobotSpeedModeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetRobotSpeedModeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetRobotSpeedModeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetRobotSpeedModeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetRobotSpeedModeRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetRobotSpeedModeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetRobotSpeedModeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetRobotSpeedModeRequest() : changetype<Ros1Dsr_msgsGetRobotSpeedModeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetRobotSpeedModeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetRobotSpeedModeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field speed_mode, native scalar int8. */
    speed_mode: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.speed_mode, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetRobotSpeedModeResponse
    {
        const value = new Ros1Dsr_msgsGetRobotSpeedModeResponse();
        {
            const decoded = <i8>r.integer(1);
            value.speed_mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetRobotSpeedModeResponseCodec implements VendorCodec<Ros1Dsr_msgsGetRobotSpeedModeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_e67a5a94c55ea30657ecdf83201cac431e89c11817bb12831d31023d4fd2cec1";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetRobotSpeedModeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetRobotSpeedModeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetRobotSpeedModeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetRobotSpeedModeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetRobotSpeedModeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetRobotSpeedModeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetRobotSpeedModeResponse() : changetype<Ros1Dsr_msgsGetRobotSpeedModeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetRobotStateRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetRobotStateRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetRobotStateRequest
    {
        const value = new Ros1Dsr_msgsGetRobotStateRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetRobotStateRequestCodec implements VendorCodec<Ros1Dsr_msgsGetRobotStateRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetRobotStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetRobotStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetRobotStateRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetRobotStateRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetRobotStateRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetRobotStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetRobotStateRequest() : changetype<Ros1Dsr_msgsGetRobotStateRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetRobotStateResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetRobotStateResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field robot_state, native scalar int8. */
    robot_state: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.robot_state, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetRobotStateResponse
    {
        const value = new Ros1Dsr_msgsGetRobotStateResponse();
        {
            const decoded = <i8>r.integer(1);
            value.robot_state = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetRobotStateResponseCodec implements VendorCodec<Ros1Dsr_msgsGetRobotStateResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_2fdea6418150a77db99b9e1bcecb11a9a10f826690b18853d6adfbdc2b6f8d4d";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetRobotStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetRobotStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetRobotStateResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetRobotStateResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetRobotStateResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetRobotStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetRobotStateResponse() : changetype<Ros1Dsr_msgsGetRobotStateResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetRobotSystemRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetRobotSystemRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetRobotSystemRequest
    {
        const value = new Ros1Dsr_msgsGetRobotSystemRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetRobotSystemRequestCodec implements VendorCodec<Ros1Dsr_msgsGetRobotSystemRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetRobotSystemRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetRobotSystemRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetRobotSystemRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetRobotSystemRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetRobotSystemRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetRobotSystemRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetRobotSystemRequest() : changetype<Ros1Dsr_msgsGetRobotSystemRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetRobotSystemResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetRobotSystemResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field robot_system, native scalar int8. */
    robot_system: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.robot_system, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetRobotSystemResponse
    {
        const value = new Ros1Dsr_msgsGetRobotSystemResponse();
        {
            const decoded = <i8>r.integer(1);
            value.robot_system = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetRobotSystemResponseCodec implements VendorCodec<Ros1Dsr_msgsGetRobotSystemResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_ecdbadad1fa8a9e22bf20bbb5c7aa489b739a6d0ef725ea20e37d50feb92a570";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetRobotSystemResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetRobotSystemResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetRobotSystemResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetRobotSystemResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetRobotSystemResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetRobotSystemResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetRobotSystemResponse() : changetype<Ros1Dsr_msgsGetRobotSystemResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetToolDigitalInputRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetToolDigitalInputRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field index, native scalar int8. */
    index: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.index, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetToolDigitalInputRequest
    {
        const value = new Ros1Dsr_msgsGetToolDigitalInputRequest();
        {
            const decoded = <i8>r.integer(1);
            value.index = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetToolDigitalInputRequestCodec implements VendorCodec<Ros1Dsr_msgsGetToolDigitalInputRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetToolDigitalInputRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetToolDigitalInputRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetToolDigitalInputRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetToolDigitalInputRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetToolDigitalInputRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetToolDigitalInputRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetToolDigitalInputRequest() : changetype<Ros1Dsr_msgsGetToolDigitalInputRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetToolDigitalInputResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetToolDigitalInputResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field value, native scalar bool. */
    value: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.value ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetToolDigitalInputResponse
    {
        const value = new Ros1Dsr_msgsGetToolDigitalInputResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetToolDigitalInputResponseCodec implements VendorCodec<Ros1Dsr_msgsGetToolDigitalInputResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_ee2a97dbab5eb6f818d5165e68ebc9077f8ebae391f79445f35205158e0d7f92";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsGetToolDigitalInputResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetToolDigitalInputResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetToolDigitalInputResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetToolDigitalInputResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetToolDigitalInputResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetToolDigitalInputResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetToolDigitalInputResponse() : changetype<Ros1Dsr_msgsGetToolDigitalInputResponse>(out.value);
    }
}

/** Complete original dsr_msgs/GetToolForceRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetToolForceRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetToolForceRequest
    {
        const value = new Ros1Dsr_msgsGetToolForceRequest();
        return value;
    }
}

export class Ros1Dsr_msgsGetToolForceRequestCodec implements VendorCodec<Ros1Dsr_msgsGetToolForceRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_27ccf47d48432cce678c6dad5ecff2aac258f4b17e4172556fa05183bc5111b7";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsGetToolForceRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetToolForceRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetToolForceRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetToolForceRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetToolForceRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetToolForceRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetToolForceRequest() : changetype<Ros1Dsr_msgsGetToolForceRequest>(out.value);
    }
}

/** Complete original dsr_msgs/GetToolForceResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsGetToolForceResponse
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** Exact native field tool_force, native scalar float64. */
    tool_force: Array < f64 >= new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.tool_force.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.tool_force.length != 6)
                return -22;
            for(let i = 0; i < this.tool_force.length; ++i)
            {
                if(!isFinite(this.tool_force[i]))
                    return -22;
                if(8 > 48 - n)
                    return -90;
                n += 8;
                if(n > 48)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.tool_force.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tool_force[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsGetToolForceResponse
    {
        const value = new Ros1Dsr_msgsGetToolForceResponse();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.tool_force = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.tool_force.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Dsr_msgsGetToolForceResponseCodec implements VendorCodec<Ros1Dsr_msgsGetToolForceResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_752d1690a4d3b7b6842ce45d1ae599de4cbfdde9bf7da96193cbf3a9e4205026";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros1Dsr_msgsGetToolForceResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsGetToolForceResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsGetToolForceResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsGetToolForceResponse>();
        if(bytes.length > 48)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 48)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsGetToolForceResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsGetToolForceResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsGetToolForceResponse() : changetype<Ros1Dsr_msgsGetToolForceResponse>(out.value);
    }
}

/** Complete original dsr_msgs/JogRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsJogRequest
{
    static readonly maxWireBytes: i32 = 10;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10;
    /** Exact native field jog_axis, native scalar int8. */
    jog_axis: i8 = 0;
    /** Exact native field move_reference, native scalar int8. */
    move_reference: i8 = 0;
    /** Exact native field speed, native scalar float64. */
    speed: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 10 - n)
                return -90;
            n += 1;
            if(n > 10)
                return -90;
        }
        {
            if(1 > 10 - n)
                return -90;
            n += 1;
            if(n > 10)
                return -90;
        }
        {
            if(!isFinite(this.speed))
                return -22;
            if(8 > 10 - n)
                return -90;
            n += 8;
            if(n > 10)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.jog_axis, 1);
        w.integer(<u64>this.move_reference, 1);
        w.integer(<u64>reinterpret<u64>(this.speed), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsJogRequest
    {
        const value = new Ros1Dsr_msgsJogRequest();
        {
            const decoded = <i8>r.integer(1);
            value.jog_axis = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.move_reference = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.speed = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsJogRequestCodec implements VendorCodec<Ros1Dsr_msgsJogRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a";
    static readonly maxWireBytes: i32 = 10;

    encodeChecked(value: Ros1Dsr_msgsJogRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsJogRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsJogRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsJogRequest>();
        if(bytes.length > 10)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 10)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsJogRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsJogRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsJogRequest() : changetype<Ros1Dsr_msgsJogRequest>(out.value);
    }
}

/** Complete original dsr_msgs/JogResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsJogResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsJogResponse
    {
        const value = new Ros1Dsr_msgsJogResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsJogResponseCodec implements VendorCodec<Ros1Dsr_msgsJogResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsJogResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsJogResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsJogResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsJogResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsJogResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsJogResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsJogResponse() : changetype<Ros1Dsr_msgsJogResponse>(out.value);
    }
}

/** Complete original dsr_msgs/JogMultiRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsJogMultiRequest
{
    static readonly maxWireBytes: i32 = 57;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 57;
    /** Exact native field jog_axis, native scalar float64. */
    jog_axis: Array < f64 >= new Array<f64>();
    /** Exact native field move_reference, native scalar int8. */
    move_reference: i8 = 0;
    /** Exact native field speed, native scalar float64. */
    speed: f64 = 0;

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.jog_axis.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.jog_axis.length != 6)
                return -22;
            for(let i = 0; i < this.jog_axis.length; ++i)
            {
                if(!isFinite(this.jog_axis[i]))
                    return -22;
                if(8 > 57 - n)
                    return -90;
                n += 8;
                if(n > 57)
                    return -90;
            }
        }
        {
            if(1 > 57 - n)
                return -90;
            n += 1;
            if(n > 57)
                return -90;
        }
        {
            if(!isFinite(this.speed))
                return -22;
            if(8 > 57 - n)
                return -90;
            n += 8;
            if(n > 57)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.jog_axis.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.jog_axis[i]), 8);
        }
        w.integer(<u64>this.move_reference, 1);
        w.integer(<u64>reinterpret<u64>(this.speed), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsJogMultiRequest
    {
        const value = new Ros1Dsr_msgsJogMultiRequest();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.jog_axis = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.jog_axis.push(decoded);
            }
        }
        {
            const decoded = <i8>r.integer(1);
            value.move_reference = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.speed = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsJogMultiRequestCodec implements VendorCodec<Ros1Dsr_msgsJogMultiRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea";
    static readonly maxWireBytes: i32 = 57;

    encodeChecked(value: Ros1Dsr_msgsJogMultiRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsJogMultiRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsJogMultiRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsJogMultiRequest>();
        if(bytes.length > 57)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 57)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsJogMultiRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsJogMultiRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsJogMultiRequest() : changetype<Ros1Dsr_msgsJogMultiRequest>(out.value);
    }
}

/** Complete original dsr_msgs/JogMultiResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsJogMultiResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsJogMultiResponse
    {
        const value = new Ros1Dsr_msgsJogMultiResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsJogMultiResponseCodec implements VendorCodec<Ros1Dsr_msgsJogMultiResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsJogMultiResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsJogMultiResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsJogMultiResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsJogMultiResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsJogMultiResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsJogMultiResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsJogMultiResponse() : changetype<Ros1Dsr_msgsJogMultiResponse>(out.value);
    }
}

/** Complete original dsr_msgs/JogMultiAxis; spellings are published in generation proof. */
export class Ros1Dsr_msgsJogMultiAxis
{
    static readonly maxWireBytes: i32 = 57;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 57;
    /** Exact native field jog_axis, native scalar float64. */
    jog_axis: Array < f64 >= new Array<f64>();
    /** Exact native field move_reference, native scalar int8. */
    move_reference: i8 = 0;
    /** Exact native field speed, native scalar float64. */
    speed: f64 = 0;

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.jog_axis.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.jog_axis.length != 6)
                return -22;
            for(let i = 0; i < this.jog_axis.length; ++i)
            {
                if(!isFinite(this.jog_axis[i]))
                    return -22;
                if(8 > 57 - n)
                    return -90;
                n += 8;
                if(n > 57)
                    return -90;
            }
        }
        {
            if(1 > 57 - n)
                return -90;
            n += 1;
            if(n > 57)
                return -90;
        }
        {
            if(!isFinite(this.speed))
                return -22;
            if(8 > 57 - n)
                return -90;
            n += 8;
            if(n > 57)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.jog_axis.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.jog_axis[i]), 8);
        }
        w.integer(<u64>this.move_reference, 1);
        w.integer(<u64>reinterpret<u64>(this.speed), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsJogMultiAxis
    {
        const value = new Ros1Dsr_msgsJogMultiAxis();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.jog_axis = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.jog_axis.push(decoded);
            }
        }
        {
            const decoded = <i8>r.integer(1);
            value.move_reference = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.speed = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsJogMultiAxisCodec implements VendorCodec<Ros1Dsr_msgsJogMultiAxis>
{
    static readonly codecIdentity: string = "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02";
    static readonly maxWireBytes: i32 = 57;

    encodeChecked(value: Ros1Dsr_msgsJogMultiAxis): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsJogMultiAxis): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsJogMultiAxis>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsJogMultiAxis>();
        if(bytes.length > 57)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 57)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsJogMultiAxis.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsJogMultiAxis
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsJogMultiAxis() : changetype<Ros1Dsr_msgsJogMultiAxis>(out.value);
    }
}

/** Complete original dsr_msgs/ModbusState; spellings are published in generation proof. */
export class Ros1Dsr_msgsModbusState
{
    static readonly maxWireBytes: i32 = 264;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 264;
    /** Exact native field modbus_symbol, native scalar string. */
    modbus_symbol: string = "";
    /** Exact native field modbus_value, native scalar int32. */
    modbus_value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.modbus_symbol) || this.modbus_symbol.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.modbus_symbol);
            if(size > 256)
                return -22;
            if(4 + size > 264 - n)
                return -90;
            n += 4 + size;
            if(n > 264)
                return -90;
        }
        {
            if(4 > 264 - n)
                return -90;
            n += 4;
            if(n > 264)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.modbus_symbol);
        w.integer(<u64>this.modbus_value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsModbusState
    {
        const value = new Ros1Dsr_msgsModbusState();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.modbus_symbol = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.modbus_value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsModbusStateCodec implements VendorCodec<Ros1Dsr_msgsModbusState>
{
    static readonly codecIdentity: string = "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9";
    static readonly maxWireBytes: i32 = 264;

    encodeChecked(value: Ros1Dsr_msgsModbusState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsModbusState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsModbusState>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsModbusState>();
        if(bytes.length > 264)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsModbusState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsModbusState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsModbusState() : changetype<Ros1Dsr_msgsModbusState>(out.value);
    }
}

/** Complete original std_msgs/MultiArrayDimension; spellings are published in generation proof. */
export class Ros1Std_msgsMultiArrayDimension
{
    static readonly maxWireBytes: i32 = 76;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 76;
    /** Exact native field label, native scalar string. */
    label: string = "";
    /** Exact native field size, native scalar uint32. */
    size: u32 = 0;
    /** Exact native field stride, native scalar uint32. */
    stride: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.label) || this.label.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.label);
            if(size > 64)
                return -22;
            if(4 + size > 76 - n)
                return -90;
            n += 4 + size;
            if(n > 76)
                return -90;
        }
        {
            if(4 > 76 - n)
                return -90;
            n += 4;
            if(n > 76)
                return -90;
        }
        {
            if(4 > 76 - n)
                return -90;
            n += 4;
            if(n > 76)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.label);
        w.integer(<u64>this.size, 4);
        w.integer(<u64>this.stride, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Std_msgsMultiArrayDimension
    {
        const value = new Ros1Std_msgsMultiArrayDimension();
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
            value.label = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.size = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.stride = decoded;
        }
        return value;
    }
}

export class Ros1Std_msgsMultiArrayDimensionCodec implements VendorCodec<Ros1Std_msgsMultiArrayDimension>
{
    static readonly codecIdentity: string = "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444";
    static readonly maxWireBytes: i32 = 76;

    encodeChecked(value: Ros1Std_msgsMultiArrayDimension): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Std_msgsMultiArrayDimension): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Std_msgsMultiArrayDimension>
    {
        const out = new VendorDecoded<Ros1Std_msgsMultiArrayDimension>();
        if(bytes.length > 76)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Std_msgsMultiArrayDimension.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Std_msgsMultiArrayDimension
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Std_msgsMultiArrayDimension() : changetype<Ros1Std_msgsMultiArrayDimension>(out.value);
    }
}

/** Complete original std_msgs/MultiArrayLayout; spellings are published in generation proof. */
export class Ros1Std_msgsMultiArrayLayout
{
    static readonly maxWireBytes: i32 = 236;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 236;
    /** Exact native field dim, native scalar std_msgs/MultiArrayDimension. */
    dim: Array < Ros1Std_msgsMultiArrayDimension >= new Array<Ros1Std_msgsMultiArrayDimension>();
    /** Exact native field data_offset, native scalar uint32. */
    data_offset: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.dim.length > 3)
                return -22;
            if(4 > 236 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.dim.length; ++i)
            {
                const child = this.dim[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 236 - n)
                    return -90;
                n += child;
                if(n > 236)
                    return -90;
            }
        }
        {
            if(4 > 236 - n)
                return -90;
            n += 4;
            if(n > 236)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.dim.length);
        for(let i = 0; i < this.dim.length; ++i)
        {
            this.dim[i].writeControl(w);
        }
        w.integer(<u64>this.data_offset, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Std_msgsMultiArrayLayout
    {
        const value = new Ros1Std_msgsMultiArrayLayout();
        {
            const count = r.u32();
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.dim = new Array<Ros1Std_msgsMultiArrayDimension>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsMultiArrayDimension.readControl(r);
                value.dim.push(decoded);
            }
        }
        {
            const decoded = <u32>r.integer(4);
            value.data_offset = decoded;
        }
        return value;
    }
}

export class Ros1Std_msgsMultiArrayLayoutCodec implements VendorCodec<Ros1Std_msgsMultiArrayLayout>
{
    static readonly codecIdentity: string = "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e";
    static readonly maxWireBytes: i32 = 236;

    encodeChecked(value: Ros1Std_msgsMultiArrayLayout): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Std_msgsMultiArrayLayout): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Std_msgsMultiArrayLayout>
    {
        const out = new VendorDecoded<Ros1Std_msgsMultiArrayLayout>();
        if(bytes.length > 236)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Std_msgsMultiArrayLayout.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Std_msgsMultiArrayLayout
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Std_msgsMultiArrayLayout() : changetype<Ros1Std_msgsMultiArrayLayout>(out.value);
    }
}

/** Complete original std_msgs/Float64MultiArray; spellings are published in generation proof. */
export class Ros1Std_msgsFloat64MultiArray
{
    static readonly maxWireBytes: i32 = 368;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 368;
    /** Exact native field layout, native scalar std_msgs/MultiArrayLayout. */
    layout: Ros1Std_msgsMultiArrayLayout = new Ros1Std_msgsMultiArrayLayout();
    /** Exact native field data, native scalar float64. */
    data: Array < f64 >= new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.layout.wireSize();
            if(child < 0)
                return child;
            if(child > 368 - n)
                return -90;
            n += child;
            if(n > 368)
                return -90;
        }
        {
            if(this.data.length > 16)
                return -22;
            if(4 > 368 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                if(!isFinite(this.data[i]))
                    return -22;
                if(8 > 368 - n)
                    return -90;
                n += 8;
                if(n > 368)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.layout.writeControl(w);
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.data[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Std_msgsFloat64MultiArray
    {
        const value = new Ros1Std_msgsFloat64MultiArray();
        {
            const decoded = Ros1Std_msgsMultiArrayLayout.readControl(r);
            value.layout = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Std_msgsFloat64MultiArrayCodec implements VendorCodec<Ros1Std_msgsFloat64MultiArray>
{
    static readonly codecIdentity: string = "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8";
    static readonly maxWireBytes: i32 = 368;

    encodeChecked(value: Ros1Std_msgsFloat64MultiArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Std_msgsFloat64MultiArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Std_msgsFloat64MultiArray>
    {
        const out = new VendorDecoded<Ros1Std_msgsFloat64MultiArray>();
        if(bytes.length > 368)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Std_msgsFloat64MultiArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Std_msgsFloat64MultiArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Std_msgsFloat64MultiArray() : changetype<Ros1Std_msgsFloat64MultiArray>(out.value);
    }
}

/** Complete original dsr_msgs/MoveBlendingRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveBlendingRequest
{
    static readonly maxWireBytes: i32 = 2256;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2256;
    /** Exact native field segment, native scalar std_msgs/Float64MultiArray. */
    segment: Array < Ros1Std_msgsFloat64MultiArray >= new Array<Ros1Std_msgsFloat64MultiArray>();
    /** Exact native field posCnt, native scalar int8. */
    posCnt: i8 = 0;
    /** Exact native field vel, native scalar float64. */
    vel: Array < f64 >= new Array<f64>();
    /** Exact native field acc, native scalar float64. */
    acc: Array < f64 >= new Array<f64>();
    /** Exact native field time, native scalar float64. */
    time: f64 = 0;
    /** Exact native field ref, native scalar int8. */
    ref: i8 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 2; ++i)
            this.vel.push(0);
        for(let i = 0; i < 2; ++i)
            this.acc.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.segment.length > 6)
                return -22;
            if(4 > 2256 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.segment.length; ++i)
            {
                const child = this.segment[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2256 - n)
                    return -90;
                n += child;
                if(n > 2256)
                    return -90;
            }
        }
        {
            if(1 > 2256 - n)
                return -90;
            n += 1;
            if(n > 2256)
                return -90;
        }
        {
            if(this.vel.length != 2)
                return -22;
            for(let i = 0; i < this.vel.length; ++i)
            {
                if(!isFinite(this.vel[i]))
                    return -22;
                if(8 > 2256 - n)
                    return -90;
                n += 8;
                if(n > 2256)
                    return -90;
            }
        }
        {
            if(this.acc.length != 2)
                return -22;
            for(let i = 0; i < this.acc.length; ++i)
            {
                if(!isFinite(this.acc[i]))
                    return -22;
                if(8 > 2256 - n)
                    return -90;
                n += 8;
                if(n > 2256)
                    return -90;
            }
        }
        {
            if(!isFinite(this.time))
                return -22;
            if(8 > 2256 - n)
                return -90;
            n += 8;
            if(n > 2256)
                return -90;
        }
        {
            if(1 > 2256 - n)
                return -90;
            n += 1;
            if(n > 2256)
                return -90;
        }
        {
            if(1 > 2256 - n)
                return -90;
            n += 1;
            if(n > 2256)
                return -90;
        }
        {
            if(1 > 2256 - n)
                return -90;
            n += 1;
            if(n > 2256)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.segment.length);
        for(let i = 0; i < this.segment.length; ++i)
        {
            this.segment[i].writeControl(w);
        }
        w.integer(<u64>this.posCnt, 1);
        for(let i = 0; i < this.vel.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.vel[i]), 8);
        }
        for(let i = 0; i < this.acc.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.acc[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.time), 8);
        w.integer(<u64>this.ref, 1);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveBlendingRequest
    {
        const value = new Ros1Dsr_msgsMoveBlendingRequest();
        {
            const count = r.u32();
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.segment = new Array<Ros1Std_msgsFloat64MultiArray>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArray.readControl(r);
                value.segment.push(decoded);
            }
        }
        {
            const decoded = <i8>r.integer(1);
            value.posCnt = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.vel = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.vel.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.acc = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.acc.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ref = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveBlendingRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveBlendingRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6";
    static readonly maxWireBytes: i32 = 2256;

    encodeChecked(value: Ros1Dsr_msgsMoveBlendingRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveBlendingRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveBlendingRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveBlendingRequest>();
        if(bytes.length > 2256)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 48)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveBlendingRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveBlendingRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveBlendingRequest() : changetype<Ros1Dsr_msgsMoveBlendingRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveBlendingResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveBlendingResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveBlendingResponse
    {
        const value = new Ros1Dsr_msgsMoveBlendingResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveBlendingResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveBlendingResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveBlendingResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveBlendingResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveBlendingResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveBlendingResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveBlendingResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveBlendingResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveBlendingResponse() : changetype<Ros1Dsr_msgsMoveBlendingResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveCircleRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveCircleRequest
{
    static readonly maxWireBytes: i32 = 2280;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2280;
    /** Exact native field pos, native scalar std_msgs/Float64MultiArray. */
    pos: Array < Ros1Std_msgsFloat64MultiArray >= new Array<Ros1Std_msgsFloat64MultiArray>();
    /** Exact native field vel, native scalar float64. */
    vel: Array < f64 >= new Array<f64>();
    /** Exact native field acc, native scalar float64. */
    acc: Array < f64 >= new Array<f64>();
    /** Exact native field time, native scalar float64. */
    time: f64 = 0;
    /** Exact native field radius, native scalar float64. */
    radius: f64 = 0;
    /** Exact native field ref, native scalar int8. */
    ref: i8 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;
    /** Exact native field angle1, native scalar float64. */
    angle1: f64 = 0;
    /** Exact native field angle2, native scalar float64. */
    angle2: f64 = 0;
    /** Exact native field blendType, native scalar int8. */
    blendType: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 2; ++i)
            this.vel.push(0);
        for(let i = 0; i < 2; ++i)
            this.acc.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos.length > 6)
                return -22;
            if(4 > 2280 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.pos.length; ++i)
            {
                const child = this.pos[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2280 - n)
                    return -90;
                n += child;
                if(n > 2280)
                    return -90;
            }
        }
        {
            if(this.vel.length != 2)
                return -22;
            for(let i = 0; i < this.vel.length; ++i)
            {
                if(!isFinite(this.vel[i]))
                    return -22;
                if(8 > 2280 - n)
                    return -90;
                n += 8;
                if(n > 2280)
                    return -90;
            }
        }
        {
            if(this.acc.length != 2)
                return -22;
            for(let i = 0; i < this.acc.length; ++i)
            {
                if(!isFinite(this.acc[i]))
                    return -22;
                if(8 > 2280 - n)
                    return -90;
                n += 8;
                if(n > 2280)
                    return -90;
            }
        }
        {
            if(!isFinite(this.time))
                return -22;
            if(8 > 2280 - n)
                return -90;
            n += 8;
            if(n > 2280)
                return -90;
        }
        {
            if(!isFinite(this.radius))
                return -22;
            if(8 > 2280 - n)
                return -90;
            n += 8;
            if(n > 2280)
                return -90;
        }
        {
            if(1 > 2280 - n)
                return -90;
            n += 1;
            if(n > 2280)
                return -90;
        }
        {
            if(1 > 2280 - n)
                return -90;
            n += 1;
            if(n > 2280)
                return -90;
        }
        {
            if(!isFinite(this.angle1))
                return -22;
            if(8 > 2280 - n)
                return -90;
            n += 8;
            if(n > 2280)
                return -90;
        }
        {
            if(!isFinite(this.angle2))
                return -22;
            if(8 > 2280 - n)
                return -90;
            n += 8;
            if(n > 2280)
                return -90;
        }
        {
            if(1 > 2280 - n)
                return -90;
            n += 1;
            if(n > 2280)
                return -90;
        }
        {
            if(1 > 2280 - n)
                return -90;
            n += 1;
            if(n > 2280)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.pos.length);
        for(let i = 0; i < this.pos.length; ++i)
        {
            this.pos[i].writeControl(w);
        }
        for(let i = 0; i < this.vel.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.vel[i]), 8);
        }
        for(let i = 0; i < this.acc.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.acc[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.time), 8);
        w.integer(<u64>reinterpret<u64>(this.radius), 8);
        w.integer(<u64>this.ref, 1);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>reinterpret<u64>(this.angle1), 8);
        w.integer(<u64>reinterpret<u64>(this.angle2), 8);
        w.integer(<u64>this.blendType, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveCircleRequest
    {
        const value = new Ros1Dsr_msgsMoveCircleRequest();
        {
            const count = r.u32();
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pos = new Array<Ros1Std_msgsFloat64MultiArray>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArray.readControl(r);
                value.pos.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.vel = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.vel.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.acc = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.acc.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.radius = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ref = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.angle1 = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.angle2 = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.blendType = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveCircleRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveCircleRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4";
    static readonly maxWireBytes: i32 = 2280;

    encodeChecked(value: Ros1Dsr_msgsMoveCircleRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveCircleRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveCircleRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveCircleRequest>();
        if(bytes.length > 2280)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 72)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveCircleRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveCircleRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveCircleRequest() : changetype<Ros1Dsr_msgsMoveCircleRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveCircleResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveCircleResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveCircleResponse
    {
        const value = new Ros1Dsr_msgsMoveCircleResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveCircleResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveCircleResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveCircleResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveCircleResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveCircleResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveCircleResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveCircleResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveCircleResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveCircleResponse() : changetype<Ros1Dsr_msgsMoveCircleResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveJointRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveJointRequest
{
    static readonly maxWireBytes: i32 = 83;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 83;
    /** Exact native field pos, native scalar float64. */
    pos: Array < f64 >= new Array<f64>();
    /** Exact native field vel, native scalar float64. */
    vel: f64 = 0;
    /** Exact native field acc, native scalar float64. */
    acc: f64 = 0;
    /** Exact native field time, native scalar float64. */
    time: f64 = 0;
    /** Exact native field radius, native scalar float64. */
    radius: f64 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;
    /** Exact native field blendType, native scalar int8. */
    blendType: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.pos.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos.length != 6)
                return -22;
            for(let i = 0; i < this.pos.length; ++i)
            {
                if(!isFinite(this.pos[i]))
                    return -22;
                if(8 > 83 - n)
                    return -90;
                n += 8;
                if(n > 83)
                    return -90;
            }
        }
        {
            if(!isFinite(this.vel))
                return -22;
            if(8 > 83 - n)
                return -90;
            n += 8;
            if(n > 83)
                return -90;
        }
        {
            if(!isFinite(this.acc))
                return -22;
            if(8 > 83 - n)
                return -90;
            n += 8;
            if(n > 83)
                return -90;
        }
        {
            if(!isFinite(this.time))
                return -22;
            if(8 > 83 - n)
                return -90;
            n += 8;
            if(n > 83)
                return -90;
        }
        {
            if(!isFinite(this.radius))
                return -22;
            if(8 > 83 - n)
                return -90;
            n += 8;
            if(n > 83)
                return -90;
        }
        {
            if(1 > 83 - n)
                return -90;
            n += 1;
            if(n > 83)
                return -90;
        }
        {
            if(1 > 83 - n)
                return -90;
            n += 1;
            if(n > 83)
                return -90;
        }
        {
            if(1 > 83 - n)
                return -90;
            n += 1;
            if(n > 83)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.pos.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.pos[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.vel), 8);
        w.integer(<u64>reinterpret<u64>(this.acc), 8);
        w.integer(<u64>reinterpret<u64>(this.time), 8);
        w.integer(<u64>reinterpret<u64>(this.radius), 8);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.blendType, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveJointRequest
    {
        const value = new Ros1Dsr_msgsMoveJointRequest();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pos = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pos.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vel = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.acc = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.radius = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.blendType = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveJointRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveJointRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03";
    static readonly maxWireBytes: i32 = 83;

    encodeChecked(value: Ros1Dsr_msgsMoveJointRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveJointRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveJointRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveJointRequest>();
        if(bytes.length > 83)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 83)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveJointRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveJointRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveJointRequest() : changetype<Ros1Dsr_msgsMoveJointRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveJointResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveJointResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveJointResponse
    {
        const value = new Ros1Dsr_msgsMoveJointResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveJointResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveJointResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveJointResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveJointResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveJointResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveJointResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveJointResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveJointResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveJointResponse() : changetype<Ros1Dsr_msgsMoveJointResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveJointxRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveJointxRequest
{
    static readonly maxWireBytes: i32 = 85;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 85;
    /** Exact native field pos, native scalar float64. */
    pos: Array < f64 >= new Array<f64>();
    /** Exact native field vel, native scalar float64. */
    vel: f64 = 0;
    /** Exact native field acc, native scalar float64. */
    acc: f64 = 0;
    /** Exact native field time, native scalar float64. */
    time: f64 = 0;
    /** Exact native field radius, native scalar float64. */
    radius: f64 = 0;
    /** Exact native field ref, native scalar int8. */
    ref: i8 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;
    /** Exact native field blendType, native scalar int8. */
    blendType: i8 = 0;
    /** Exact native field sol, native scalar int8. */
    sol: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.pos.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos.length != 6)
                return -22;
            for(let i = 0; i < this.pos.length; ++i)
            {
                if(!isFinite(this.pos[i]))
                    return -22;
                if(8 > 85 - n)
                    return -90;
                n += 8;
                if(n > 85)
                    return -90;
            }
        }
        {
            if(!isFinite(this.vel))
                return -22;
            if(8 > 85 - n)
                return -90;
            n += 8;
            if(n > 85)
                return -90;
        }
        {
            if(!isFinite(this.acc))
                return -22;
            if(8 > 85 - n)
                return -90;
            n += 8;
            if(n > 85)
                return -90;
        }
        {
            if(!isFinite(this.time))
                return -22;
            if(8 > 85 - n)
                return -90;
            n += 8;
            if(n > 85)
                return -90;
        }
        {
            if(!isFinite(this.radius))
                return -22;
            if(8 > 85 - n)
                return -90;
            n += 8;
            if(n > 85)
                return -90;
        }
        {
            if(1 > 85 - n)
                return -90;
            n += 1;
            if(n > 85)
                return -90;
        }
        {
            if(1 > 85 - n)
                return -90;
            n += 1;
            if(n > 85)
                return -90;
        }
        {
            if(1 > 85 - n)
                return -90;
            n += 1;
            if(n > 85)
                return -90;
        }
        {
            if(1 > 85 - n)
                return -90;
            n += 1;
            if(n > 85)
                return -90;
        }
        {
            if(1 > 85 - n)
                return -90;
            n += 1;
            if(n > 85)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.pos.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.pos[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.vel), 8);
        w.integer(<u64>reinterpret<u64>(this.acc), 8);
        w.integer(<u64>reinterpret<u64>(this.time), 8);
        w.integer(<u64>reinterpret<u64>(this.radius), 8);
        w.integer(<u64>this.ref, 1);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.blendType, 1);
        w.integer(<u64>this.sol, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveJointxRequest
    {
        const value = new Ros1Dsr_msgsMoveJointxRequest();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pos = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pos.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vel = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.acc = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.radius = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ref = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.blendType = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.sol = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveJointxRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveJointxRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db";
    static readonly maxWireBytes: i32 = 85;

    encodeChecked(value: Ros1Dsr_msgsMoveJointxRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveJointxRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveJointxRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveJointxRequest>();
        if(bytes.length > 85)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 85)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveJointxRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveJointxRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveJointxRequest() : changetype<Ros1Dsr_msgsMoveJointxRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveJointxResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveJointxResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveJointxResponse
    {
        const value = new Ros1Dsr_msgsMoveJointxResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveJointxResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveJointxResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveJointxResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveJointxResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveJointxResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveJointxResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveJointxResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveJointxResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveJointxResponse() : changetype<Ros1Dsr_msgsMoveJointxResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveLineRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveLineRequest
{
    static readonly maxWireBytes: i32 = 100;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 100;
    /** Exact native field pos, native scalar float64. */
    pos: Array < f64 >= new Array<f64>();
    /** Exact native field vel, native scalar float64. */
    vel: Array < f64 >= new Array<f64>();
    /** Exact native field acc, native scalar float64. */
    acc: Array < f64 >= new Array<f64>();
    /** Exact native field time, native scalar float64. */
    time: f64 = 0;
    /** Exact native field radius, native scalar float64. */
    radius: f64 = 0;
    /** Exact native field ref, native scalar int8. */
    ref: i8 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;
    /** Exact native field blendType, native scalar int8. */
    blendType: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.pos.push(0);
        for(let i = 0; i < 2; ++i)
            this.vel.push(0);
        for(let i = 0; i < 2; ++i)
            this.acc.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos.length != 6)
                return -22;
            for(let i = 0; i < this.pos.length; ++i)
            {
                if(!isFinite(this.pos[i]))
                    return -22;
                if(8 > 100 - n)
                    return -90;
                n += 8;
                if(n > 100)
                    return -90;
            }
        }
        {
            if(this.vel.length != 2)
                return -22;
            for(let i = 0; i < this.vel.length; ++i)
            {
                if(!isFinite(this.vel[i]))
                    return -22;
                if(8 > 100 - n)
                    return -90;
                n += 8;
                if(n > 100)
                    return -90;
            }
        }
        {
            if(this.acc.length != 2)
                return -22;
            for(let i = 0; i < this.acc.length; ++i)
            {
                if(!isFinite(this.acc[i]))
                    return -22;
                if(8 > 100 - n)
                    return -90;
                n += 8;
                if(n > 100)
                    return -90;
            }
        }
        {
            if(!isFinite(this.time))
                return -22;
            if(8 > 100 - n)
                return -90;
            n += 8;
            if(n > 100)
                return -90;
        }
        {
            if(!isFinite(this.radius))
                return -22;
            if(8 > 100 - n)
                return -90;
            n += 8;
            if(n > 100)
                return -90;
        }
        {
            if(1 > 100 - n)
                return -90;
            n += 1;
            if(n > 100)
                return -90;
        }
        {
            if(1 > 100 - n)
                return -90;
            n += 1;
            if(n > 100)
                return -90;
        }
        {
            if(1 > 100 - n)
                return -90;
            n += 1;
            if(n > 100)
                return -90;
        }
        {
            if(1 > 100 - n)
                return -90;
            n += 1;
            if(n > 100)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.pos.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.pos[i]), 8);
        }
        for(let i = 0; i < this.vel.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.vel[i]), 8);
        }
        for(let i = 0; i < this.acc.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.acc[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.time), 8);
        w.integer(<u64>reinterpret<u64>(this.radius), 8);
        w.integer(<u64>this.ref, 1);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.blendType, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveLineRequest
    {
        const value = new Ros1Dsr_msgsMoveLineRequest();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pos = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pos.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.vel = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.vel.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.acc = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.acc.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.radius = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ref = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.blendType = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveLineRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveLineRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e";
    static readonly maxWireBytes: i32 = 100;

    encodeChecked(value: Ros1Dsr_msgsMoveLineRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveLineRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveLineRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveLineRequest>();
        if(bytes.length > 100)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 100)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveLineRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveLineRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveLineRequest() : changetype<Ros1Dsr_msgsMoveLineRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveLineResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveLineResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveLineResponse
    {
        const value = new Ros1Dsr_msgsMoveLineResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveLineResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveLineResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveLineResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveLineResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveLineResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveLineResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveLineResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveLineResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveLineResponse() : changetype<Ros1Dsr_msgsMoveLineResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MovePauseRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMovePauseRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMovePauseRequest
    {
        const value = new Ros1Dsr_msgsMovePauseRequest();
        return value;
    }
}

export class Ros1Dsr_msgsMovePauseRequestCodec implements VendorCodec<Ros1Dsr_msgsMovePauseRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsMovePauseRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMovePauseRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMovePauseRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMovePauseRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMovePauseRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMovePauseRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMovePauseRequest() : changetype<Ros1Dsr_msgsMovePauseRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MovePauseResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMovePauseResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMovePauseResponse
    {
        const value = new Ros1Dsr_msgsMovePauseResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMovePauseResponseCodec implements VendorCodec<Ros1Dsr_msgsMovePauseResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMovePauseResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMovePauseResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMovePauseResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMovePauseResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMovePauseResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMovePauseResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMovePauseResponse() : changetype<Ros1Dsr_msgsMovePauseResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MovePeriodicRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMovePeriodicRequest
{
    static readonly maxWireBytes: i32 = 107;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 107;
    /** Exact native field amp, native scalar float64. */
    amp: Array < f64 >= new Array<f64>();
    /** Exact native field periodic, native scalar float64. */
    periodic: Array < f64 >= new Array<f64>();
    /** Exact native field acc, native scalar float64. */
    acc: f64 = 0;
    /** Exact native field repeat, native scalar int8. */
    repeat: i8 = 0;
    /** Exact native field ref, native scalar int8. */
    ref: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.amp.push(0);
        for(let i = 0; i < 6; ++i)
            this.periodic.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.amp.length != 6)
                return -22;
            for(let i = 0; i < this.amp.length; ++i)
            {
                if(!isFinite(this.amp[i]))
                    return -22;
                if(8 > 107 - n)
                    return -90;
                n += 8;
                if(n > 107)
                    return -90;
            }
        }
        {
            if(this.periodic.length != 6)
                return -22;
            for(let i = 0; i < this.periodic.length; ++i)
            {
                if(!isFinite(this.periodic[i]))
                    return -22;
                if(8 > 107 - n)
                    return -90;
                n += 8;
                if(n > 107)
                    return -90;
            }
        }
        {
            if(!isFinite(this.acc))
                return -22;
            if(8 > 107 - n)
                return -90;
            n += 8;
            if(n > 107)
                return -90;
        }
        {
            if(1 > 107 - n)
                return -90;
            n += 1;
            if(n > 107)
                return -90;
        }
        {
            if(1 > 107 - n)
                return -90;
            n += 1;
            if(n > 107)
                return -90;
        }
        {
            if(1 > 107 - n)
                return -90;
            n += 1;
            if(n > 107)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.amp.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.amp[i]), 8);
        }
        for(let i = 0; i < this.periodic.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.periodic[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.acc), 8);
        w.integer(<u64>this.repeat, 1);
        w.integer(<u64>this.ref, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMovePeriodicRequest
    {
        const value = new Ros1Dsr_msgsMovePeriodicRequest();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.amp = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.amp.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.periodic = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.periodic.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.acc = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.repeat = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ref = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMovePeriodicRequestCodec implements VendorCodec<Ros1Dsr_msgsMovePeriodicRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69";
    static readonly maxWireBytes: i32 = 107;

    encodeChecked(value: Ros1Dsr_msgsMovePeriodicRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMovePeriodicRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMovePeriodicRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMovePeriodicRequest>();
        if(bytes.length > 107)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 107)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMovePeriodicRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMovePeriodicRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMovePeriodicRequest() : changetype<Ros1Dsr_msgsMovePeriodicRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MovePeriodicResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMovePeriodicResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMovePeriodicResponse
    {
        const value = new Ros1Dsr_msgsMovePeriodicResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMovePeriodicResponseCodec implements VendorCodec<Ros1Dsr_msgsMovePeriodicResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMovePeriodicResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMovePeriodicResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMovePeriodicResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMovePeriodicResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMovePeriodicResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMovePeriodicResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMovePeriodicResponse() : changetype<Ros1Dsr_msgsMovePeriodicResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveResumeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveResumeRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveResumeRequest
    {
        const value = new Ros1Dsr_msgsMoveResumeRequest();
        return value;
    }
}

export class Ros1Dsr_msgsMoveResumeRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveResumeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsMoveResumeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveResumeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveResumeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveResumeRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveResumeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveResumeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveResumeRequest() : changetype<Ros1Dsr_msgsMoveResumeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveResumeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveResumeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveResumeResponse
    {
        const value = new Ros1Dsr_msgsMoveResumeResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveResumeResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveResumeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveResumeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveResumeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveResumeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveResumeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveResumeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveResumeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveResumeResponse() : changetype<Ros1Dsr_msgsMoveResumeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveSpiralRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveSpiralRequest
{
    static readonly maxWireBytes: i32 = 67;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 67;
    /** Exact native field revolution, native scalar float64. */
    revolution: f64 = 0;
    /** Exact native field maxRadius, native scalar float64. */
    maxRadius: f64 = 0;
    /** Exact native field maxLength, native scalar float64. */
    maxLength: f64 = 0;
    /** Exact native field vel, native scalar float64. */
    vel: Array < f64 >= new Array<f64>();
    /** Exact native field acc, native scalar float64. */
    acc: Array < f64 >= new Array<f64>();
    /** Exact native field time, native scalar float64. */
    time: f64 = 0;
    /** Exact native field taskAxis, native scalar int8. */
    taskAxis: i8 = 0;
    /** Exact native field ref, native scalar int8. */
    ref: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 2; ++i)
            this.vel.push(0);
        for(let i = 0; i < 2; ++i)
            this.acc.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.revolution))
                return -22;
            if(8 > 67 - n)
                return -90;
            n += 8;
            if(n > 67)
                return -90;
        }
        {
            if(!isFinite(this.maxRadius))
                return -22;
            if(8 > 67 - n)
                return -90;
            n += 8;
            if(n > 67)
                return -90;
        }
        {
            if(!isFinite(this.maxLength))
                return -22;
            if(8 > 67 - n)
                return -90;
            n += 8;
            if(n > 67)
                return -90;
        }
        {
            if(this.vel.length != 2)
                return -22;
            for(let i = 0; i < this.vel.length; ++i)
            {
                if(!isFinite(this.vel[i]))
                    return -22;
                if(8 > 67 - n)
                    return -90;
                n += 8;
                if(n > 67)
                    return -90;
            }
        }
        {
            if(this.acc.length != 2)
                return -22;
            for(let i = 0; i < this.acc.length; ++i)
            {
                if(!isFinite(this.acc[i]))
                    return -22;
                if(8 > 67 - n)
                    return -90;
                n += 8;
                if(n > 67)
                    return -90;
            }
        }
        {
            if(!isFinite(this.time))
                return -22;
            if(8 > 67 - n)
                return -90;
            n += 8;
            if(n > 67)
                return -90;
        }
        {
            if(1 > 67 - n)
                return -90;
            n += 1;
            if(n > 67)
                return -90;
        }
        {
            if(1 > 67 - n)
                return -90;
            n += 1;
            if(n > 67)
                return -90;
        }
        {
            if(1 > 67 - n)
                return -90;
            n += 1;
            if(n > 67)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.revolution), 8);
        w.integer(<u64>reinterpret<u64>(this.maxRadius), 8);
        w.integer(<u64>reinterpret<u64>(this.maxLength), 8);
        for(let i = 0; i < this.vel.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.vel[i]), 8);
        }
        for(let i = 0; i < this.acc.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.acc[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.time), 8);
        w.integer(<u64>this.taskAxis, 1);
        w.integer(<u64>this.ref, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveSpiralRequest
    {
        const value = new Ros1Dsr_msgsMoveSpiralRequest();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.revolution = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.maxRadius = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.maxLength = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.vel = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.vel.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.acc = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.acc.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.taskAxis = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ref = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveSpiralRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveSpiralRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c";
    static readonly maxWireBytes: i32 = 67;

    encodeChecked(value: Ros1Dsr_msgsMoveSpiralRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveSpiralRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveSpiralRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveSpiralRequest>();
        if(bytes.length > 67)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 67)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveSpiralRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveSpiralRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveSpiralRequest() : changetype<Ros1Dsr_msgsMoveSpiralRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveSpiralResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveSpiralResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveSpiralResponse
    {
        const value = new Ros1Dsr_msgsMoveSpiralResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveSpiralResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveSpiralResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveSpiralResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveSpiralResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveSpiralResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveSpiralResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveSpiralResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveSpiralResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveSpiralResponse() : changetype<Ros1Dsr_msgsMoveSpiralResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveSplineJointRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveSplineJointRequest
{
    static readonly maxWireBytes: i32 = 2239;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2239;
    /** Exact native field pos, native scalar std_msgs/Float64MultiArray. */
    pos: Array < Ros1Std_msgsFloat64MultiArray >= new Array<Ros1Std_msgsFloat64MultiArray>();
    /** Exact native field posCnt, native scalar int8. */
    posCnt: i8 = 0;
    /** Exact native field vel, native scalar float64. */
    vel: f64 = 0;
    /** Exact native field acc, native scalar float64. */
    acc: f64 = 0;
    /** Exact native field time, native scalar float64. */
    time: f64 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos.length > 6)
                return -22;
            if(4 > 2239 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.pos.length; ++i)
            {
                const child = this.pos[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2239 - n)
                    return -90;
                n += child;
                if(n > 2239)
                    return -90;
            }
        }
        {
            if(1 > 2239 - n)
                return -90;
            n += 1;
            if(n > 2239)
                return -90;
        }
        {
            if(!isFinite(this.vel))
                return -22;
            if(8 > 2239 - n)
                return -90;
            n += 8;
            if(n > 2239)
                return -90;
        }
        {
            if(!isFinite(this.acc))
                return -22;
            if(8 > 2239 - n)
                return -90;
            n += 8;
            if(n > 2239)
                return -90;
        }
        {
            if(!isFinite(this.time))
                return -22;
            if(8 > 2239 - n)
                return -90;
            n += 8;
            if(n > 2239)
                return -90;
        }
        {
            if(1 > 2239 - n)
                return -90;
            n += 1;
            if(n > 2239)
                return -90;
        }
        {
            if(1 > 2239 - n)
                return -90;
            n += 1;
            if(n > 2239)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.pos.length);
        for(let i = 0; i < this.pos.length; ++i)
        {
            this.pos[i].writeControl(w);
        }
        w.integer(<u64>this.posCnt, 1);
        w.integer(<u64>reinterpret<u64>(this.vel), 8);
        w.integer(<u64>reinterpret<u64>(this.acc), 8);
        w.integer(<u64>reinterpret<u64>(this.time), 8);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveSplineJointRequest
    {
        const value = new Ros1Dsr_msgsMoveSplineJointRequest();
        {
            const count = r.u32();
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pos = new Array<Ros1Std_msgsFloat64MultiArray>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArray.readControl(r);
                value.pos.push(decoded);
            }
        }
        {
            const decoded = <i8>r.integer(1);
            value.posCnt = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vel = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.acc = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveSplineJointRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveSplineJointRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_6e386632864f2315ba8737001727f9c03bb17a0e70b8eb990ce39fed669aac33";
    static readonly maxWireBytes: i32 = 2239;

    encodeChecked(value: Ros1Dsr_msgsMoveSplineJointRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveSplineJointRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveSplineJointRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveSplineJointRequest>();
        if(bytes.length > 2239)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 31)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveSplineJointRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveSplineJointRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveSplineJointRequest() : changetype<Ros1Dsr_msgsMoveSplineJointRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveSplineJointResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveSplineJointResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveSplineJointResponse
    {
        const value = new Ros1Dsr_msgsMoveSplineJointResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveSplineJointResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveSplineJointResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveSplineJointResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveSplineJointResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveSplineJointResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveSplineJointResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveSplineJointResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveSplineJointResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveSplineJointResponse() : changetype<Ros1Dsr_msgsMoveSplineJointResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveSplineTaskRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveSplineTaskRequest
{
    static readonly maxWireBytes: i32 = 2257;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2257;
    /** Exact native field pos, native scalar std_msgs/Float64MultiArray. */
    pos: Array < Ros1Std_msgsFloat64MultiArray >= new Array<Ros1Std_msgsFloat64MultiArray>();
    /** Exact native field posCnt, native scalar int8. */
    posCnt: i8 = 0;
    /** Exact native field vel, native scalar float64. */
    vel: Array < f64 >= new Array<f64>();
    /** Exact native field acc, native scalar float64. */
    acc: Array < f64 >= new Array<f64>();
    /** Exact native field time, native scalar float64. */
    time: f64 = 0;
    /** Exact native field ref, native scalar int8. */
    ref: i8 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;
    /** Exact native field opt, native scalar int8. */
    opt: i8 = 0;
    /** Exact native field syncType, native scalar int8. */
    syncType: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 2; ++i)
            this.vel.push(0);
        for(let i = 0; i < 2; ++i)
            this.acc.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos.length > 6)
                return -22;
            if(4 > 2257 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.pos.length; ++i)
            {
                const child = this.pos[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2257 - n)
                    return -90;
                n += child;
                if(n > 2257)
                    return -90;
            }
        }
        {
            if(1 > 2257 - n)
                return -90;
            n += 1;
            if(n > 2257)
                return -90;
        }
        {
            if(this.vel.length != 2)
                return -22;
            for(let i = 0; i < this.vel.length; ++i)
            {
                if(!isFinite(this.vel[i]))
                    return -22;
                if(8 > 2257 - n)
                    return -90;
                n += 8;
                if(n > 2257)
                    return -90;
            }
        }
        {
            if(this.acc.length != 2)
                return -22;
            for(let i = 0; i < this.acc.length; ++i)
            {
                if(!isFinite(this.acc[i]))
                    return -22;
                if(8 > 2257 - n)
                    return -90;
                n += 8;
                if(n > 2257)
                    return -90;
            }
        }
        {
            if(!isFinite(this.time))
                return -22;
            if(8 > 2257 - n)
                return -90;
            n += 8;
            if(n > 2257)
                return -90;
        }
        {
            if(1 > 2257 - n)
                return -90;
            n += 1;
            if(n > 2257)
                return -90;
        }
        {
            if(1 > 2257 - n)
                return -90;
            n += 1;
            if(n > 2257)
                return -90;
        }
        {
            if(1 > 2257 - n)
                return -90;
            n += 1;
            if(n > 2257)
                return -90;
        }
        {
            if(1 > 2257 - n)
                return -90;
            n += 1;
            if(n > 2257)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.pos.length);
        for(let i = 0; i < this.pos.length; ++i)
        {
            this.pos[i].writeControl(w);
        }
        w.integer(<u64>this.posCnt, 1);
        for(let i = 0; i < this.vel.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.vel[i]), 8);
        }
        for(let i = 0; i < this.acc.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.acc[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.time), 8);
        w.integer(<u64>this.ref, 1);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.opt, 1);
        w.integer(<u64>this.syncType, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveSplineTaskRequest
    {
        const value = new Ros1Dsr_msgsMoveSplineTaskRequest();
        {
            const count = r.u32();
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pos = new Array<Ros1Std_msgsFloat64MultiArray>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArray.readControl(r);
                value.pos.push(decoded);
            }
        }
        {
            const decoded = <i8>r.integer(1);
            value.posCnt = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.vel = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.vel.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.acc = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.acc.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ref = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.opt = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.syncType = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveSplineTaskRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveSplineTaskRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a";
    static readonly maxWireBytes: i32 = 2257;

    encodeChecked(value: Ros1Dsr_msgsMoveSplineTaskRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveSplineTaskRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveSplineTaskRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveSplineTaskRequest>();
        if(bytes.length > 2257)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 49)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveSplineTaskRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveSplineTaskRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveSplineTaskRequest() : changetype<Ros1Dsr_msgsMoveSplineTaskRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveSplineTaskResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveSplineTaskResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveSplineTaskResponse
    {
        const value = new Ros1Dsr_msgsMoveSplineTaskResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveSplineTaskResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveSplineTaskResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveSplineTaskResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveSplineTaskResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveSplineTaskResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveSplineTaskResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveSplineTaskResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveSplineTaskResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveSplineTaskResponse() : changetype<Ros1Dsr_msgsMoveSplineTaskResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveStopRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveStopRequest
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** Exact native field stop_mode, native scalar int32. */
    stop_mode: i32 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.stop_mode, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveStopRequest
    {
        const value = new Ros1Dsr_msgsMoveStopRequest();
        {
            const decoded = <i32>r.integer(4);
            value.stop_mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveStopRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveStopRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros1Dsr_msgsMoveStopRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveStopRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveStopRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveStopRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveStopRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveStopRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveStopRequest() : changetype<Ros1Dsr_msgsMoveStopRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveStopResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveStopResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveStopResponse
    {
        const value = new Ros1Dsr_msgsMoveStopResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveStopResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveStopResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveStopResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveStopResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveStopResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveStopResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveStopResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveStopResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveStopResponse() : changetype<Ros1Dsr_msgsMoveStopResponse>(out.value);
    }
}

/** Complete original dsr_msgs/MoveWaitRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveWaitRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveWaitRequest
    {
        const value = new Ros1Dsr_msgsMoveWaitRequest();
        return value;
    }
}

export class Ros1Dsr_msgsMoveWaitRequestCodec implements VendorCodec<Ros1Dsr_msgsMoveWaitRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsMoveWaitRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveWaitRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveWaitRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveWaitRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveWaitRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveWaitRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveWaitRequest() : changetype<Ros1Dsr_msgsMoveWaitRequest>(out.value);
    }
}

/** Complete original dsr_msgs/MoveWaitResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsMoveWaitResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsMoveWaitResponse
    {
        const value = new Ros1Dsr_msgsMoveWaitResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsMoveWaitResponseCodec implements VendorCodec<Ros1Dsr_msgsMoveWaitResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsMoveWaitResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsMoveWaitResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsMoveWaitResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsMoveWaitResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsMoveWaitResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsMoveWaitResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsMoveWaitResponse() : changetype<Ros1Dsr_msgsMoveWaitResponse>(out.value);
    }
}

/** Complete original dsr_msgs/RobotError; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotError
{
    static readonly maxWireBytes: i32 = 792;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 792;
    /** Exact native field level, native scalar int32. */
    level: i32 = 0;
    /** Exact native field group, native scalar int32. */
    group: i32 = 0;
    /** Exact native field code, native scalar int32. */
    code: i32 = 0;
    /** Exact native field msg1, native scalar string. */
    msg1: string = "";
    /** Exact native field msg2, native scalar string. */
    msg2: string = "";
    /** Exact native field msg3, native scalar string. */
    msg3: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 792 - n)
                return -90;
            n += 4;
            if(n > 792)
                return -90;
        }
        {
            if(4 > 792 - n)
                return -90;
            n += 4;
            if(n > 792)
                return -90;
        }
        {
            if(4 > 792 - n)
                return -90;
            n += 4;
            if(n > 792)
                return -90;
        }
        {
            if(!validUnicode(this.msg1) || this.msg1.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.msg1);
            if(size > 256)
                return -22;
            if(4 + size > 792 - n)
                return -90;
            n += 4 + size;
            if(n > 792)
                return -90;
        }
        {
            if(!validUnicode(this.msg2) || this.msg2.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.msg2);
            if(size > 256)
                return -22;
            if(4 + size > 792 - n)
                return -90;
            n += 4 + size;
            if(n > 792)
                return -90;
        }
        {
            if(!validUnicode(this.msg3) || this.msg3.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.msg3);
            if(size > 256)
                return -22;
            if(4 + size > 792 - n)
                return -90;
            n += 4 + size;
            if(n > 792)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.level, 4);
        w.integer(<u64>this.group, 4);
        w.integer(<u64>this.code, 4);
        w.text(this.msg1);
        w.text(this.msg2);
        w.text(this.msg3);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotError
    {
        const value = new Ros1Dsr_msgsRobotError();
        {
            const decoded = <i32>r.integer(4);
            value.level = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.group = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.code = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.msg1 = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.msg2 = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.msg3 = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsRobotErrorCodec implements VendorCodec<Ros1Dsr_msgsRobotError>
{
    static readonly codecIdentity: string = "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641";
    static readonly maxWireBytes: i32 = 792;

    encodeChecked(value: Ros1Dsr_msgsRobotError): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotError): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotError>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotError>();
        if(bytes.length > 792)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotError.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotError
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotError() : changetype<Ros1Dsr_msgsRobotError>(out.value);
    }
}

/** Complete original dsr_msgs/RobotState; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotState
{
    static readonly maxWireBytes: i32 = 7595;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 7595;
    /** Exact native field robot_state, native scalar int32. */
    robot_state: i32 = 0;
    /** Exact native field robot_state_str, native scalar string. */
    robot_state_str: string = "";
    /** Exact native field actual_mode, native scalar int8. */
    actual_mode: i8 = 0;
    /** Exact native field actual_space, native scalar int8. */
    actual_space: i8 = 0;
    /** Exact native field current_posj, native scalar float64. */
    current_posj: Array < f64 >= new Array<f64>();
    /** Exact native field current_velj, native scalar float64. */
    current_velj: Array < f64 >= new Array<f64>();
    /** Exact native field joint_abs, native scalar float64. */
    joint_abs: Array < f64 >= new Array<f64>();
    /** Exact native field joint_err, native scalar float64. */
    joint_err: Array < f64 >= new Array<f64>();
    /** Exact native field target_posj, native scalar float64. */
    target_posj: Array < f64 >= new Array<f64>();
    /** Exact native field target_velj, native scalar float64. */
    target_velj: Array < f64 >= new Array<f64>();
    /** Exact native field current_posx, native scalar float64. */
    current_posx: Array < f64 >= new Array<f64>();
    /** Exact native field current_velx, native scalar float64. */
    current_velx: Array < f64 >= new Array<f64>();
    /** Exact native field task_err, native scalar float64. */
    task_err: Array < f64 >= new Array<f64>();
    /** Exact native field target_velx, native scalar float64. */
    target_velx: Array < f64 >= new Array<f64>();
    /** Exact native field target_posx, native scalar float64. */
    target_posx: Array < f64 >= new Array<f64>();
    /** Exact native field solution_space, native scalar int8. */
    solution_space: i8 = 0;
    /** Exact native field rotation_matrix, native scalar std_msgs/Float64MultiArray. */
    rotation_matrix: Array < Ros1Std_msgsFloat64MultiArray >= new Array<Ros1Std_msgsFloat64MultiArray>();
    /** Exact native field dynamic_tor, native scalar float64. */
    dynamic_tor: Array < f64 >= new Array<f64>();
    /** Exact native field actual_jts, native scalar float64. */
    actual_jts: Array < f64 >= new Array<f64>();
    /** Exact native field actual_ejt, native scalar float64. */
    actual_ejt: Array < f64 >= new Array<f64>();
    /** Exact native field actual_ett, native scalar float64. */
    actual_ett: Array < f64 >= new Array<f64>();
    /** Exact native field sync_time, native scalar float64. */
    sync_time: f64 = 0;
    /** Exact native field actual_bk, native scalar int8. */
    actual_bk: Array < i8 >= new Array<i8>();
    /** Exact native field actual_bt, native scalar int8. */
    actual_bt: Array < i8 >= new Array<i8>();
    /** Exact native field actual_mc, native scalar float64. */
    actual_mc: Array < f64 >= new Array<f64>();
    /** Exact native field actual_mt, native scalar float64. */
    actual_mt: Array < f64 >= new Array<f64>();
    /** Exact native field ctrlbox_digital_input, native scalar int8. */
    ctrlbox_digital_input: Array < i8 >= new Array<i8>();
    /** Exact native field ctrlbox_digital_output, native scalar int8. */
    ctrlbox_digital_output: Array < i8 >= new Array<i8>();
    /** Exact native field flange_digital_input, native scalar int8. */
    flange_digital_input: Array < i8 >= new Array<i8>();
    /** Exact native field flange_digital_output, native scalar int8. */
    flange_digital_output: Array < i8 >= new Array<i8>();
    /** Exact native field modbus_state, native scalar dsr_msgs/ModbusState. */
    modbus_state: Array < Ros1Dsr_msgsModbusState >= new Array<Ros1Dsr_msgsModbusState>();
    /** Exact native field access_control, native scalar int32. */
    access_control: i32 = 0;
    /** Exact native field homming_completed, native scalar bool. */
    homming_completed: bool = false;
    /** Exact native field tp_initialized, native scalar bool. */
    tp_initialized: bool = false;
    /** Exact native field mastering_need, native scalar int8. */
    mastering_need: i8 = 0;
    /** Exact native field drl_stopped, native scalar bool. */
    drl_stopped: bool = false;
    /** Exact native field disconnected, native scalar bool. */
    disconnected: bool = false;

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.current_posj.push(0);
        for(let i = 0; i < 6; ++i)
            this.current_velj.push(0);
        for(let i = 0; i < 6; ++i)
            this.joint_abs.push(0);
        for(let i = 0; i < 6; ++i)
            this.joint_err.push(0);
        for(let i = 0; i < 6; ++i)
            this.target_posj.push(0);
        for(let i = 0; i < 6; ++i)
            this.target_velj.push(0);
        for(let i = 0; i < 6; ++i)
            this.current_posx.push(0);
        for(let i = 0; i < 6; ++i)
            this.current_velx.push(0);
        for(let i = 0; i < 6; ++i)
            this.task_err.push(0);
        for(let i = 0; i < 6; ++i)
            this.target_velx.push(0);
        for(let i = 0; i < 6; ++i)
            this.target_posx.push(0);
        for(let i = 0; i < 6; ++i)
            this.dynamic_tor.push(0);
        for(let i = 0; i < 6; ++i)
            this.actual_jts.push(0);
        for(let i = 0; i < 6; ++i)
            this.actual_ejt.push(0);
        for(let i = 0; i < 6; ++i)
            this.actual_ett.push(0);
        for(let i = 0; i < 6; ++i)
            this.actual_bk.push(0);
        for(let i = 0; i < 5; ++i)
            this.actual_bt.push(0);
        for(let i = 0; i < 6; ++i)
            this.actual_mc.push(0);
        for(let i = 0; i < 6; ++i)
            this.actual_mt.push(0);
        for(let i = 0; i < 16; ++i)
            this.ctrlbox_digital_input.push(0);
        for(let i = 0; i < 16; ++i)
            this.ctrlbox_digital_output.push(0);
        for(let i = 0; i < 6; ++i)
            this.flange_digital_input.push(0);
        for(let i = 0; i < 6; ++i)
            this.flange_digital_output.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 7595 - n)
                return -90;
            n += 4;
            if(n > 7595)
                return -90;
        }
        {
            if(!validUnicode(this.robot_state_str) || this.robot_state_str.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.robot_state_str);
            if(size > 256)
                return -22;
            if(4 + size > 7595 - n)
                return -90;
            n += 4 + size;
            if(n > 7595)
                return -90;
        }
        {
            if(1 > 7595 - n)
                return -90;
            n += 1;
            if(n > 7595)
                return -90;
        }
        {
            if(1 > 7595 - n)
                return -90;
            n += 1;
            if(n > 7595)
                return -90;
        }
        {
            if(this.current_posj.length != 6)
                return -22;
            for(let i = 0; i < this.current_posj.length; ++i)
            {
                if(!isFinite(this.current_posj[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.current_velj.length != 6)
                return -22;
            for(let i = 0; i < this.current_velj.length; ++i)
            {
                if(!isFinite(this.current_velj[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.joint_abs.length != 6)
                return -22;
            for(let i = 0; i < this.joint_abs.length; ++i)
            {
                if(!isFinite(this.joint_abs[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.joint_err.length != 6)
                return -22;
            for(let i = 0; i < this.joint_err.length; ++i)
            {
                if(!isFinite(this.joint_err[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.target_posj.length != 6)
                return -22;
            for(let i = 0; i < this.target_posj.length; ++i)
            {
                if(!isFinite(this.target_posj[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.target_velj.length != 6)
                return -22;
            for(let i = 0; i < this.target_velj.length; ++i)
            {
                if(!isFinite(this.target_velj[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.current_posx.length != 6)
                return -22;
            for(let i = 0; i < this.current_posx.length; ++i)
            {
                if(!isFinite(this.current_posx[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.current_velx.length != 6)
                return -22;
            for(let i = 0; i < this.current_velx.length; ++i)
            {
                if(!isFinite(this.current_velx[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.task_err.length != 6)
                return -22;
            for(let i = 0; i < this.task_err.length; ++i)
            {
                if(!isFinite(this.task_err[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.target_velx.length != 6)
                return -22;
            for(let i = 0; i < this.target_velx.length; ++i)
            {
                if(!isFinite(this.target_velx[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.target_posx.length != 6)
                return -22;
            for(let i = 0; i < this.target_posx.length; ++i)
            {
                if(!isFinite(this.target_posx[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(1 > 7595 - n)
                return -90;
            n += 1;
            if(n > 7595)
                return -90;
        }
        {
            if(this.rotation_matrix.length > 6)
                return -22;
            if(4 > 7595 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.rotation_matrix.length; ++i)
            {
                const child = this.rotation_matrix[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 7595 - n)
                    return -90;
                n += child;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.dynamic_tor.length != 6)
                return -22;
            for(let i = 0; i < this.dynamic_tor.length; ++i)
            {
                if(!isFinite(this.dynamic_tor[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.actual_jts.length != 6)
                return -22;
            for(let i = 0; i < this.actual_jts.length; ++i)
            {
                if(!isFinite(this.actual_jts[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.actual_ejt.length != 6)
                return -22;
            for(let i = 0; i < this.actual_ejt.length; ++i)
            {
                if(!isFinite(this.actual_ejt[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.actual_ett.length != 6)
                return -22;
            for(let i = 0; i < this.actual_ett.length; ++i)
            {
                if(!isFinite(this.actual_ett[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(!isFinite(this.sync_time))
                return -22;
            if(8 > 7595 - n)
                return -90;
            n += 8;
            if(n > 7595)
                return -90;
        }
        {
            if(this.actual_bk.length != 6)
                return -22;
            for(let i = 0; i < this.actual_bk.length; ++i)
            {
                if(1 > 7595 - n)
                    return -90;
                n += 1;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.actual_bt.length != 5)
                return -22;
            for(let i = 0; i < this.actual_bt.length; ++i)
            {
                if(1 > 7595 - n)
                    return -90;
                n += 1;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.actual_mc.length != 6)
                return -22;
            for(let i = 0; i < this.actual_mc.length; ++i)
            {
                if(!isFinite(this.actual_mc[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.actual_mt.length != 6)
                return -22;
            for(let i = 0; i < this.actual_mt.length; ++i)
            {
                if(!isFinite(this.actual_mt[i]))
                    return -22;
                if(8 > 7595 - n)
                    return -90;
                n += 8;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.ctrlbox_digital_input.length != 16)
                return -22;
            for(let i = 0; i < this.ctrlbox_digital_input.length; ++i)
            {
                if(1 > 7595 - n)
                    return -90;
                n += 1;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.ctrlbox_digital_output.length != 16)
                return -22;
            for(let i = 0; i < this.ctrlbox_digital_output.length; ++i)
            {
                if(1 > 7595 - n)
                    return -90;
                n += 1;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.flange_digital_input.length != 6)
                return -22;
            for(let i = 0; i < this.flange_digital_input.length; ++i)
            {
                if(1 > 7595 - n)
                    return -90;
                n += 1;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.flange_digital_output.length != 6)
                return -22;
            for(let i = 0; i < this.flange_digital_output.length; ++i)
            {
                if(1 > 7595 - n)
                    return -90;
                n += 1;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(this.modbus_state.length > 16)
                return -22;
            if(4 > 7595 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.modbus_state.length; ++i)
            {
                const child = this.modbus_state[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 7595 - n)
                    return -90;
                n += child;
                if(n > 7595)
                    return -90;
            }
        }
        {
            if(4 > 7595 - n)
                return -90;
            n += 4;
            if(n > 7595)
                return -90;
        }
        {
            if(1 > 7595 - n)
                return -90;
            n += 1;
            if(n > 7595)
                return -90;
        }
        {
            if(1 > 7595 - n)
                return -90;
            n += 1;
            if(n > 7595)
                return -90;
        }
        {
            if(1 > 7595 - n)
                return -90;
            n += 1;
            if(n > 7595)
                return -90;
        }
        {
            if(1 > 7595 - n)
                return -90;
            n += 1;
            if(n > 7595)
                return -90;
        }
        {
            if(1 > 7595 - n)
                return -90;
            n += 1;
            if(n > 7595)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.robot_state, 4);
        w.text(this.robot_state_str);
        w.integer(<u64>this.actual_mode, 1);
        w.integer(<u64>this.actual_space, 1);
        for(let i = 0; i < this.current_posj.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.current_posj[i]), 8);
        }
        for(let i = 0; i < this.current_velj.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.current_velj[i]), 8);
        }
        for(let i = 0; i < this.joint_abs.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.joint_abs[i]), 8);
        }
        for(let i = 0; i < this.joint_err.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.joint_err[i]), 8);
        }
        for(let i = 0; i < this.target_posj.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.target_posj[i]), 8);
        }
        for(let i = 0; i < this.target_velj.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.target_velj[i]), 8);
        }
        for(let i = 0; i < this.current_posx.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.current_posx[i]), 8);
        }
        for(let i = 0; i < this.current_velx.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.current_velx[i]), 8);
        }
        for(let i = 0; i < this.task_err.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.task_err[i]), 8);
        }
        for(let i = 0; i < this.target_velx.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.target_velx[i]), 8);
        }
        for(let i = 0; i < this.target_posx.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.target_posx[i]), 8);
        }
        w.integer(<u64>this.solution_space, 1);
        w.u32(<u32>this.rotation_matrix.length);
        for(let i = 0; i < this.rotation_matrix.length; ++i)
        {
            this.rotation_matrix[i].writeControl(w);
        }
        for(let i = 0; i < this.dynamic_tor.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.dynamic_tor[i]), 8);
        }
        for(let i = 0; i < this.actual_jts.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.actual_jts[i]), 8);
        }
        for(let i = 0; i < this.actual_ejt.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.actual_ejt[i]), 8);
        }
        for(let i = 0; i < this.actual_ett.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.actual_ett[i]), 8);
        }
        w.integer(<u64>reinterpret<u64>(this.sync_time), 8);
        for(let i = 0; i < this.actual_bk.length; ++i)
        {
            w.integer(<u64>this.actual_bk[i], 1);
        }
        for(let i = 0; i < this.actual_bt.length; ++i)
        {
            w.integer(<u64>this.actual_bt[i], 1);
        }
        for(let i = 0; i < this.actual_mc.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.actual_mc[i]), 8);
        }
        for(let i = 0; i < this.actual_mt.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.actual_mt[i]), 8);
        }
        for(let i = 0; i < this.ctrlbox_digital_input.length; ++i)
        {
            w.integer(<u64>this.ctrlbox_digital_input[i], 1);
        }
        for(let i = 0; i < this.ctrlbox_digital_output.length; ++i)
        {
            w.integer(<u64>this.ctrlbox_digital_output[i], 1);
        }
        for(let i = 0; i < this.flange_digital_input.length; ++i)
        {
            w.integer(<u64>this.flange_digital_input[i], 1);
        }
        for(let i = 0; i < this.flange_digital_output.length; ++i)
        {
            w.integer(<u64>this.flange_digital_output[i], 1);
        }
        w.u32(<u32>this.modbus_state.length);
        for(let i = 0; i < this.modbus_state.length; ++i)
        {
            this.modbus_state[i].writeControl(w);
        }
        w.integer(<u64>this.access_control, 4);
        w.u8(this.homming_completed ? 1 : 0);
        w.u8(this.tp_initialized ? 1 : 0);
        w.integer(<u64>this.mastering_need, 1);
        w.u8(this.drl_stopped ? 1 : 0);
        w.u8(this.disconnected ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotState
    {
        const value = new Ros1Dsr_msgsRobotState();
        {
            const decoded = <i32>r.integer(4);
            value.robot_state = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.robot_state_str = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.actual_mode = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.actual_space = decoded;
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.current_posj = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.current_posj.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.current_velj = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.current_velj.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.joint_abs = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_abs.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.joint_err = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_err.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.target_posj = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.target_posj.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.target_velj = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.target_velj.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.current_posx = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.current_posx.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.current_velx = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.current_velx.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.task_err = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.task_err.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.target_velx = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.target_velx.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.target_posx = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.target_posx.push(decoded);
            }
        }
        {
            const decoded = <i8>r.integer(1);
            value.solution_space = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.rotation_matrix = new Array<Ros1Std_msgsFloat64MultiArray>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArray.readControl(r);
                value.rotation_matrix.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.dynamic_tor = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.dynamic_tor.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.actual_jts = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.actual_jts.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.actual_ejt = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.actual_ejt.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.actual_ett = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.actual_ett.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.sync_time = decoded;
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.actual_bk = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.actual_bk.push(decoded);
            }
        }
        {
            const count: u32 = 5;
            if(!r.valid || count > 5)
            {
                r.valid = false;
                return value;
            }
            value.actual_bt = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.actual_bt.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.actual_mc = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.actual_mc.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.actual_mt = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.actual_mt.push(decoded);
            }
        }
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.ctrlbox_digital_input = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.ctrlbox_digital_input.push(decoded);
            }
        }
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.ctrlbox_digital_output = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.ctrlbox_digital_output.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.flange_digital_input = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.flange_digital_input.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.flange_digital_output = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.flange_digital_output.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.modbus_state = new Array<Ros1Dsr_msgsModbusState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Dsr_msgsModbusState.readControl(r);
                value.modbus_state.push(decoded);
            }
        }
        {
            const decoded = <i32>r.integer(4);
            value.access_control = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.homming_completed = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.tp_initialized = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mastering_need = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.drl_stopped = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.disconnected = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsRobotStateCodec implements VendorCodec<Ros1Dsr_msgsRobotState>
{
    static readonly codecIdentity: string = "UWVMROS1_67691d32d7b73ab123439c6f14dca8f626ad9e9a6f09f9ecb0e631b5f63d2574";
    static readonly maxWireBytes: i32 = 7595;

    encodeChecked(value: Ros1Dsr_msgsRobotState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotState>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotState>();
        if(bytes.length > 7595)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 907)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotState() : changetype<Ros1Dsr_msgsRobotState>(out.value);
    }
}

/** Complete original dsr_msgs/RobotStop; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotStop
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** Exact native field stop_mode, native scalar int32. */
    stop_mode: i32 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.stop_mode, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotStop
    {
        const value = new Ros1Dsr_msgsRobotStop();
        {
            const decoded = <i32>r.integer(4);
            value.stop_mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsRobotStopCodec implements VendorCodec<Ros1Dsr_msgsRobotStop>
{
    static readonly codecIdentity: string = "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros1Dsr_msgsRobotStop): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotStop): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotStop>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotStop>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotStop.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotStop
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotStop() : changetype<Ros1Dsr_msgsRobotStop>(out.value);
    }
}

/** Complete original dsr_msgs/Robotiq2FCloseRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotiq2FCloseRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotiq2FCloseRequest
    {
        const value = new Ros1Dsr_msgsRobotiq2FCloseRequest();
        return value;
    }
}

export class Ros1Dsr_msgsRobotiq2FCloseRequestCodec implements VendorCodec<Ros1Dsr_msgsRobotiq2FCloseRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsRobotiq2FCloseRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotiq2FCloseRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotiq2FCloseRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotiq2FCloseRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotiq2FCloseRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotiq2FCloseRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotiq2FCloseRequest() : changetype<Ros1Dsr_msgsRobotiq2FCloseRequest>(out.value);
    }
}

/** Complete original dsr_msgs/Robotiq2FCloseResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotiq2FCloseResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotiq2FCloseResponse
    {
        const value = new Ros1Dsr_msgsRobotiq2FCloseResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsRobotiq2FCloseResponseCodec implements VendorCodec<Ros1Dsr_msgsRobotiq2FCloseResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsRobotiq2FCloseResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotiq2FCloseResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotiq2FCloseResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotiq2FCloseResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotiq2FCloseResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotiq2FCloseResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotiq2FCloseResponse() : changetype<Ros1Dsr_msgsRobotiq2FCloseResponse>(out.value);
    }
}

/** Complete original dsr_msgs/Robotiq2FMoveRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotiq2FMoveRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field width, native scalar float64. */
    width: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.width))
                return -22;
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.width), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotiq2FMoveRequest
    {
        const value = new Ros1Dsr_msgsRobotiq2FMoveRequest();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.width = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsRobotiq2FMoveRequestCodec implements VendorCodec<Ros1Dsr_msgsRobotiq2FMoveRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Dsr_msgsRobotiq2FMoveRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotiq2FMoveRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotiq2FMoveRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotiq2FMoveRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotiq2FMoveRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotiq2FMoveRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotiq2FMoveRequest() : changetype<Ros1Dsr_msgsRobotiq2FMoveRequest>(out.value);
    }
}

/** Complete original dsr_msgs/Robotiq2FMoveResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotiq2FMoveResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotiq2FMoveResponse
    {
        const value = new Ros1Dsr_msgsRobotiq2FMoveResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsRobotiq2FMoveResponseCodec implements VendorCodec<Ros1Dsr_msgsRobotiq2FMoveResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsRobotiq2FMoveResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotiq2FMoveResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotiq2FMoveResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotiq2FMoveResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotiq2FMoveResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotiq2FMoveResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotiq2FMoveResponse() : changetype<Ros1Dsr_msgsRobotiq2FMoveResponse>(out.value);
    }
}

/** Complete original dsr_msgs/Robotiq2FOpenRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotiq2FOpenRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotiq2FOpenRequest
    {
        const value = new Ros1Dsr_msgsRobotiq2FOpenRequest();
        return value;
    }
}

export class Ros1Dsr_msgsRobotiq2FOpenRequestCodec implements VendorCodec<Ros1Dsr_msgsRobotiq2FOpenRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Dsr_msgsRobotiq2FOpenRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotiq2FOpenRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotiq2FOpenRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotiq2FOpenRequest>();
        if(bytes.length > 0)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 0)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotiq2FOpenRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotiq2FOpenRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotiq2FOpenRequest() : changetype<Ros1Dsr_msgsRobotiq2FOpenRequest>(out.value);
    }
}

/** Complete original dsr_msgs/Robotiq2FOpenResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsRobotiq2FOpenResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsRobotiq2FOpenResponse
    {
        const value = new Ros1Dsr_msgsRobotiq2FOpenResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsRobotiq2FOpenResponseCodec implements VendorCodec<Ros1Dsr_msgsRobotiq2FOpenResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsRobotiq2FOpenResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsRobotiq2FOpenResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsRobotiq2FOpenResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsRobotiq2FOpenResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsRobotiq2FOpenResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsRobotiq2FOpenResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsRobotiq2FOpenResponse() : changetype<Ros1Dsr_msgsRobotiq2FOpenResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SerialSendDataRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSerialSendDataRequest
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field data, native scalar string. */
    data: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.data) || this.data.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.data);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.data);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSerialSendDataRequest
    {
        const value = new Ros1Dsr_msgsSerialSendDataRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.data = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSerialSendDataRequestCodec implements VendorCodec<Ros1Dsr_msgsSerialSendDataRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsSerialSendDataRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSerialSendDataRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSerialSendDataRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSerialSendDataRequest>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSerialSendDataRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSerialSendDataRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSerialSendDataRequest() : changetype<Ros1Dsr_msgsSerialSendDataRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SerialSendDataResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSerialSendDataResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSerialSendDataResponse
    {
        const value = new Ros1Dsr_msgsSerialSendDataResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSerialSendDataResponseCodec implements VendorCodec<Ros1Dsr_msgsSerialSendDataResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSerialSendDataResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSerialSendDataResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSerialSendDataResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSerialSendDataResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSerialSendDataResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSerialSendDataResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSerialSendDataResponse() : changetype<Ros1Dsr_msgsSerialSendDataResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetCtrlBoxAnalogInputTypeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** Exact native field channel, native scalar int8. */
    channel: i8 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 2 - n)
                return -90;
            n += 1;
            if(n > 2)
                return -90;
        }
        {
            if(1 > 2 - n)
                return -90;
            n += 1;
            if(n > 2)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.channel, 1);
        w.integer(<u64>this.mode, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest
    {
        const value = new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest();
        {
            const decoded = <i8>r.integer(1);
            value.channel = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec implements VendorCodec<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b";
    static readonly maxWireBytes: i32 = 2;

    encodeChecked(value: Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest>();
        if(bytes.length > 2)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 2)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest() : changetype<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetCtrlBoxAnalogInputTypeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse
    {
        const value = new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec implements VendorCodec<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse() : changetype<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetCtrlBoxAnalogOutputRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest
{
    static readonly maxWireBytes: i32 = 9;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9;
    /** Exact native field channel, native scalar int8. */
    channel: i8 = 0;
    /** Exact native field value, native scalar float64. */
    value: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 9 - n)
                return -90;
            n += 1;
            if(n > 9)
                return -90;
        }
        {
            if(!isFinite(this.value))
                return -22;
            if(8 > 9 - n)
                return -90;
            n += 8;
            if(n > 9)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.channel, 1);
        w.integer(<u64>reinterpret<u64>(this.value), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest
    {
        const value = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest();
        {
            const decoded = <i8>r.integer(1);
            value.channel = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec implements VendorCodec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4";
    static readonly maxWireBytes: i32 = 9;

    encodeChecked(value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest>();
        if(bytes.length > 9)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 9)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest() : changetype<Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetCtrlBoxAnalogOutputResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse
    {
        const value = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec implements VendorCodec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse() : changetype<Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** Exact native field channel, native scalar int8. */
    channel: i8 = 0;
    /** Exact native field mode, native scalar int8. */
    mode: i8 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 2 - n)
                return -90;
            n += 1;
            if(n > 2)
                return -90;
        }
        {
            if(1 > 2 - n)
                return -90;
            n += 1;
            if(n > 2)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.channel, 1);
        w.integer(<u64>this.mode, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest
    {
        const value = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest();
        {
            const decoded = <i8>r.integer(1);
            value.channel = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec implements VendorCodec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f";
    static readonly maxWireBytes: i32 = 2;

    encodeChecked(value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest>();
        if(bytes.length > 2)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 2)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest() : changetype<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse
    {
        const value = new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec implements VendorCodec<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse()
                                  : changetype<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetCtrlBoxDigitalOutputRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** Exact native field index, native scalar int8. */
    index: i8 = 0;
    /** Exact native field value, native scalar int8. */
    value: i8 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 2 - n)
                return -90;
            n += 1;
            if(n > 2)
                return -90;
        }
        {
            if(1 > 2 - n)
                return -90;
            n += 1;
            if(n > 2)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.index, 1);
        w.integer(<u64>this.value, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest
    {
        const value = new Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest();
        {
            const decoded = <i8>r.integer(1);
            value.index = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec implements VendorCodec<Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db";
    static readonly maxWireBytes: i32 = 2;

    encodeChecked(value: Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest>();
        if(bytes.length > 2)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 2)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest() : changetype<Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetCtrlBoxDigitalOutputResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse
    {
        const value = new Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec implements VendorCodec<Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse() : changetype<Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetCurrentTcpRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCurrentTcpRequest
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field name, native scalar string. */
    name: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCurrentTcpRequest
    {
        const value = new Ros1Dsr_msgsSetCurrentTcpRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
        return value;
    }
}

export class Ros1Dsr_msgsSetCurrentTcpRequestCodec implements VendorCodec<Ros1Dsr_msgsSetCurrentTcpRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsSetCurrentTcpRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCurrentTcpRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCurrentTcpRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCurrentTcpRequest>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCurrentTcpRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCurrentTcpRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCurrentTcpRequest() : changetype<Ros1Dsr_msgsSetCurrentTcpRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetCurrentTcpResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCurrentTcpResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCurrentTcpResponse
    {
        const value = new Ros1Dsr_msgsSetCurrentTcpResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCurrentTcpResponseCodec implements VendorCodec<Ros1Dsr_msgsSetCurrentTcpResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetCurrentTcpResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCurrentTcpResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCurrentTcpResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCurrentTcpResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCurrentTcpResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCurrentTcpResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCurrentTcpResponse() : changetype<Ros1Dsr_msgsSetCurrentTcpResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetCurrentToolRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCurrentToolRequest
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field name, native scalar string. */
    name: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 260 - n)
                return -90;
            n += 4 + size;
            if(n > 260)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCurrentToolRequest
    {
        const value = new Ros1Dsr_msgsSetCurrentToolRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
        return value;
    }
}

export class Ros1Dsr_msgsSetCurrentToolRequestCodec implements VendorCodec<Ros1Dsr_msgsSetCurrentToolRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4";
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros1Dsr_msgsSetCurrentToolRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCurrentToolRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCurrentToolRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCurrentToolRequest>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCurrentToolRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCurrentToolRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCurrentToolRequest() : changetype<Ros1Dsr_msgsSetCurrentToolRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetCurrentToolResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetCurrentToolResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetCurrentToolResponse
    {
        const value = new Ros1Dsr_msgsSetCurrentToolResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetCurrentToolResponseCodec implements VendorCodec<Ros1Dsr_msgsSetCurrentToolResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetCurrentToolResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetCurrentToolResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetCurrentToolResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetCurrentToolResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetCurrentToolResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetCurrentToolResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetCurrentToolResponse() : changetype<Ros1Dsr_msgsSetCurrentToolResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetModbusOutputRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetModbusOutputRequest
{
    static readonly maxWireBytes: i32 = 264;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 264;
    /** Exact native field name, native scalar string. */
    name: string = "";
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 256)
                return -22;
            if(4 + size > 264 - n)
                return -90;
            n += 4 + size;
            if(n > 264)
                return -90;
        }
        {
            if(4 > 264 - n)
                return -90;
            n += 4;
            if(n > 264)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.name);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetModbusOutputRequest
    {
        const value = new Ros1Dsr_msgsSetModbusOutputRequest();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetModbusOutputRequestCodec implements VendorCodec<Ros1Dsr_msgsSetModbusOutputRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f";
    static readonly maxWireBytes: i32 = 264;

    encodeChecked(value: Ros1Dsr_msgsSetModbusOutputRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetModbusOutputRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetModbusOutputRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetModbusOutputRequest>();
        if(bytes.length > 264)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetModbusOutputRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetModbusOutputRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetModbusOutputRequest() : changetype<Ros1Dsr_msgsSetModbusOutputRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetModbusOutputResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetModbusOutputResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetModbusOutputResponse
    {
        const value = new Ros1Dsr_msgsSetModbusOutputResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetModbusOutputResponseCodec implements VendorCodec<Ros1Dsr_msgsSetModbusOutputResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetModbusOutputResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetModbusOutputResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetModbusOutputResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetModbusOutputResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetModbusOutputResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetModbusOutputResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetModbusOutputResponse() : changetype<Ros1Dsr_msgsSetModbusOutputResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetRobotModeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetRobotModeRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field robot_mode, native scalar int8. */
    robot_mode: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.robot_mode, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetRobotModeRequest
    {
        const value = new Ros1Dsr_msgsSetRobotModeRequest();
        {
            const decoded = <i8>r.integer(1);
            value.robot_mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetRobotModeRequestCodec implements VendorCodec<Ros1Dsr_msgsSetRobotModeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetRobotModeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetRobotModeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetRobotModeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetRobotModeRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetRobotModeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetRobotModeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetRobotModeRequest() : changetype<Ros1Dsr_msgsSetRobotModeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetRobotModeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetRobotModeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetRobotModeResponse
    {
        const value = new Ros1Dsr_msgsSetRobotModeResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetRobotModeResponseCodec implements VendorCodec<Ros1Dsr_msgsSetRobotModeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetRobotModeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetRobotModeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetRobotModeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetRobotModeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetRobotModeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetRobotModeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetRobotModeResponse() : changetype<Ros1Dsr_msgsSetRobotModeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetRobotSpeedModeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetRobotSpeedModeRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field speed_mode, native scalar int8. */
    speed_mode: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.speed_mode, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetRobotSpeedModeRequest
    {
        const value = new Ros1Dsr_msgsSetRobotSpeedModeRequest();
        {
            const decoded = <i8>r.integer(1);
            value.speed_mode = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetRobotSpeedModeRequestCodec implements VendorCodec<Ros1Dsr_msgsSetRobotSpeedModeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetRobotSpeedModeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetRobotSpeedModeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetRobotSpeedModeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetRobotSpeedModeRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetRobotSpeedModeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetRobotSpeedModeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetRobotSpeedModeRequest() : changetype<Ros1Dsr_msgsSetRobotSpeedModeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetRobotSpeedModeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetRobotSpeedModeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetRobotSpeedModeResponse
    {
        const value = new Ros1Dsr_msgsSetRobotSpeedModeResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetRobotSpeedModeResponseCodec implements VendorCodec<Ros1Dsr_msgsSetRobotSpeedModeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetRobotSpeedModeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetRobotSpeedModeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetRobotSpeedModeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetRobotSpeedModeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetRobotSpeedModeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetRobotSpeedModeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetRobotSpeedModeResponse() : changetype<Ros1Dsr_msgsSetRobotSpeedModeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetRobotSystemRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetRobotSystemRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field robot_system, native scalar int8. */
    robot_system: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.robot_system, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetRobotSystemRequest
    {
        const value = new Ros1Dsr_msgsSetRobotSystemRequest();
        {
            const decoded = <i8>r.integer(1);
            value.robot_system = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetRobotSystemRequestCodec implements VendorCodec<Ros1Dsr_msgsSetRobotSystemRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetRobotSystemRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetRobotSystemRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetRobotSystemRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetRobotSystemRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetRobotSystemRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetRobotSystemRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetRobotSystemRequest() : changetype<Ros1Dsr_msgsSetRobotSystemRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetRobotSystemResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetRobotSystemResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetRobotSystemResponse
    {
        const value = new Ros1Dsr_msgsSetRobotSystemResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetRobotSystemResponseCodec implements VendorCodec<Ros1Dsr_msgsSetRobotSystemResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetRobotSystemResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetRobotSystemResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetRobotSystemResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetRobotSystemResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetRobotSystemResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetRobotSystemResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetRobotSystemResponse() : changetype<Ros1Dsr_msgsSetRobotSystemResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetSafeStopResetTypeRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetSafeStopResetTypeRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field reset_type, native scalar int8. */
    reset_type: i8 = 0;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.reset_type, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetSafeStopResetTypeRequest
    {
        const value = new Ros1Dsr_msgsSetSafeStopResetTypeRequest();
        {
            const decoded = <i8>r.integer(1);
            value.reset_type = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec implements VendorCodec<Ros1Dsr_msgsSetSafeStopResetTypeRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetSafeStopResetTypeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetSafeStopResetTypeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetSafeStopResetTypeRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetSafeStopResetTypeRequest>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetSafeStopResetTypeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetSafeStopResetTypeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetSafeStopResetTypeRequest() : changetype<Ros1Dsr_msgsSetSafeStopResetTypeRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetSafeStopResetTypeResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetSafeStopResetTypeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetSafeStopResetTypeResponse
    {
        const value = new Ros1Dsr_msgsSetSafeStopResetTypeResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec implements VendorCodec<Ros1Dsr_msgsSetSafeStopResetTypeResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetSafeStopResetTypeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetSafeStopResetTypeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetSafeStopResetTypeResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetSafeStopResetTypeResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetSafeStopResetTypeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetSafeStopResetTypeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetSafeStopResetTypeResponse() : changetype<Ros1Dsr_msgsSetSafeStopResetTypeResponse>(out.value);
    }
}

/** Complete original dsr_msgs/SetToolDigitalOutputRequest; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetToolDigitalOutputRequest
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** Exact native field index, native scalar int8. */
    index: i8 = 0;
    /** Exact native field value, native scalar int8. */
    value: i8 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 2 - n)
                return -90;
            n += 1;
            if(n > 2)
                return -90;
        }
        {
            if(1 > 2 - n)
                return -90;
            n += 1;
            if(n > 2)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.index, 1);
        w.integer(<u64>this.value, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetToolDigitalOutputRequest
    {
        const value = new Ros1Dsr_msgsSetToolDigitalOutputRequest();
        {
            const decoded = <i8>r.integer(1);
            value.index = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetToolDigitalOutputRequestCodec implements VendorCodec<Ros1Dsr_msgsSetToolDigitalOutputRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123";
    static readonly maxWireBytes: i32 = 2;

    encodeChecked(value: Ros1Dsr_msgsSetToolDigitalOutputRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetToolDigitalOutputRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetToolDigitalOutputRequest>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetToolDigitalOutputRequest>();
        if(bytes.length > 2)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 2)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetToolDigitalOutputRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetToolDigitalOutputRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetToolDigitalOutputRequest() : changetype<Ros1Dsr_msgsSetToolDigitalOutputRequest>(out.value);
    }
}

/** Complete original dsr_msgs/SetToolDigitalOutputResponse; spellings are published in generation proof. */
export class Ros1Dsr_msgsSetToolDigitalOutputResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    success: bool = false;

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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Dsr_msgsSetToolDigitalOutputResponse
    {
        const value = new Ros1Dsr_msgsSetToolDigitalOutputResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

export class Ros1Dsr_msgsSetToolDigitalOutputResponseCodec implements VendorCodec<Ros1Dsr_msgsSetToolDigitalOutputResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Dsr_msgsSetToolDigitalOutputResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Dsr_msgsSetToolDigitalOutputResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Dsr_msgsSetToolDigitalOutputResponse>
    {
        const out = new VendorDecoded<Ros1Dsr_msgsSetToolDigitalOutputResponse>();
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
        const reader = new Reader(bytes), value = Ros1Dsr_msgsSetToolDigitalOutputResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Dsr_msgsSetToolDigitalOutputResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Dsr_msgsSetToolDigitalOutputResponse() : changetype<Ros1Dsr_msgsSetToolDigitalOutputResponse>(out.value);
    }
}
