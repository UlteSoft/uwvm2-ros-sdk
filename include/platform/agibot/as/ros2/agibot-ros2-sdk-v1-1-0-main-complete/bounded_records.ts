// @file bounded_records.ts
// @brief Full agibot as codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_main values in as. 166 original records retain 552 fields and 133
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
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

/** Complete original aimdk_msgs/msg/AgentPropertyIdType; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAgentPropertyIdType
{
    static readonly AGENT_PROPERTY_UNDEFINED: u8 = 0;
    static readonly AGENT_PROPERTY_LANGUAGE: u8 = 1;
    static readonly AGENT_PROPERTY_RUN_MODE: u8 = 2;
    static readonly AGENT_PROPERTY_GREET: u8 = 3;
    static readonly AGENT_PROPERTY_HEAD_FOLLOW: u8 = 4;
    static readonly AGENT_PROPERTY_DUPLEX_TIMEOUT: u8 = 5;
    static readonly AGENT_PROPERTY_ENVIRONMENT_SWITCH: u8 = 6;
    static readonly AGENT_PROPERTY_WELCOME_STATUS: u8 = 7;
    static readonly AGENT_PROPERTY_SITE_SWITCH: u8 = 8;
    static readonly AGENT_PROPERTY_LANGUAGE_LIST: u8 = 9;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAgentPropertyIdType
    {
        const value = new Ros2Aimdk_msgsMsgAgentPropertyIdType();
        {
            const decoded = <u8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec implements VendorCodec<Ros2Aimdk_msgsMsgAgentPropertyIdType>
{
    static readonly codecIdentity: string = 'UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Aimdk_msgsMsgAgentPropertyIdType): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAgentPropertyIdType): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAgentPropertyIdType>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAgentPropertyIdType>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAgentPropertyIdType.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAgentPropertyIdType
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAgentPropertyIdType() : changetype<Ros2Aimdk_msgsMsgAgentPropertyIdType>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AgentPropertiesValue; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAgentPropertiesValue
{
    static readonly maxWireBytes: i32 = 133;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 133;
    /** Exact native field key, native scalar aimdk_msgs/msg/AgentPropertyIdType. */
    key: Ros2Aimdk_msgsMsgAgentPropertyIdType = new Ros2Aimdk_msgsMsgAgentPropertyIdType();
    /** Exact native field value, native scalar string. */
    value: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.key.wireSize();
            if(child < 0)
                return child;
            if(child > 133 - n)
                return -90;
            n += child;
            if(n > 133)
                return -90;
        }
        {
            if(!validUnicode(this.value) || this.value.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.value);
            if(size > 128)
                return -22;
            if(4 + size > 133 - n)
                return -90;
            n += 4 + size;
            if(n > 133)
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
        this.key.writeControl(w);
        w.text(this.value);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAgentPropertiesValue
    {
        const value = new Ros2Aimdk_msgsMsgAgentPropertiesValue();
        {
            const decoded = Ros2Aimdk_msgsMsgAgentPropertyIdType.readControl(r);
            value.key = decoded;
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

export class Ros2Aimdk_msgsMsgAgentPropertiesValueCodec implements VendorCodec<Ros2Aimdk_msgsMsgAgentPropertiesValue>
{
    static readonly codecIdentity: string = 'UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb';
    static readonly maxWireBytes: i32 = 133;

    encodeChecked(value: Ros2Aimdk_msgsMsgAgentPropertiesValue): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAgentPropertiesValue): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAgentPropertiesValue>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAgentPropertiesValue>();
        if(bytes.length > 133)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 5)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAgentPropertiesValue.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAgentPropertiesValue
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAgentPropertiesValue() : changetype<Ros2Aimdk_msgsMsgAgentPropertiesValue>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AgentProperties; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAgentProperties
{
    static readonly maxWireBytes: i32 = 536;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 536;
    /** Exact native field properties, native scalar aimdk_msgs/msg/AgentPropertiesValue. */
    properties: Array<Ros2Aimdk_msgsMsgAgentPropertiesValue> = new Array<Ros2Aimdk_msgsMsgAgentPropertiesValue>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.properties.length > 4)
                return -22;
            if(4 > 536 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.properties.length; ++i)
            {
                const child = this.properties[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 536 - n)
                    return -90;
                n += child;
                if(n > 536)
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
        w.u32(<u32>this.properties.length);
        for(let i = 0; i < this.properties.length; ++i)
        {
            this.properties[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAgentProperties
    {
        const value = new Ros2Aimdk_msgsMsgAgentProperties();
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.properties = new Array<Ros2Aimdk_msgsMsgAgentPropertiesValue>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgAgentPropertiesValue.readControl(r);
                value.properties.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAgentPropertiesCodec implements VendorCodec<Ros2Aimdk_msgsMsgAgentProperties>
{
    static readonly codecIdentity: string = 'UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa';
    static readonly maxWireBytes: i32 = 536;

    encodeChecked(value: Ros2Aimdk_msgsMsgAgentProperties): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAgentProperties): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAgentProperties>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAgentProperties>();
        if(bytes.length > 536)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAgentProperties.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAgentProperties
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAgentProperties() : changetype<Ros2Aimdk_msgsMsgAgentProperties>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AlertCode; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAlertCode
{
    static readonly maxWireBytes: i32 = 148;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 148;
    /** Exact native field timestamp, native scalar uint64. */
    timestamp: u64 = 0;
    /** Exact native field first_timestamp, native scalar uint64. */
    first_timestamp: u64 = 0;
    /** Exact native field code, native scalar string. */
    code: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 148 - n)
                return -90;
            n += 8;
            if(n > 148)
                return -90;
        }
        {
            if(8 > 148 - n)
                return -90;
            n += 8;
            if(n > 148)
                return -90;
        }
        {
            if(!validUnicode(this.code) || this.code.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.code);
            if(size > 128)
                return -22;
            if(4 + size > 148 - n)
                return -90;
            n += 4 + size;
            if(n > 148)
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
        w.integer(<u64>this.timestamp, 8);
        w.integer(<u64>this.first_timestamp, 8);
        w.text(this.code);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAlertCode
    {
        const value = new Ros2Aimdk_msgsMsgAlertCode();
        {
            const decoded = <u64>r.integer(8);
            value.timestamp = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.first_timestamp = decoded;
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
            value.code = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAlertCodeCodec implements VendorCodec<Ros2Aimdk_msgsMsgAlertCode>
{
    static readonly codecIdentity: string = 'UWVMROS1_16e0ffe103d1d7761ff440bebfd6aa42c9471006f636c50fcd6acda8c32bc7e5';
    static readonly maxWireBytes: i32 = 148;

    encodeChecked(value: Ros2Aimdk_msgsMsgAlertCode): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAlertCode): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAlertCode>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAlertCode>();
        if(bytes.length > 148)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAlertCode.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAlertCode
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAlertCode() : changetype<Ros2Aimdk_msgsMsgAlertCode>(out.value);
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

/** Complete original aimdk_msgs/msg/AlertCodeArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAlertCodeArray
{
    static readonly maxWireBytes: i32 = 748;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 748;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field list, native scalar aimdk_msgs/msg/AlertCode. */
    list: Array<Ros2Aimdk_msgsMsgAlertCode> = new Array<Ros2Aimdk_msgsMsgAlertCode>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 748 - n)
                return -90;
            n += child;
            if(n > 748)
                return -90;
        }
        {
            if(this.list.length > 4)
                return -22;
            if(4 > 748 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.list.length; ++i)
            {
                const child = this.list[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 748 - n)
                    return -90;
                n += child;
                if(n > 748)
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
        w.u32(<u32>this.list.length);
        for(let i = 0; i < this.list.length; ++i)
        {
            this.list[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAlertCodeArray
    {
        const value = new Ros2Aimdk_msgsMsgAlertCodeArray();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.list = new Array<Ros2Aimdk_msgsMsgAlertCode>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgAlertCode.readControl(r);
                value.list.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAlertCodeArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgAlertCodeArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_1b63520082b1874bb85d84c6be60d4464a3ce7063422d6db5597c907e70fe261';
    static readonly maxWireBytes: i32 = 748;

    encodeChecked(value: Ros2Aimdk_msgsMsgAlertCodeArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAlertCodeArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAlertCodeArray>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAlertCodeArray>();
        if(bytes.length > 748)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAlertCodeArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAlertCodeArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAlertCodeArray() : changetype<Ros2Aimdk_msgsMsgAlertCodeArray>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AudioInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAudioInfo
{
    static readonly maxWireBytes: i32 = 273;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 273;
    /** Exact native field channels, native scalar uint8. */
    channels: u8 = 0;
    /** Exact native field sample_rate, native scalar uint32. */
    sample_rate: u32 = 0;
    /** Exact native field size, native scalar uint32. */
    size: u32 = 0;
    /** Exact native field sample_format, native scalar string. */
    sample_format: string = '';
    /** Exact native field coding_format, native scalar string. */
    coding_format: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 273 - n)
                return -90;
            n += 1;
            if(n > 273)
                return -90;
        }
        {
            if(4 > 273 - n)
                return -90;
            n += 4;
            if(n > 273)
                return -90;
        }
        {
            if(4 > 273 - n)
                return -90;
            n += 4;
            if(n > 273)
                return -90;
        }
        {
            if(!validUnicode(this.sample_format) || this.sample_format.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.sample_format);
            if(size > 128)
                return -22;
            if(4 + size > 273 - n)
                return -90;
            n += 4 + size;
            if(n > 273)
                return -90;
        }
        {
            if(!validUnicode(this.coding_format) || this.coding_format.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.coding_format);
            if(size > 128)
                return -22;
            if(4 + size > 273 - n)
                return -90;
            n += 4 + size;
            if(n > 273)
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
        w.integer(<u64>this.channels, 1);
        w.integer(<u64>this.sample_rate, 4);
        w.integer(<u64>this.size, 4);
        w.text(this.sample_format);
        w.text(this.coding_format);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAudioInfo
    {
        const value = new Ros2Aimdk_msgsMsgAudioInfo();
        {
            const decoded = <u8>r.integer(1);
            value.channels = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.sample_rate = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.size = decoded;
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
            value.sample_format = decoded;
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
            value.coding_format = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAudioInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgAudioInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be';
    static readonly maxWireBytes: i32 = 273;

    encodeChecked(value: Ros2Aimdk_msgsMsgAudioInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAudioInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAudioInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAudioInfo>();
        if(bytes.length > 273)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 17)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAudioInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAudioInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAudioInfo() : changetype<Ros2Aimdk_msgsMsgAudioInfo>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AudioData; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAudioData
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field data, native scalar uint8. */
    data: Array<u8> = new Array<u8>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.data.length > 256)
                return -22;
            if(4 > 260 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                if(1 > 260 - n)
                    return -90;
                n += 1;
                if(n > 260)
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
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            w.integer(<u64>this.data[i], 1);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAudioData
    {
        const value = new Ros2Aimdk_msgsMsgAudioData();
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAudioDataCodec implements VendorCodec<Ros2Aimdk_msgsMsgAudioData>
{
    static readonly codecIdentity: string = 'UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8';
    static readonly maxWireBytes: i32 = 260;

    encodeChecked(value: Ros2Aimdk_msgsMsgAudioData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAudioData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAudioData>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAudioData>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAudioData.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAudioData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAudioData() : changetype<Ros2Aimdk_msgsMsgAudioData>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AudioCapture; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAudioCapture
{
    static readonly maxWireBytes: i32 = 675;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 675;
    /** Exact native field stamps, native scalar builtin_interfaces/msg/Time. */
    stamps: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /** Exact native field mic_channels, native scalar uint8. */
    mic_channels: u8 = 0;
    /** Exact native field ref_channels, native scalar uint8. */
    ref_channels: u8 = 0;
    /** Exact native field info, native scalar aimdk_msgs/msg/AudioInfo. */
    info: Ros2Aimdk_msgsMsgAudioInfo = new Ros2Aimdk_msgsMsgAudioInfo();
    /** Exact native field data, native scalar aimdk_msgs/msg/AudioData. */
    data: Ros2Aimdk_msgsMsgAudioData = new Ros2Aimdk_msgsMsgAudioData();
    /** Exact native field pkg_name, native scalar string. */
    pkg_name: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamps.wireSize();
            if(child < 0)
                return child;
            if(child > 675 - n)
                return -90;
            n += child;
            if(n > 675)
                return -90;
        }
        {
            if(1 > 675 - n)
                return -90;
            n += 1;
            if(n > 675)
                return -90;
        }
        {
            if(1 > 675 - n)
                return -90;
            n += 1;
            if(n > 675)
                return -90;
        }
        {
            const child = this.info.wireSize();
            if(child < 0)
                return child;
            if(child > 675 - n)
                return -90;
            n += child;
            if(n > 675)
                return -90;
        }
        {
            const child = this.data.wireSize();
            if(child < 0)
                return child;
            if(child > 675 - n)
                return -90;
            n += child;
            if(n > 675)
                return -90;
        }
        {
            if(!validUnicode(this.pkg_name) || this.pkg_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pkg_name);
            if(size > 128)
                return -22;
            if(4 + size > 675 - n)
                return -90;
            n += 4 + size;
            if(n > 675)
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
        this.stamps.writeControl(w);
        w.integer(<u64>this.mic_channels, 1);
        w.integer(<u64>this.ref_channels, 1);
        this.info.writeControl(w);
        this.data.writeControl(w);
        w.text(this.pkg_name);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAudioCapture
    {
        const value = new Ros2Aimdk_msgsMsgAudioCapture();
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.stamps = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mic_channels = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.ref_channels = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgAudioInfo.readControl(r);
            value.info = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgAudioData.readControl(r);
            value.data = decoded;
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
            value.pkg_name = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAudioCaptureCodec implements VendorCodec<Ros2Aimdk_msgsMsgAudioCapture>
{
    static readonly codecIdentity: string = 'UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c';
    static readonly maxWireBytes: i32 = 675;

    encodeChecked(value: Ros2Aimdk_msgsMsgAudioCapture): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAudioCapture): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAudioCapture>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAudioCapture>();
        if(bytes.length > 675)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 35)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAudioCapture.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAudioCapture
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAudioCapture() : changetype<Ros2Aimdk_msgsMsgAudioCapture>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AudioFile; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAudioFile
{
    static readonly maxWireBytes: i32 = 677;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 677;
    /** Exact native field pkg_name, native scalar string. */
    pkg_name: string = '';
    /** Exact native field file_name, native scalar string. */
    file_name: string = '';
    /** Exact native field file_path, native scalar string. */
    file_path: string = '';
    /** Exact native field info, native scalar aimdk_msgs/msg/AudioInfo. */
    info: Ros2Aimdk_msgsMsgAudioInfo = new Ros2Aimdk_msgsMsgAudioInfo();
    /** Exact native field priority, native scalar uint32. */
    priority: u32 = 0;
    /** Exact native field priority_weight, native scalar uint32. */
    priority_weight: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.pkg_name) || this.pkg_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pkg_name);
            if(size > 128)
                return -22;
            if(4 + size > 677 - n)
                return -90;
            n += 4 + size;
            if(n > 677)
                return -90;
        }
        {
            if(!validUnicode(this.file_name) || this.file_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.file_name);
            if(size > 128)
                return -22;
            if(4 + size > 677 - n)
                return -90;
            n += 4 + size;
            if(n > 677)
                return -90;
        }
        {
            if(!validUnicode(this.file_path) || this.file_path.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.file_path);
            if(size > 128)
                return -22;
            if(4 + size > 677 - n)
                return -90;
            n += 4 + size;
            if(n > 677)
                return -90;
        }
        {
            const child = this.info.wireSize();
            if(child < 0)
                return child;
            if(child > 677 - n)
                return -90;
            n += child;
            if(n > 677)
                return -90;
        }
        {
            if(4 > 677 - n)
                return -90;
            n += 4;
            if(n > 677)
                return -90;
        }
        {
            if(4 > 677 - n)
                return -90;
            n += 4;
            if(n > 677)
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
        w.text(this.pkg_name);
        w.text(this.file_name);
        w.text(this.file_path);
        this.info.writeControl(w);
        w.integer(<u64>this.priority, 4);
        w.integer(<u64>this.priority_weight, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAudioFile
    {
        const value = new Ros2Aimdk_msgsMsgAudioFile();
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
            value.pkg_name = decoded;
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
            value.file_name = decoded;
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
            value.file_path = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgAudioInfo.readControl(r);
            value.info = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.priority = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.priority_weight = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAudioFileCodec implements VendorCodec<Ros2Aimdk_msgsMsgAudioFile>
{
    static readonly codecIdentity: string = 'UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d';
    static readonly maxWireBytes: i32 = 677;

    encodeChecked(value: Ros2Aimdk_msgsMsgAudioFile): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAudioFile): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAudioFile>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAudioFile>();
        if(bytes.length > 677)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 37)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAudioFile.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAudioFile
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAudioFile() : changetype<Ros2Aimdk_msgsMsgAudioFile>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AudioPlayback; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAudioPlayback
{
    static readonly maxWireBytes: i32 = 805;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 805;
    /** Exact native field stamps, native scalar builtin_interfaces/msg/Time. */
    stamps: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /** Exact native field info, native scalar aimdk_msgs/msg/AudioInfo. */
    info: Ros2Aimdk_msgsMsgAudioInfo = new Ros2Aimdk_msgsMsgAudioInfo();
    /** Exact native field data, native scalar aimdk_msgs/msg/AudioData. */
    data: Ros2Aimdk_msgsMsgAudioData = new Ros2Aimdk_msgsMsgAudioData();
    /** Exact native field pkg_name, native scalar string. */
    pkg_name: string = '';
    /** Exact native field token_id, native scalar string. */
    token_id: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamps.wireSize();
            if(child < 0)
                return child;
            if(child > 805 - n)
                return -90;
            n += child;
            if(n > 805)
                return -90;
        }
        {
            const child = this.info.wireSize();
            if(child < 0)
                return child;
            if(child > 805 - n)
                return -90;
            n += child;
            if(n > 805)
                return -90;
        }
        {
            const child = this.data.wireSize();
            if(child < 0)
                return child;
            if(child > 805 - n)
                return -90;
            n += child;
            if(n > 805)
                return -90;
        }
        {
            if(!validUnicode(this.pkg_name) || this.pkg_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pkg_name);
            if(size > 128)
                return -22;
            if(4 + size > 805 - n)
                return -90;
            n += 4 + size;
            if(n > 805)
                return -90;
        }
        {
            if(!validUnicode(this.token_id) || this.token_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.token_id);
            if(size > 128)
                return -22;
            if(4 + size > 805 - n)
                return -90;
            n += 4 + size;
            if(n > 805)
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
        this.stamps.writeControl(w);
        this.info.writeControl(w);
        this.data.writeControl(w);
        w.text(this.pkg_name);
        w.text(this.token_id);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAudioPlayback
    {
        const value = new Ros2Aimdk_msgsMsgAudioPlayback();
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.stamps = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgAudioInfo.readControl(r);
            value.info = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgAudioData.readControl(r);
            value.data = decoded;
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
            value.pkg_name = decoded;
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
            value.token_id = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAudioPlaybackCodec implements VendorCodec<Ros2Aimdk_msgsMsgAudioPlayback>
{
    static readonly codecIdentity: string = 'UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499';
    static readonly maxWireBytes: i32 = 805;

    encodeChecked(value: Ros2Aimdk_msgsMsgAudioPlayback): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAudioPlayback): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAudioPlayback>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAudioPlayback>();
        if(bytes.length > 805)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 37)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAudioPlayback.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAudioPlayback
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAudioPlayback() : changetype<Ros2Aimdk_msgsMsgAudioPlayback>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/AudioVadStateType; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgAudioVadStateType
{
    static readonly AUDIO_VAD_STATE_NONE: u8 = 0;
    static readonly AUDIO_VAD_STATE_BEGIN: u8 = 1;
    static readonly AUDIO_VAD_STATE_PROCESSING: u8 = 2;
    static readonly AUDIO_VAD_STATE_END: u8 = 3;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgAudioVadStateType
    {
        const value = new Ros2Aimdk_msgsMsgAudioVadStateType();
        {
            const decoded = <u8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgAudioVadStateTypeCodec implements VendorCodec<Ros2Aimdk_msgsMsgAudioVadStateType>
{
    static readonly codecIdentity: string = 'UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Aimdk_msgsMsgAudioVadStateType): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgAudioVadStateType): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgAudioVadStateType>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgAudioVadStateType>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgAudioVadStateType.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgAudioVadStateType
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgAudioVadStateType() : changetype<Ros2Aimdk_msgsMsgAudioVadStateType>(out.value);
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

/** Complete original aimdk_msgs/msg/CommonTaskRequest; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgCommonTaskRequest
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** Exact native field header, native scalar aimdk_msgs/msg/RequestHeader. */
    header: Ros2Aimdk_msgsMsgRequestHeader = new Ros2Aimdk_msgsMsgRequestHeader();
    /** Exact native field task_id, native scalar uint64. */
    task_id: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
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
        this.header.writeControl(w);
        w.integer(<u64>this.task_id, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgCommonTaskRequest
    {
        const value = new Ros2Aimdk_msgsMsgCommonTaskRequest();
        {
            const decoded = Ros2Aimdk_msgsMsgRequestHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.task_id = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgCommonTaskRequestCodec implements VendorCodec<Ros2Aimdk_msgsMsgCommonTaskRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_0324951171581259cf0c1bfed23887bdbc0f7328659e5efdfde046612f3d5de5';
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros2Aimdk_msgsMsgCommonTaskRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgCommonTaskRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgCommonTaskRequest>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgCommonTaskRequest>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgCommonTaskRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgCommonTaskRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgCommonTaskRequest() : changetype<Ros2Aimdk_msgsMsgCommonTaskRequest>(out.value);
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

/** Complete original aimdk_msgs/msg/CurrentVersion; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgCurrentVersion
{
    static readonly maxWireBytes: i32 = 2388;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2388;
    /** Exact native field version, native scalar string. */
    version: string = '';
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field files, native scalar string. */
    files: Array<string> = new Array<string>();
    /** Exact native field download_timestamp_seconds, native scalar uint64. */
    download_timestamp_seconds: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.version) || this.version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.version);
            if(size > 128)
                return -22;
            if(4 + size > 2388 - n)
                return -90;
            n += 4 + size;
            if(n > 2388)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 2388 - n)
                return -90;
            n += 4 + size;
            if(n > 2388)
                return -90;
        }
        {
            if(this.files.length > 16)
                return -22;
            if(4 > 2388 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.files.length; ++i)
            {
                if(!validUnicode(this.files[i]) || this.files[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.files[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 2388 - n)
                    return -90;
                n += 4 + size;
                if(n > 2388)
                    return -90;
            }
        }
        {
            if(8 > 2388 - n)
                return -90;
            n += 8;
            if(n > 2388)
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
        w.text(this.version);
        w.text(this.name);
        w.u32(<u32>this.files.length);
        for(let i = 0; i < this.files.length; ++i)
        {
            w.text(this.files[i]);
        }
        w.integer(<u64>this.download_timestamp_seconds, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgCurrentVersion
    {
        const value = new Ros2Aimdk_msgsMsgCurrentVersion();
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
            value.version = decoded;
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
            value.name = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.files = new Array<string>();
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
                value.files.push(decoded);
            }
        }
        {
            const decoded = <u64>r.integer(8);
            value.download_timestamp_seconds = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgCurrentVersionCodec implements VendorCodec<Ros2Aimdk_msgsMsgCurrentVersion>
{
    static readonly codecIdentity: string = 'UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd';
    static readonly maxWireBytes: i32 = 2388;

    encodeChecked(value: Ros2Aimdk_msgsMsgCurrentVersion): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgCurrentVersion): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgCurrentVersion>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgCurrentVersion>();
        if(bytes.length > 2388)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgCurrentVersion.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgCurrentVersion
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgCurrentVersion() : changetype<Ros2Aimdk_msgsMsgCurrentVersion>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/DiagnosticType; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgDiagnosticType
{
    static readonly NORMAL: i32 = 0;
    static readonly TRIGGER_APPEAR: i32 = 1;
    static readonly TRIGGER_DISAPPEAR: i32 = 2;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgDiagnosticType
    {
        const value = new Ros2Aimdk_msgsMsgDiagnosticType();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgDiagnosticTypeCodec implements VendorCodec<Ros2Aimdk_msgsMsgDiagnosticType>
{
    static readonly codecIdentity: string = 'UWVMROS1_41bcce9c343c12c64f0d2c28282926a734361f5eb02d39be0aae5c98ae926d92';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgDiagnosticType): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgDiagnosticType): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgDiagnosticType>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgDiagnosticType>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgDiagnosticType.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgDiagnosticType
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgDiagnosticType() : changetype<Ros2Aimdk_msgsMsgDiagnosticType>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/DiagnosticInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgDiagnosticInfo
{
    static readonly maxWireBytes: i32 = 165;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 165;
    /** Exact native field timestamp, native scalar uint64. */
    timestamp: u64 = 0;
    /** Exact native field first_timestamp, native scalar uint64. */
    first_timestamp: u64 = 0;
    /** Exact native field type, native scalar aimdk_msgs/msg/DiagnosticType. */
    ros_type: Ros2Aimdk_msgsMsgDiagnosticType = new Ros2Aimdk_msgsMsgDiagnosticType();
    /** Exact native field module_id, native scalar uint8. */
    module_id: u8 = 0;
    /** Exact native field code, native scalar uint32. */
    code: u32 = 0;
    /** Exact native field diag_code, native scalar uint64. */
    diag_code: u64 = 0;
    /** Exact native field info, native scalar string. */
    info: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 165 - n)
                return -90;
            n += 8;
            if(n > 165)
                return -90;
        }
        {
            if(8 > 165 - n)
                return -90;
            n += 8;
            if(n > 165)
                return -90;
        }
        {
            const child = this.ros_type.wireSize();
            if(child < 0)
                return child;
            if(child > 165 - n)
                return -90;
            n += child;
            if(n > 165)
                return -90;
        }
        {
            if(1 > 165 - n)
                return -90;
            n += 1;
            if(n > 165)
                return -90;
        }
        {
            if(4 > 165 - n)
                return -90;
            n += 4;
            if(n > 165)
                return -90;
        }
        {
            if(8 > 165 - n)
                return -90;
            n += 8;
            if(n > 165)
                return -90;
        }
        {
            if(!validUnicode(this.info) || this.info.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.info);
            if(size > 128)
                return -22;
            if(4 + size > 165 - n)
                return -90;
            n += 4 + size;
            if(n > 165)
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
        w.integer(<u64>this.timestamp, 8);
        w.integer(<u64>this.first_timestamp, 8);
        this.ros_type.writeControl(w);
        w.integer(<u64>this.module_id, 1);
        w.integer(<u64>this.code, 4);
        w.integer(<u64>this.diag_code, 8);
        w.text(this.info);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgDiagnosticInfo
    {
        const value = new Ros2Aimdk_msgsMsgDiagnosticInfo();
        {
            const decoded = <u64>r.integer(8);
            value.timestamp = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.first_timestamp = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgDiagnosticType.readControl(r);
            value.ros_type = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.module_id = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.code = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.diag_code = decoded;
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
            value.info = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgDiagnosticInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgDiagnosticInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_989641e2dd8ef2e5e77f3455355ca8c1f08d1671874f1b920b0ae28352e20afa';
    static readonly maxWireBytes: i32 = 165;

    encodeChecked(value: Ros2Aimdk_msgsMsgDiagnosticInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgDiagnosticInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgDiagnosticInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgDiagnosticInfo>();
        if(bytes.length > 165)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 37)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgDiagnosticInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgDiagnosticInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgDiagnosticInfo() : changetype<Ros2Aimdk_msgsMsgDiagnosticInfo>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/DiagnosticInfoArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgDiagnosticInfoArray
{
    static readonly maxWireBytes: i32 = 816;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 816;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field diagnostics, native scalar aimdk_msgs/msg/DiagnosticInfo. */
    diagnostics: Array<Ros2Aimdk_msgsMsgDiagnosticInfo> = new Array<Ros2Aimdk_msgsMsgDiagnosticInfo>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 816 - n)
                return -90;
            n += child;
            if(n > 816)
                return -90;
        }
        {
            if(this.diagnostics.length > 4)
                return -22;
            if(4 > 816 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.diagnostics.length; ++i)
            {
                const child = this.diagnostics[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 816 - n)
                    return -90;
                n += child;
                if(n > 816)
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
        w.u32(<u32>this.diagnostics.length);
        for(let i = 0; i < this.diagnostics.length; ++i)
        {
            this.diagnostics[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgDiagnosticInfoArray
    {
        const value = new Ros2Aimdk_msgsMsgDiagnosticInfoArray();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.diagnostics = new Array<Ros2Aimdk_msgsMsgDiagnosticInfo>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgDiagnosticInfo.readControl(r);
                value.diagnostics.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgDiagnosticInfoArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgDiagnosticInfoArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_ea9c3022e38d875c94431babc75f890382089d9e2fb1a15573421d475d2d280b';
    static readonly maxWireBytes: i32 = 816;

    encodeChecked(value: Ros2Aimdk_msgsMsgDiagnosticInfoArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgDiagnosticInfoArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgDiagnosticInfoArray>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgDiagnosticInfoArray>();
        if(bytes.length > 816)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgDiagnosticInfoArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgDiagnosticInfoArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgDiagnosticInfoArray() : changetype<Ros2Aimdk_msgsMsgDiagnosticInfoArray>(out.value);
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

/** Complete original aimdk_msgs/msg/FaceEmojiStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgFaceEmojiStatus
{
    static readonly STATUS_IDLE: u8 = 0;
    static readonly STATUS_START: u8 = 1;
    static readonly STATUS_RUNNING: u8 = 2;
    static readonly STATUS_FINISHED: u8 = 3;
    static readonly STATUS_STOPPED: u8 = 4;
    static readonly maxWireBytes: i32 = 2552;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2552;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field e_path, native scalar string. */
    e_path: string = '';
    /** Exact native field e_path_list, native scalar string. */
    e_path_list: Array<string> = new Array<string>();
    /** Exact native field e_id, native scalar uint8. */
    e_id: u8 = 0;
    /** Exact native field mode, native scalar uint8. */
    mode: u8 = 0;
    /** Exact native field priority, native scalar int32. */
    priority: i32 = 0;
    /** Exact native field status, native scalar uint8. */
    status: u8 = 0;
    /** Exact native field time_to_end_ms, native scalar float64. */
    time_to_end_ms: f64 = 0;
    /** Exact native field display_type, native scalar uint8. */
    display_type: u8 = 0;
    /** Exact native field trace_id, native scalar string. */
    trace_id: string = '';
    /** Exact native field error_code, native scalar int32. */
    error_code: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 2552 - n)
                return -90;
            n += child;
            if(n > 2552)
                return -90;
        }
        {
            if(!validUnicode(this.e_path) || this.e_path.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.e_path);
            if(size > 128)
                return -22;
            if(4 + size > 2552 - n)
                return -90;
            n += 4 + size;
            if(n > 2552)
                return -90;
        }
        {
            if(this.e_path_list.length > 16)
                return -22;
            if(4 > 2552 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.e_path_list.length; ++i)
            {
                if(!validUnicode(this.e_path_list[i]) || this.e_path_list[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.e_path_list[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 2552 - n)
                    return -90;
                n += 4 + size;
                if(n > 2552)
                    return -90;
            }
        }
        {
            if(1 > 2552 - n)
                return -90;
            n += 1;
            if(n > 2552)
                return -90;
        }
        {
            if(1 > 2552 - n)
                return -90;
            n += 1;
            if(n > 2552)
                return -90;
        }
        {
            if(4 > 2552 - n)
                return -90;
            n += 4;
            if(n > 2552)
                return -90;
        }
        {
            if(1 > 2552 - n)
                return -90;
            n += 1;
            if(n > 2552)
                return -90;
        }
        {
            if(!isFinite(this.time_to_end_ms))
                return -22;
            if(8 > 2552 - n)
                return -90;
            n += 8;
            if(n > 2552)
                return -90;
        }
        {
            if(1 > 2552 - n)
                return -90;
            n += 1;
            if(n > 2552)
                return -90;
        }
        {
            if(!validUnicode(this.trace_id) || this.trace_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.trace_id);
            if(size > 128)
                return -22;
            if(4 + size > 2552 - n)
                return -90;
            n += 4 + size;
            if(n > 2552)
                return -90;
        }
        {
            if(4 > 2552 - n)
                return -90;
            n += 4;
            if(n > 2552)
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
        w.text(this.e_path);
        w.u32(<u32>this.e_path_list.length);
        for(let i = 0; i < this.e_path_list.length; ++i)
        {
            w.text(this.e_path_list[i]);
        }
        w.integer(<u64>this.e_id, 1);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.priority, 4);
        w.integer(<u64>this.status, 1);
        w.integer(<u64>reinterpret<u64>(this.time_to_end_ms), 8);
        w.integer(<u64>this.display_type, 1);
        w.text(this.trace_id);
        w.integer(<u64>this.error_code, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgFaceEmojiStatus
    {
        const value = new Ros2Aimdk_msgsMsgFaceEmojiStatus();
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
            value.e_path = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.e_path_list = new Array<string>();
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
                value.e_path_list.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.e_id = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.status = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.time_to_end_ms = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.display_type = decoded;
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
            value.trace_id = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.error_code = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgFaceEmojiStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgFaceEmojiStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_a2a3346bea421c1c0756e8e74dd05564f2281d15762dd300189563e5bd0d3df4';
    static readonly maxWireBytes: i32 = 2552;

    encodeChecked(value: Ros2Aimdk_msgsMsgFaceEmojiStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgFaceEmojiStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgFaceEmojiStatus>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgFaceEmojiStatus>();
        if(bytes.length > 2552)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 56)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgFaceEmojiStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgFaceEmojiStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgFaceEmojiStatus() : changetype<Ros2Aimdk_msgsMsgFaceEmojiStatus>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/FixLineIntroState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgFixLineIntroState
{
    static readonly TM_FIX_LINE_INTRO_STATE_NAVI_TO_NEXT_SITE: u8 = 0;
    static readonly TM_FIX_LINE_INTRO_STATE_SITE_ACTIONS: u8 = 1;
    static readonly TM_FIX_LINE_INTRO_STATE_NAVI_RETURN: u8 = 2;
    static readonly TM_FIX_LINE_INTRO_STATE_NAVI_TO_TARGET_POI: u8 = 3;
    static readonly TM_FIX_LINE_INTRO_STATE_POI_ACTIONS: u8 = 4;
    static readonly TM_FIX_LINE_INTRO_STATE_STANDBY_ACTIONS: u8 = 5;
    static readonly maxWireBytes: i32 = 433;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 433;
    /** Exact native field set_task_id, native scalar uint64. */
    set_task_id: u64 = 0;
    /** Exact native field set_task_name, native scalar string. */
    set_task_name: string = '';
    /** Exact native field task_name, native scalar string. */
    task_name: string = '';
    /** Exact native field task_id, native scalar uint64. */
    task_id: u64 = 0;
    /** Exact native field map_name, native scalar string. */
    map_name: string = '';
    /** Exact native field map_id, native scalar uint64. */
    map_id: u64 = 0;
    /** Exact native field rest_site_number, native scalar uint32. */
    rest_site_number: u32 = 0;
    /** Exact native field fix_line_intro_state, native scalar uint8. */
    fix_line_intro_state: u8 = 0;
    /** Exact native field cur_target_id, native scalar uint64. */
    cur_target_id: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 433 - n)
                return -90;
            n += 8;
            if(n > 433)
                return -90;
        }
        {
            if(!validUnicode(this.set_task_name) || this.set_task_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.set_task_name);
            if(size > 128)
                return -22;
            if(4 + size > 433 - n)
                return -90;
            n += 4 + size;
            if(n > 433)
                return -90;
        }
        {
            if(!validUnicode(this.task_name) || this.task_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.task_name);
            if(size > 128)
                return -22;
            if(4 + size > 433 - n)
                return -90;
            n += 4 + size;
            if(n > 433)
                return -90;
        }
        {
            if(8 > 433 - n)
                return -90;
            n += 8;
            if(n > 433)
                return -90;
        }
        {
            if(!validUnicode(this.map_name) || this.map_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.map_name);
            if(size > 128)
                return -22;
            if(4 + size > 433 - n)
                return -90;
            n += 4 + size;
            if(n > 433)
                return -90;
        }
        {
            if(8 > 433 - n)
                return -90;
            n += 8;
            if(n > 433)
                return -90;
        }
        {
            if(4 > 433 - n)
                return -90;
            n += 4;
            if(n > 433)
                return -90;
        }
        {
            if(1 > 433 - n)
                return -90;
            n += 1;
            if(n > 433)
                return -90;
        }
        {
            if(8 > 433 - n)
                return -90;
            n += 8;
            if(n > 433)
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
        w.integer(<u64>this.set_task_id, 8);
        w.text(this.set_task_name);
        w.text(this.task_name);
        w.integer(<u64>this.task_id, 8);
        w.text(this.map_name);
        w.integer(<u64>this.map_id, 8);
        w.integer(<u64>this.rest_site_number, 4);
        w.integer(<u64>this.fix_line_intro_state, 1);
        w.integer(<u64>this.cur_target_id, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgFixLineIntroState
    {
        const value = new Ros2Aimdk_msgsMsgFixLineIntroState();
        {
            const decoded = <u64>r.integer(8);
            value.set_task_id = decoded;
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
            value.set_task_name = decoded;
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
            value.task_name = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.task_id = decoded;
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
            value.map_name = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.map_id = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.rest_site_number = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.fix_line_intro_state = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.cur_target_id = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgFixLineIntroStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgFixLineIntroState>
{
    static readonly codecIdentity: string = 'UWVMROS1_f7c7b38331d9b5f0e8268f8373e254d9e9f2becd5388d0efd30927e5c4916384';
    static readonly maxWireBytes: i32 = 433;

    encodeChecked(value: Ros2Aimdk_msgsMsgFixLineIntroState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgFixLineIntroState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgFixLineIntroState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgFixLineIntroState>();
        if(bytes.length > 433)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 49)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgFixLineIntroState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgFixLineIntroState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgFixLineIntroState() : changetype<Ros2Aimdk_msgsMsgFixLineIntroState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/FocusRequester; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgFocusRequester
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field pkg_name, native scalar string. */
    pkg_name: string = '';
    /** Exact native field priority, native scalar uint32. */
    priority: u32 = 0;
    /** Exact native field priority_weight, native scalar uint32. */
    priority_weight: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.pkg_name) || this.pkg_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pkg_name);
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
        w.text(this.pkg_name);
        w.integer(<u64>this.priority, 4);
        w.integer(<u64>this.priority_weight, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgFocusRequester
    {
        const value = new Ros2Aimdk_msgsMsgFocusRequester();
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
            value.pkg_name = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.priority = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.priority_weight = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgFocusRequesterCodec implements VendorCodec<Ros2Aimdk_msgsMsgFocusRequester>
{
    static readonly codecIdentity: string = 'UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Aimdk_msgsMsgFocusRequester): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgFocusRequester): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgFocusRequester>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgFocusRequester>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgFocusRequester.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgFocusRequester
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgFocusRequester() : changetype<Ros2Aimdk_msgsMsgFocusRequester>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/FocusResponse; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgFocusResponse
{
    static readonly maxWireBytes: i32 = 133;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 133;
    /** Exact native field pkg_name, native scalar string. */
    pkg_name: string = '';
    /** Exact native field focus_gain, native scalar bool. */
    focus_gain: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.pkg_name) || this.pkg_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pkg_name);
            if(size > 128)
                return -22;
            if(4 + size > 133 - n)
                return -90;
            n += 4 + size;
            if(n > 133)
                return -90;
        }
        {
            if(1 > 133 - n)
                return -90;
            n += 1;
            if(n > 133)
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
        w.text(this.pkg_name);
        w.u8(this.focus_gain ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgFocusResponse
    {
        const value = new Ros2Aimdk_msgsMsgFocusResponse();
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
            value.pkg_name = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.focus_gain = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgFocusResponseCodec implements VendorCodec<Ros2Aimdk_msgsMsgFocusResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c';
    static readonly maxWireBytes: i32 = 133;

    encodeChecked(value: Ros2Aimdk_msgsMsgFocusResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgFocusResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgFocusResponse>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgFocusResponse>();
        if(bytes.length > 133)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 5)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgFocusResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgFocusResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgFocusResponse() : changetype<Ros2Aimdk_msgsMsgFocusResponse>(out.value);
    }
}

/** Complete original geometry_msgs/msg/Point; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPoint
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /** Exact native field x, native scalar float64. */
    x: f64 = 0;
    /** Exact native field y, native scalar float64. */
    y: f64 = 0;
    /** Exact native field z, native scalar float64. */
    z: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
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
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgPoint
    {
        const value = new Ros2Geometry_msgsMsgPoint();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgPointCodec implements VendorCodec<Ros2Geometry_msgsMsgPoint>
{
    static readonly codecIdentity: string = 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616';
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros2Geometry_msgsMsgPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgPoint>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgPoint>();
        if(bytes.length > 24)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgPoint.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgPoint() : changetype<Ros2Geometry_msgsMsgPoint>(out.value);
    }
}

/** Complete original geometry_msgs/msg/Quaternion; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgQuaternion
{
    static readonly maxWireBytes: i32 = 32;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 32;
    /** Exact native field x, native scalar float64. */
    x: f64 = reinterpret<f64>(u64(0x0000000000000000));
    /** Exact native field y, native scalar float64. */
    y: f64 = reinterpret<f64>(u64(0x0000000000000000));
    /** Exact native field z, native scalar float64. */
    z: f64 = reinterpret<f64>(u64(0x0000000000000000));
    /** Exact native field w, native scalar float64. */
    w: f64 = reinterpret<f64>(u64(0x3ff0000000000000));

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.w))
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
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
        w.integer(<u64>reinterpret<u64>(this.w), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgQuaternion
    {
        const value = new Ros2Geometry_msgsMsgQuaternion();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.w = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgQuaternionCodec implements VendorCodec<Ros2Geometry_msgsMsgQuaternion>
{
    static readonly codecIdentity: string = 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672';
    static readonly maxWireBytes: i32 = 32;

    encodeChecked(value: Ros2Geometry_msgsMsgQuaternion): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgQuaternion): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgQuaternion>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgQuaternion>();
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
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgQuaternion.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgQuaternion
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgQuaternion() : changetype<Ros2Geometry_msgsMsgQuaternion>(out.value);
    }
}

/** Complete original geometry_msgs/msg/Pose; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPose
{
    static readonly maxWireBytes: i32 = 56;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 56;
    /** Exact native field position, native scalar geometry_msgs/msg/Point. */
    position: Ros2Geometry_msgsMsgPoint = new Ros2Geometry_msgsMsgPoint();
    /** Exact native field orientation, native scalar geometry_msgs/msg/Quaternion. */
    orientation: Ros2Geometry_msgsMsgQuaternion = new Ros2Geometry_msgsMsgQuaternion();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.position.wireSize();
            if(child < 0)
                return child;
            if(child > 56 - n)
                return -90;
            n += child;
            if(n > 56)
                return -90;
        }
        {
            const child = this.orientation.wireSize();
            if(child < 0)
                return child;
            if(child > 56 - n)
                return -90;
            n += child;
            if(n > 56)
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
        this.position.writeControl(w);
        this.orientation.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgPose
    {
        const value = new Ros2Geometry_msgsMsgPose();
        {
            const decoded = Ros2Geometry_msgsMsgPoint.readControl(r);
            value.position = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgQuaternion.readControl(r);
            value.orientation = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgPoseCodec implements VendorCodec<Ros2Geometry_msgsMsgPose>
{
    static readonly codecIdentity: string = 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777';
    static readonly maxWireBytes: i32 = 56;

    encodeChecked(value: Ros2Geometry_msgsMsgPose): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgPose): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgPose>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgPose>();
        if(bytes.length > 56)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 56)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgPose.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgPose
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgPose() : changetype<Ros2Geometry_msgsMsgPose>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/QRCode; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgQRCode
{
    static readonly maxWireBytes: i32 = 60;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 60;
    /** Exact native field code, native scalar int32. */
    code: i32 = 0;
    /** Exact native field pose, native scalar geometry_msgs/msg/Pose. */
    pose: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 60 - n)
                return -90;
            n += 4;
            if(n > 60)
                return -90;
        }
        {
            const child = this.pose.wireSize();
            if(child < 0)
                return child;
            if(child > 60 - n)
                return -90;
            n += child;
            if(n > 60)
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
        w.integer(<u64>this.code, 4);
        this.pose.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgQRCode
    {
        const value = new Ros2Aimdk_msgsMsgQRCode();
        {
            const decoded = <i32>r.integer(4);
            value.code = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose.readControl(r);
            value.pose = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgQRCodeCodec implements VendorCodec<Ros2Aimdk_msgsMsgQRCode>
{
    static readonly codecIdentity: string = 'UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd';
    static readonly maxWireBytes: i32 = 60;

    encodeChecked(value: Ros2Aimdk_msgsMsgQRCode): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgQRCode): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgQRCode>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgQRCode>();
        if(bytes.length > 60)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 60)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgQRCode.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgQRCode
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgQRCode() : changetype<Ros2Aimdk_msgsMsgQRCode>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HRPoint; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHRPoint
{
    static readonly maxWireBytes: i32 = 305;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 305;
    /** Exact native field point_id, native scalar int32. */
    point_id: i32 = 0;
    /** Exact native field pose, native scalar geometry_msgs/msg/Pose. */
    pose: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();
    /** Exact native field qr_list, native scalar aimdk_msgs/msg/QRCode. */
    qr_list: Array<Ros2Aimdk_msgsMsgQRCode> = new Array<Ros2Aimdk_msgsMsgQRCode>();
    /** Exact native field use_head, native scalar bool. */
    use_head: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 305 - n)
                return -90;
            n += 4;
            if(n > 305)
                return -90;
        }
        {
            const child = this.pose.wireSize();
            if(child < 0)
                return child;
            if(child > 305 - n)
                return -90;
            n += child;
            if(n > 305)
                return -90;
        }
        {
            if(this.qr_list.length > 4)
                return -22;
            if(4 > 305 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.qr_list.length; ++i)
            {
                const child = this.qr_list[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 305 - n)
                    return -90;
                n += child;
                if(n > 305)
                    return -90;
            }
        }
        {
            if(1 > 305 - n)
                return -90;
            n += 1;
            if(n > 305)
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
        w.integer(<u64>this.point_id, 4);
        this.pose.writeControl(w);
        w.u32(<u32>this.qr_list.length);
        for(let i = 0; i < this.qr_list.length; ++i)
        {
            this.qr_list[i].writeControl(w);
        }
        w.u8(this.use_head ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHRPoint
    {
        const value = new Ros2Aimdk_msgsMsgHRPoint();
        {
            const decoded = <i32>r.integer(4);
            value.point_id = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose.readControl(r);
            value.pose = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.qr_list = new Array<Ros2Aimdk_msgsMsgQRCode>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgQRCode.readControl(r);
                value.qr_list.push(decoded);
            }
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.use_head = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHRPointCodec implements VendorCodec<Ros2Aimdk_msgsMsgHRPoint>
{
    static readonly codecIdentity: string = 'UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645';
    static readonly maxWireBytes: i32 = 305;

    encodeChecked(value: Ros2Aimdk_msgsMsgHRPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHRPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHRPoint>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHRPoint>();
        if(bytes.length > 305)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 65)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHRPoint.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHRPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHRPoint() : changetype<Ros2Aimdk_msgsMsgHRPoint>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HandCommand; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHandCommand
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
    /** Exact native field acceleration, native scalar float64. */
    acceleration: f64 = 0;
    /** Exact native field deceleration, native scalar float64. */
    deceleration: f64 = 0;
    /** Exact native field effort, native scalar float64. */
    effort: f64 = 0;

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
            if(!isFinite(this.acceleration))
                return -22;
            if(8 > 172 - n)
                return -90;
            n += 8;
            if(n > 172)
                return -90;
        }
        {
            if(!isFinite(this.deceleration))
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
        w.integer(<u64>reinterpret<u64>(this.acceleration), 8);
        w.integer(<u64>reinterpret<u64>(this.deceleration), 8);
        w.integer(<u64>reinterpret<u64>(this.effort), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHandCommand
    {
        const value = new Ros2Aimdk_msgsMsgHandCommand();
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
            value.acceleration = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.deceleration = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.effort = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHandCommandCodec implements VendorCodec<Ros2Aimdk_msgsMsgHandCommand>
{
    static readonly codecIdentity: string = 'UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8';
    static readonly maxWireBytes: i32 = 172;

    encodeChecked(value: Ros2Aimdk_msgsMsgHandCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHandCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHandCommand>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHandCommand>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHandCommand.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHandCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHandCommand() : changetype<Ros2Aimdk_msgsMsgHandCommand>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HandType; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHandType
{
    static readonly NONE: u8 = 0;
    static readonly NIMBLE_HANDS: u8 = 1;
    static readonly CLAW: u8 = 2;
    static readonly LEISAI_NIMBLE_HANDS: u8 = 3;
    static readonly LITE_S_HANDS: u8 = 4;
    static readonly ERROR: u8 = 255;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHandType
    {
        const value = new Ros2Aimdk_msgsMsgHandType();
        {
            const decoded = <u8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHandTypeCodec implements VendorCodec<Ros2Aimdk_msgsMsgHandType>
{
    static readonly codecIdentity: string = 'UWVMROS1_07c4fd4188be6fccafc5808eb58094c528c1c7219f70850d2d77b05e1466daff';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Aimdk_msgsMsgHandType): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHandType): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHandType>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHandType>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHandType.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHandType
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHandType() : changetype<Ros2Aimdk_msgsMsgHandType>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HandCommandArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHandCommandArray
{
    static readonly maxWireBytes: i32 = 1538;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1538;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field left_hand_type, native scalar aimdk_msgs/msg/HandType. */
    left_hand_type: Ros2Aimdk_msgsMsgHandType = new Ros2Aimdk_msgsMsgHandType();
    /** Exact native field left_hands, native scalar aimdk_msgs/msg/HandCommand. */
    left_hands: Array<Ros2Aimdk_msgsMsgHandCommand> = new Array<Ros2Aimdk_msgsMsgHandCommand>();
    /** Exact native field right_hand_type, native scalar aimdk_msgs/msg/HandType. */
    right_hand_type: Ros2Aimdk_msgsMsgHandType = new Ros2Aimdk_msgsMsgHandType();
    /** Exact native field right_hands, native scalar aimdk_msgs/msg/HandCommand. */
    right_hands: Array<Ros2Aimdk_msgsMsgHandCommand> = new Array<Ros2Aimdk_msgsMsgHandCommand>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 1538 - n)
                return -90;
            n += child;
            if(n > 1538)
                return -90;
        }
        {
            const child = this.left_hand_type.wireSize();
            if(child < 0)
                return child;
            if(child > 1538 - n)
                return -90;
            n += child;
            if(n > 1538)
                return -90;
        }
        {
            if(this.left_hands.length > 4)
                return -22;
            if(4 > 1538 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.left_hands.length; ++i)
            {
                const child = this.left_hands[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1538 - n)
                    return -90;
                n += child;
                if(n > 1538)
                    return -90;
            }
        }
        {
            const child = this.right_hand_type.wireSize();
            if(child < 0)
                return child;
            if(child > 1538 - n)
                return -90;
            n += child;
            if(n > 1538)
                return -90;
        }
        {
            if(this.right_hands.length > 4)
                return -22;
            if(4 > 1538 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.right_hands.length; ++i)
            {
                const child = this.right_hands[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1538 - n)
                    return -90;
                n += child;
                if(n > 1538)
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
        this.left_hand_type.writeControl(w);
        w.u32(<u32>this.left_hands.length);
        for(let i = 0; i < this.left_hands.length; ++i)
        {
            this.left_hands[i].writeControl(w);
        }
        this.right_hand_type.writeControl(w);
        w.u32(<u32>this.right_hands.length);
        for(let i = 0; i < this.right_hands.length; ++i)
        {
            this.right_hands[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHandCommandArray
    {
        const value = new Ros2Aimdk_msgsMsgHandCommandArray();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHandType.readControl(r);
            value.left_hand_type = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.left_hands = new Array<Ros2Aimdk_msgsMsgHandCommand>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHandCommand.readControl(r);
                value.left_hands.push(decoded);
            }
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHandType.readControl(r);
            value.right_hand_type = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.right_hands = new Array<Ros2Aimdk_msgsMsgHandCommand>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHandCommand.readControl(r);
                value.right_hands.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHandCommandArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgHandCommandArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_a120a6c2b4a364c358f2f76227954c9cf5a81345ad812683eea78dfe3e3c29ec';
    static readonly maxWireBytes: i32 = 1538;

    encodeChecked(value: Ros2Aimdk_msgsMsgHandCommandArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHandCommandArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHandCommandArray>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHandCommandArray>();
        if(bytes.length > 1538)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 34)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHandCommandArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHandCommandArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHandCommandArray() : changetype<Ros2Aimdk_msgsMsgHandCommandArray>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HandState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHandState
{
    static readonly maxWireBytes: i32 = 164;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 164;
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field position, native scalar float64. */
    position: f64 = 0;
    /** Exact native field velocity, native scalar float64. */
    velocity: f64 = 0;
    /** Exact native field effort, native scalar float64. */
    effort: f64 = 0;
    /** Exact native field state, native scalar int32. */
    state: i32 = 0;
    /** Exact native field faultcode, native scalar int32. */
    faultcode: i32 = 0;

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
            if(4 + size > 164 - n)
                return -90;
            n += 4 + size;
            if(n > 164)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(8 > 164 - n)
                return -90;
            n += 8;
            if(n > 164)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(8 > 164 - n)
                return -90;
            n += 8;
            if(n > 164)
                return -90;
        }
        {
            if(!isFinite(this.effort))
                return -22;
            if(8 > 164 - n)
                return -90;
            n += 8;
            if(n > 164)
                return -90;
        }
        {
            if(4 > 164 - n)
                return -90;
            n += 4;
            if(n > 164)
                return -90;
        }
        {
            if(4 > 164 - n)
                return -90;
            n += 4;
            if(n > 164)
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
        w.integer(<u64>this.state, 4);
        w.integer(<u64>this.faultcode, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHandState
    {
        const value = new Ros2Aimdk_msgsMsgHandState();
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
            const decoded = <i32>r.integer(4);
            value.state = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.faultcode = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHandStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgHandState>
{
    static readonly codecIdentity: string = 'UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c';
    static readonly maxWireBytes: i32 = 164;

    encodeChecked(value: Ros2Aimdk_msgsMsgHandState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHandState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHandState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHandState>();
        if(bytes.length > 164)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 36)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHandState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHandState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHandState() : changetype<Ros2Aimdk_msgsMsgHandState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HandTouchSensorData; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHandTouchSensorData
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field palm_touch_data, native scalar uint8. */
    palm_touch_data: Array<u8> = new Array<u8>();
    /** Exact native field back_of_hand_touch_data, native scalar uint8. */
    back_of_hand_touch_data: Array<u8> = new Array<u8>();
    /** Exact native field thumb_touch_data, native scalar uint8. */
    thumb_touch_data: Array<u8> = new Array<u8>();
    /** Exact native field index_finger_touch_data, native scalar uint8. */
    index_finger_touch_data: Array<u8> = new Array<u8>();
    /** Exact native field middle_finger_touch_data, native scalar uint8. */
    middle_finger_touch_data: Array<u8> = new Array<u8>();
    /** Exact native field ring_finger_touch_data, native scalar uint8. */
    ring_finger_touch_data: Array<u8> = new Array<u8>();
    /** Exact native field little_finger_touch_data, native scalar uint8. */
    little_finger_touch_data: Array<u8> = new Array<u8>();

    constructor()
    {
        for(let i = 0; i < 36; ++i)
            this.palm_touch_data.push(0);
        for(let i = 0; i < 36; ++i)
            this.back_of_hand_touch_data.push(0);
        for(let i = 0; i < 16; ++i)
            this.thumb_touch_data.push(0);
        for(let i = 0; i < 16; ++i)
            this.index_finger_touch_data.push(0);
        for(let i = 0; i < 16; ++i)
            this.middle_finger_touch_data.push(0);
        for(let i = 0; i < 16; ++i)
            this.ring_finger_touch_data.push(0);
        for(let i = 0; i < 16; ++i)
            this.little_finger_touch_data.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.palm_touch_data.length != 36)
                return -22;
            for(let i = 0; i < this.palm_touch_data.length; ++i)
            {
                if(1 > 152 - n)
                    return -90;
                n += 1;
                if(n > 152)
                    return -90;
            }
        }
        {
            if(this.back_of_hand_touch_data.length != 36)
                return -22;
            for(let i = 0; i < this.back_of_hand_touch_data.length; ++i)
            {
                if(1 > 152 - n)
                    return -90;
                n += 1;
                if(n > 152)
                    return -90;
            }
        }
        {
            if(this.thumb_touch_data.length != 16)
                return -22;
            for(let i = 0; i < this.thumb_touch_data.length; ++i)
            {
                if(1 > 152 - n)
                    return -90;
                n += 1;
                if(n > 152)
                    return -90;
            }
        }
        {
            if(this.index_finger_touch_data.length != 16)
                return -22;
            for(let i = 0; i < this.index_finger_touch_data.length; ++i)
            {
                if(1 > 152 - n)
                    return -90;
                n += 1;
                if(n > 152)
                    return -90;
            }
        }
        {
            if(this.middle_finger_touch_data.length != 16)
                return -22;
            for(let i = 0; i < this.middle_finger_touch_data.length; ++i)
            {
                if(1 > 152 - n)
                    return -90;
                n += 1;
                if(n > 152)
                    return -90;
            }
        }
        {
            if(this.ring_finger_touch_data.length != 16)
                return -22;
            for(let i = 0; i < this.ring_finger_touch_data.length; ++i)
            {
                if(1 > 152 - n)
                    return -90;
                n += 1;
                if(n > 152)
                    return -90;
            }
        }
        {
            if(this.little_finger_touch_data.length != 16)
                return -22;
            for(let i = 0; i < this.little_finger_touch_data.length; ++i)
            {
                if(1 > 152 - n)
                    return -90;
                n += 1;
                if(n > 152)
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
        for(let i = 0; i < this.palm_touch_data.length; ++i)
        {
            w.integer(<u64>this.palm_touch_data[i], 1);
        }
        for(let i = 0; i < this.back_of_hand_touch_data.length; ++i)
        {
            w.integer(<u64>this.back_of_hand_touch_data[i], 1);
        }
        for(let i = 0; i < this.thumb_touch_data.length; ++i)
        {
            w.integer(<u64>this.thumb_touch_data[i], 1);
        }
        for(let i = 0; i < this.index_finger_touch_data.length; ++i)
        {
            w.integer(<u64>this.index_finger_touch_data[i], 1);
        }
        for(let i = 0; i < this.middle_finger_touch_data.length; ++i)
        {
            w.integer(<u64>this.middle_finger_touch_data[i], 1);
        }
        for(let i = 0; i < this.ring_finger_touch_data.length; ++i)
        {
            w.integer(<u64>this.ring_finger_touch_data[i], 1);
        }
        for(let i = 0; i < this.little_finger_touch_data.length; ++i)
        {
            w.integer(<u64>this.little_finger_touch_data[i], 1);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHandTouchSensorData
    {
        const value = new Ros2Aimdk_msgsMsgHandTouchSensorData();
        {
            const count: u32 = 36;
            if(!r.valid || count > 36)
            {
                r.valid = false;
                return value;
            }
            value.palm_touch_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.palm_touch_data.push(decoded);
            }
        }
        {
            const count: u32 = 36;
            if(!r.valid || count > 36)
            {
                r.valid = false;
                return value;
            }
            value.back_of_hand_touch_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.back_of_hand_touch_data.push(decoded);
            }
        }
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.thumb_touch_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.thumb_touch_data.push(decoded);
            }
        }
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.index_finger_touch_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.index_finger_touch_data.push(decoded);
            }
        }
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.middle_finger_touch_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.middle_finger_touch_data.push(decoded);
            }
        }
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.ring_finger_touch_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.ring_finger_touch_data.push(decoded);
            }
        }
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.little_finger_touch_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.little_finger_touch_data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHandTouchSensorDataCodec implements VendorCodec<Ros2Aimdk_msgsMsgHandTouchSensorData>
{
    static readonly codecIdentity: string = 'UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsMsgHandTouchSensorData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHandTouchSensorData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHandTouchSensorData>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHandTouchSensorData>();
        if(bytes.length > 152)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 152)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHandTouchSensorData.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHandTouchSensorData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHandTouchSensorData() : changetype<Ros2Aimdk_msgsMsgHandTouchSensorData>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HandStateArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHandStateArray
{
    static readonly maxWireBytes: i32 = 1778;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1778;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field left_hand_type, native scalar aimdk_msgs/msg/HandType. */
    left_hand_type: Ros2Aimdk_msgsMsgHandType = new Ros2Aimdk_msgsMsgHandType();
    /** Exact native field left_hands, native scalar aimdk_msgs/msg/HandState. */
    left_hands: Array<Ros2Aimdk_msgsMsgHandState> = new Array<Ros2Aimdk_msgsMsgHandState>();
    /** Exact native field left_touch_sensors, native scalar aimdk_msgs/msg/HandTouchSensorData. */
    left_touch_sensors: Ros2Aimdk_msgsMsgHandTouchSensorData = new Ros2Aimdk_msgsMsgHandTouchSensorData();
    /** Exact native field right_hand_type, native scalar aimdk_msgs/msg/HandType. */
    right_hand_type: Ros2Aimdk_msgsMsgHandType = new Ros2Aimdk_msgsMsgHandType();
    /** Exact native field right_hands, native scalar aimdk_msgs/msg/HandState. */
    right_hands: Array<Ros2Aimdk_msgsMsgHandState> = new Array<Ros2Aimdk_msgsMsgHandState>();
    /** Exact native field right_touch_sensors, native scalar aimdk_msgs/msg/HandTouchSensorData. */
    right_touch_sensors: Ros2Aimdk_msgsMsgHandTouchSensorData = new Ros2Aimdk_msgsMsgHandTouchSensorData();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 1778 - n)
                return -90;
            n += child;
            if(n > 1778)
                return -90;
        }
        {
            const child = this.left_hand_type.wireSize();
            if(child < 0)
                return child;
            if(child > 1778 - n)
                return -90;
            n += child;
            if(n > 1778)
                return -90;
        }
        {
            if(this.left_hands.length > 4)
                return -22;
            if(4 > 1778 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.left_hands.length; ++i)
            {
                const child = this.left_hands[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1778 - n)
                    return -90;
                n += child;
                if(n > 1778)
                    return -90;
            }
        }
        {
            const child = this.left_touch_sensors.wireSize();
            if(child < 0)
                return child;
            if(child > 1778 - n)
                return -90;
            n += child;
            if(n > 1778)
                return -90;
        }
        {
            const child = this.right_hand_type.wireSize();
            if(child < 0)
                return child;
            if(child > 1778 - n)
                return -90;
            n += child;
            if(n > 1778)
                return -90;
        }
        {
            if(this.right_hands.length > 4)
                return -22;
            if(4 > 1778 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.right_hands.length; ++i)
            {
                const child = this.right_hands[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1778 - n)
                    return -90;
                n += child;
                if(n > 1778)
                    return -90;
            }
        }
        {
            const child = this.right_touch_sensors.wireSize();
            if(child < 0)
                return child;
            if(child > 1778 - n)
                return -90;
            n += child;
            if(n > 1778)
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
        this.left_hand_type.writeControl(w);
        w.u32(<u32>this.left_hands.length);
        for(let i = 0; i < this.left_hands.length; ++i)
        {
            this.left_hands[i].writeControl(w);
        }
        this.left_touch_sensors.writeControl(w);
        this.right_hand_type.writeControl(w);
        w.u32(<u32>this.right_hands.length);
        for(let i = 0; i < this.right_hands.length; ++i)
        {
            this.right_hands[i].writeControl(w);
        }
        this.right_touch_sensors.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHandStateArray
    {
        const value = new Ros2Aimdk_msgsMsgHandStateArray();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHandType.readControl(r);
            value.left_hand_type = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.left_hands = new Array<Ros2Aimdk_msgsMsgHandState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHandState.readControl(r);
                value.left_hands.push(decoded);
            }
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHandTouchSensorData.readControl(r);
            value.left_touch_sensors = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHandType.readControl(r);
            value.right_hand_type = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.right_hands = new Array<Ros2Aimdk_msgsMsgHandState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHandState.readControl(r);
                value.right_hands.push(decoded);
            }
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHandTouchSensorData.readControl(r);
            value.right_touch_sensors = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHandStateArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgHandStateArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_c577a4f240ca6f9f26d82d8c8ba056b2877af96ab7dd774262637286c0302944';
    static readonly maxWireBytes: i32 = 1778;

    encodeChecked(value: Ros2Aimdk_msgsMsgHandStateArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHandStateArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHandStateArray>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHandStateArray>();
        if(bytes.length > 1778)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 338)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHandStateArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHandStateArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHandStateArray() : changetype<Ros2Aimdk_msgsMsgHandStateArray>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HdsEventQuery; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHdsEventQuery
{
    static readonly STATE_ALL: u8 = 0;
    static readonly STATE_ACTIVE: u8 = 1;
    static readonly STATE_RECOVERED: u8 = 2;
    static readonly maxWireBytes: i32 = 4390;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4390;
    /** Exact native field start_time, native scalar uint64. */
    start_time: u64 = 0;
    /** Exact native field end_time, native scalar uint64. */
    end_time: u64 = 0;
    /** Exact native field diag_codes, native scalar uint64. */
    diag_codes: Array<u64> = new Array<u64>();
    /** Exact native field alert_codes, native scalar string. */
    alert_codes: Array<string> = new Array<string>();
    /** Exact native field alert_locations, native scalar string. */
    alert_locations: Array<string> = new Array<string>();
    /** Exact native field state, native scalar uint8. */
    state: u8 = 0;
    /** Exact native field order_desc, native scalar bool. */
    order_desc: bool = false;
    /** Exact native field offset, native scalar uint32. */
    offset: u32 = 0;
    /** Exact native field limit, native scalar uint32. */
    limit: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 4390 - n)
                return -90;
            n += 8;
            if(n > 4390)
                return -90;
        }
        {
            if(8 > 4390 - n)
                return -90;
            n += 8;
            if(n > 4390)
                return -90;
        }
        {
            if(this.diag_codes.length > 16)
                return -22;
            if(4 > 4390 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.diag_codes.length; ++i)
            {
                if(8 > 4390 - n)
                    return -90;
                n += 8;
                if(n > 4390)
                    return -90;
            }
        }
        {
            if(this.alert_codes.length > 16)
                return -22;
            if(4 > 4390 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.alert_codes.length; ++i)
            {
                if(!validUnicode(this.alert_codes[i]) || this.alert_codes[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.alert_codes[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 4390 - n)
                    return -90;
                n += 4 + size;
                if(n > 4390)
                    return -90;
            }
        }
        {
            if(this.alert_locations.length > 16)
                return -22;
            if(4 > 4390 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.alert_locations.length; ++i)
            {
                if(!validUnicode(this.alert_locations[i]) || this.alert_locations[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.alert_locations[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 4390 - n)
                    return -90;
                n += 4 + size;
                if(n > 4390)
                    return -90;
            }
        }
        {
            if(1 > 4390 - n)
                return -90;
            n += 1;
            if(n > 4390)
                return -90;
        }
        {
            if(1 > 4390 - n)
                return -90;
            n += 1;
            if(n > 4390)
                return -90;
        }
        {
            if(4 > 4390 - n)
                return -90;
            n += 4;
            if(n > 4390)
                return -90;
        }
        {
            if(4 > 4390 - n)
                return -90;
            n += 4;
            if(n > 4390)
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
        w.integer(<u64>this.start_time, 8);
        w.integer(<u64>this.end_time, 8);
        w.u32(<u32>this.diag_codes.length);
        for(let i = 0; i < this.diag_codes.length; ++i)
        {
            w.integer(<u64>this.diag_codes[i], 8);
        }
        w.u32(<u32>this.alert_codes.length);
        for(let i = 0; i < this.alert_codes.length; ++i)
        {
            w.text(this.alert_codes[i]);
        }
        w.u32(<u32>this.alert_locations.length);
        for(let i = 0; i < this.alert_locations.length; ++i)
        {
            w.text(this.alert_locations[i]);
        }
        w.integer(<u64>this.state, 1);
        w.u8(this.order_desc ? 1 : 0);
        w.integer(<u64>this.offset, 4);
        w.integer(<u64>this.limit, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHdsEventQuery
    {
        const value = new Ros2Aimdk_msgsMsgHdsEventQuery();
        {
            const decoded = <u64>r.integer(8);
            value.start_time = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.end_time = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.diag_codes = new Array<u64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u64>r.integer(8);
                value.diag_codes.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.alert_codes = new Array<string>();
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
                value.alert_codes.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.alert_locations = new Array<string>();
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
                value.alert_locations.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.state = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.order_desc = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.offset = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.limit = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHdsEventQueryCodec implements VendorCodec<Ros2Aimdk_msgsMsgHdsEventQuery>
{
    static readonly codecIdentity: string = 'UWVMROS1_bb210b5a804272bcf8eab7b9bd2217471997a8a4446032ddc0f0f0aca2734d29';
    static readonly maxWireBytes: i32 = 4390;

    encodeChecked(value: Ros2Aimdk_msgsMsgHdsEventQuery): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHdsEventQuery): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHdsEventQuery>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHdsEventQuery>();
        if(bytes.length > 4390)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 38)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHdsEventQuery.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHdsEventQuery
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHdsEventQuery() : changetype<Ros2Aimdk_msgsMsgHdsEventQuery>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/HdsEventRecord; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHdsEventRecord
{
    static readonly maxWireBytes: i32 = 313;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 313;
    /** Exact native field id, native scalar uint64. */
    id: u64 = 0;
    /** Exact native field diag_code, native scalar uint64. */
    diag_code: u64 = 0;
    /** Exact native field alert_code, native scalar string. */
    alert_code: string = '';
    /** Exact native field alert_location, native scalar string. */
    alert_location: string = '';
    /** Exact native field first_timestamp, native scalar uint64. */
    first_timestamp: u64 = 0;
    /** Exact native field last_timestamp, native scalar uint64. */
    last_timestamp: u64 = 0;
    /** Exact native field recover_timestamp, native scalar uint64. */
    recover_timestamp: u64 = 0;
    /** Exact native field duration_ns, native scalar uint64. */
    duration_ns: u64 = 0;
    /** Exact native field recovered, native scalar bool. */
    recovered: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 313 - n)
                return -90;
            n += 8;
            if(n > 313)
                return -90;
        }
        {
            if(8 > 313 - n)
                return -90;
            n += 8;
            if(n > 313)
                return -90;
        }
        {
            if(!validUnicode(this.alert_code) || this.alert_code.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.alert_code);
            if(size > 128)
                return -22;
            if(4 + size > 313 - n)
                return -90;
            n += 4 + size;
            if(n > 313)
                return -90;
        }
        {
            if(!validUnicode(this.alert_location) || this.alert_location.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.alert_location);
            if(size > 128)
                return -22;
            if(4 + size > 313 - n)
                return -90;
            n += 4 + size;
            if(n > 313)
                return -90;
        }
        {
            if(8 > 313 - n)
                return -90;
            n += 8;
            if(n > 313)
                return -90;
        }
        {
            if(8 > 313 - n)
                return -90;
            n += 8;
            if(n > 313)
                return -90;
        }
        {
            if(8 > 313 - n)
                return -90;
            n += 8;
            if(n > 313)
                return -90;
        }
        {
            if(8 > 313 - n)
                return -90;
            n += 8;
            if(n > 313)
                return -90;
        }
        {
            if(1 > 313 - n)
                return -90;
            n += 1;
            if(n > 313)
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
        w.integer(<u64>this.id, 8);
        w.integer(<u64>this.diag_code, 8);
        w.text(this.alert_code);
        w.text(this.alert_location);
        w.integer(<u64>this.first_timestamp, 8);
        w.integer(<u64>this.last_timestamp, 8);
        w.integer(<u64>this.recover_timestamp, 8);
        w.integer(<u64>this.duration_ns, 8);
        w.u8(this.recovered ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgHdsEventRecord
    {
        const value = new Ros2Aimdk_msgsMsgHdsEventRecord();
        {
            const decoded = <u64>r.integer(8);
            value.id = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.diag_code = decoded;
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
            value.alert_code = decoded;
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
            value.alert_location = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.first_timestamp = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.last_timestamp = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.recover_timestamp = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.duration_ns = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.recovered = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHdsEventRecordCodec implements VendorCodec<Ros2Aimdk_msgsMsgHdsEventRecord>
{
    static readonly codecIdentity: string = 'UWVMROS1_7fe68df37f67144d462e2c9e1a126dc539d5f7156c923a879d36215145445de4';
    static readonly maxWireBytes: i32 = 313;

    encodeChecked(value: Ros2Aimdk_msgsMsgHdsEventRecord): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgHdsEventRecord): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgHdsEventRecord>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgHdsEventRecord>();
        if(bytes.length > 313)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 57)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgHdsEventRecord.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgHdsEventRecord
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgHdsEventRecord() : changetype<Ros2Aimdk_msgsMsgHdsEventRecord>(out.value);
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

/** Complete original aimdk_msgs/msg/McAction; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcAction
{
    static readonly PASSIVE_DEFAULT: i32 = 1;
    static readonly SOFT_EMERGENCY_STOP: i32 = 2;
    static readonly DAMPING_DEFAULT: i32 = 3;
    static readonly ZERO_TORQUE_DEFAULT: i32 = 4;
    static readonly JOINT_DEFAULT: i32 = 100;
    static readonly JOINT_FREEZE: i32 = 101;
    static readonly STAND_DEFAULT: i32 = 200;
    static readonly STAND_BODY_CONTROL: i32 = 201;
    static readonly LOCOMOTION_DEFAULT: i32 = 300;
    static readonly RUN_DEFAULT: i32 = 301;
    static readonly LOCOMOTION_STEP: i32 = 302;
    static readonly VR_REMOTE_CONTROLLER: i32 = 400;
    static readonly SIT_DOWN_DEFAULT: i32 = 2000;
    static readonly CROUCH_DOWN_DEFAULT: i32 = 2002;
    static readonly LIE_DOWN_DEFAULT: i32 = 2004;
    static readonly STAND_UP_DEFAULT: i32 = 2005;
    static readonly ASCEND_STAIRS: i32 = 2006;
    static readonly DESCEND_STAIRS: i32 = 2008;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcAction
    {
        const value = new Ros2Aimdk_msgsMsgMcAction();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcActionCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcAction>
{
    static readonly codecIdentity: string = 'UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcAction): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcAction): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcAction>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcAction>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcAction.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcAction
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcAction() : changetype<Ros2Aimdk_msgsMsgMcAction>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McActionCommand; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcActionCommand
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field action, native scalar aimdk_msgs/msg/McAction. */
    action: Ros2Aimdk_msgsMsgMcAction = new Ros2Aimdk_msgsMsgMcAction();
    /** Exact native field action_desc, native scalar string. */
    action_desc: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.action.wireSize();
            if(child < 0)
                return child;
            if(child > 136 - n)
                return -90;
            n += child;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.action_desc) || this.action_desc.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.action_desc);
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
        this.action.writeControl(w);
        w.text(this.action_desc);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcActionCommand
    {
        const value = new Ros2Aimdk_msgsMsgMcActionCommand();
        {
            const decoded = Ros2Aimdk_msgsMsgMcAction.readControl(r);
            value.action = decoded;
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
            value.action_desc = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcActionCommandCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcActionCommand>
{
    static readonly codecIdentity: string = 'UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcActionCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcActionCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcActionCommand>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcActionCommand>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcActionCommand.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcActionCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcActionCommand() : changetype<Ros2Aimdk_msgsMsgMcActionCommand>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McActionStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcActionStatus
{
    static readonly IDLE: i32 = 0;
    static readonly RUNNING: i32 = 100;
    static readonly TRANSITION: i32 = 200;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcActionStatus
    {
        const value = new Ros2Aimdk_msgsMsgMcActionStatus();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcActionStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcActionStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcActionStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcActionStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcActionStatus>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcActionStatus>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcActionStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcActionStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcActionStatus() : changetype<Ros2Aimdk_msgsMsgMcActionStatus>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McActionInfo; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcActionInfo
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field current_action, native scalar aimdk_msgs/msg/McAction. */
    current_action: Ros2Aimdk_msgsMsgMcAction = new Ros2Aimdk_msgsMsgMcAction();
    /** Exact native field action_desc, native scalar string. */
    action_desc: string = '';
    /** Exact native field status, native scalar aimdk_msgs/msg/McActionStatus. */
    status: Ros2Aimdk_msgsMsgMcActionStatus = new Ros2Aimdk_msgsMsgMcActionStatus();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.current_action.wireSize();
            if(child < 0)
                return child;
            if(child > 140 - n)
                return -90;
            n += child;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.action_desc) || this.action_desc.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.action_desc);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            const child = this.status.wireSize();
            if(child < 0)
                return child;
            if(child > 140 - n)
                return -90;
            n += child;
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
        this.current_action.writeControl(w);
        w.text(this.action_desc);
        this.status.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcActionInfo
    {
        const value = new Ros2Aimdk_msgsMsgMcActionInfo();
        {
            const decoded = Ros2Aimdk_msgsMsgMcAction.readControl(r);
            value.current_action = decoded;
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
            value.action_desc = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcActionStatus.readControl(r);
            value.status = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcActionInfoCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcActionInfo>
{
    static readonly codecIdentity: string = 'UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcActionInfo): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcActionInfo): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcActionInfo>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcActionInfo>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcActionInfo.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcActionInfo
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcActionInfo() : changetype<Ros2Aimdk_msgsMsgMcActionInfo>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McBodyPoseStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcBodyPoseStatus
{
    static readonly MC_BODY_POSE_UNKOWN: i32 = 0;
    static readonly MC_BODY_POSE_STAND: i32 = 1;
    static readonly MC_BODY_POSE_LIE_FACE_UP: i32 = 2;
    static readonly MC_BODY_POSE_LIE_FACE_DOWN: i32 = 3;
    static readonly MC_BODY_POSE_SIT: i32 = 4;
    static readonly MC_BODY_POSE_SQUAT: i32 = 5;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcBodyPoseStatus
    {
        const value = new Ros2Aimdk_msgsMsgMcBodyPoseStatus();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcBodyPoseStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcBodyPoseStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_380976855f8c965a5c79a3688a1a2ce654dff9869441d061b464bda582fc7538';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcBodyPoseStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcBodyPoseStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcBodyPoseStatus>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcBodyPoseStatus>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcBodyPoseStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcBodyPoseStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcBodyPoseStatus() : changetype<Ros2Aimdk_msgsMsgMcBodyPoseStatus>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McInputSource; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcInputSource
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field priority, native scalar int32. */
    priority: i32 = 0;
    /** Exact native field timeout, native scalar int32. */
    timeout: i32 = 0;

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
        w.text(this.name);
        w.integer(<u64>this.priority, 4);
        w.integer(<u64>this.timeout, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcInputSource
    {
        const value = new Ros2Aimdk_msgsMsgMcInputSource();
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
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.timeout = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcInputSourceCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcInputSource>
{
    static readonly codecIdentity: string = 'UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcInputSource): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcInputSource): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcInputSource>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcInputSource>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcInputSource.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcInputSource
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcInputSource() : changetype<Ros2Aimdk_msgsMsgMcInputSource>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McHandStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcHandStatus
{
    static readonly OMNI_HAND: i32 = 1000;
    static readonly OMNI_PICKER: i32 = 2000;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcHandStatus
    {
        const value = new Ros2Aimdk_msgsMsgMcHandStatus();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcHandStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcHandStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_7be307301e74f7c3db44fa94093233d8ac8f7f463f1904bee8748bb6fe29c462';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcHandStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcHandStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcHandStatus>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcHandStatus>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcHandStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcHandStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcHandStatus() : changetype<Ros2Aimdk_msgsMsgMcHandStatus>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McRuntimeModel; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcRuntimeModel
{
    static readonly maxWireBytes: i32 = 9;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9;
    /** Exact native field waist_status, native scalar bool. */
    waist_status: bool = false;
    /** Exact native field left_hand_status, native scalar aimdk_msgs/msg/McHandStatus. */
    left_hand_status: Ros2Aimdk_msgsMsgMcHandStatus = new Ros2Aimdk_msgsMsgMcHandStatus();
    /** Exact native field right_hand_status, native scalar aimdk_msgs/msg/McHandStatus. */
    right_hand_status: Ros2Aimdk_msgsMsgMcHandStatus = new Ros2Aimdk_msgsMsgMcHandStatus();

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
            const child = this.left_hand_status.wireSize();
            if(child < 0)
                return child;
            if(child > 9 - n)
                return -90;
            n += child;
            if(n > 9)
                return -90;
        }
        {
            const child = this.right_hand_status.wireSize();
            if(child < 0)
                return child;
            if(child > 9 - n)
                return -90;
            n += child;
            if(n > 9)
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
        w.u8(this.waist_status ? 1 : 0);
        this.left_hand_status.writeControl(w);
        this.right_hand_status.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcRuntimeModel
    {
        const value = new Ros2Aimdk_msgsMsgMcRuntimeModel();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.waist_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcHandStatus.readControl(r);
            value.left_hand_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcHandStatus.readControl(r);
            value.right_hand_status = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcRuntimeModelCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcRuntimeModel>
{
    static readonly codecIdentity: string = 'UWVMROS1_6a9196eaf82e74b282dfde8e9d7bf2f21712aeb537b0a6c8783445e5941254b4';
    static readonly maxWireBytes: i32 = 9;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcRuntimeModel): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcRuntimeModel): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcRuntimeModel>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcRuntimeModel>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcRuntimeModel.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcRuntimeModel
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcRuntimeModel() : changetype<Ros2Aimdk_msgsMsgMcRuntimeModel>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McPlayerState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcPlayerState
{
    static readonly IDLE: u32 = 0;
    static readonly PRE_PLAYING: u32 = 1;
    static readonly PLAYING: u32 = 2;
    static readonly INTERRUPTING: u32 = 3;
    static readonly ERROR: u32 = 4;
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** Exact native field value, native scalar uint32. */
    value: u32 = 0;

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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcPlayerState
    {
        const value = new Ros2Aimdk_msgsMsgMcPlayerState();
        {
            const decoded = <u32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcPlayerStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcPlayerState>
{
    static readonly codecIdentity: string = 'UWVMROS1_a56c1b72e364a1b70243f6280dfea28a63f8533118b491ea67e968c27614a412';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcPlayerState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcPlayerState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcPlayerState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcPlayerState>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcPlayerState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcPlayerState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcPlayerState() : changetype<Ros2Aimdk_msgsMsgMcPlayerState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McControlArea; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcControlArea
{
    static readonly NONE: i32 = 0;
    static readonly LEFT_HAND: i32 = 1;
    static readonly RIGHT_HAND: i32 = 2;
    static readonly HEAD: i32 = 4;
    static readonly WAIST: i32 = 8;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcControlArea
    {
        const value = new Ros2Aimdk_msgsMsgMcControlArea();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcControlAreaCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcControlArea>
{
    static readonly codecIdentity: string = 'UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcControlArea): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcControlArea): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcControlArea>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcControlArea>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcControlArea.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcControlArea
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcControlArea() : changetype<Ros2Aimdk_msgsMsgMcControlArea>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McMotionType; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcMotionType
{
    static readonly NONE: i32 = 0;
    static readonly ANIMATION: i32 = 1;
    static readonly MIMIC: i32 = 2;
    static readonly FOUNDATION: i32 = 3;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcMotionType
    {
        const value = new Ros2Aimdk_msgsMsgMcMotionType();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcMotionTypeCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcMotionType>
{
    static readonly codecIdentity: string = 'UWVMROS1_85a53e7c11c40212c3a2972b1c36ac4bfe9cc7861985b5966459c71fbc80a9da';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcMotionType): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcMotionType): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcMotionType>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcMotionType>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcMotionType.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcMotionType
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcMotionType() : changetype<Ros2Aimdk_msgsMsgMcMotionType>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McMotionStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcMotionStatus
{
    static readonly maxWireBytes: i32 = 144;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 144;
    /** Exact native field player_state, native scalar aimdk_msgs/msg/McPlayerState. */
    player_state: Ros2Aimdk_msgsMsgMcPlayerState = new Ros2Aimdk_msgsMsgMcPlayerState();
    /** Exact native field control_area, native scalar aimdk_msgs/msg/McControlArea. */
    control_area: Ros2Aimdk_msgsMsgMcControlArea = new Ros2Aimdk_msgsMsgMcControlArea();
    /** Exact native field motion, native scalar string. */
    motion: string = '';
    /** Exact native field type, native scalar aimdk_msgs/msg/McMotionType. */
    ros_type: Ros2Aimdk_msgsMsgMcMotionType = new Ros2Aimdk_msgsMsgMcMotionType();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.player_state.wireSize();
            if(child < 0)
                return child;
            if(child > 144 - n)
                return -90;
            n += child;
            if(n > 144)
                return -90;
        }
        {
            const child = this.control_area.wireSize();
            if(child < 0)
                return child;
            if(child > 144 - n)
                return -90;
            n += child;
            if(n > 144)
                return -90;
        }
        {
            if(!validUnicode(this.motion) || this.motion.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.motion);
            if(size > 128)
                return -22;
            if(4 + size > 144 - n)
                return -90;
            n += 4 + size;
            if(n > 144)
                return -90;
        }
        {
            const child = this.ros_type.wireSize();
            if(child < 0)
                return child;
            if(child > 144 - n)
                return -90;
            n += child;
            if(n > 144)
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
        this.player_state.writeControl(w);
        this.control_area.writeControl(w);
        w.text(this.motion);
        this.ros_type.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcMotionStatus
    {
        const value = new Ros2Aimdk_msgsMsgMcMotionStatus();
        {
            const decoded = Ros2Aimdk_msgsMsgMcPlayerState.readControl(r);
            value.player_state = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcControlArea.readControl(r);
            value.control_area = decoded;
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
            value.motion = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcMotionType.readControl(r);
            value.ros_type = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcMotionStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcMotionStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_4f80c178589dc4068c65c3243dbb4bd954bbcd81f1a2f0f8f844c910dea531ea';
    static readonly maxWireBytes: i32 = 144;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcMotionStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcMotionStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcMotionStatus>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcMotionStatus>();
        if(bytes.length > 144)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcMotionStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcMotionStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcMotionStatus() : changetype<Ros2Aimdk_msgsMsgMcMotionStatus>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McServoStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcServoStatus
{
    static readonly BEFORE_LIMIT: u32 = 0;
    static readonly LOWER_LIMIT: u32 = 1;
    static readonly UPPER_LIMIT: u32 = 2;
    static readonly maxWireBytes: i32 = 53;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 53;
    /** Exact native field squat_enable, native scalar bool. */
    squat_enable: bool = false;
    /** Exact native field squat_offset, native scalar float64. */
    squat_offset: f64 = 0;
    /** Exact native field squat_limit, native scalar uint32. */
    squat_limit: u32 = 0;
    /** Exact native field head_yaw_offset, native scalar float64. */
    head_yaw_offset: f64 = 0;
    /** Exact native field head_pitch_offset, native scalar float64. */
    head_pitch_offset: f64 = 0;
    /** Exact native field waist_yaw_offset, native scalar float64. */
    waist_yaw_offset: f64 = 0;
    /** Exact native field waist_pitch_offset, native scalar float64. */
    waist_pitch_offset: f64 = 0;
    /** Exact native field waist_roll_offset, native scalar float64. */
    waist_roll_offset: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 53 - n)
                return -90;
            n += 1;
            if(n > 53)
                return -90;
        }
        {
            if(!isFinite(this.squat_offset))
                return -22;
            if(8 > 53 - n)
                return -90;
            n += 8;
            if(n > 53)
                return -90;
        }
        {
            if(4 > 53 - n)
                return -90;
            n += 4;
            if(n > 53)
                return -90;
        }
        {
            if(!isFinite(this.head_yaw_offset))
                return -22;
            if(8 > 53 - n)
                return -90;
            n += 8;
            if(n > 53)
                return -90;
        }
        {
            if(!isFinite(this.head_pitch_offset))
                return -22;
            if(8 > 53 - n)
                return -90;
            n += 8;
            if(n > 53)
                return -90;
        }
        {
            if(!isFinite(this.waist_yaw_offset))
                return -22;
            if(8 > 53 - n)
                return -90;
            n += 8;
            if(n > 53)
                return -90;
        }
        {
            if(!isFinite(this.waist_pitch_offset))
                return -22;
            if(8 > 53 - n)
                return -90;
            n += 8;
            if(n > 53)
                return -90;
        }
        {
            if(!isFinite(this.waist_roll_offset))
                return -22;
            if(8 > 53 - n)
                return -90;
            n += 8;
            if(n > 53)
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
        w.u8(this.squat_enable ? 1 : 0);
        w.integer(<u64>reinterpret<u64>(this.squat_offset), 8);
        w.integer(<u64>this.squat_limit, 4);
        w.integer(<u64>reinterpret<u64>(this.head_yaw_offset), 8);
        w.integer(<u64>reinterpret<u64>(this.head_pitch_offset), 8);
        w.integer(<u64>reinterpret<u64>(this.waist_yaw_offset), 8);
        w.integer(<u64>reinterpret<u64>(this.waist_pitch_offset), 8);
        w.integer(<u64>reinterpret<u64>(this.waist_roll_offset), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcServoStatus
    {
        const value = new Ros2Aimdk_msgsMsgMcServoStatus();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.squat_enable = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.squat_offset = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.squat_limit = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.head_yaw_offset = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.head_pitch_offset = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.waist_yaw_offset = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.waist_pitch_offset = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.waist_roll_offset = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcServoStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcServoStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_824f5944e9dce34f459ad368cfc37e78e39a0589ff5f278417064773720b1ffa';
    static readonly maxWireBytes: i32 = 53;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcServoStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcServoStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcServoStatus>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcServoStatus>();
        if(bytes.length > 53)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 53)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcServoStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcServoStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcServoStatus() : changetype<Ros2Aimdk_msgsMsgMcServoStatus>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McFsmState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcFsmState
{
    static readonly UNKNOWN: u32 = 0;
    static readonly STARTING: u32 = 1;
    static readonly STABLE: u32 = 2;
    static readonly MOVING: u32 = 3;
    static readonly SAFE: u32 = 4;
    static readonly SPECIAL: u32 = 5;
    static readonly TEST: u32 = 6;
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** Exact native field current_state, native scalar uint32. */
    current_state: u32 = 0;

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
        w.integer(<u64>this.current_state, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcFsmState
    {
        const value = new Ros2Aimdk_msgsMsgMcFsmState();
        {
            const decoded = <u32>r.integer(4);
            value.current_state = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcFsmStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcFsmState>
{
    static readonly codecIdentity: string = 'UWVMROS1_2a3f0e37d5f835c8f80adc07e09bc9a162e869f662dc3ce440946b9e0ca9b047';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcFsmState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcFsmState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcFsmState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcFsmState>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcFsmState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcFsmState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcFsmState() : changetype<Ros2Aimdk_msgsMsgMcFsmState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McLocomotionSpeedMode; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcLocomotionSpeedMode
{
    static readonly MC_LOCOMOTION_NONE_SPEED: i32 = 0;
    static readonly MC_LOCOMOTION_LOW_SPEED: i32 = 1;
    static readonly MC_LOCOMOTION_MEIDUM_SPEED: i32 = 2;
    static readonly MC_LOCOMOTION_HIGH_SPEED: i32 = 3;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcLocomotionSpeedMode
    {
        const value = new Ros2Aimdk_msgsMsgMcLocomotionSpeedMode();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcLocomotionSpeedModeCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcLocomotionSpeedMode>
{
    static readonly codecIdentity: string = 'UWVMROS1_52cf8b8e1e9a931076f9ed719deaf02d4b0c15647ff2ab8109579fb29d5fc6d6';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedMode): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedMode): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcLocomotionSpeedMode>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcLocomotionSpeedMode>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcLocomotionSpeedMode
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcLocomotionSpeedMode() : changetype<Ros2Aimdk_msgsMsgMcLocomotionSpeedMode>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McLocomotionSpeedBounds; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** Exact native field min_value, native scalar float64. */
    min_value: f64 = 0;
    /** Exact native field max_value, native scalar float64. */
    max_value: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.min_value))
                return -22;
            if(8 > 16 - n)
                return -90;
            n += 8;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.max_value))
                return -22;
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
        w.integer(<u64>reinterpret<u64>(this.min_value), 8);
        w.integer(<u64>reinterpret<u64>(this.max_value), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds
    {
        const value = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.min_value = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.max_value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds>
{
    static readonly codecIdentity: string = 'UWVMROS1_9ba7b1992f315906d05b9f3850d31cdf1d5c422cbc3224a45b93c76c9368804d';
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds() : changetype<Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McLocomotionSpeedStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
{
    static readonly maxWireBytes: i32 = 52;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 52;
    /** Exact native field speed_mode, native scalar aimdk_msgs/msg/McLocomotionSpeedMode. */
    speed_mode: Ros2Aimdk_msgsMsgMcLocomotionSpeedMode = new Ros2Aimdk_msgsMsgMcLocomotionSpeedMode();
    /** Exact native field forward_bounds, native scalar aimdk_msgs/msg/McLocomotionSpeedBounds. */
    forward_bounds: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
    /** Exact native field lateral_bounds, native scalar aimdk_msgs/msg/McLocomotionSpeedBounds. */
    lateral_bounds: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();
    /** Exact native field angular_bounds, native scalar aimdk_msgs/msg/McLocomotionSpeedBounds. */
    angular_bounds: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds = new Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.speed_mode.wireSize();
            if(child < 0)
                return child;
            if(child > 52 - n)
                return -90;
            n += child;
            if(n > 52)
                return -90;
        }
        {
            const child = this.forward_bounds.wireSize();
            if(child < 0)
                return child;
            if(child > 52 - n)
                return -90;
            n += child;
            if(n > 52)
                return -90;
        }
        {
            const child = this.lateral_bounds.wireSize();
            if(child < 0)
                return child;
            if(child > 52 - n)
                return -90;
            n += child;
            if(n > 52)
                return -90;
        }
        {
            const child = this.angular_bounds.wireSize();
            if(child < 0)
                return child;
            if(child > 52 - n)
                return -90;
            n += child;
            if(n > 52)
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
        this.speed_mode.writeControl(w);
        this.forward_bounds.writeControl(w);
        this.lateral_bounds.writeControl(w);
        this.angular_bounds.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
    {
        const value = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.readControl(r);
            value.speed_mode = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.readControl(r);
            value.forward_bounds = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.readControl(r);
            value.lateral_bounds = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.readControl(r);
            value.angular_bounds = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_91837c9a2783f2f2cdc09c1efc8d96a5be0bca7e43bf513a3d47162222fc8e79';
    static readonly maxWireBytes: i32 = 52;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus>();
        if(bytes.length > 52)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 52)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus() : changetype<Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McCommonState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcCommonState
{
    static readonly maxWireBytes: i32 = 698;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 698;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field input_source, native scalar aimdk_msgs/msg/McInputSource. */
    input_source: Ros2Aimdk_msgsMsgMcInputSource = new Ros2Aimdk_msgsMsgMcInputSource();
    /** Exact native field action_info, native scalar aimdk_msgs/msg/McActionInfo. */
    action_info: Ros2Aimdk_msgsMsgMcActionInfo = new Ros2Aimdk_msgsMsgMcActionInfo();
    /** Exact native field runtime_model, native scalar aimdk_msgs/msg/McRuntimeModel. */
    runtime_model: Ros2Aimdk_msgsMsgMcRuntimeModel = new Ros2Aimdk_msgsMsgMcRuntimeModel();
    /** Exact native field motion_status, native scalar aimdk_msgs/msg/McMotionStatus. */
    motion_status: Ros2Aimdk_msgsMsgMcMotionStatus = new Ros2Aimdk_msgsMsgMcMotionStatus();
    /** Exact native field servo_status, native scalar aimdk_msgs/msg/McServoStatus. */
    servo_status: Ros2Aimdk_msgsMsgMcServoStatus = new Ros2Aimdk_msgsMsgMcServoStatus();
    /** Exact native field fsm_state, native scalar aimdk_msgs/msg/McFsmState. */
    fsm_state: Ros2Aimdk_msgsMsgMcFsmState = new Ros2Aimdk_msgsMsgMcFsmState();
    /** Exact native field body_status, native scalar aimdk_msgs/msg/McBodyPoseStatus. */
    body_status: Ros2Aimdk_msgsMsgMcBodyPoseStatus = new Ros2Aimdk_msgsMsgMcBodyPoseStatus();
    /** Exact native field speed_status, native scalar aimdk_msgs/msg/McLocomotionSpeedStatus. */
    speed_status: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
                return -90;
        }
        {
            const child = this.input_source.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
                return -90;
        }
        {
            const child = this.action_info.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
                return -90;
        }
        {
            const child = this.runtime_model.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
                return -90;
        }
        {
            const child = this.motion_status.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
                return -90;
        }
        {
            const child = this.servo_status.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
                return -90;
        }
        {
            const child = this.fsm_state.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
                return -90;
        }
        {
            const child = this.body_status.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
                return -90;
        }
        {
            const child = this.speed_status.wireSize();
            if(child < 0)
                return child;
            if(child > 698 - n)
                return -90;
            n += child;
            if(n > 698)
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
        this.input_source.writeControl(w);
        this.action_info.writeControl(w);
        this.runtime_model.writeControl(w);
        this.motion_status.writeControl(w);
        this.servo_status.writeControl(w);
        this.fsm_state.writeControl(w);
        this.body_status.writeControl(w);
        this.speed_status.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcCommonState
    {
        const value = new Ros2Aimdk_msgsMsgMcCommonState();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcInputSource.readControl(r);
            value.input_source = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcActionInfo.readControl(r);
            value.action_info = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcRuntimeModel.readControl(r);
            value.runtime_model = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcMotionStatus.readControl(r);
            value.motion_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcServoStatus.readControl(r);
            value.servo_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcFsmState.readControl(r);
            value.fsm_state = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcBodyPoseStatus.readControl(r);
            value.body_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.readControl(r);
            value.speed_status = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcCommonStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcCommonState>
{
    static readonly codecIdentity: string = 'UWVMROS1_ae0a72b7040926755e1b0542d34b6e928bedc20643ad5af9704ce86648c25558';
    static readonly maxWireBytes: i32 = 698;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcCommonState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcCommonState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcCommonState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcCommonState>();
        if(bytes.length > 698)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 186)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcCommonState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcCommonState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcCommonState() : changetype<Ros2Aimdk_msgsMsgMcCommonState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McInputAction; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcInputAction
{
    static readonly INPUTACTION_ADD: i32 = 1001;
    static readonly INPUTACTION_MODIFY: i32 = 1002;
    static readonly INPUTACTION_DELETE: i32 = 1003;
    static readonly INPUTACTION_ENABLE: i32 = 2001;
    static readonly INPUTACTION_DISABLE: i32 = 2002;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcInputAction
    {
        const value = new Ros2Aimdk_msgsMsgMcInputAction();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcInputActionCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcInputAction>
{
    static readonly codecIdentity: string = 'UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcInputAction): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcInputAction): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcInputAction>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcInputAction>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcInputAction.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcInputAction
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcInputAction() : changetype<Ros2Aimdk_msgsMsgMcInputAction>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McLocomotionVelocity; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcLocomotionVelocity
{
    static readonly maxWireBytes: i32 = 308;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 308;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field source, native scalar string. */
    source: string = '';
    /** Exact native field forward_velocity, native scalar float64. */
    forward_velocity: f64 = 0;
    /** Exact native field lateral_velocity, native scalar float64. */
    lateral_velocity: f64 = 0;
    /** Exact native field angular_velocity, native scalar float64. */
    angular_velocity: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 308 - n)
                return -90;
            n += child;
            if(n > 308)
                return -90;
        }
        {
            if(!validUnicode(this.source) || this.source.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.source);
            if(size > 128)
                return -22;
            if(4 + size > 308 - n)
                return -90;
            n += 4 + size;
            if(n > 308)
                return -90;
        }
        {
            if(!isFinite(this.forward_velocity))
                return -22;
            if(8 > 308 - n)
                return -90;
            n += 8;
            if(n > 308)
                return -90;
        }
        {
            if(!isFinite(this.lateral_velocity))
                return -22;
            if(8 > 308 - n)
                return -90;
            n += 8;
            if(n > 308)
                return -90;
        }
        {
            if(!isFinite(this.angular_velocity))
                return -22;
            if(8 > 308 - n)
                return -90;
            n += 8;
            if(n > 308)
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
        w.text(this.source);
        w.integer(<u64>reinterpret<u64>(this.forward_velocity), 8);
        w.integer(<u64>reinterpret<u64>(this.lateral_velocity), 8);
        w.integer(<u64>reinterpret<u64>(this.angular_velocity), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcLocomotionVelocity
    {
        const value = new Ros2Aimdk_msgsMsgMcLocomotionVelocity();
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
            value.source = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.forward_velocity = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.lateral_velocity = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.angular_velocity = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcLocomotionVelocity>
{
    static readonly codecIdentity: string = 'UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00';
    static readonly maxWireBytes: i32 = 308;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcLocomotionVelocity): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcLocomotionVelocity): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcLocomotionVelocity>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcLocomotionVelocity>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcLocomotionVelocity.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcLocomotionVelocity
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcLocomotionVelocity() : changetype<Ros2Aimdk_msgsMsgMcLocomotionVelocity>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/McPresetMotion; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgMcPresetMotion
{
    static readonly RAISE_HAND: i32 = 1001;
    static readonly WAVE_HAND: i32 = 1002;
    static readonly SHAKE_HAND: i32 = 1003;
    static readonly FLYING_KISS_HAND: i32 = 1004;
    static readonly CLAP_HAND: i32 = 1008;
    static readonly TURN_WAVE_HAND: i32 = 2001;
    static readonly INTERACTION_BOW: i32 = 3001;
    static readonly INTERACTION_LIKE: i32 = 3002;
    static readonly INTERACTION_YE: i32 = 3003;
    static readonly INTERACTION_SWEATHEART: i32 = 3004;
    static readonly SALUTE: i32 = 1013;
    static readonly INTERACTION_SAD: i32 = 3006;
    static readonly INTERACTION_LIGHTWAVE: i32 = 3007;
    static readonly INTERACTION_HUG: i32 = 3008;
    static readonly INTERACTION_HANDX: i32 = 3009;
    static readonly INTERACTION_CHESTWAVE: i32 = 3010;
    static readonly INTERACTION_CHEER: i32 = 3011;
    static readonly INTERACTION_BLOWKISS: i32 = 3012;
    static readonly INTERACTION_BASSDANCE1: i32 = 3013;
    static readonly INTERACTION_BASSDANCE2: i32 = 3014;
    static readonly HITCLAP: i32 = 3015;
    static readonly INTERACTION_SPEAK: i32 = 3016;
    static readonly CLIPFIST: i32 = 1009;
    static readonly INTERACTION_PHOTOPOSTURE: i32 = 3018;
    static readonly INTERACTION_PHOTOTRIPPLEPOSTURE: i32 = 3019;
    static readonly POINT_HEAD: i32 = 4001;
    static readonly SHAKE_HEAD: i32 = 4002;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgMcPresetMotion
    {
        const value = new Ros2Aimdk_msgsMsgMcPresetMotion();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgMcPresetMotionCodec implements VendorCodec<Ros2Aimdk_msgsMsgMcPresetMotion>
{
    static readonly codecIdentity: string = 'UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153';
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Aimdk_msgsMsgMcPresetMotion): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgMcPresetMotion): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgMcPresetMotion>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgMcPresetMotion>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgMcPresetMotion.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgMcPresetMotion
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgMcPresetMotion() : changetype<Ros2Aimdk_msgsMsgMcPresetMotion>(out.value);
    }
}

/** Complete original geometry_msgs/msg/Pose2D; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPose2D
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /** Exact native field x, native scalar float64. */
    x: f64 = 0;
    /** Exact native field y, native scalar float64. */
    y: f64 = 0;
    /** Exact native field theta, native scalar float64. */
    theta: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.theta))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
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
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.theta), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgPose2D
    {
        const value = new Ros2Geometry_msgsMsgPose2D();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.theta = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgPose2DCodec implements VendorCodec<Ros2Geometry_msgsMsgPose2D>
{
    static readonly codecIdentity: string = 'UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce';
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros2Geometry_msgsMsgPose2D): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgPose2D): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgPose2D>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgPose2D>();
        if(bytes.length > 24)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgPose2D.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgPose2D
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgPose2D() : changetype<Ros2Geometry_msgsMsgPose2D>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/NaviPoint; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgNaviPoint
{
    static readonly maxWireBytes: i32 = 28;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 28;
    /** Exact native field point_id, native scalar int32. */
    point_id: i32 = 0;
    /** Exact native field navi_point, native scalar geometry_msgs/msg/Pose2D. */
    navi_point: Ros2Geometry_msgsMsgPose2D = new Ros2Geometry_msgsMsgPose2D();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            const child = this.navi_point.wireSize();
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
        w.integer(<u64>this.point_id, 4);
        this.navi_point.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgNaviPoint
    {
        const value = new Ros2Aimdk_msgsMsgNaviPoint();
        {
            const decoded = <i32>r.integer(4);
            value.point_id = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose2D.readControl(r);
            value.navi_point = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgNaviPointCodec implements VendorCodec<Ros2Aimdk_msgsMsgNaviPoint>
{
    static readonly codecIdentity: string = 'UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e';
    static readonly maxWireBytes: i32 = 28;

    encodeChecked(value: Ros2Aimdk_msgsMsgNaviPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgNaviPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgNaviPoint>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgNaviPoint>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgNaviPoint.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgNaviPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgNaviPoint() : changetype<Ros2Aimdk_msgsMsgNaviPoint>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/Path; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPath
{
    static readonly maxWireBytes: i32 = 104;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 104;
    /** Exact native field path_id, native scalar int32. */
    path_id: i32 = 0;
    /** Exact native field points, native scalar geometry_msgs/msg/Pose2D. */
    points: Array<Ros2Geometry_msgsMsgPose2D> = new Array<Ros2Geometry_msgsMsgPose2D>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 104 - n)
                return -90;
            n += 4;
            if(n > 104)
                return -90;
        }
        {
            if(this.points.length > 4)
                return -22;
            if(4 > 104 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.points.length; ++i)
            {
                const child = this.points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 104 - n)
                    return -90;
                n += child;
                if(n > 104)
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
        w.integer(<u64>this.path_id, 4);
        w.u32(<u32>this.points.length);
        for(let i = 0; i < this.points.length; ++i)
        {
            this.points[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPath
    {
        const value = new Ros2Aimdk_msgsMsgPath();
        {
            const decoded = <i32>r.integer(4);
            value.path_id = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.points = new Array<Ros2Geometry_msgsMsgPose2D>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgPose2D.readControl(r);
                value.points.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPathCodec implements VendorCodec<Ros2Aimdk_msgsMsgPath>
{
    static readonly codecIdentity: string = 'UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d';
    static readonly maxWireBytes: i32 = 104;

    encodeChecked(value: Ros2Aimdk_msgsMsgPath): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPath): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPath>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPath>();
        if(bytes.length > 104)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPath.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPath
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPath() : changetype<Ros2Aimdk_msgsMsgPath>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PilotState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPilotState
{
    static readonly TM_PILOT_STATE_NAVI_TO_TARGET: u8 = 0;
    static readonly TM_PILOT_STATE_TARGET_ACTIONS: u8 = 1;
    static readonly TM_PILOT_STATE_NAVI_RETURN: u8 = 2;
    static readonly TM_PILOT_STATE_STANDBY_ACTIONS: u8 = 3;
    static readonly maxWireBytes: i32 = 421;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 421;
    /** Exact native field target_name, native scalar string. */
    target_name: string = '';
    /** Exact native field target_id, native scalar uint64. */
    target_id: u64 = 0;
    /** Exact native field intro_task_name, native scalar string. */
    intro_task_name: string = '';
    /** Exact native field intro_task_id, native scalar uint64. */
    intro_task_id: u64 = 0;
    /** Exact native field map_name, native scalar string. */
    map_name: string = '';
    /** Exact native field map_id, native scalar uint64. */
    map_id: u64 = 0;
    /** Exact native field pilot_state, native scalar uint8. */
    pilot_state: u8 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.target_name) || this.target_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.target_name);
            if(size > 128)
                return -22;
            if(4 + size > 421 - n)
                return -90;
            n += 4 + size;
            if(n > 421)
                return -90;
        }
        {
            if(8 > 421 - n)
                return -90;
            n += 8;
            if(n > 421)
                return -90;
        }
        {
            if(!validUnicode(this.intro_task_name) || this.intro_task_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.intro_task_name);
            if(size > 128)
                return -22;
            if(4 + size > 421 - n)
                return -90;
            n += 4 + size;
            if(n > 421)
                return -90;
        }
        {
            if(8 > 421 - n)
                return -90;
            n += 8;
            if(n > 421)
                return -90;
        }
        {
            if(!validUnicode(this.map_name) || this.map_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.map_name);
            if(size > 128)
                return -22;
            if(4 + size > 421 - n)
                return -90;
            n += 4 + size;
            if(n > 421)
                return -90;
        }
        {
            if(8 > 421 - n)
                return -90;
            n += 8;
            if(n > 421)
                return -90;
        }
        {
            if(1 > 421 - n)
                return -90;
            n += 1;
            if(n > 421)
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
        w.text(this.target_name);
        w.integer(<u64>this.target_id, 8);
        w.text(this.intro_task_name);
        w.integer(<u64>this.intro_task_id, 8);
        w.text(this.map_name);
        w.integer(<u64>this.map_id, 8);
        w.integer(<u64>this.pilot_state, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPilotState
    {
        const value = new Ros2Aimdk_msgsMsgPilotState();
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
            value.target_name = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.target_id = decoded;
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
            value.intro_task_name = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.intro_task_id = decoded;
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
            value.map_name = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.map_id = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.pilot_state = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPilotStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgPilotState>
{
    static readonly codecIdentity: string = 'UWVMROS1_8d2421a2a13d52ea4ab7af2a6a9e57c145c4b7fb10e59701fcb2f58c421fe31a';
    static readonly maxWireBytes: i32 = 421;

    encodeChecked(value: Ros2Aimdk_msgsMsgPilotState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPilotState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPilotState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPilotState>();
        if(bytes.length > 421)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 37)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPilotState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPilotState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPilotState() : changetype<Ros2Aimdk_msgsMsgPilotState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PlayStateType; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPlayStateType
{
    static readonly PLAYER_STATE_CLOSED: u8 = 0;
    static readonly PLAYER_STATE_PLAYING: u8 = 1;
    static readonly PLAYER_STATE_STOPED: u8 = 2;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPlayStateType
    {
        const value = new Ros2Aimdk_msgsMsgPlayStateType();
        {
            const decoded = <u8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPlayStateTypeCodec implements VendorCodec<Ros2Aimdk_msgsMsgPlayStateType>
{
    static readonly codecIdentity: string = 'UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Aimdk_msgsMsgPlayStateType): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPlayStateType): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPlayStateType>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPlayStateType>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPlayStateType.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPlayStateType
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPlayStateType() : changetype<Ros2Aimdk_msgsMsgPlayStateType>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PlayStateChange; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPlayStateChange
{
    static readonly maxWireBytes: i32 = 133;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 133;
    /** Exact native field pkg_name, native scalar string. */
    pkg_name: string = '';
    /** Exact native field state, native scalar aimdk_msgs/msg/PlayStateType. */
    state: Ros2Aimdk_msgsMsgPlayStateType = new Ros2Aimdk_msgsMsgPlayStateType();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.pkg_name) || this.pkg_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pkg_name);
            if(size > 128)
                return -22;
            if(4 + size > 133 - n)
                return -90;
            n += 4 + size;
            if(n > 133)
                return -90;
        }
        {
            const child = this.state.wireSize();
            if(child < 0)
                return child;
            if(child > 133 - n)
                return -90;
            n += child;
            if(n > 133)
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
        w.text(this.pkg_name);
        this.state.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPlayStateChange
    {
        const value = new Ros2Aimdk_msgsMsgPlayStateChange();
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
            value.pkg_name = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgPlayStateType.readControl(r);
            value.state = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPlayStateChangeCodec implements VendorCodec<Ros2Aimdk_msgsMsgPlayStateChange>
{
    static readonly codecIdentity: string = 'UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c';
    static readonly maxWireBytes: i32 = 133;

    encodeChecked(value: Ros2Aimdk_msgsMsgPlayStateChange): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPlayStateChange): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPlayStateChange>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPlayStateChange>();
        if(bytes.length > 133)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 5)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPlayStateChange.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPlayStateChange
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPlayStateChange() : changetype<Ros2Aimdk_msgsMsgPlayStateChange>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/TtsPriorityLevel; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgTtsPriorityLevel
{
    static readonly UNKNOWN: u8 = 0;
    static readonly BACKGROUND_L1: u8 = 1;
    static readonly SERVICE_L2: u8 = 2;
    static readonly MISSION_L4: u8 = 4;
    static readonly INTERACTION_L6: u8 = 6;
    static readonly SYSTEM_L7: u8 = 7;
    static readonly WARNING_L8: u8 = 8;
    static readonly SAFETY_L10: u8 = 10;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgTtsPriorityLevel
    {
        const value = new Ros2Aimdk_msgsMsgTtsPriorityLevel();
        {
            const decoded = <u8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgTtsPriorityLevelCodec implements VendorCodec<Ros2Aimdk_msgsMsgTtsPriorityLevel>
{
    static readonly codecIdentity: string = 'UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Aimdk_msgsMsgTtsPriorityLevel): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgTtsPriorityLevel): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgTtsPriorityLevel>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgTtsPriorityLevel>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgTtsPriorityLevel.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgTtsPriorityLevel
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgTtsPriorityLevel() : changetype<Ros2Aimdk_msgsMsgTtsPriorityLevel>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PlayTtsRequest; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPlayTtsRequest
{
    static readonly maxWireBytes: i32 = 402;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 402;
    /** Exact native field text, native scalar string. */
    text: string = '';
    /** Exact native field priority_level, native scalar aimdk_msgs/msg/TtsPriorityLevel. */
    priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel = new Ros2Aimdk_msgsMsgTtsPriorityLevel();
    /** Exact native field priority_weight, native scalar uint32. */
    priority_weight: u32 = 0;
    /** Exact native field domain, native scalar string. */
    domain: string = '';
    /** Exact native field trace_id, native scalar string. */
    trace_id: string = '';
    /** Exact native field is_interrupted, native scalar bool. */
    is_interrupted: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.text) || this.text.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.text);
            if(size > 128)
                return -22;
            if(4 + size > 402 - n)
                return -90;
            n += 4 + size;
            if(n > 402)
                return -90;
        }
        {
            const child = this.priority_level.wireSize();
            if(child < 0)
                return child;
            if(child > 402 - n)
                return -90;
            n += child;
            if(n > 402)
                return -90;
        }
        {
            if(4 > 402 - n)
                return -90;
            n += 4;
            if(n > 402)
                return -90;
        }
        {
            if(!validUnicode(this.domain) || this.domain.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.domain);
            if(size > 128)
                return -22;
            if(4 + size > 402 - n)
                return -90;
            n += 4 + size;
            if(n > 402)
                return -90;
        }
        {
            if(!validUnicode(this.trace_id) || this.trace_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.trace_id);
            if(size > 128)
                return -22;
            if(4 + size > 402 - n)
                return -90;
            n += 4 + size;
            if(n > 402)
                return -90;
        }
        {
            if(1 > 402 - n)
                return -90;
            n += 1;
            if(n > 402)
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
        w.text(this.text);
        this.priority_level.writeControl(w);
        w.integer(<u64>this.priority_weight, 4);
        w.text(this.domain);
        w.text(this.trace_id);
        w.u8(this.is_interrupted ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPlayTtsRequest
    {
        const value = new Ros2Aimdk_msgsMsgPlayTtsRequest();
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
            value.text = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgTtsPriorityLevel.readControl(r);
            value.priority_level = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.priority_weight = decoded;
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
            value.domain = decoded;
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
            value.trace_id = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.is_interrupted = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPlayTtsRequestCodec implements VendorCodec<Ros2Aimdk_msgsMsgPlayTtsRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72';
    static readonly maxWireBytes: i32 = 402;

    encodeChecked(value: Ros2Aimdk_msgsMsgPlayTtsRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPlayTtsRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPlayTtsRequest>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPlayTtsRequest>();
        if(bytes.length > 402)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 18)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPlayTtsRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPlayTtsRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPlayTtsRequest() : changetype<Ros2Aimdk_msgsMsgPlayTtsRequest>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PlayTtsResponse; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPlayTtsResponse
{
    static readonly ERROR_NONE: u8 = 0;
    static readonly ERROR_HIGHER_PRIORITY_BUSY: u8 = 1;
    static readonly ERROR_NETWORK_DISCONNECTED: u8 = 2;
    static readonly ERROR_UNKNOWN: u8 = 3;
    static readonly maxWireBytes: i32 = 539;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 539;
    /** Exact native field text, native scalar string. */
    text: string = '';
    /** Exact native field priority_level, native scalar aimdk_msgs/msg/TtsPriorityLevel. */
    priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel = new Ros2Aimdk_msgsMsgTtsPriorityLevel();
    /** Exact native field priority_weight, native scalar uint32. */
    priority_weight: u32 = 0;
    /** Exact native field domain, native scalar string. */
    domain: string = '';
    /** Exact native field trace_id, native scalar string. */
    trace_id: string = '';
    /** Exact native field is_success, native scalar bool. */
    is_success: bool = false;
    /** Exact native field error_message, native scalar string. */
    error_message: string = '';
    /** Exact native field estimated_duration, native scalar uint32. */
    estimated_duration: u32 = 0;
    /** Exact native field error_code, native scalar uint8. */
    error_code: u8 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.text) || this.text.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.text);
            if(size > 128)
                return -22;
            if(4 + size > 539 - n)
                return -90;
            n += 4 + size;
            if(n > 539)
                return -90;
        }
        {
            const child = this.priority_level.wireSize();
            if(child < 0)
                return child;
            if(child > 539 - n)
                return -90;
            n += child;
            if(n > 539)
                return -90;
        }
        {
            if(4 > 539 - n)
                return -90;
            n += 4;
            if(n > 539)
                return -90;
        }
        {
            if(!validUnicode(this.domain) || this.domain.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.domain);
            if(size > 128)
                return -22;
            if(4 + size > 539 - n)
                return -90;
            n += 4 + size;
            if(n > 539)
                return -90;
        }
        {
            if(!validUnicode(this.trace_id) || this.trace_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.trace_id);
            if(size > 128)
                return -22;
            if(4 + size > 539 - n)
                return -90;
            n += 4 + size;
            if(n > 539)
                return -90;
        }
        {
            if(1 > 539 - n)
                return -90;
            n += 1;
            if(n > 539)
                return -90;
        }
        {
            if(!validUnicode(this.error_message) || this.error_message.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error_message);
            if(size > 128)
                return -22;
            if(4 + size > 539 - n)
                return -90;
            n += 4 + size;
            if(n > 539)
                return -90;
        }
        {
            if(4 > 539 - n)
                return -90;
            n += 4;
            if(n > 539)
                return -90;
        }
        {
            if(1 > 539 - n)
                return -90;
            n += 1;
            if(n > 539)
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
        w.text(this.text);
        this.priority_level.writeControl(w);
        w.integer(<u64>this.priority_weight, 4);
        w.text(this.domain);
        w.text(this.trace_id);
        w.u8(this.is_success ? 1 : 0);
        w.text(this.error_message);
        w.integer(<u64>this.estimated_duration, 4);
        w.integer(<u64>this.error_code, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPlayTtsResponse
    {
        const value = new Ros2Aimdk_msgsMsgPlayTtsResponse();
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
            value.text = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgTtsPriorityLevel.readControl(r);
            value.priority_level = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.priority_weight = decoded;
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
            value.domain = decoded;
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
            value.trace_id = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.is_success = decoded;
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
            value.error_message = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.estimated_duration = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.error_code = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPlayTtsResponseCodec implements VendorCodec<Ros2Aimdk_msgsMsgPlayTtsResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_859aaa26ebee477f028cd7836e64aeaaabdafbd8ea67fc4b563bc145e4a55dc8';
    static readonly maxWireBytes: i32 = 539;

    encodeChecked(value: Ros2Aimdk_msgsMsgPlayTtsResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPlayTtsResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPlayTtsResponse>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPlayTtsResponse>();
        if(bytes.length > 539)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 27)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPlayTtsResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPlayTtsResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPlayTtsResponse() : changetype<Ros2Aimdk_msgsMsgPlayTtsResponse>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PmuLedState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPmuLedState
{
    static readonly LED_STRIP_MODE_CONSTANT: u8 = 0;
    static readonly LED_STRIP_MODE_BREATH: u8 = 1;
    static readonly LED_STRIP_MODE_FLASH: u8 = 2;
    static readonly LED_STRIP_MODE_FLOW: u8 = 3;
    static readonly LED_STRIP_MODE_MAX: u8 = 4;
    static readonly maxWireBytes: i32 = 292;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 292;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field trace_id, native scalar string. */
    trace_id: string = '';
    /** Exact native field led_strip_mode, native scalar uint8. */
    led_strip_mode: u8 = 0;
    /** Exact native field r, native scalar uint8. */
    r: u8 = 0;
    /** Exact native field g, native scalar uint8. */
    g: u8 = 0;
    /** Exact native field b, native scalar uint8. */
    b: u8 = 0;
    /** Exact native field priority, native scalar int32. */
    priority: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 292 - n)
                return -90;
            n += child;
            if(n > 292)
                return -90;
        }
        {
            if(!validUnicode(this.trace_id) || this.trace_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.trace_id);
            if(size > 128)
                return -22;
            if(4 + size > 292 - n)
                return -90;
            n += 4 + size;
            if(n > 292)
                return -90;
        }
        {
            if(1 > 292 - n)
                return -90;
            n += 1;
            if(n > 292)
                return -90;
        }
        {
            if(1 > 292 - n)
                return -90;
            n += 1;
            if(n > 292)
                return -90;
        }
        {
            if(1 > 292 - n)
                return -90;
            n += 1;
            if(n > 292)
                return -90;
        }
        {
            if(1 > 292 - n)
                return -90;
            n += 1;
            if(n > 292)
                return -90;
        }
        {
            if(4 > 292 - n)
                return -90;
            n += 4;
            if(n > 292)
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
        w.text(this.trace_id);
        w.integer(<u64>this.led_strip_mode, 1);
        w.integer(<u64>this.r, 1);
        w.integer(<u64>this.g, 1);
        w.integer(<u64>this.b, 1);
        w.integer(<u64>this.priority, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPmuLedState
    {
        const value = new Ros2Aimdk_msgsMsgPmuLedState();
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
            value.trace_id = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.led_strip_mode = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.r = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.g = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.b = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPmuLedStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgPmuLedState>
{
    static readonly codecIdentity: string = 'UWVMROS1_ffd9da2c79f63f9a61a4dfcefde97cb58676f61598b76c0435f33ab23e9002dc';
    static readonly maxWireBytes: i32 = 292;

    encodeChecked(value: Ros2Aimdk_msgsMsgPmuLedState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPmuLedState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPmuLedState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPmuLedState>();
        if(bytes.length > 292)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 36)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPmuLedState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPmuLedState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPmuLedState() : changetype<Ros2Aimdk_msgsMsgPmuLedState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PmuState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPmuState
{
    static readonly maxWireBytes: i32 = 1114;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1114;
    /** Exact native field pmu_software_version, native scalar string. */
    pmu_software_version: string = '';
    /** Exact native field pmu_hardware_version, native scalar string. */
    pmu_hardware_version: string = '';
    /** Exact native field pmu_protocol_version, native scalar string. */
    pmu_protocol_version: string = '';
    /** Exact native field pmu_bool_status, native scalar uint32. */
    pmu_bool_status: u32 = 0;
    /** Exact native field head_power_current, native scalar float64. */
    head_power_current: f64 = 0;
    /** Exact native field output_48v_current, native scalar float64. */
    output_48v_current: f64 = 0;
    /** Exact native field rk3588_current, native scalar float64. */
    rk3588_current: f64 = 0;
    /** Exact native field output_12v_current, native scalar float64. */
    output_12v_current: f64 = 0;
    /** Exact native field bus_48v_current, native scalar float64. */
    bus_48v_current: f64 = 0;
    /** Exact native field orin_current, native scalar float64. */
    orin_current: f64 = 0;
    /** Exact native field bus_48v_pmos_voltage, native scalar float64. */
    bus_48v_pmos_voltage: f64 = 0;
    /** Exact native field battery_voltage, native scalar float64. */
    battery_voltage: f64 = 0;
    /** Exact native field fan_voltage, native scalar float64. */
    fan_voltage: f64 = 0;
    /** Exact native field output_12v_voltage, native scalar float64. */
    output_12v_voltage: f64 = 0;
    /** Exact native field output_48v_voltage, native scalar float64. */
    output_48v_voltage: f64 = 0;
    /** Exact native field bus_48v_voltage, native scalar float64. */
    bus_48v_voltage: f64 = 0;
    /** Exact native field head_power_voltage, native scalar float64. */
    head_power_voltage: f64 = 0;
    /** Exact native field orin_voltage, native scalar float64. */
    orin_voltage: f64 = 0;
    /** Exact native field rk3588_voltage, native scalar float64. */
    rk3588_voltage: f64 = 0;
    /** Exact native field fan_speed, native scalar float64. */
    fan_speed: f64 = 0;
    /** Exact native field fan_pecentage, native scalar uint8. */
    fan_pecentage: u8 = 0;
    /** Exact native field pmu_temperature, native scalar float64. */
    pmu_temperature: f64 = 0;
    /** Exact native field bms_manufacturer, native scalar string. */
    bms_manufacturer: string = '';
    /** Exact native field bms_serial_number, native scalar string. */
    bms_serial_number: string = '';
    /** Exact native field bms_hardware_version, native scalar string. */
    bms_hardware_version: string = '';
    /** Exact native field bms_software_version, native scalar string. */
    bms_software_version: string = '';
    /** Exact native field bms_status_bits, native scalar uint32. */
    bms_status_bits: u32 = 0;
    /** Exact native field battery_balance_line_resistance, native scalar uint16. */
    battery_balance_line_resistance: u16 = 0;
    /** Exact native field battery_pack_voltage, native scalar float64. */
    battery_pack_voltage: f64 = 0;
    /** Exact native field battery_current, native scalar float64. */
    battery_current: f64 = 0;
    /** Exact native field battery_output_power, native scalar float64. */
    battery_output_power: f64 = 0;
    /** Exact native field battery_temperature, native scalar float64. */
    battery_temperature: f64 = 0;
    /** Exact native field battery_remaining_capacity, native scalar uint32. */
    battery_remaining_capacity: u32 = 0;
    /** Exact native field battery_remaining_capacity_percentage, native scalar uint8. */
    battery_remaining_capacity_percentage: u8 = 0;
    /** Exact native field battery_cycle_count, native scalar uint16. */
    battery_cycle_count: u16 = 0;
    /** Exact native field battery_cycle_total_capacity, native scalar uint32. */
    battery_cycle_total_capacity: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.pmu_software_version) || this.pmu_software_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pmu_software_version);
            if(size > 128)
                return -22;
            if(4 + size > 1114 - n)
                return -90;
            n += 4 + size;
            if(n > 1114)
                return -90;
        }
        {
            if(!validUnicode(this.pmu_hardware_version) || this.pmu_hardware_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pmu_hardware_version);
            if(size > 128)
                return -22;
            if(4 + size > 1114 - n)
                return -90;
            n += 4 + size;
            if(n > 1114)
                return -90;
        }
        {
            if(!validUnicode(this.pmu_protocol_version) || this.pmu_protocol_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pmu_protocol_version);
            if(size > 128)
                return -22;
            if(4 + size > 1114 - n)
                return -90;
            n += 4 + size;
            if(n > 1114)
                return -90;
        }
        {
            if(4 > 1114 - n)
                return -90;
            n += 4;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.head_power_current))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.output_48v_current))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.rk3588_current))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.output_12v_current))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.bus_48v_current))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.orin_current))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.bus_48v_pmos_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.battery_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.fan_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.output_12v_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.output_48v_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.bus_48v_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.head_power_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.orin_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.rk3588_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.fan_speed))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(1 > 1114 - n)
                return -90;
            n += 1;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.pmu_temperature))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!validUnicode(this.bms_manufacturer) || this.bms_manufacturer.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.bms_manufacturer);
            if(size > 128)
                return -22;
            if(4 + size > 1114 - n)
                return -90;
            n += 4 + size;
            if(n > 1114)
                return -90;
        }
        {
            if(!validUnicode(this.bms_serial_number) || this.bms_serial_number.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.bms_serial_number);
            if(size > 128)
                return -22;
            if(4 + size > 1114 - n)
                return -90;
            n += 4 + size;
            if(n > 1114)
                return -90;
        }
        {
            if(!validUnicode(this.bms_hardware_version) || this.bms_hardware_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.bms_hardware_version);
            if(size > 128)
                return -22;
            if(4 + size > 1114 - n)
                return -90;
            n += 4 + size;
            if(n > 1114)
                return -90;
        }
        {
            if(!validUnicode(this.bms_software_version) || this.bms_software_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.bms_software_version);
            if(size > 128)
                return -22;
            if(4 + size > 1114 - n)
                return -90;
            n += 4 + size;
            if(n > 1114)
                return -90;
        }
        {
            if(4 > 1114 - n)
                return -90;
            n += 4;
            if(n > 1114)
                return -90;
        }
        {
            if(2 > 1114 - n)
                return -90;
            n += 2;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.battery_pack_voltage))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.battery_current))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.battery_output_power))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(!isFinite(this.battery_temperature))
                return -22;
            if(8 > 1114 - n)
                return -90;
            n += 8;
            if(n > 1114)
                return -90;
        }
        {
            if(4 > 1114 - n)
                return -90;
            n += 4;
            if(n > 1114)
                return -90;
        }
        {
            if(1 > 1114 - n)
                return -90;
            n += 1;
            if(n > 1114)
                return -90;
        }
        {
            if(2 > 1114 - n)
                return -90;
            n += 2;
            if(n > 1114)
                return -90;
        }
        {
            if(4 > 1114 - n)
                return -90;
            n += 4;
            if(n > 1114)
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
        w.text(this.pmu_software_version);
        w.text(this.pmu_hardware_version);
        w.text(this.pmu_protocol_version);
        w.integer(<u64>this.pmu_bool_status, 4);
        w.integer(<u64>reinterpret<u64>(this.head_power_current), 8);
        w.integer(<u64>reinterpret<u64>(this.output_48v_current), 8);
        w.integer(<u64>reinterpret<u64>(this.rk3588_current), 8);
        w.integer(<u64>reinterpret<u64>(this.output_12v_current), 8);
        w.integer(<u64>reinterpret<u64>(this.bus_48v_current), 8);
        w.integer(<u64>reinterpret<u64>(this.orin_current), 8);
        w.integer(<u64>reinterpret<u64>(this.bus_48v_pmos_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.battery_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.fan_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.output_12v_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.output_48v_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.bus_48v_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.head_power_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.orin_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.rk3588_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.fan_speed), 8);
        w.integer(<u64>this.fan_pecentage, 1);
        w.integer(<u64>reinterpret<u64>(this.pmu_temperature), 8);
        w.text(this.bms_manufacturer);
        w.text(this.bms_serial_number);
        w.text(this.bms_hardware_version);
        w.text(this.bms_software_version);
        w.integer(<u64>this.bms_status_bits, 4);
        w.integer(<u64>this.battery_balance_line_resistance, 2);
        w.integer(<u64>reinterpret<u64>(this.battery_pack_voltage), 8);
        w.integer(<u64>reinterpret<u64>(this.battery_current), 8);
        w.integer(<u64>reinterpret<u64>(this.battery_output_power), 8);
        w.integer(<u64>reinterpret<u64>(this.battery_temperature), 8);
        w.integer(<u64>this.battery_remaining_capacity, 4);
        w.integer(<u64>this.battery_remaining_capacity_percentage, 1);
        w.integer(<u64>this.battery_cycle_count, 2);
        w.integer(<u64>this.battery_cycle_total_capacity, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPmuState
    {
        const value = new Ros2Aimdk_msgsMsgPmuState();
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
            value.pmu_software_version = decoded;
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
            value.pmu_hardware_version = decoded;
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
            value.pmu_protocol_version = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.pmu_bool_status = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.head_power_current = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.output_48v_current = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.rk3588_current = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.output_12v_current = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.bus_48v_current = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.orin_current = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.bus_48v_pmos_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.battery_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.fan_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.output_12v_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.output_48v_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.bus_48v_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.head_power_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.orin_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.rk3588_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.fan_speed = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.fan_pecentage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.pmu_temperature = decoded;
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
            value.bms_manufacturer = decoded;
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
            value.bms_serial_number = decoded;
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
            value.bms_hardware_version = decoded;
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
            value.bms_software_version = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.bms_status_bits = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.battery_balance_line_resistance = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.battery_pack_voltage = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.battery_current = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.battery_output_power = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.battery_temperature = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.battery_remaining_capacity = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.battery_remaining_capacity_percentage = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.battery_cycle_count = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.battery_cycle_total_capacity = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPmuStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgPmuState>
{
    static readonly codecIdentity: string = 'UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd';
    static readonly maxWireBytes: i32 = 1114;

    encodeChecked(value: Ros2Aimdk_msgsMsgPmuState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPmuState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPmuState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPmuState>();
        if(bytes.length > 1114)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 218)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPmuState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPmuState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPmuState() : changetype<Ros2Aimdk_msgsMsgPmuState>(out.value);
    }
}

/** Complete original std_msgs/msg/Header; spellings are published in generation proof. */
export class Ros2Std_msgsMsgHeader
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field stamp, native scalar builtin_interfaces/msg/Time. */
    stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /** Exact native field frame_id, native scalar string. */
    frame_id: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 140 - n)
                return -90;
            n += child;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.frame_id);
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
        this.stamp.writeControl(w);
        w.text(this.frame_id);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Std_msgsMsgHeader
    {
        const value = new Ros2Std_msgsMsgHeader();
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
        return value;
    }
}

export class Ros2Std_msgsMsgHeaderCodec implements VendorCodec<Ros2Std_msgsMsgHeader>
{
    static readonly codecIdentity: string = 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Std_msgsMsgHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Std_msgsMsgHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Std_msgsMsgHeader>
    {
        const out = new VendorDecoded<Ros2Std_msgsMsgHeader>();
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
        const reader = new Reader(bytes), value = Ros2Std_msgsMsgHeader.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Std_msgsMsgHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Std_msgsMsgHeader() : changetype<Ros2Std_msgsMsgHeader>(out.value);
    }
}

/** Complete original geometry_msgs/msg/PoseStamped; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPoseStamped
{
    static readonly maxWireBytes: i32 = 196;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 196;
    /** Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** Exact native field pose, native scalar geometry_msgs/msg/Pose. */
    pose: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 196 - n)
                return -90;
            n += child;
            if(n > 196)
                return -90;
        }
        {
            const child = this.pose.wireSize();
            if(child < 0)
                return child;
            if(child > 196 - n)
                return -90;
            n += child;
            if(n > 196)
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
        this.pose.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgPoseStamped
    {
        const value = new Ros2Geometry_msgsMsgPoseStamped();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose.readControl(r);
            value.pose = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgPoseStampedCodec implements VendorCodec<Ros2Geometry_msgsMsgPoseStamped>
{
    static readonly codecIdentity: string = 'UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2';
    static readonly maxWireBytes: i32 = 196;

    encodeChecked(value: Ros2Geometry_msgsMsgPoseStamped): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgPoseStamped): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgPoseStamped>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgPoseStamped>();
        if(bytes.length > 196)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 68)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgPoseStamped.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgPoseStamped
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgPoseStamped() : changetype<Ros2Geometry_msgsMsgPoseStamped>(out.value);
    }
}

/** Complete original geometry_msgs/msg/Vector3; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgVector3
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /** Exact native field x, native scalar float64. */
    x: f64 = 0;
    /** Exact native field y, native scalar float64. */
    y: f64 = 0;
    /** Exact native field z, native scalar float64. */
    z: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
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
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgVector3
    {
        const value = new Ros2Geometry_msgsMsgVector3();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgVector3Codec implements VendorCodec<Ros2Geometry_msgsMsgVector3>
{
    static readonly codecIdentity: string = 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e';
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros2Geometry_msgsMsgVector3): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgVector3): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgVector3>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgVector3>();
        if(bytes.length > 24)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgVector3.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgVector3
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgVector3() : changetype<Ros2Geometry_msgsMsgVector3>(out.value);
    }
}

/** Complete original geometry_msgs/msg/Twist; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgTwist
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** Exact native field linear, native scalar geometry_msgs/msg/Vector3. */
    linear: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();
    /** Exact native field angular, native scalar geometry_msgs/msg/Vector3. */
    angular: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.linear.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
            if(n > 48)
                return -90;
        }
        {
            const child = this.angular.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
            if(n > 48)
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
        this.linear.writeControl(w);
        this.angular.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgTwist
    {
        const value = new Ros2Geometry_msgsMsgTwist();
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.linear = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.angular = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgTwistCodec implements VendorCodec<Ros2Geometry_msgsMsgTwist>
{
    static readonly codecIdentity: string = 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e';
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros2Geometry_msgsMsgTwist): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgTwist): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgTwist>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgTwist>();
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
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgTwist.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgTwist
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgTwist() : changetype<Ros2Geometry_msgsMsgTwist>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PncTaskRequest; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPncTaskRequest
{
    static readonly TASK_TYPE_NONE: u8 = 0;
    static readonly TASK_TYPE_PLANNING_NAVI_TO_GOAL: u8 = 1;
    static readonly TASK_TYPE_PLANNING_NAVI_TO_POSE_2D: u8 = 2;
    static readonly TASK_TYPE_LINEAR_NAVI_TO_RELATIVE: u8 = 3;
    static readonly TASK_TYPE_LINEAR_NAVI_TO_GOAL: u8 = 4;
    static readonly TASK_TYPE_LINEAR_NAVI_TO_POSE_2D: u8 = 5;
    static readonly TASK_TYPE_DIRECT_NAVI_TO_RELATIVE_GOAL: u8 = 6;
    static readonly TASK_TYPE_DIRECT_NAVI_TO_RELATIVE: u8 = 7;
    static readonly TASK_TYPE_SPIN_TURN_AND_MOVE_FORWARD: u8 = 8;
    static readonly TASK_TYPE_SPIN_TURN: u8 = 9;
    static readonly TASK_TYPE_MOVE_FORWARD: u8 = 10;
    static readonly TASK_TYPE_PRECISE_NAVI_TO_GOAL: u8 = 11;
    static readonly TASK_TYPE_NO_MAP_FOLLOW: u8 = 12;
    static readonly TASK_TYPE_AUTO_EXPLORE: u8 = 13;
    static readonly TASK_TYPE_VOICE_CONTROL: u8 = 14;
    static readonly TASK_TYPE_RELATIVE_TARGET_TRACKING: u8 = 15;
    static readonly TASK_TYPE_PLANNING_NAVI_WITH_RL: u8 = 16;
    static readonly TASK_TYPE_SWARM_CONTROL_NAVI_MODE: u8 = 17;
    static readonly TASK_REQUEST_NONE: u8 = 0;
    static readonly TASK_REQUEST_START: u8 = 1;
    static readonly TASK_REQUEST_STOP: u8 = 2;
    static readonly TASK_REQUEST_PAUSE: u8 = 3;
    static readonly TASK_REQUEST_RESUME: u8 = 4;
    static readonly TASK_REQUEST_STATUS_INQUIRY: u8 = 5;
    static readonly NORMAL: u8 = 0;
    static readonly NO_PERCEPTION: u8 = 1;
    static readonly maxWireBytes: i32 = 855;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 855;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field task_type, native scalar uint8. */
    task_type: u8 = 0;
    /** Exact native field task_request, native scalar uint8. */
    task_request: u8 = 0;
    /** Exact native field pnc_mode, native scalar uint8. */
    pnc_mode: u8 = 0;
    /** Exact native field task_id, native scalar uint64. */
    task_id: u64 = 0;
    /** Exact native field map_id, native scalar uint64. */
    map_id: u64 = 0;
    /** Exact native field target_pose, native scalar geometry_msgs/msg/PoseStamped. */
    target_pose: Ros2Geometry_msgsMsgPoseStamped = new Ros2Geometry_msgsMsgPoseStamped();
    /** Exact native field reference_line, native scalar geometry_msgs/msg/Pose2D. */
    reference_line: Array<Ros2Geometry_msgsMsgPose2D> = new Array<Ros2Geometry_msgsMsgPose2D>();
    /** Exact native field target_pose_radius, native scalar float64. */
    target_pose_radius: f64 = 0;
    /** Exact native field max_forward_speed, native scalar float32. */
    max_forward_speed: f32 = 0;
    /** Exact native field trajectory_pos, native scalar geometry_msgs/msg/Pose2D. */
    trajectory_pos: Array<Ros2Geometry_msgsMsgPose2D> = new Array<Ros2Geometry_msgsMsgPose2D>();
    /** Exact native field trajectory_vel, native scalar geometry_msgs/msg/Twist. */
    trajectory_vel: Array<Ros2Geometry_msgsMsgTwist> = new Array<Ros2Geometry_msgsMsgTwist>();
    /** Exact native field play_timestamp, native scalar uint64. */
    play_timestamp: u64 = 0;
    /** Exact native field time_duration, native scalar uint64. */
    time_duration: u64 = 0;
    /** Exact native field reserve_info, native scalar char. */
    reserve_info: Array<u8> = new Array<u8>();

    constructor()
    {
        for(let i = 0; i < 64; ++i)
            this.reserve_info.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 855 - n)
                return -90;
            n += child;
            if(n > 855)
                return -90;
        }
        {
            if(1 > 855 - n)
                return -90;
            n += 1;
            if(n > 855)
                return -90;
        }
        {
            if(1 > 855 - n)
                return -90;
            n += 1;
            if(n > 855)
                return -90;
        }
        {
            if(1 > 855 - n)
                return -90;
            n += 1;
            if(n > 855)
                return -90;
        }
        {
            if(8 > 855 - n)
                return -90;
            n += 8;
            if(n > 855)
                return -90;
        }
        {
            if(8 > 855 - n)
                return -90;
            n += 8;
            if(n > 855)
                return -90;
        }
        {
            const child = this.target_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 855 - n)
                return -90;
            n += child;
            if(n > 855)
                return -90;
        }
        {
            if(this.reference_line.length > 4)
                return -22;
            if(4 > 855 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.reference_line.length; ++i)
            {
                const child = this.reference_line[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 855 - n)
                    return -90;
                n += child;
                if(n > 855)
                    return -90;
            }
        }
        {
            if(!isFinite(this.target_pose_radius))
                return -22;
            if(8 > 855 - n)
                return -90;
            n += 8;
            if(n > 855)
                return -90;
        }
        {
            if(!isFinite(this.max_forward_speed))
                return -22;
            if(4 > 855 - n)
                return -90;
            n += 4;
            if(n > 855)
                return -90;
        }
        {
            if(this.trajectory_pos.length > 4)
                return -22;
            if(4 > 855 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.trajectory_pos.length; ++i)
            {
                const child = this.trajectory_pos[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 855 - n)
                    return -90;
                n += child;
                if(n > 855)
                    return -90;
            }
        }
        {
            if(this.trajectory_vel.length > 4)
                return -22;
            if(4 > 855 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.trajectory_vel.length; ++i)
            {
                const child = this.trajectory_vel[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 855 - n)
                    return -90;
                n += child;
                if(n > 855)
                    return -90;
            }
        }
        {
            if(8 > 855 - n)
                return -90;
            n += 8;
            if(n > 855)
                return -90;
        }
        {
            if(8 > 855 - n)
                return -90;
            n += 8;
            if(n > 855)
                return -90;
        }
        {
            if(this.reserve_info.length != 64)
                return -22;
            for(let i = 0; i < this.reserve_info.length; ++i)
            {
                if(1 > 855 - n)
                    return -90;
                n += 1;
                if(n > 855)
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
        w.integer(<u64>this.task_type, 1);
        w.integer(<u64>this.task_request, 1);
        w.integer(<u64>this.pnc_mode, 1);
        w.integer(<u64>this.task_id, 8);
        w.integer(<u64>this.map_id, 8);
        this.target_pose.writeControl(w);
        w.u32(<u32>this.reference_line.length);
        for(let i = 0; i < this.reference_line.length; ++i)
        {
            this.reference_line[i].writeControl(w);
        }
        w.integer(<u64>reinterpret<u64>(this.target_pose_radius), 8);
        w.integer(<u64>reinterpret<u32>(this.max_forward_speed), 4);
        w.u32(<u32>this.trajectory_pos.length);
        for(let i = 0; i < this.trajectory_pos.length; ++i)
        {
            this.trajectory_pos[i].writeControl(w);
        }
        w.u32(<u32>this.trajectory_vel.length);
        for(let i = 0; i < this.trajectory_vel.length; ++i)
        {
            this.trajectory_vel[i].writeControl(w);
        }
        w.integer(<u64>this.play_timestamp, 8);
        w.integer(<u64>this.time_duration, 8);
        for(let i = 0; i < this.reserve_info.length; ++i)
        {
            w.integer(<u64>this.reserve_info[i], 1);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPncTaskRequest
    {
        const value = new Ros2Aimdk_msgsMsgPncTaskRequest();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.task_type = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.task_request = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.pnc_mode = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.task_id = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.map_id = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPoseStamped.readControl(r);
            value.target_pose = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.reference_line = new Array<Ros2Geometry_msgsMsgPose2D>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgPose2D.readControl(r);
                value.reference_line.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.target_pose_radius = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.max_forward_speed = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.trajectory_pos = new Array<Ros2Geometry_msgsMsgPose2D>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgPose2D.readControl(r);
                value.trajectory_pos.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.trajectory_vel = new Array<Ros2Geometry_msgsMsgTwist>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgTwist.readControl(r);
                value.trajectory_vel.push(decoded);
            }
        }
        {
            const decoded = <u64>r.integer(8);
            value.play_timestamp = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.time_duration = decoded;
        }
        {
            const count: u32 = 64;
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.reserve_info = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.reserve_info.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPncTaskRequestCodec implements VendorCodec<Ros2Aimdk_msgsMsgPncTaskRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_70b6f57408c6a09cc52d3ce4aeaab20322737a6c4cfddbd380e87d673050469c';
    static readonly maxWireBytes: i32 = 855;

    encodeChecked(value: Ros2Aimdk_msgsMsgPncTaskRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPncTaskRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPncTaskRequest>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPncTaskRequest>();
        if(bytes.length > 855)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 215)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPncTaskRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPncTaskRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPncTaskRequest() : changetype<Ros2Aimdk_msgsMsgPncTaskRequest>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PncTaskResponse; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPncTaskResponse
{
    static readonly TASK_TYPE_NONE: u8 = 0;
    static readonly TASK_TYPE_PLANNING_NAVI_TO_GOAL: u8 = 1;
    static readonly TASK_TYPE_PLANNING_NAVI_TO_POSE_2D: u8 = 2;
    static readonly TASK_TYPE_LINEAR_NAVI_TO_RELATIVE: u8 = 3;
    static readonly TASK_TYPE_LINEAR_NAVI_TO_GOAL: u8 = 4;
    static readonly TASK_TYPE_LINEAR_NAVI_TO_POSE_2D: u8 = 5;
    static readonly TASK_TYPE_DIRECT_NAVI_TO_RELATIVE_GOAL: u8 = 6;
    static readonly TASK_TYPE_DIRECT_NAVI_TO_RELATIVE: u8 = 7;
    static readonly TASK_TYPE_SPIN_TURN_AND_MOVE_FORWARD: u8 = 8;
    static readonly TASK_TYPE_SPIN_TURN: u8 = 9;
    static readonly TASK_TYPE_MOVE_FORWARD: u8 = 10;
    static readonly TASK_TYPE_PRECISE_NAVI_TO_GOAL: u8 = 11;
    static readonly TASK_TYPE_NO_MAP_FOLLOW: u8 = 12;
    static readonly TASK_TYPE_AUTO_EXPLORE: u8 = 13;
    static readonly TASK_TYPE_VOICE_CONTROL: u8 = 14;
    static readonly TASK_TYPE_RELATIVE_TARGET_TRACKING: u8 = 15;
    static readonly TASK_TYPE_PLANNING_NAVI_WITH_RL: u8 = 16;
    static readonly TASK_STATUS_UNKONW: u8 = 0;
    static readonly TASK_STATUS_RUNNING: u8 = 1;
    static readonly TASK_STATUS_FAILED: u8 = 2;
    static readonly TASK_STATUS_PAUSED: u8 = 3;
    static readonly TASK_STATUS_FINISHED: u8 = 4;
    static readonly TASK_STATUS_UNKNOW_BLOCK: u8 = 10;
    static readonly TASK_STATUS_SPIN_BLOCK: u8 = 11;
    static readonly TASK_STATUS_TRAJ_COLLISION_BLOCK: u8 = 12;
    static readonly TASK_STATUS_CONTOLLER_COLLISION_BLOCK: u8 = 13;
    static readonly TASK_STATUS_SPIN_BLOCK_WITH_HUMAN: u8 = 14;
    static readonly TASK_STATUS_TRAJ_COLLISION_BLOCK_WITH_HUMAN: u8 = 15;
    static readonly TASK_STATUS_CONTOLLER_COLLISION_BLOCK_WITH_HUMAN: u8 = 16;
    static readonly TASK_STATUS_LOCAL_OPTIMAL_FAILED: u8 = 17;
    static readonly TASK_STATUS_GOBAL_PATH_BLOCK: u8 = 18;
    static readonly TASK_STATUS_RECOVERY_GLOBAL: u8 = 20;
    static readonly TASK_STATUS_RECOVERY_LOCAL: u8 = 21;
    static readonly TASK_STATUS_RECOVERY_TIMEOUT: u8 = 22;
    static readonly TASK_STATUS_EXPLORE_TO_RECOVERY: u8 = 23;
    static readonly TASK_STATUS_EXPLORE_SUCCESS: u8 = 24;
    static readonly TASK_STATUS_EXPLORE_FAILED: u8 = 25;
    static readonly TASK_STATUS_GOAL_BLOCK_CONTINUE: u8 = 30;
    static readonly TASK_STATUS_GOAL_BLOCK_ABORT: u8 = 31;
    static readonly maxWireBytes: i32 = 234;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 234;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field task_type, native scalar uint8. */
    task_type: u8 = 0;
    /** Exact native field task_id, native scalar uint64. */
    task_id: u64 = 0;
    /** Exact native field map_id, native scalar uint64. */
    map_id: u64 = 0;
    /** Exact native field task_status, native scalar uint8. */
    task_status: u8 = 0;
    /** Exact native field reserve_info, native scalar char. */
    reserve_info: Array<u8> = new Array<u8>();

    constructor()
    {
        for(let i = 0; i < 64; ++i)
            this.reserve_info.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 234 - n)
                return -90;
            n += child;
            if(n > 234)
                return -90;
        }
        {
            if(1 > 234 - n)
                return -90;
            n += 1;
            if(n > 234)
                return -90;
        }
        {
            if(8 > 234 - n)
                return -90;
            n += 8;
            if(n > 234)
                return -90;
        }
        {
            if(8 > 234 - n)
                return -90;
            n += 8;
            if(n > 234)
                return -90;
        }
        {
            if(1 > 234 - n)
                return -90;
            n += 1;
            if(n > 234)
                return -90;
        }
        {
            if(this.reserve_info.length != 64)
                return -22;
            for(let i = 0; i < this.reserve_info.length; ++i)
            {
                if(1 > 234 - n)
                    return -90;
                n += 1;
                if(n > 234)
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
        w.integer(<u64>this.task_type, 1);
        w.integer(<u64>this.task_id, 8);
        w.integer(<u64>this.map_id, 8);
        w.integer(<u64>this.task_status, 1);
        for(let i = 0; i < this.reserve_info.length; ++i)
        {
            w.integer(<u64>this.reserve_info[i], 1);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPncTaskResponse
    {
        const value = new Ros2Aimdk_msgsMsgPncTaskResponse();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.task_type = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.task_id = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.map_id = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.task_status = decoded;
        }
        {
            const count: u32 = 64;
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.reserve_info = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.reserve_info.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPncTaskResponseCodec implements VendorCodec<Ros2Aimdk_msgsMsgPncTaskResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_b79712144fee059d6b2d3fc74a86a33ca577734d8445b446a4b80db01e87243e';
    static readonly maxWireBytes: i32 = 234;

    encodeChecked(value: Ros2Aimdk_msgsMsgPncTaskResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPncTaskResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPncTaskResponse>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPncTaskResponse>();
        if(bytes.length > 234)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 106)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPncTaskResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPncTaskResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPncTaskResponse() : changetype<Ros2Aimdk_msgsMsgPncTaskResponse>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/SigSet; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgSigSet
{
    static readonly maxWireBytes: i32 = 20;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 20;
    /** Exact native field robot_sig, native scalar int32. */
    robot_sig: i32 = 0;
    /** Exact native field motion_sig, native scalar uint8. */
    motion_sig: u8 = 0;
    /** Exact native field sound_sig, native scalar uint8. */
    sound_sig: u8 = 0;
    /** Exact native field led_sig, native scalar uint8. */
    led_sig: u8 = 0;
    /** Exact native field facial_sig, native scalar uint8. */
    facial_sig: u8 = 0;
    /** Exact native field reserve, native scalar uint32. */
    reserve: u32 = 0;
    /** Exact native field funcdisable_sig, native scalar uint64. */
    funcdisable_sig: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 20 - n)
                return -90;
            n += 4;
            if(n > 20)
                return -90;
        }
        {
            if(1 > 20 - n)
                return -90;
            n += 1;
            if(n > 20)
                return -90;
        }
        {
            if(1 > 20 - n)
                return -90;
            n += 1;
            if(n > 20)
                return -90;
        }
        {
            if(1 > 20 - n)
                return -90;
            n += 1;
            if(n > 20)
                return -90;
        }
        {
            if(1 > 20 - n)
                return -90;
            n += 1;
            if(n > 20)
                return -90;
        }
        {
            if(4 > 20 - n)
                return -90;
            n += 4;
            if(n > 20)
                return -90;
        }
        {
            if(8 > 20 - n)
                return -90;
            n += 8;
            if(n > 20)
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
        w.integer(<u64>this.robot_sig, 4);
        w.integer(<u64>this.motion_sig, 1);
        w.integer(<u64>this.sound_sig, 1);
        w.integer(<u64>this.led_sig, 1);
        w.integer(<u64>this.facial_sig, 1);
        w.integer(<u64>this.reserve, 4);
        w.integer(<u64>this.funcdisable_sig, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgSigSet
    {
        const value = new Ros2Aimdk_msgsMsgSigSet();
        {
            const decoded = <i32>r.integer(4);
            value.robot_sig = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.motion_sig = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.sound_sig = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.led_sig = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.facial_sig = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.reserve = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.funcdisable_sig = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgSigSetCodec implements VendorCodec<Ros2Aimdk_msgsMsgSigSet>
{
    static readonly codecIdentity: string = 'UWVMROS1_24fc701bfd984160280c2b150c2b6accee18cead254009fb4f781341efb5b8ae';
    static readonly maxWireBytes: i32 = 20;

    encodeChecked(value: Ros2Aimdk_msgsMsgSigSet): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgSigSet): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgSigSet>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgSigSet>();
        if(bytes.length > 20)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgSigSet.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgSigSet
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgSigSet() : changetype<Ros2Aimdk_msgsMsgSigSet>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PostProcSig; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPostProcSig
{
    static readonly maxWireBytes: i32 = 36;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 36;
    /** Exact native field timestamp, native scalar uint64. */
    timestamp: u64 = 0;
    /** Exact native field diag_code, native scalar uint64. */
    diag_code: u64 = 0;
    /** Exact native field sig_set, native scalar aimdk_msgs/msg/SigSet. */
    sig_set: Ros2Aimdk_msgsMsgSigSet = new Ros2Aimdk_msgsMsgSigSet();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 36 - n)
                return -90;
            n += 8;
            if(n > 36)
                return -90;
        }
        {
            if(8 > 36 - n)
                return -90;
            n += 8;
            if(n > 36)
                return -90;
        }
        {
            const child = this.sig_set.wireSize();
            if(child < 0)
                return child;
            if(child > 36 - n)
                return -90;
            n += child;
            if(n > 36)
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
        w.integer(<u64>this.timestamp, 8);
        w.integer(<u64>this.diag_code, 8);
        this.sig_set.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPostProcSig
    {
        const value = new Ros2Aimdk_msgsMsgPostProcSig();
        {
            const decoded = <u64>r.integer(8);
            value.timestamp = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.diag_code = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgSigSet.readControl(r);
            value.sig_set = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPostProcSigCodec implements VendorCodec<Ros2Aimdk_msgsMsgPostProcSig>
{
    static readonly codecIdentity: string = 'UWVMROS1_f6eceb5eb1e64d0b68e1cfac297cec324fc4aa42ea709e1c721aefe4d4feda8b';
    static readonly maxWireBytes: i32 = 36;

    encodeChecked(value: Ros2Aimdk_msgsMsgPostProcSig): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPostProcSig): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPostProcSig>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPostProcSig>();
        if(bytes.length > 36)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 36)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPostProcSig.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPostProcSig
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPostProcSig() : changetype<Ros2Aimdk_msgsMsgPostProcSig>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/PostProcSigArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPostProcSigArray
{
    static readonly maxWireBytes: i32 = 300;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 300;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field post_proc_sig, native scalar aimdk_msgs/msg/PostProcSig. */
    post_proc_sig: Array<Ros2Aimdk_msgsMsgPostProcSig> = new Array<Ros2Aimdk_msgsMsgPostProcSig>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 300 - n)
                return -90;
            n += child;
            if(n > 300)
                return -90;
        }
        {
            if(this.post_proc_sig.length > 4)
                return -22;
            if(4 > 300 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.post_proc_sig.length; ++i)
            {
                const child = this.post_proc_sig[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 300 - n)
                    return -90;
                n += child;
                if(n > 300)
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
        w.u32(<u32>this.post_proc_sig.length);
        for(let i = 0; i < this.post_proc_sig.length; ++i)
        {
            this.post_proc_sig[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPostProcSigArray
    {
        const value = new Ros2Aimdk_msgsMsgPostProcSigArray();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.post_proc_sig = new Array<Ros2Aimdk_msgsMsgPostProcSig>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgPostProcSig.readControl(r);
                value.post_proc_sig.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPostProcSigArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgPostProcSigArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_5a2202eb697688ee1fe7530df21d462d4a0f1a4e62e986e610e970bf04f64824';
    static readonly maxWireBytes: i32 = 300;

    encodeChecked(value: Ros2Aimdk_msgsMsgPostProcSigArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPostProcSigArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPostProcSigArray>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPostProcSigArray>();
        if(bytes.length > 300)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPostProcSigArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPostProcSigArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPostProcSigArray() : changetype<Ros2Aimdk_msgsMsgPostProcSigArray>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/ProcessedAudioOutput; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgProcessedAudioOutput
{
    static readonly maxWireBytes: i32 = 417;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 417;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field stream_id, native scalar uint32. */
    stream_id: u32 = 0;
    /** Exact native field audio_vad_state, native scalar aimdk_msgs/msg/AudioVadStateType. */
    audio_vad_state: Ros2Aimdk_msgsMsgAudioVadStateType = new Ros2Aimdk_msgsMsgAudioVadStateType();
    /** Exact native field audio_data, native scalar uint8. */
    audio_data: Array<u8> = new Array<u8>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 417 - n)
                return -90;
            n += child;
            if(n > 417)
                return -90;
        }
        {
            if(4 > 417 - n)
                return -90;
            n += 4;
            if(n > 417)
                return -90;
        }
        {
            const child = this.audio_vad_state.wireSize();
            if(child < 0)
                return child;
            if(child > 417 - n)
                return -90;
            n += child;
            if(n > 417)
                return -90;
        }
        {
            if(this.audio_data.length > 256)
                return -22;
            if(4 > 417 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.audio_data.length; ++i)
            {
                if(1 > 417 - n)
                    return -90;
                n += 1;
                if(n > 417)
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
        w.integer(<u64>this.stream_id, 4);
        this.audio_vad_state.writeControl(w);
        w.u32(<u32>this.audio_data.length);
        for(let i = 0; i < this.audio_data.length; ++i)
        {
            w.integer(<u64>this.audio_data[i], 1);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgProcessedAudioOutput
    {
        const value = new Ros2Aimdk_msgsMsgProcessedAudioOutput();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.stream_id = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgAudioVadStateType.readControl(r);
            value.audio_vad_state = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.audio_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.audio_data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgProcessedAudioOutputCodec implements VendorCodec<Ros2Aimdk_msgsMsgProcessedAudioOutput>
{
    static readonly codecIdentity: string = 'UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30';
    static readonly maxWireBytes: i32 = 417;

    encodeChecked(value: Ros2Aimdk_msgsMsgProcessedAudioOutput): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgProcessedAudioOutput): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgProcessedAudioOutput>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgProcessedAudioOutput>();
        if(bytes.length > 417)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 33)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgProcessedAudioOutput.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgProcessedAudioOutput
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgProcessedAudioOutput() : changetype<Ros2Aimdk_msgsMsgProcessedAudioOutput>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/QRPoint; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgQRPoint
{
    static readonly maxWireBytes: i32 = 64;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 64;
    /** Exact native field point_id, native scalar int32. */
    point_id: i32 = 0;
    /** Exact native field qr_code, native scalar aimdk_msgs/msg/QRCode. */
    qr_code: Ros2Aimdk_msgsMsgQRCode = new Ros2Aimdk_msgsMsgQRCode();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 64 - n)
                return -90;
            n += 4;
            if(n > 64)
                return -90;
        }
        {
            const child = this.qr_code.wireSize();
            if(child < 0)
                return child;
            if(child > 64 - n)
                return -90;
            n += child;
            if(n > 64)
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
        w.integer(<u64>this.point_id, 4);
        this.qr_code.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgQRPoint
    {
        const value = new Ros2Aimdk_msgsMsgQRPoint();
        {
            const decoded = <i32>r.integer(4);
            value.point_id = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgQRCode.readControl(r);
            value.qr_code = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgQRPointCodec implements VendorCodec<Ros2Aimdk_msgsMsgQRPoint>
{
    static readonly codecIdentity: string = 'UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e';
    static readonly maxWireBytes: i32 = 64;

    encodeChecked(value: Ros2Aimdk_msgsMsgQRPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgQRPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgQRPoint>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgQRPoint>();
        if(bytes.length > 64)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 64)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgQRPoint.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgQRPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgQRPoint() : changetype<Ros2Aimdk_msgsMsgQRPoint>(out.value);
    }
}

/** Complete original geometry_msgs/msg/Point32; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPoint32
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field x, native scalar float32. */
    x: f32 = 0;
    /** Exact native field y, native scalar float32. */
    y: f32 = 0;
    /** Exact native field z, native scalar float32. */
    z: f32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
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
        w.integer(<u64>reinterpret<u32>(this.x), 4);
        w.integer(<u64>reinterpret<u32>(this.y), 4);
        w.integer(<u64>reinterpret<u32>(this.z), 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgPoint32
    {
        const value = new Ros2Geometry_msgsMsgPoint32();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgPoint32Codec implements VendorCodec<Ros2Geometry_msgsMsgPoint32>
{
    static readonly codecIdentity: string = 'UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Geometry_msgsMsgPoint32): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgPoint32): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgPoint32>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgPoint32>();
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
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgPoint32.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgPoint32
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgPoint32() : changetype<Ros2Geometry_msgsMsgPoint32>(out.value);
    }
}

/** Complete original geometry_msgs/msg/Polygon; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPolygon
{
    static readonly maxWireBytes: i32 = 52;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 52;
    /** Exact native field points, native scalar geometry_msgs/msg/Point32. */
    points: Array<Ros2Geometry_msgsMsgPoint32> = new Array<Ros2Geometry_msgsMsgPoint32>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.points.length > 4)
                return -22;
            if(4 > 52 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.points.length; ++i)
            {
                const child = this.points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 52 - n)
                    return -90;
                n += child;
                if(n > 52)
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
        w.u32(<u32>this.points.length);
        for(let i = 0; i < this.points.length; ++i)
        {
            this.points[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgPolygon
    {
        const value = new Ros2Geometry_msgsMsgPolygon();
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.points = new Array<Ros2Geometry_msgsMsgPoint32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgPoint32.readControl(r);
                value.points.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgPolygonCodec implements VendorCodec<Ros2Geometry_msgsMsgPolygon>
{
    static readonly codecIdentity: string = 'UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8';
    static readonly maxWireBytes: i32 = 52;

    encodeChecked(value: Ros2Geometry_msgsMsgPolygon): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgPolygon): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgPolygon>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgPolygon>();
        if(bytes.length > 52)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgPolygon.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgPolygon
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgPolygon() : changetype<Ros2Geometry_msgsMsgPolygon>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/Region; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgRegion
{
    static readonly REGION_UNDEFINED: u8 = 0;
    static readonly REGION_WORKING_SPACE: u8 = 1;
    static readonly REGION_VIRTUAL_WALL: u8 = 2;
    static readonly REGION_DRAWING_UNDEFINED: u8 = 0;
    static readonly REGION_DRAWING_CLOSURE: u8 = 1;
    static readonly REGION_DRAWING_LINES: u8 = 2;
    static readonly maxWireBytes: i32 = 186;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 186;
    /** Exact native field type, native scalar uint8. */
    ros_type: u8 = 0;
    /** Exact native field drawing_type, native scalar uint8. */
    drawing_type: u8 = 0;
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field polygon, native scalar geometry_msgs/msg/Polygon. */
    polygon: Ros2Geometry_msgsMsgPolygon = new Ros2Geometry_msgsMsgPolygon();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 186 - n)
                return -90;
            n += 1;
            if(n > 186)
                return -90;
        }
        {
            if(1 > 186 - n)
                return -90;
            n += 1;
            if(n > 186)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 186 - n)
                return -90;
            n += 4 + size;
            if(n > 186)
                return -90;
        }
        {
            const child = this.polygon.wireSize();
            if(child < 0)
                return child;
            if(child > 186 - n)
                return -90;
            n += child;
            if(n > 186)
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
        w.integer(<u64>this.ros_type, 1);
        w.integer(<u64>this.drawing_type, 1);
        w.text(this.name);
        this.polygon.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgRegion
    {
        const value = new Ros2Aimdk_msgsMsgRegion();
        {
            const decoded = <u8>r.integer(1);
            value.ros_type = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.drawing_type = decoded;
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
            value.name = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPolygon.readControl(r);
            value.polygon = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgRegionCodec implements VendorCodec<Ros2Aimdk_msgsMsgRegion>
{
    static readonly codecIdentity: string = 'UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce';
    static readonly maxWireBytes: i32 = 186;

    encodeChecked(value: Ros2Aimdk_msgsMsgRegion): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgRegion): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgRegion>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgRegion>();
        if(bytes.length > 186)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 10)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgRegion.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgRegion
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgRegion() : changetype<Ros2Aimdk_msgsMsgRegion>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/RobotResource; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgRobotResource
{
    static readonly maxWireBytes: i32 = 2520;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2520;
    /** Exact native field resource_key, native scalar string. */
    resource_key: string = '';
    /** Exact native field current_version, native scalar aimdk_msgs/msg/CurrentVersion. */
    current_version: Ros2Aimdk_msgsMsgCurrentVersion = new Ros2Aimdk_msgsMsgCurrentVersion();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.resource_key) || this.resource_key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.resource_key);
            if(size > 128)
                return -22;
            if(4 + size > 2520 - n)
                return -90;
            n += 4 + size;
            if(n > 2520)
                return -90;
        }
        {
            const child = this.current_version.wireSize();
            if(child < 0)
                return child;
            if(child > 2520 - n)
                return -90;
            n += child;
            if(n > 2520)
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
        w.text(this.resource_key);
        this.current_version.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgRobotResource
    {
        const value = new Ros2Aimdk_msgsMsgRobotResource();
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
            value.resource_key = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgCurrentVersion.readControl(r);
            value.current_version = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgRobotResourceCodec implements VendorCodec<Ros2Aimdk_msgsMsgRobotResource>
{
    static readonly codecIdentity: string = 'UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d';
    static readonly maxWireBytes: i32 = 2520;

    encodeChecked(value: Ros2Aimdk_msgsMsgRobotResource): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgRobotResource): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgRobotResource>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgRobotResource>();
        if(bytes.length > 2520)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgRobotResource.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgRobotResource
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgRobotResource() : changetype<Ros2Aimdk_msgsMsgRobotResource>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/SlaveDevice; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgSlaveDevice
{
    static readonly maxWireBytes: i32 = 132;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 132;
    /** Exact native field ip, native scalar string. */
    ip: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.ip) || this.ip.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.ip);
            if(size > 128)
                return -22;
            if(4 + size > 132 - n)
                return -90;
            n += 4 + size;
            if(n > 132)
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
        w.text(this.ip);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgSlaveDevice
    {
        const value = new Ros2Aimdk_msgsMsgSlaveDevice();
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
            value.ip = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgSlaveDeviceCodec implements VendorCodec<Ros2Aimdk_msgsMsgSlaveDevice>
{
    static readonly codecIdentity: string = 'UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255';
    static readonly maxWireBytes: i32 = 132;

    encodeChecked(value: Ros2Aimdk_msgsMsgSlaveDevice): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgSlaveDevice): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgSlaveDevice>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgSlaveDevice>();
        if(bytes.length > 132)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgSlaveDevice.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgSlaveDevice
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgSlaveDevice() : changetype<Ros2Aimdk_msgsMsgSlaveDevice>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/SystemStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgSystemStatus
{
    static readonly IN_INITIAL: u8 = 0;
    static readonly IN_READY: u8 = 1;
    static readonly IN_MOVE: u8 = 2;
    static readonly IN_ROLLBACK: u8 = 3;
    static readonly IN_FALLBACK: u8 = 4;
    static readonly IN_FALLBACK_MOVE: u8 = 5;
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
    static readControl(r: Reader): Ros2Aimdk_msgsMsgSystemStatus
    {
        const value = new Ros2Aimdk_msgsMsgSystemStatus();
        {
            const decoded = <u8>r.integer(1);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgSystemStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgSystemStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Aimdk_msgsMsgSystemStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgSystemStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgSystemStatus>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgSystemStatus>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgSystemStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgSystemStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgSystemStatus() : changetype<Ros2Aimdk_msgsMsgSystemStatus>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/SmSystemState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgSmSystemState
{
    static readonly maxWireBytes: i32 = 285;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 285;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field cur_state, native scalar string. */
    cur_state: string = '';
    /** Exact native field cur_status, native scalar aimdk_msgs/msg/SystemStatus. */
    cur_status: Ros2Aimdk_msgsMsgSystemStatus = new Ros2Aimdk_msgsMsgSystemStatus();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
                return -90;
        }
        {
            if(!validUnicode(this.cur_state) || this.cur_state.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cur_state);
            if(size > 128)
                return -22;
            if(4 + size > 285 - n)
                return -90;
            n += 4 + size;
            if(n > 285)
                return -90;
        }
        {
            const child = this.cur_status.wireSize();
            if(child < 0)
                return child;
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
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
        w.text(this.cur_state);
        this.cur_status.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgSmSystemState
    {
        const value = new Ros2Aimdk_msgsMsgSmSystemState();
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
            value.cur_state = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgSystemStatus.readControl(r);
            value.cur_status = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgSmSystemStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgSmSystemState>
{
    static readonly codecIdentity: string = 'UWVMROS1_32df2f2ac235992629e4fd98257feaac52917482d1065071a4513eaf611980ce';
    static readonly maxWireBytes: i32 = 285;

    encodeChecked(value: Ros2Aimdk_msgsMsgSmSystemState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgSmSystemState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgSmSystemState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgSmSystemState>();
        if(bytes.length > 285)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgSmSystemState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgSmSystemState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgSmSystemState() : changetype<Ros2Aimdk_msgsMsgSmSystemState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/TaskMasterState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgTaskMasterState
{
    static readonly TM_MAIN_STATE_IDLE: u8 = 0;
    static readonly TM_MAIN_STATE_RELOCALIZATION: u8 = 1;
    static readonly TM_MAIN_STATE_MAPPING: u8 = 2;
    static readonly TM_MAIN_STATE_FIX_LINE_INTRO: u8 = 3;
    static readonly TM_MAIN_STATE_RECORDING_PATH: u8 = 4;
    static readonly TM_MAIN_STATE_PILOT: u8 = 5;
    static readonly TM_SUB_STATE_NONE: u8 = 0;
    static readonly TM_SUB_STATE_RESUME: u8 = 1;
    static readonly TM_SUB_STATE_PAUSE: u8 = 2;
    static readonly SLAM_STATE_IDLE: u8 = 0;
    static readonly SLAM_STATE_RELOCALIZATION: u8 = 1;
    static readonly SLAM_STATE_MAPPING: u8 = 2;
    static readonly SLAM_STATE_LOCALIZATION: u8 = 3;
    static readonly maxWireBytes: i32 = 1129;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1129;
    /** Exact native field main_state, native scalar uint8. */
    main_state: u8 = 0;
    /** Exact native field sub_state, native scalar uint8. */
    sub_state: u8 = 0;
    /** Exact native field slam_state, native scalar uint8. */
    slam_state: u8 = 0;
    /** Exact native field loc_map_id, native scalar uint64. */
    loc_map_id: u64 = 0;
    /** Exact native field loc_map_name, native scalar string. */
    loc_map_name: string = '';
    /** Exact native field fix_line_intro_state, native scalar aimdk_msgs/msg/FixLineIntroState. */
    fix_line_intro_state: Ros2Aimdk_msgsMsgFixLineIntroState = new Ros2Aimdk_msgsMsgFixLineIntroState();
    /** Exact native field pilot_state, native scalar aimdk_msgs/msg/PilotState. */
    pilot_state: Ros2Aimdk_msgsMsgPilotState = new Ros2Aimdk_msgsMsgPilotState();
    /** Exact native field reserve_info, native scalar string. */
    reserve_info: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1129 - n)
                return -90;
            n += 1;
            if(n > 1129)
                return -90;
        }
        {
            if(1 > 1129 - n)
                return -90;
            n += 1;
            if(n > 1129)
                return -90;
        }
        {
            if(1 > 1129 - n)
                return -90;
            n += 1;
            if(n > 1129)
                return -90;
        }
        {
            if(8 > 1129 - n)
                return -90;
            n += 8;
            if(n > 1129)
                return -90;
        }
        {
            if(!validUnicode(this.loc_map_name) || this.loc_map_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.loc_map_name);
            if(size > 128)
                return -22;
            if(4 + size > 1129 - n)
                return -90;
            n += 4 + size;
            if(n > 1129)
                return -90;
        }
        {
            const child = this.fix_line_intro_state.wireSize();
            if(child < 0)
                return child;
            if(child > 1129 - n)
                return -90;
            n += child;
            if(n > 1129)
                return -90;
        }
        {
            const child = this.pilot_state.wireSize();
            if(child < 0)
                return child;
            if(child > 1129 - n)
                return -90;
            n += child;
            if(n > 1129)
                return -90;
        }
        {
            if(!validUnicode(this.reserve_info) || this.reserve_info.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.reserve_info);
            if(size > 128)
                return -22;
            if(4 + size > 1129 - n)
                return -90;
            n += 4 + size;
            if(n > 1129)
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
        w.integer(<u64>this.main_state, 1);
        w.integer(<u64>this.sub_state, 1);
        w.integer(<u64>this.slam_state, 1);
        w.integer(<u64>this.loc_map_id, 8);
        w.text(this.loc_map_name);
        this.fix_line_intro_state.writeControl(w);
        this.pilot_state.writeControl(w);
        w.text(this.reserve_info);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgTaskMasterState
    {
        const value = new Ros2Aimdk_msgsMsgTaskMasterState();
        {
            const decoded = <u8>r.integer(1);
            value.main_state = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.sub_state = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.slam_state = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.loc_map_id = decoded;
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
            value.loc_map_name = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgFixLineIntroState.readControl(r);
            value.fix_line_intro_state = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgPilotState.readControl(r);
            value.pilot_state = decoded;
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
            value.reserve_info = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgTaskMasterStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgTaskMasterState>
{
    static readonly codecIdentity: string = 'UWVMROS1_90307681af8de801b0fac5e757fb89f1d23e33efdbdf939666b884b8d260a7a4';
    static readonly maxWireBytes: i32 = 1129;

    encodeChecked(value: Ros2Aimdk_msgsMsgTaskMasterState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgTaskMasterState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgTaskMasterState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgTaskMasterState>();
        if(bytes.length > 1129)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 105)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgTaskMasterState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgTaskMasterState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgTaskMasterState() : changetype<Ros2Aimdk_msgsMsgTaskMasterState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/TouchState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgTouchState
{
    static readonly UNKNOWN: u8 = 0;
    static readonly IDLE: u8 = 1;
    static readonly TOUCH: u8 = 2;
    static readonly SLIDE: u8 = 3;
    static readonly PAT_ONCE: u8 = 4;
    static readonly PAT_TWICE: u8 = 5;
    static readonly PAT_TRIPLE: u8 = 6;
    static readonly maxWireBytes: i32 = 225;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 225;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field event_type, native scalar uint8. */
    event_type: u8 = 0;
    /** Exact native field data, native scalar uint32. */
    data: Array<u32> = new Array<u32>();
    /** Exact native field threshold, native scalar uint32. */
    threshold: Array<u32> = new Array<u32>();
    /** Exact native field is_touched, native scalar bool. */
    is_touched: Array<bool> = new Array<bool>();

    constructor()
    {
        for(let i = 0; i < 8; ++i)
            this.data.push(0);
        for(let i = 0; i < 8; ++i)
            this.threshold.push(0);
        for(let i = 0; i < 8; ++i)
            this.is_touched.push(false);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 225 - n)
                return -90;
            n += child;
            if(n > 225)
                return -90;
        }
        {
            if(1 > 225 - n)
                return -90;
            n += 1;
            if(n > 225)
                return -90;
        }
        {
            if(this.data.length != 8)
                return -22;
            for(let i = 0; i < this.data.length; ++i)
            {
                if(4 > 225 - n)
                    return -90;
                n += 4;
                if(n > 225)
                    return -90;
            }
        }
        {
            if(this.threshold.length != 8)
                return -22;
            for(let i = 0; i < this.threshold.length; ++i)
            {
                if(4 > 225 - n)
                    return -90;
                n += 4;
                if(n > 225)
                    return -90;
            }
        }
        {
            if(this.is_touched.length != 8)
                return -22;
            for(let i = 0; i < this.is_touched.length; ++i)
            {
                if(1 > 225 - n)
                    return -90;
                n += 1;
                if(n > 225)
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
        w.integer(<u64>this.event_type, 1);
        for(let i = 0; i < this.data.length; ++i)
        {
            w.integer(<u64>this.data[i], 4);
        }
        for(let i = 0; i < this.threshold.length; ++i)
        {
            w.integer(<u64>this.threshold[i], 4);
        }
        for(let i = 0; i < this.is_touched.length; ++i)
        {
            w.u8(this.is_touched[i] ? 1 : 0);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgTouchState
    {
        const value = new Ros2Aimdk_msgsMsgTouchState();
        {
            const decoded = Ros2Aimdk_msgsMsgMessageHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.event_type = decoded;
        }
        {
            const count: u32 = 8;
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.data.push(decoded);
            }
        }
        {
            const count: u32 = 8;
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.threshold = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.threshold.push(decoded);
            }
        }
        {
            const count: u32 = 8;
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.is_touched = new Array<bool>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const bit = r.u8();
                if(bit > 1)
                    r.valid = false;
                const decoded = bit != 0;
                value.is_touched.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgTouchStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgTouchState>
{
    static readonly codecIdentity: string = 'UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564';
    static readonly maxWireBytes: i32 = 225;

    encodeChecked(value: Ros2Aimdk_msgsMsgTouchState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgTouchState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgTouchState>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgTouchState>();
        if(bytes.length > 225)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 97)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgTouchState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgTouchState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgTouchState() : changetype<Ros2Aimdk_msgsMsgTouchState>(out.value);
    }
}

/** Complete original aimdk_msgs/msg/UpperBodyCommandArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgUpperBodyCommandArray
{
    static readonly HAND_CLAW_OPEN_CLOSE: u8 = 1;
    static readonly HAND_DEXTEROUS_JOINT: u8 = 2;
    static readonly HAND_DEXTEROUS_GESTURE: u8 = 3;
    static readonly maxWireBytes: i32 = 545;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 545;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field source, native scalar string. */
    source: string = '';
    /** Exact native field hand_sub_mode, native scalar uint8. */
    hand_sub_mode: u8 = 0;
    /** Exact native field head_pos, native scalar float64. */
    head_pos: Array<f64> = new Array<f64>();
    /** Exact native field arm_pos, native scalar float64. */
    arm_pos: Array<f64> = new Array<f64>();
    /** Exact native field hand_pos, native scalar float64. */
    hand_pos: Array<f64> = new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
            this.head_pos.push(0);
        for(let i = 0; i < 14; ++i)
            this.arm_pos.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 545 - n)
                return -90;
            n += child;
            if(n > 545)
                return -90;
        }
        {
            if(!validUnicode(this.source) || this.source.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.source);
            if(size > 128)
                return -22;
            if(4 + size > 545 - n)
                return -90;
            n += 4 + size;
            if(n > 545)
                return -90;
        }
        {
            if(1 > 545 - n)
                return -90;
            n += 1;
            if(n > 545)
                return -90;
        }
        {
            if(this.head_pos.length != 2)
                return -22;
            for(let i = 0; i < this.head_pos.length; ++i)
            {
                if(!isFinite(this.head_pos[i]))
                    return -22;
                if(8 > 545 - n)
                    return -90;
                n += 8;
                if(n > 545)
                    return -90;
            }
        }
        {
            if(this.arm_pos.length != 14)
                return -22;
            for(let i = 0; i < this.arm_pos.length; ++i)
            {
                if(!isFinite(this.arm_pos[i]))
                    return -22;
                if(8 > 545 - n)
                    return -90;
                n += 8;
                if(n > 545)
                    return -90;
            }
        }
        {
            if(this.hand_pos.length > 16)
                return -22;
            if(4 > 545 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.hand_pos.length; ++i)
            {
                if(!isFinite(this.hand_pos[i]))
                    return -22;
                if(8 > 545 - n)
                    return -90;
                n += 8;
                if(n > 545)
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
        w.text(this.source);
        w.integer(<u64>this.hand_sub_mode, 1);
        for(let i = 0; i < this.head_pos.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.head_pos[i]), 8);
        }
        for(let i = 0; i < this.arm_pos.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.arm_pos[i]), 8);
        }
        w.u32(<u32>this.hand_pos.length);
        for(let i = 0; i < this.hand_pos.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.hand_pos[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgUpperBodyCommandArray
    {
        const value = new Ros2Aimdk_msgsMsgUpperBodyCommandArray();
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
            value.source = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.hand_sub_mode = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.head_pos = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.head_pos.push(decoded);
            }
        }
        {
            const count: u32 = 14;
            if(!r.valid || count > 14)
            {
                r.valid = false;
                return value;
            }
            value.arm_pos = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.arm_pos.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.hand_pos = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.hand_pos.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgUpperBodyCommandArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgUpperBodyCommandArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_7f283521eed5b5febcba3cd0b19e1948749c2898c753e8b57983ec966a4ccbe0';
    static readonly maxWireBytes: i32 = 545;

    encodeChecked(value: Ros2Aimdk_msgsMsgUpperBodyCommandArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgUpperBodyCommandArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgUpperBodyCommandArray>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgUpperBodyCommandArray>();
        if(bytes.length > 545)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 161)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgUpperBodyCommandArray.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgUpperBodyCommandArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgUpperBodyCommandArray() : changetype<Ros2Aimdk_msgsMsgUpperBodyCommandArray>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/AbandonAudioFocus_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
{
    static readonly maxWireBytes: i32 = 148;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 148;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field focus_requester, native scalar aimdk_msgs/msg/FocusRequester. */
    focus_requester: Ros2Aimdk_msgsMsgFocusRequester = new Ros2Aimdk_msgsMsgFocusRequester();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
            if(child < 0)
                return child;
            if(child > 148 - n)
                return -90;
            n += child;
            if(n > 148)
                return -90;
        }
        {
            const child = this.focus_requester.wireSize();
            if(child < 0)
                return child;
            if(child > 148 - n)
                return -90;
            n += child;
            if(n > 148)
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
        this.request.writeControl(w);
        this.focus_requester.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
    {
        const value = new Ros2Aimdk_msgsSrvAbandonAudioFocus_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgFocusRequester.readControl(r);
            value.focus_requester = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvAbandonAudioFocus_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5';
    static readonly maxWireBytes: i32 = 148;

    encodeChecked(value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvAbandonAudioFocus_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvAbandonAudioFocus_Request>();
        if(bytes.length > 148)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvAbandonAudioFocus_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvAbandonAudioFocus_Request() : changetype<Ros2Aimdk_msgsSrvAbandonAudioFocus_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/AbandonAudioFocus_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
{
    static readonly maxWireBytes: i32 = 285;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 285;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field focus_response, native scalar aimdk_msgs/msg/FocusResponse. */
    focus_response: Ros2Aimdk_msgsMsgFocusResponse = new Ros2Aimdk_msgsMsgFocusResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
            if(child < 0)
                return child;
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
                return -90;
        }
        {
            const child = this.focus_response.wireSize();
            if(child < 0)
                return child;
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
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
        this.reponse.writeControl(w);
        this.focus_response.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
    {
        const value = new Ros2Aimdk_msgsSrvAbandonAudioFocus_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgFocusResponse.readControl(r);
            value.focus_response = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvAbandonAudioFocus_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376';
    static readonly maxWireBytes: i32 = 285;

    encodeChecked(value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvAbandonAudioFocus_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvAbandonAudioFocus_Response>();
        if(bytes.length > 285)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvAbandonAudioFocus_Response() : changetype<Ros2Aimdk_msgsSrvAbandonAudioFocus_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/ExecuteActionResource_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvExecuteActionResource_Request
{
    static readonly maxWireBytes: i32 = 936;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 936;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field resource_key, native scalar string. */
    resource_key: string = '';
    /** Exact native field resource_version, native scalar string. */
    resource_version: string = '';
    /** Exact native field slaves, native scalar aimdk_msgs/msg/SlaveDevice. */
    slaves: Array<Ros2Aimdk_msgsMsgSlaveDevice> = new Array<Ros2Aimdk_msgsMsgSlaveDevice>();
    /** Exact native field meta, native scalar string. */
    meta: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 936 - n)
                return -90;
            n += child;
            if(n > 936)
                return -90;
        }
        {
            if(!validUnicode(this.resource_key) || this.resource_key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.resource_key);
            if(size > 128)
                return -22;
            if(4 + size > 936 - n)
                return -90;
            n += 4 + size;
            if(n > 936)
                return -90;
        }
        {
            if(!validUnicode(this.resource_version) || this.resource_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.resource_version);
            if(size > 128)
                return -22;
            if(4 + size > 936 - n)
                return -90;
            n += 4 + size;
            if(n > 936)
                return -90;
        }
        {
            if(this.slaves.length > 4)
                return -22;
            if(4 > 936 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.slaves.length; ++i)
            {
                const child = this.slaves[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 936 - n)
                    return -90;
                n += child;
                if(n > 936)
                    return -90;
            }
        }
        {
            if(!validUnicode(this.meta) || this.meta.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.meta);
            if(size > 128)
                return -22;
            if(4 + size > 936 - n)
                return -90;
            n += 4 + size;
            if(n > 936)
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
        w.text(this.resource_key);
        w.text(this.resource_version);
        w.u32(<u32>this.slaves.length);
        for(let i = 0; i < this.slaves.length; ++i)
        {
            this.slaves[i].writeControl(w);
        }
        w.text(this.meta);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvExecuteActionResource_Request
    {
        const value = new Ros2Aimdk_msgsSrvExecuteActionResource_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
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
            value.resource_key = decoded;
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
            value.resource_version = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.slaves = new Array<Ros2Aimdk_msgsMsgSlaveDevice>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgSlaveDevice.readControl(r);
                value.slaves.push(decoded);
            }
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
            value.meta = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvExecuteActionResource_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56';
    static readonly maxWireBytes: i32 = 936;

    encodeChecked(value: Ros2Aimdk_msgsSrvExecuteActionResource_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvExecuteActionResource_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvExecuteActionResource_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvExecuteActionResource_Request>();
        if(bytes.length > 936)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvExecuteActionResource_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvExecuteActionResource_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvExecuteActionResource_Request()
                                  : changetype<Ros2Aimdk_msgsSrvExecuteActionResource_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/ExecuteActionResource_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvExecuteActionResource_Response
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();

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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvExecuteActionResource_Response
    {
        const value = new Ros2Aimdk_msgsSrvExecuteActionResource_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvExecuteActionResource_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsSrvExecuteActionResource_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvExecuteActionResource_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvExecuteActionResource_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvExecuteActionResource_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvExecuteActionResource_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvExecuteActionResource_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvExecuteActionResource_Response()
                                  : changetype<Ros2Aimdk_msgsSrvExecuteActionResource_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetAllJointState_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetAllJointState_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetAllJointState_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetAllJointState_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetAllJointState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetAllJointState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetAllJointState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetAllJointState_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetAllJointState_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetAllJointState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetAllJointState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetAllJointState_Request() : changetype<Ros2Aimdk_msgsSrvGetAllJointState_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetAllJointState_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetAllJointState_Response
{
    static readonly maxWireBytes: i32 = 2696;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2696;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field head_joints, native scalar aimdk_msgs/msg/JointState. */
    head_joints: Array<Ros2Aimdk_msgsMsgJointState> = new Array<Ros2Aimdk_msgsMsgJointState>();
    /** Exact native field arm_joints, native scalar aimdk_msgs/msg/JointState. */
    arm_joints: Array<Ros2Aimdk_msgsMsgJointState> = new Array<Ros2Aimdk_msgsMsgJointState>();
    /** Exact native field waist_joints, native scalar aimdk_msgs/msg/JointState. */
    waist_joints: Array<Ros2Aimdk_msgsMsgJointState> = new Array<Ros2Aimdk_msgsMsgJointState>();
    /** Exact native field leg_joints, native scalar aimdk_msgs/msg/JointState. */
    leg_joints: Array<Ros2Aimdk_msgsMsgJointState> = new Array<Ros2Aimdk_msgsMsgJointState>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
            if(child < 0)
                return child;
            if(child > 2696 - n)
                return -90;
            n += child;
            if(n > 2696)
                return -90;
        }
        {
            if(this.head_joints.length > 4)
                return -22;
            if(4 > 2696 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.head_joints.length; ++i)
            {
                const child = this.head_joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2696 - n)
                    return -90;
                n += child;
                if(n > 2696)
                    return -90;
            }
        }
        {
            if(this.arm_joints.length > 4)
                return -22;
            if(4 > 2696 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.arm_joints.length; ++i)
            {
                const child = this.arm_joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2696 - n)
                    return -90;
                n += child;
                if(n > 2696)
                    return -90;
            }
        }
        {
            if(this.waist_joints.length > 4)
                return -22;
            if(4 > 2696 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.waist_joints.length; ++i)
            {
                const child = this.waist_joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2696 - n)
                    return -90;
                n += child;
                if(n > 2696)
                    return -90;
            }
        }
        {
            if(this.leg_joints.length > 4)
                return -22;
            if(4 > 2696 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.leg_joints.length; ++i)
            {
                const child = this.leg_joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2696 - n)
                    return -90;
                n += child;
                if(n > 2696)
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
        this.reponse.writeControl(w);
        w.u32(<u32>this.head_joints.length);
        for(let i = 0; i < this.head_joints.length; ++i)
        {
            this.head_joints[i].writeControl(w);
        }
        w.u32(<u32>this.arm_joints.length);
        for(let i = 0; i < this.arm_joints.length; ++i)
        {
            this.arm_joints[i].writeControl(w);
        }
        w.u32(<u32>this.waist_joints.length);
        for(let i = 0; i < this.waist_joints.length; ++i)
        {
            this.waist_joints[i].writeControl(w);
        }
        w.u32(<u32>this.leg_joints.length);
        for(let i = 0; i < this.leg_joints.length; ++i)
        {
            this.leg_joints[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetAllJointState_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetAllJointState_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.head_joints = new Array<Ros2Aimdk_msgsMsgJointState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointState.readControl(r);
                value.head_joints.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.arm_joints = new Array<Ros2Aimdk_msgsMsgJointState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointState.readControl(r);
                value.arm_joints.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.waist_joints = new Array<Ros2Aimdk_msgsMsgJointState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointState.readControl(r);
                value.waist_joints.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.leg_joints = new Array<Ros2Aimdk_msgsMsgJointState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointState.readControl(r);
                value.leg_joints.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetAllJointState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2';
    static readonly maxWireBytes: i32 = 2696;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetAllJointState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetAllJointState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetAllJointState_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetAllJointState_Response>();
        if(bytes.length > 2696)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetAllJointState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetAllJointState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetAllJointState_Response() : changetype<Ros2Aimdk_msgsSrvGetAllJointState_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetCurrentInputSource_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetCurrentInputSource_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetCurrentInputSource_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetCurrentInputSource_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetCurrentInputSource_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetCurrentInputSource_Request()
                                  : changetype<Ros2Aimdk_msgsSrvGetCurrentInputSource_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetCurrentInputSource_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
{
    static readonly maxWireBytes: i32 = 168;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 168;
    /** Exact native field response, native scalar aimdk_msgs/msg/CommonTaskResponse. */
    response: Ros2Aimdk_msgsMsgCommonTaskResponse = new Ros2Aimdk_msgsMsgCommonTaskResponse();
    /** Exact native field input_source, native scalar aimdk_msgs/msg/McInputSource. */
    input_source: Ros2Aimdk_msgsMsgMcInputSource = new Ros2Aimdk_msgsMsgMcInputSource();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.response.wireSize();
            if(child < 0)
                return child;
            if(child > 168 - n)
                return -90;
            n += child;
            if(n > 168)
                return -90;
        }
        {
            const child = this.input_source.wireSize();
            if(child < 0)
                return child;
            if(child > 168 - n)
                return -90;
            n += child;
            if(n > 168)
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
        this.response.writeControl(w);
        this.input_source.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetCurrentInputSource_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonTaskResponse.readControl(r);
            value.response = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcInputSource.readControl(r);
            value.input_source = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetCurrentInputSource_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e';
    static readonly maxWireBytes: i32 = 168;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetCurrentInputSource_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetCurrentInputSource_Response>();
        if(bytes.length > 168)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetCurrentInputSource_Response()
                                  : changetype<Ros2Aimdk_msgsSrvGetCurrentInputSource_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetHandType_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetHandType_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetHandType_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetHandType_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetHandType_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetHandType_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetHandType_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetHandType_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetHandType_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetHandType_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetHandType_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetHandType_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetHandType_Request() : changetype<Ros2Aimdk_msgsSrvGetHandType_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetHandType_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetHandType_Response
{
    static readonly maxWireBytes: i32 = 154;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 154;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field left_hands_type, native scalar aimdk_msgs/msg/HandType. */
    left_hands_type: Ros2Aimdk_msgsMsgHandType = new Ros2Aimdk_msgsMsgHandType();
    /** Exact native field right_hands_type, native scalar aimdk_msgs/msg/HandType. */
    right_hands_type: Ros2Aimdk_msgsMsgHandType = new Ros2Aimdk_msgsMsgHandType();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
            if(child < 0)
                return child;
            if(child > 154 - n)
                return -90;
            n += child;
            if(n > 154)
                return -90;
        }
        {
            const child = this.left_hands_type.wireSize();
            if(child < 0)
                return child;
            if(child > 154 - n)
                return -90;
            n += child;
            if(n > 154)
                return -90;
        }
        {
            const child = this.right_hands_type.wireSize();
            if(child < 0)
                return child;
            if(child > 154 - n)
                return -90;
            n += child;
            if(n > 154)
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
        this.reponse.writeControl(w);
        this.left_hands_type.writeControl(w);
        this.right_hands_type.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetHandType_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetHandType_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHandType.readControl(r);
            value.left_hands_type = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHandType.readControl(r);
            value.right_hands_type = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetHandType_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetHandType_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_a4911dedef84b0d6702905f580cf911b4cde7b14b5beac3b516d3faca3b39726';
    static readonly maxWireBytes: i32 = 154;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetHandType_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetHandType_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetHandType_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetHandType_Response>();
        if(bytes.length > 154)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 26)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetHandType_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetHandType_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetHandType_Response() : changetype<Ros2Aimdk_msgsSrvGetHandType_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetHdsEventHistory_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetHdsEventHistory_Request
{
    static readonly maxWireBytes: i32 = 4398;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4398;
    /** Exact native field header, native scalar aimdk_msgs/msg/RequestHeader. */
    header: Ros2Aimdk_msgsMsgRequestHeader = new Ros2Aimdk_msgsMsgRequestHeader();
    /** Exact native field query, native scalar aimdk_msgs/msg/HdsEventQuery. */
    query: Ros2Aimdk_msgsMsgHdsEventQuery = new Ros2Aimdk_msgsMsgHdsEventQuery();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 4398 - n)
                return -90;
            n += child;
            if(n > 4398)
                return -90;
        }
        {
            const child = this.query.wireSize();
            if(child < 0)
                return child;
            if(child > 4398 - n)
                return -90;
            n += child;
            if(n > 4398)
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
        this.query.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetHdsEventHistory_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetHdsEventHistory_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgRequestHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgHdsEventQuery.readControl(r);
            value.query = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetHdsEventHistory_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_9a2916041770f7392e93bdb21736c5b3b218cbbd65b9533451db64efc670e7da';
    static readonly maxWireBytes: i32 = 4398;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetHdsEventHistory_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetHdsEventHistory_Request>();
        if(bytes.length > 4398)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 46)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetHdsEventHistory_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetHdsEventHistory_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetHdsEventHistory_Request() : changetype<Ros2Aimdk_msgsSrvGetHdsEventHistory_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetHdsEventHistory_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetHdsEventHistory_Response
{
    static readonly maxWireBytes: i32 = 1277;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1277;
    /** Exact native field header, native scalar aimdk_msgs/msg/ResponseHeader. */
    header: Ros2Aimdk_msgsMsgResponseHeader = new Ros2Aimdk_msgsMsgResponseHeader();
    /** Exact native field records, native scalar aimdk_msgs/msg/HdsEventRecord. */
    records: Array<Ros2Aimdk_msgsMsgHdsEventRecord> = new Array<Ros2Aimdk_msgsMsgHdsEventRecord>();
    /** Exact native field total_count, native scalar uint32. */
    total_count: u32 = 0;
    /** Exact native field has_more, native scalar bool. */
    has_more: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 1277 - n)
                return -90;
            n += child;
            if(n > 1277)
                return -90;
        }
        {
            if(this.records.length > 4)
                return -22;
            if(4 > 1277 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.records.length; ++i)
            {
                const child = this.records[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1277 - n)
                    return -90;
                n += child;
                if(n > 1277)
                    return -90;
            }
        }
        {
            if(4 > 1277 - n)
                return -90;
            n += 4;
            if(n > 1277)
                return -90;
        }
        {
            if(1 > 1277 - n)
                return -90;
            n += 1;
            if(n > 1277)
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
        w.u32(<u32>this.records.length);
        for(let i = 0; i < this.records.length; ++i)
        {
            this.records[i].writeControl(w);
        }
        w.integer(<u64>this.total_count, 4);
        w.u8(this.has_more ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetHdsEventHistory_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetHdsEventHistory_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgResponseHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.records = new Array<Ros2Aimdk_msgsMsgHdsEventRecord>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHdsEventRecord.readControl(r);
                value.records.push(decoded);
            }
        }
        {
            const decoded = <u32>r.integer(4);
            value.total_count = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.has_more = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetHdsEventHistory_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_ce2d51d64e2f318ef7e8cfb294969e3e9267f9355780fd3a45acc7a001783bea';
    static readonly maxWireBytes: i32 = 1277;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetHdsEventHistory_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetHdsEventHistory_Response>();
        if(bytes.length > 1277)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 25)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetHdsEventHistory_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetHdsEventHistory_Response() : changetype<Ros2Aimdk_msgsSrvGetHdsEventHistory_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMcAction_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMcAction_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMcAction_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetMcAction_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMcAction_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMcAction_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMcAction_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMcAction_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMcAction_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMcAction_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMcAction_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMcAction_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMcAction_Request() : changetype<Ros2Aimdk_msgsSrvGetMcAction_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMcAction_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMcAction_Response
{
    static readonly maxWireBytes: i32 = 156;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 156;
    /** Exact native field header, native scalar aimdk_msgs/msg/ResponseHeader. */
    header: Ros2Aimdk_msgsMsgResponseHeader = new Ros2Aimdk_msgsMsgResponseHeader();
    /** Exact native field info, native scalar aimdk_msgs/msg/McActionInfo. */
    info: Ros2Aimdk_msgsMsgMcActionInfo = new Ros2Aimdk_msgsMsgMcActionInfo();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 156 - n)
                return -90;
            n += child;
            if(n > 156)
                return -90;
        }
        {
            const child = this.info.wireSize();
            if(child < 0)
                return child;
            if(child > 156 - n)
                return -90;
            n += child;
            if(n > 156)
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
        this.info.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMcAction_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetMcAction_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgResponseHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcActionInfo.readControl(r);
            value.info = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMcAction_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f';
    static readonly maxWireBytes: i32 = 156;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMcAction_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMcAction_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMcAction_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMcAction_Response>();
        if(bytes.length > 156)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMcAction_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMcAction_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMcAction_Response() : changetype<Ros2Aimdk_msgsSrvGetMcAction_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_3ba1d0408e9a60f37a17a790d89bb7f7da0ba8618fc5da56a8d92122989a8b3b';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request()
                                  : changetype<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response
{
    static readonly maxWireBytes: i32 = 328;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 328;
    /** Exact native field header, native scalar aimdk_msgs/msg/ResponseHeader. */
    header: Ros2Aimdk_msgsMsgResponseHeader = new Ros2Aimdk_msgsMsgResponseHeader();
    /** Exact native field current_speed_status, native scalar aimdk_msgs/msg/McLocomotionSpeedStatus. */
    current_speed_status: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
    /** Exact native field none_speed_status, native scalar aimdk_msgs/msg/McLocomotionSpeedStatus. */
    none_speed_status: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
    /** Exact native field low_speed_status, native scalar aimdk_msgs/msg/McLocomotionSpeedStatus. */
    low_speed_status: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
    /** Exact native field medium_speed_status, native scalar aimdk_msgs/msg/McLocomotionSpeedStatus. */
    medium_speed_status: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
    /** Exact native field high_speed_status, native scalar aimdk_msgs/msg/McLocomotionSpeedStatus. */
    high_speed_status: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();
    /** Exact native field step_speed_status, native scalar aimdk_msgs/msg/McLocomotionSpeedStatus. */
    step_speed_status: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus = new Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 328 - n)
                return -90;
            n += child;
            if(n > 328)
                return -90;
        }
        {
            const child = this.current_speed_status.wireSize();
            if(child < 0)
                return child;
            if(child > 328 - n)
                return -90;
            n += child;
            if(n > 328)
                return -90;
        }
        {
            const child = this.none_speed_status.wireSize();
            if(child < 0)
                return child;
            if(child > 328 - n)
                return -90;
            n += child;
            if(n > 328)
                return -90;
        }
        {
            const child = this.low_speed_status.wireSize();
            if(child < 0)
                return child;
            if(child > 328 - n)
                return -90;
            n += child;
            if(n > 328)
                return -90;
        }
        {
            const child = this.medium_speed_status.wireSize();
            if(child < 0)
                return child;
            if(child > 328 - n)
                return -90;
            n += child;
            if(n > 328)
                return -90;
        }
        {
            const child = this.high_speed_status.wireSize();
            if(child < 0)
                return child;
            if(child > 328 - n)
                return -90;
            n += child;
            if(n > 328)
                return -90;
        }
        {
            const child = this.step_speed_status.wireSize();
            if(child < 0)
                return child;
            if(child > 328 - n)
                return -90;
            n += child;
            if(n > 328)
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
        this.current_speed_status.writeControl(w);
        this.none_speed_status.writeControl(w);
        this.low_speed_status.writeControl(w);
        this.medium_speed_status.writeControl(w);
        this.high_speed_status.writeControl(w);
        this.step_speed_status.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgResponseHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.readControl(r);
            value.current_speed_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.readControl(r);
            value.none_speed_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.readControl(r);
            value.low_speed_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.readControl(r);
            value.medium_speed_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.readControl(r);
            value.high_speed_status = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.readControl(r);
            value.step_speed_status = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_6b27a64e371638dc12d2a469f6dbac32d09d2ecd9d5348b96782d94204056d54';
    static readonly maxWireBytes: i32 = 328;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response>();
        if(bytes.length > 328)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 328)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response()
                                  : changetype<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMcPresetMotionState_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonTaskRequest. */
    request: Ros2Aimdk_msgsMsgCommonTaskRequest = new Ros2Aimdk_msgsMsgCommonTaskRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
            if(child < 0)
                return child;
            if(child > 16 - n)
                return -90;
            n += child;
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonTaskRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_7faee35b0b5a2494d668743b5f21e59bb167c553c5f4b61be97eabb8f044e095';
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request()
                                  : changetype<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMcPresetMotionState_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response
{
    static readonly maxWireBytes: i32 = 28;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 28;
    /** Exact native field response, native scalar aimdk_msgs/msg/CommonTaskResponse. */
    response: Ros2Aimdk_msgsMsgCommonTaskResponse = new Ros2Aimdk_msgsMsgCommonTaskResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.response.wireSize();
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
        this.response.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonTaskResponse.readControl(r);
            value.response = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_490aef5363792dc0f0148fe1fbb3e6036238341c41de104445d9d35191e76e30';
    static readonly maxWireBytes: i32 = 28;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response()
                                  : changetype<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMicSourceRequest_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetMicSourceRequest_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMicSourceRequest_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMicSourceRequest_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMicSourceRequest_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMicSourceRequest_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMicSourceRequest_Request() : changetype<Ros2Aimdk_msgsSrvGetMicSourceRequest_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMicSourceRequest_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
{
    static readonly maxWireBytes: i32 = 156;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 156;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field mic_source, native scalar uint32. */
    mic_source: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 156 - n)
                return -90;
            n += child;
            if(n > 156)
                return -90;
        }
        {
            if(4 > 156 - n)
                return -90;
            n += 4;
            if(n > 156)
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
        w.integer(<u64>this.mic_source, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetMicSourceRequest_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.mic_source = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMicSourceRequest_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6';
    static readonly maxWireBytes: i32 = 156;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMicSourceRequest_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMicSourceRequest_Response>();
        if(bytes.length > 156)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMicSourceRequest_Response() : changetype<Ros2Aimdk_msgsSrvGetMicSourceRequest_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMute_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMute_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMute_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetMute_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMute_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMute_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMute_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMute_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMute_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMute_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMute_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMute_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMute_Request() : changetype<Ros2Aimdk_msgsSrvGetMute_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetMute_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetMute_Response
{
    static readonly maxWireBytes: i32 = 153;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 153;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field is_mute, native scalar bool. */
    is_mute: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
            if(child < 0)
                return child;
            if(child > 153 - n)
                return -90;
            n += child;
            if(n > 153)
                return -90;
        }
        {
            if(1 > 153 - n)
                return -90;
            n += 1;
            if(n > 153)
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
        this.reponse.writeControl(w);
        w.u8(this.is_mute ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetMute_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetMute_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.is_mute = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetMute_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetMute_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42';
    static readonly maxWireBytes: i32 = 153;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetMute_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetMute_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetMute_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetMute_Response>();
        if(bytes.length > 153)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 25)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetMute_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetMute_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetMute_Response() : changetype<Ros2Aimdk_msgsSrvGetMute_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetRobotResources_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetRobotResources_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetRobotResources_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetRobotResources_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetRobotResources_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetRobotResources_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetRobotResources_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetRobotResources_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetRobotResources_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetRobotResources_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetRobotResources_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetRobotResources_Request() : changetype<Ros2Aimdk_msgsSrvGetRobotResources_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetRobotResources_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetRobotResources_Response
{
    static readonly maxWireBytes: i32 = 10236;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10236;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field robot_resources, native scalar aimdk_msgs/msg/RobotResource. */
    robot_resources: Array<Ros2Aimdk_msgsMsgRobotResource> = new Array<Ros2Aimdk_msgsMsgRobotResource>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 10236 - n)
                return -90;
            n += child;
            if(n > 10236)
                return -90;
        }
        {
            if(this.robot_resources.length > 4)
                return -22;
            if(4 > 10236 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.robot_resources.length; ++i)
            {
                const child = this.robot_resources[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10236 - n)
                    return -90;
                n += child;
                if(n > 10236)
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
        w.u32(<u32>this.robot_resources.length);
        for(let i = 0; i < this.robot_resources.length; ++i)
        {
            this.robot_resources[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetRobotResources_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetRobotResources_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.robot_resources = new Array<Ros2Aimdk_msgsMsgRobotResource>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgRobotResource.readControl(r);
                value.robot_resources.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetRobotResources_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91';
    static readonly maxWireBytes: i32 = 10236;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetRobotResources_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetRobotResources_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetRobotResources_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetRobotResources_Response>();
        if(bytes.length > 10236)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetRobotResources_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetRobotResources_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetRobotResources_Response() : changetype<Ros2Aimdk_msgsSrvGetRobotResources_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetStoredMapByName_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetStoredMapByName_Request
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** Exact native field map_name, native scalar string. */
    map_name: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 272 - n)
                return -90;
            n += child;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.map_name) || this.map_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.map_name);
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
        this.header.writeControl(w);
        w.text(this.map_name);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetStoredMapByName_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetStoredMapByName_Request();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
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
            value.map_name = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetStoredMapByName_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetStoredMapByName_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetStoredMapByName_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetStoredMapByName_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetStoredMapByName_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetStoredMapByName_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetStoredMapByName_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetStoredMapByName_Request() : changetype<Ros2Aimdk_msgsSrvGetStoredMapByName_Request>(out.value);
    }
}

/** Complete original nav_msgs/msg/MapMetaData; spellings are published in generation proof. */
export class Ros2Nav_msgsMsgMapMetaData
{
    static readonly maxWireBytes: i32 = 76;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 76;
    /** Exact native field map_load_time, native scalar builtin_interfaces/msg/Time. */
    map_load_time: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /** Exact native field resolution, native scalar float32. */
    resolution: f32 = 0;
    /** Exact native field width, native scalar uint32. */
    width: u32 = 0;
    /** Exact native field height, native scalar uint32. */
    height: u32 = 0;
    /** Exact native field origin, native scalar geometry_msgs/msg/Pose. */
    origin: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.map_load_time.wireSize();
            if(child < 0)
                return child;
            if(child > 76 - n)
                return -90;
            n += child;
            if(n > 76)
                return -90;
        }
        {
            if(!isFinite(this.resolution))
                return -22;
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
        {
            if(4 > 76 - n)
                return -90;
            n += 4;
            if(n > 76)
                return -90;
        }
        {
            const child = this.origin.wireSize();
            if(child < 0)
                return child;
            if(child > 76 - n)
                return -90;
            n += child;
            if(n > 76)
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
        this.map_load_time.writeControl(w);
        w.integer(<u64>reinterpret<u32>(this.resolution), 4);
        w.integer(<u64>this.width, 4);
        w.integer(<u64>this.height, 4);
        this.origin.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Nav_msgsMsgMapMetaData
    {
        const value = new Ros2Nav_msgsMsgMapMetaData();
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.map_load_time = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.resolution = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.width = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.height = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose.readControl(r);
            value.origin = decoded;
        }
        return value;
    }
}

export class Ros2Nav_msgsMsgMapMetaDataCodec implements VendorCodec<Ros2Nav_msgsMsgMapMetaData>
{
    static readonly codecIdentity: string = 'UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009';
    static readonly maxWireBytes: i32 = 76;

    encodeChecked(value: Ros2Nav_msgsMsgMapMetaData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Nav_msgsMsgMapMetaData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Nav_msgsMsgMapMetaData>
    {
        const out = new VendorDecoded<Ros2Nav_msgsMsgMapMetaData>();
        if(bytes.length > 76)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 76)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Nav_msgsMsgMapMetaData.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Nav_msgsMsgMapMetaData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Nav_msgsMsgMapMetaData() : changetype<Ros2Nav_msgsMsgMapMetaData>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetStoredMapByName_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetStoredMapByName_Response
{
    static readonly maxWireBytes: i32 = 3400;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 3400;
    /** Exact native field code, native scalar uint64. */
    code: u64 = 0;
    /** Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** Exact native field map_info, native scalar nav_msgs/msg/MapMetaData. */
    map_info: Ros2Nav_msgsMsgMapMetaData = new Ros2Nav_msgsMsgMapMetaData();
    /** Exact native field map_version, native scalar uint64. */
    map_version: u64 = 0;
    /** Exact native field map_path, native scalar string. */
    map_path: string = '';
    /** Exact native field data, native scalar int8. */
    data: Array<i8> = new Array<i8>();
    /** Exact native field navi_points, native scalar aimdk_msgs/msg/NaviPoint. */
    navi_points: Array<Ros2Aimdk_msgsMsgNaviPoint> = new Array<Ros2Aimdk_msgsMsgNaviPoint>();
    /** Exact native field qr_points, native scalar aimdk_msgs/msg/QRPoint. */
    qr_points: Array<Ros2Aimdk_msgsMsgQRPoint> = new Array<Ros2Aimdk_msgsMsgQRPoint>();
    /** Exact native field hr_points, native scalar aimdk_msgs/msg/HRPoint. */
    hr_points: Array<Ros2Aimdk_msgsMsgHRPoint> = new Array<Ros2Aimdk_msgsMsgHRPoint>();
    /** Exact native field paths, native scalar aimdk_msgs/msg/Path. */
    paths: Array<Ros2Aimdk_msgsMsgPath> = new Array<Ros2Aimdk_msgsMsgPath>();
    /** Exact native field regions, native scalar aimdk_msgs/msg/Region. */
    regions: Array<Ros2Aimdk_msgsMsgRegion> = new Array<Ros2Aimdk_msgsMsgRegion>();
    /** Exact native field map_id, native scalar uint64. */
    map_id: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 3400 - n)
                return -90;
            n += 8;
            if(n > 3400)
                return -90;
        }
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 3400 - n)
                return -90;
            n += child;
            if(n > 3400)
                return -90;
        }
        {
            const child = this.map_info.wireSize();
            if(child < 0)
                return child;
            if(child > 3400 - n)
                return -90;
            n += child;
            if(n > 3400)
                return -90;
        }
        {
            if(8 > 3400 - n)
                return -90;
            n += 8;
            if(n > 3400)
                return -90;
        }
        {
            if(!validUnicode(this.map_path) || this.map_path.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.map_path);
            if(size > 128)
                return -22;
            if(4 + size > 3400 - n)
                return -90;
            n += 4 + size;
            if(n > 3400)
                return -90;
        }
        {
            if(this.data.length > 256)
                return -22;
            if(4 > 3400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                if(1 > 3400 - n)
                    return -90;
                n += 1;
                if(n > 3400)
                    return -90;
            }
        }
        {
            if(this.navi_points.length > 4)
                return -22;
            if(4 > 3400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.navi_points.length; ++i)
            {
                const child = this.navi_points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 3400 - n)
                    return -90;
                n += child;
                if(n > 3400)
                    return -90;
            }
        }
        {
            if(this.qr_points.length > 4)
                return -22;
            if(4 > 3400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.qr_points.length; ++i)
            {
                const child = this.qr_points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 3400 - n)
                    return -90;
                n += child;
                if(n > 3400)
                    return -90;
            }
        }
        {
            if(this.hr_points.length > 4)
                return -22;
            if(4 > 3400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.hr_points.length; ++i)
            {
                const child = this.hr_points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 3400 - n)
                    return -90;
                n += child;
                if(n > 3400)
                    return -90;
            }
        }
        {
            if(this.paths.length > 4)
                return -22;
            if(4 > 3400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.paths.length; ++i)
            {
                const child = this.paths[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 3400 - n)
                    return -90;
                n += child;
                if(n > 3400)
                    return -90;
            }
        }
        {
            if(this.regions.length > 4)
                return -22;
            if(4 > 3400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.regions.length; ++i)
            {
                const child = this.regions[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 3400 - n)
                    return -90;
                n += child;
                if(n > 3400)
                    return -90;
            }
        }
        {
            if(8 > 3400 - n)
                return -90;
            n += 8;
            if(n > 3400)
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
        w.integer(<u64>this.code, 8);
        this.header.writeControl(w);
        this.map_info.writeControl(w);
        w.integer(<u64>this.map_version, 8);
        w.text(this.map_path);
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            w.integer(<u64>this.data[i], 1);
        }
        w.u32(<u32>this.navi_points.length);
        for(let i = 0; i < this.navi_points.length; ++i)
        {
            this.navi_points[i].writeControl(w);
        }
        w.u32(<u32>this.qr_points.length);
        for(let i = 0; i < this.qr_points.length; ++i)
        {
            this.qr_points[i].writeControl(w);
        }
        w.u32(<u32>this.hr_points.length);
        for(let i = 0; i < this.hr_points.length; ++i)
        {
            this.hr_points[i].writeControl(w);
        }
        w.u32(<u32>this.paths.length);
        for(let i = 0; i < this.paths.length; ++i)
        {
            this.paths[i].writeControl(w);
        }
        w.u32(<u32>this.regions.length);
        for(let i = 0; i < this.regions.length; ++i)
        {
            this.regions[i].writeControl(w);
        }
        w.integer(<u64>this.map_id, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetStoredMapByName_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetStoredMapByName_Response();
        {
            const decoded = <u64>r.integer(8);
            value.code = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Nav_msgsMsgMapMetaData.readControl(r);
            value.map_info = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.map_version = decoded;
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
            value.map_path = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.data.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.navi_points = new Array<Ros2Aimdk_msgsMsgNaviPoint>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgNaviPoint.readControl(r);
                value.navi_points.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.qr_points = new Array<Ros2Aimdk_msgsMsgQRPoint>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgQRPoint.readControl(r);
                value.qr_points.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.hr_points = new Array<Ros2Aimdk_msgsMsgHRPoint>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHRPoint.readControl(r);
                value.hr_points.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.paths = new Array<Ros2Aimdk_msgsMsgPath>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgPath.readControl(r);
                value.paths.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.regions = new Array<Ros2Aimdk_msgsMsgRegion>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgRegion.readControl(r);
                value.regions.push(decoded);
            }
        }
        {
            const decoded = <u64>r.integer(8);
            value.map_id = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetStoredMapByName_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb';
    static readonly maxWireBytes: i32 = 3400;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetStoredMapByName_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetStoredMapByName_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetStoredMapByName_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetStoredMapByName_Response>();
        if(bytes.length > 3400)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 140)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetStoredMapByName_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetStoredMapByName_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetStoredMapByName_Response() : changetype<Ros2Aimdk_msgsSrvGetStoredMapByName_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetSystemState_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetSystemState_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetSystemState_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetSystemState_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetSystemState_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetSystemState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetSystemState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetSystemState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetSystemState_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetSystemState_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetSystemState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetSystemState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetSystemState_Request() : changetype<Ros2Aimdk_msgsSrvGetSystemState_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetSystemState_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetSystemState_Response
{
    static readonly maxWireBytes: i32 = 285;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 285;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field cur_state, native scalar string. */
    cur_state: string = '';
    /** Exact native field curr_status, native scalar aimdk_msgs/msg/SystemStatus. */
    curr_status: Ros2Aimdk_msgsMsgSystemStatus = new Ros2Aimdk_msgsMsgSystemStatus();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
                return -90;
        }
        {
            if(!validUnicode(this.cur_state) || this.cur_state.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cur_state);
            if(size > 128)
                return -22;
            if(4 + size > 285 - n)
                return -90;
            n += 4 + size;
            if(n > 285)
                return -90;
        }
        {
            const child = this.curr_status.wireSize();
            if(child < 0)
                return child;
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
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
        w.text(this.cur_state);
        this.curr_status.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetSystemState_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetSystemState_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
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
            value.cur_state = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgSystemStatus.readControl(r);
            value.curr_status = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetSystemState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039';
    static readonly maxWireBytes: i32 = 285;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetSystemState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetSystemState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetSystemState_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetSystemState_Response>();
        if(bytes.length > 285)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetSystemState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetSystemState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetSystemState_Response() : changetype<Ros2Aimdk_msgsSrvGetSystemState_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetVolume_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetVolume_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetVolume_Request
    {
        const value = new Ros2Aimdk_msgsSrvGetVolume_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetVolume_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetVolume_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetVolume_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetVolume_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetVolume_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetVolume_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetVolume_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetVolume_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetVolume_Request() : changetype<Ros2Aimdk_msgsSrvGetVolume_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GetVolume_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGetVolume_Response
{
    static readonly maxWireBytes: i32 = 156;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 156;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field audio_volume, native scalar uint32. */
    audio_volume: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
            if(child < 0)
                return child;
            if(child > 156 - n)
                return -90;
            n += child;
            if(n > 156)
                return -90;
        }
        {
            if(4 > 156 - n)
                return -90;
            n += 4;
            if(n > 156)
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
        this.reponse.writeControl(w);
        w.integer(<u64>this.audio_volume, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGetVolume_Response
    {
        const value = new Ros2Aimdk_msgsSrvGetVolume_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.audio_volume = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGetVolume_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGetVolume_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266';
    static readonly maxWireBytes: i32 = 156;

    encodeChecked(value: Ros2Aimdk_msgsSrvGetVolume_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGetVolume_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGetVolume_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGetVolume_Response>();
        if(bytes.length > 156)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGetVolume_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGetVolume_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGetVolume_Response() : changetype<Ros2Aimdk_msgsSrvGetVolume_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GroupControlTimeSync_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGroupControlTimeSync_Request
{
    static readonly maxWireBytes: i32 = 540;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 540;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field slaves, native scalar aimdk_msgs/msg/SlaveDevice. */
    slaves: Array<Ros2Aimdk_msgsMsgSlaveDevice> = new Array<Ros2Aimdk_msgsMsgSlaveDevice>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 540 - n)
                return -90;
            n += child;
            if(n > 540)
                return -90;
        }
        {
            if(this.slaves.length > 4)
                return -22;
            if(4 > 540 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.slaves.length; ++i)
            {
                const child = this.slaves[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 540 - n)
                    return -90;
                n += child;
                if(n > 540)
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
        w.u32(<u32>this.slaves.length);
        for(let i = 0; i < this.slaves.length; ++i)
        {
            this.slaves[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGroupControlTimeSync_Request
    {
        const value = new Ros2Aimdk_msgsSrvGroupControlTimeSync_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.slaves = new Array<Ros2Aimdk_msgsMsgSlaveDevice>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgSlaveDevice.readControl(r);
                value.slaves.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvGroupControlTimeSync_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_00f371868d2cf78c68a9824a418f7e3376c959b1f600ee1906b75ea7c6eafedd';
    static readonly maxWireBytes: i32 = 540;

    encodeChecked(value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGroupControlTimeSync_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGroupControlTimeSync_Request>();
        if(bytes.length > 540)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGroupControlTimeSync_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGroupControlTimeSync_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGroupControlTimeSync_Request() : changetype<Ros2Aimdk_msgsSrvGroupControlTimeSync_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/GroupControlTimeSync_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvGroupControlTimeSync_Response
{
    static readonly maxWireBytes: i32 = 288;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 288;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field error_code, native scalar int32. */
    error_code: i32 = 0;
    /** Exact native field error_msg, native scalar string. */
    error_msg: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 288 - n)
                return -90;
            n += child;
            if(n > 288)
                return -90;
        }
        {
            if(4 > 288 - n)
                return -90;
            n += 4;
            if(n > 288)
                return -90;
        }
        {
            if(!validUnicode(this.error_msg) || this.error_msg.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error_msg);
            if(size > 128)
                return -22;
            if(4 + size > 288 - n)
                return -90;
            n += 4 + size;
            if(n > 288)
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
        w.integer(<u64>this.error_code, 4);
        w.text(this.error_msg);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvGroupControlTimeSync_Response
    {
        const value = new Ros2Aimdk_msgsSrvGroupControlTimeSync_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.error_code = decoded;
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
            value.error_msg = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvGroupControlTimeSync_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_16bf8f1d44dcecd1263dcd1b48385fe079fa29893a03e5778797d24e361695ec';
    static readonly maxWireBytes: i32 = 288;

    encodeChecked(value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvGroupControlTimeSync_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvGroupControlTimeSync_Response>();
        if(bytes.length > 288)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 32)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvGroupControlTimeSync_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvGroupControlTimeSync_Response()
                                  : changetype<Ros2Aimdk_msgsSrvGroupControlTimeSync_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/MigrateSystemState_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvMigrateSystemState_Request
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field state, native scalar string. */
    state: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 140 - n)
                return -90;
            n += child;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.state) || this.state.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.state);
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
        this.header.writeControl(w);
        w.text(this.state);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvMigrateSystemState_Request
    {
        const value = new Ros2Aimdk_msgsSrvMigrateSystemState_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
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
            value.state = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvMigrateSystemState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Aimdk_msgsSrvMigrateSystemState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvMigrateSystemState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvMigrateSystemState_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvMigrateSystemState_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvMigrateSystemState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvMigrateSystemState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvMigrateSystemState_Request() : changetype<Ros2Aimdk_msgsSrvMigrateSystemState_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/MigrateSystemState_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvMigrateSystemState_Response
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();

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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvMigrateSystemState_Response
    {
        const value = new Ros2Aimdk_msgsSrvMigrateSystemState_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvMigrateSystemState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsSrvMigrateSystemState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvMigrateSystemState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvMigrateSystemState_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvMigrateSystemState_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvMigrateSystemState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvMigrateSystemState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvMigrateSystemState_Response() : changetype<Ros2Aimdk_msgsSrvMigrateSystemState_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayAudioFile_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayAudioFile_Request
{
    static readonly maxWireBytes: i32 = 693;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 693;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field file, native scalar aimdk_msgs/msg/AudioFile. */
    file: Ros2Aimdk_msgsMsgAudioFile = new Ros2Aimdk_msgsMsgAudioFile();
    /** Exact native field play_stamps, native scalar builtin_interfaces/msg/Time. */
    play_stamps: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
            if(child < 0)
                return child;
            if(child > 693 - n)
                return -90;
            n += child;
            if(n > 693)
                return -90;
        }
        {
            const child = this.file.wireSize();
            if(child < 0)
                return child;
            if(child > 693 - n)
                return -90;
            n += child;
            if(n > 693)
                return -90;
        }
        {
            const child = this.play_stamps.wireSize();
            if(child < 0)
                return child;
            if(child > 693 - n)
                return -90;
            n += child;
            if(n > 693)
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
        this.request.writeControl(w);
        this.file.writeControl(w);
        this.play_stamps.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayAudioFile_Request
    {
        const value = new Ros2Aimdk_msgsSrvPlayAudioFile_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgAudioFile.readControl(r);
            value.file = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.play_stamps = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayAudioFile_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1';
    static readonly maxWireBytes: i32 = 693;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayAudioFile_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayAudioFile_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayAudioFile_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayAudioFile_Request>();
        if(bytes.length > 693)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 53)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayAudioFile_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayAudioFile_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayAudioFile_Request() : changetype<Ros2Aimdk_msgsSrvPlayAudioFile_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayAudioFile_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayAudioFile_Response
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
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
        this.reponse.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayAudioFile_Response
    {
        const value = new Ros2Aimdk_msgsSrvPlayAudioFile_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayAudioFile_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayAudioFile_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayAudioFile_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayAudioFile_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayAudioFile_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayAudioFile_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayAudioFile_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayAudioFile_Response() : changetype<Ros2Aimdk_msgsSrvPlayAudioFile_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayEmoji_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayEmoji_Request
{
    static readonly EMOTION_UNKNOWN: u8 = 0;
    static readonly EMOTION_IDLE_BLINK: u8 = 1;
    static readonly EMOTION_IDLE_CALM_1: u8 = 10;
    static readonly EMOTION_IDLE_CALM_2: u8 = 11;
    static readonly EMOTION_IDLE_GAME: u8 = 20;
    static readonly EMOTION_IDLE_CUTE_1: u8 = 30;
    static readonly EMOTION_IDLE_CUTE_2: u8 = 31;
    static readonly EMOTION_IDLE_CUTE_3: u8 = 32;
    static readonly EMOTION_IDLE_CUTE_4: u8 = 33;
    static readonly EMOTION_EYE_CLOSE: u8 = 40;
    static readonly EMOTION_EYE_OPEN: u8 = 50;
    static readonly EMOTION_EYE_BORING_1: u8 = 60;
    static readonly EMOTION_EYE_ABNORMAL: u8 = 70;
    static readonly EMOTION_EYE_SLEEPY: u8 = 80;
    static readonly EMOTION_EYE_HAPPY: u8 = 90;
    static readonly EMOTION_EYE_EXTREMEHAPPY_1: u8 = 100;
    static readonly EMOTION_EYE_EXTREMEHAPPY_2: u8 = 101;
    static readonly EMOTION_EYE_SAD: u8 = 110;
    static readonly EMOTION_EYE_SYMPATHY: u8 = 120;
    static readonly EMOTION_EYE_CONFUSE: u8 = 130;
    static readonly EMOTION_EYE_SHOCK: u8 = 140;
    static readonly EMOTION_EYE_ACTCUTE: u8 = 150;
    static readonly EMOTION_EYE_SERIOUS: u8 = 160;
    static readonly EMOTION_EYE_THINKING: u8 = 170;
    static readonly EMOTION_EYE_ANGRY: u8 = 180;
    static readonly EMOTION_EYE_EXTREMEANGRY: u8 = 190;
    static readonly EMOTION_EYE_ADORE: u8 = 200;
    static readonly EMOTION_EYE_EXTREMEADORE: u8 = 210;
    static readonly EMOTION_EYE_CHARGE: u8 = 220;
    static readonly EMOTION_MODE_ONCE: u8 = 1;
    static readonly EMOTION_MODE_LOOP: u8 = 2;
    static readonly maxWireBytes: i32 = 14;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 14;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field emotion_id, native scalar uint8. */
    emotion_id: u8 = 0;
    /** Exact native field mode, native scalar uint8. */
    mode: u8 = 0;
    /** Exact native field priority, native scalar int32. */
    priority: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 14 - n)
                return -90;
            n += child;
            if(n > 14)
                return -90;
        }
        {
            if(1 > 14 - n)
                return -90;
            n += 1;
            if(n > 14)
                return -90;
        }
        {
            if(1 > 14 - n)
                return -90;
            n += 1;
            if(n > 14)
                return -90;
        }
        {
            if(4 > 14 - n)
                return -90;
            n += 4;
            if(n > 14)
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
        w.integer(<u64>this.emotion_id, 1);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.priority, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayEmoji_Request
    {
        const value = new Ros2Aimdk_msgsSrvPlayEmoji_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.emotion_id = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayEmoji_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43';
    static readonly maxWireBytes: i32 = 14;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayEmoji_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayEmoji_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayEmoji_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayEmoji_Request>();
        if(bytes.length > 14)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 14)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayEmoji_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayEmoji_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayEmoji_Request() : changetype<Ros2Aimdk_msgsSrvPlayEmoji_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayEmoji_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayEmoji_Response
{
    static readonly maxWireBytes: i32 = 285;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 285;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field success, native scalar bool. */
    success: bool = false;
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
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
                return -90;
        }
        {
            if(1 > 285 - n)
                return -90;
            n += 1;
            if(n > 285)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 285 - n)
                return -90;
            n += 4 + size;
            if(n > 285)
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
        w.u8(this.success ? 1 : 0);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayEmoji_Response
    {
        const value = new Ros2Aimdk_msgsSrvPlayEmoji_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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

export class Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayEmoji_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9';
    static readonly maxWireBytes: i32 = 285;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayEmoji_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayEmoji_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayEmoji_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayEmoji_Response>();
        if(bytes.length > 285)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayEmoji_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayEmoji_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayEmoji_Response() : changetype<Ros2Aimdk_msgsSrvPlayEmoji_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayEmojiGroup_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayEmojiGroup_Request
{
    static readonly EMOTION_UNKNOWN: u8 = 0;
    static readonly EMOTION_IDLE_BLINK: u8 = 1;
    static readonly EMOTION_IDLE_CALM_1: u8 = 10;
    static readonly EMOTION_IDLE_CALM_2: u8 = 11;
    static readonly EMOTION_IDLE_GAME: u8 = 20;
    static readonly EMOTION_IDLE_CUTE_1: u8 = 30;
    static readonly EMOTION_IDLE_CUTE_2: u8 = 31;
    static readonly EMOTION_IDLE_CUTE_3: u8 = 32;
    static readonly EMOTION_IDLE_CUTE_4: u8 = 33;
    static readonly EMOTION_EYE_CLOSE: u8 = 40;
    static readonly EMOTION_EYE_OPEN: u8 = 50;
    static readonly EMOTION_EYE_BORING_1: u8 = 60;
    static readonly EMOTION_EYE_ABNORMAL: u8 = 70;
    static readonly EMOTION_EYE_SLEEPY: u8 = 80;
    static readonly EMOTION_EYE_HAPPY: u8 = 90;
    static readonly EMOTION_EYE_EXTREMEHAPPY_1: u8 = 100;
    static readonly EMOTION_EYE_EXTREMEHAPPY_2: u8 = 101;
    static readonly EMOTION_EYE_SAD: u8 = 110;
    static readonly EMOTION_EYE_SYMPATHY: u8 = 120;
    static readonly EMOTION_EYE_CONFUSE: u8 = 130;
    static readonly EMOTION_EYE_SHOCK: u8 = 140;
    static readonly EMOTION_EYE_ACTCUTE: u8 = 150;
    static readonly EMOTION_EYE_SERIOUS: u8 = 160;
    static readonly EMOTION_EYE_THINKING: u8 = 170;
    static readonly EMOTION_EYE_ANGRY: u8 = 180;
    static readonly EMOTION_EYE_EXTREMEANGRY: u8 = 190;
    static readonly EMOTION_EYE_ADORE: u8 = 200;
    static readonly EMOTION_EYE_EXTREMEADORE: u8 = 210;
    static readonly EMOTION_EYE_CHARGE: u8 = 220;
    static readonly EMOTION_MODE_ONCE: u8 = 1;
    static readonly EMOTION_MODE_LOOP: u8 = 2;
    static readonly maxWireBytes: i32 = 273;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 273;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field emotion_ids, native scalar uint8. */
    emotion_ids: Array<u8> = new Array<u8>();
    /** Exact native field mode, native scalar uint8. */
    mode: u8 = 0;
    /** Exact native field priority, native scalar int32. */
    priority: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 273 - n)
                return -90;
            n += child;
            if(n > 273)
                return -90;
        }
        {
            if(this.emotion_ids.length > 256)
                return -22;
            if(4 > 273 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.emotion_ids.length; ++i)
            {
                if(1 > 273 - n)
                    return -90;
                n += 1;
                if(n > 273)
                    return -90;
            }
        }
        {
            if(1 > 273 - n)
                return -90;
            n += 1;
            if(n > 273)
                return -90;
        }
        {
            if(4 > 273 - n)
                return -90;
            n += 4;
            if(n > 273)
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
        w.u32(<u32>this.emotion_ids.length);
        for(let i = 0; i < this.emotion_ids.length; ++i)
        {
            w.integer(<u64>this.emotion_ids[i], 1);
        }
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.priority, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayEmojiGroup_Request
    {
        const value = new Ros2Aimdk_msgsSrvPlayEmojiGroup_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.emotion_ids = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.emotion_ids.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayEmojiGroup_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_c696b5327d31945737301b57784797762832e143c4ccb89fba9228bc47402223';
    static readonly maxWireBytes: i32 = 273;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayEmojiGroup_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayEmojiGroup_Request>();
        if(bytes.length > 273)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 17)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayEmojiGroup_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayEmojiGroup_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayEmojiGroup_Request() : changetype<Ros2Aimdk_msgsSrvPlayEmojiGroup_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayEmojiGroup_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayEmojiGroup_Response
{
    static readonly maxWireBytes: i32 = 285;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 285;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field success, native scalar bool. */
    success: bool = false;
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
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
                return -90;
        }
        {
            if(1 > 285 - n)
                return -90;
            n += 1;
            if(n > 285)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 285 - n)
                return -90;
            n += 4 + size;
            if(n > 285)
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
        w.u8(this.success ? 1 : 0);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayEmojiGroup_Response
    {
        const value = new Ros2Aimdk_msgsSrvPlayEmojiGroup_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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

export class Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayEmojiGroup_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_e12fb46d3a4912ee89cedafc27fffd1b984d68407e3ae45aef0f8c1e47a4d94d';
    static readonly maxWireBytes: i32 = 285;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayEmojiGroup_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayEmojiGroup_Response>();
        if(bytes.length > 285)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayEmojiGroup_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayEmojiGroup_Response() : changetype<Ros2Aimdk_msgsSrvPlayEmojiGroup_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayTts_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayTts_Request
{
    static readonly maxWireBytes: i32 = 410;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 410;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field tts_req, native scalar aimdk_msgs/msg/PlayTtsRequest. */
    tts_req: Ros2Aimdk_msgsMsgPlayTtsRequest = new Ros2Aimdk_msgsMsgPlayTtsRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 410 - n)
                return -90;
            n += child;
            if(n > 410)
                return -90;
        }
        {
            const child = this.tts_req.wireSize();
            if(child < 0)
                return child;
            if(child > 410 - n)
                return -90;
            n += child;
            if(n > 410)
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
        this.tts_req.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayTts_Request
    {
        const value = new Ros2Aimdk_msgsSrvPlayTts_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgPlayTtsRequest.readControl(r);
            value.tts_req = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayTts_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayTts_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989';
    static readonly maxWireBytes: i32 = 410;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayTts_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayTts_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayTts_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayTts_Request>();
        if(bytes.length > 410)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 26)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayTts_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayTts_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayTts_Request() : changetype<Ros2Aimdk_msgsSrvPlayTts_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayTts_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayTts_Response
{
    static readonly maxWireBytes: i32 = 691;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 691;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field tts_resp, native scalar aimdk_msgs/msg/PlayTtsResponse. */
    tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse = new Ros2Aimdk_msgsMsgPlayTtsResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 691 - n)
                return -90;
            n += child;
            if(n > 691)
                return -90;
        }
        {
            const child = this.tts_resp.wireSize();
            if(child < 0)
                return child;
            if(child > 691 - n)
                return -90;
            n += child;
            if(n > 691)
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
        this.tts_resp.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayTts_Response
    {
        const value = new Ros2Aimdk_msgsSrvPlayTts_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgPlayTtsResponse.readControl(r);
            value.tts_resp = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayTts_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayTts_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_1d77e2009a7a486e392cec8aa4a045257140839b22ba4001c1c06d0deffab57d';
    static readonly maxWireBytes: i32 = 691;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayTts_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayTts_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayTts_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayTts_Response>();
        if(bytes.length > 691)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 51)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayTts_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayTts_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayTts_Response() : changetype<Ros2Aimdk_msgsSrvPlayTts_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayVideo_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayVideo_Request
{
    static readonly EMOTION_MODE_ONCE: u8 = 1;
    static readonly EMOTION_MODE_LOOP: u8 = 2;
    static readonly maxWireBytes: i32 = 145;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 145;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field video_path, native scalar string. */
    video_path: string = '';
    /** Exact native field mode, native scalar uint8. */
    mode: u8 = 0;
    /** Exact native field priority, native scalar int32. */
    priority: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 145 - n)
                return -90;
            n += child;
            if(n > 145)
                return -90;
        }
        {
            if(!validUnicode(this.video_path) || this.video_path.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.video_path);
            if(size > 128)
                return -22;
            if(4 + size > 145 - n)
                return -90;
            n += 4 + size;
            if(n > 145)
                return -90;
        }
        {
            if(1 > 145 - n)
                return -90;
            n += 1;
            if(n > 145)
                return -90;
        }
        {
            if(4 > 145 - n)
                return -90;
            n += 4;
            if(n > 145)
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
        w.text(this.video_path);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.priority, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayVideo_Request
    {
        const value = new Ros2Aimdk_msgsSrvPlayVideo_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
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
            value.video_path = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayVideo_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayVideo_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878';
    static readonly maxWireBytes: i32 = 145;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayVideo_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayVideo_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayVideo_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayVideo_Request>();
        if(bytes.length > 145)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 17)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayVideo_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayVideo_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayVideo_Request() : changetype<Ros2Aimdk_msgsSrvPlayVideo_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayVideo_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayVideo_Response
{
    static readonly maxWireBytes: i32 = 285;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 285;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field success, native scalar bool. */
    success: bool = false;
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
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
                return -90;
        }
        {
            if(1 > 285 - n)
                return -90;
            n += 1;
            if(n > 285)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 285 - n)
                return -90;
            n += 4 + size;
            if(n > 285)
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
        w.u8(this.success ? 1 : 0);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayVideo_Response
    {
        const value = new Ros2Aimdk_msgsSrvPlayVideo_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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

export class Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayVideo_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627';
    static readonly maxWireBytes: i32 = 285;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayVideo_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayVideo_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayVideo_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayVideo_Response>();
        if(bytes.length > 285)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayVideo_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayVideo_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayVideo_Response() : changetype<Ros2Aimdk_msgsSrvPlayVideo_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayVideoGroup_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayVideoGroup_Request
{
    static readonly EMOTION_MODE_ONCE: u8 = 1;
    static readonly EMOTION_MODE_LOOP: u8 = 2;
    static readonly maxWireBytes: i32 = 2129;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2129;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field video_path_list, native scalar string. */
    video_path_list: Array<string> = new Array<string>();
    /** Exact native field mode, native scalar uint8. */
    mode: u8 = 0;
    /** Exact native field priority, native scalar int32. */
    priority: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 2129 - n)
                return -90;
            n += child;
            if(n > 2129)
                return -90;
        }
        {
            if(this.video_path_list.length > 16)
                return -22;
            if(4 > 2129 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.video_path_list.length; ++i)
            {
                if(!validUnicode(this.video_path_list[i]) || this.video_path_list[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.video_path_list[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 2129 - n)
                    return -90;
                n += 4 + size;
                if(n > 2129)
                    return -90;
            }
        }
        {
            if(1 > 2129 - n)
                return -90;
            n += 1;
            if(n > 2129)
                return -90;
        }
        {
            if(4 > 2129 - n)
                return -90;
            n += 4;
            if(n > 2129)
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
        w.u32(<u32>this.video_path_list.length);
        for(let i = 0; i < this.video_path_list.length; ++i)
        {
            w.text(this.video_path_list[i]);
        }
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.priority, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayVideoGroup_Request
    {
        const value = new Ros2Aimdk_msgsSrvPlayVideoGroup_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.video_path_list = new Array<string>();
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
                value.video_path_list.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayVideoGroup_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473';
    static readonly maxWireBytes: i32 = 2129;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayVideoGroup_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayVideoGroup_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayVideoGroup_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayVideoGroup_Request>();
        if(bytes.length > 2129)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 17)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayVideoGroup_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayVideoGroup_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayVideoGroup_Request() : changetype<Ros2Aimdk_msgsSrvPlayVideoGroup_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayVideoGroup_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayVideoGroup_Response
{
    static readonly maxWireBytes: i32 = 285;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 285;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field success, native scalar bool. */
    success: bool = false;
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
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
                return -90;
        }
        {
            if(1 > 285 - n)
                return -90;
            n += 1;
            if(n > 285)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 285 - n)
                return -90;
            n += 4 + size;
            if(n > 285)
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
        w.u8(this.success ? 1 : 0);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayVideoGroup_Response
    {
        const value = new Ros2Aimdk_msgsSrvPlayVideoGroup_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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

export class Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayVideoGroup_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19';
    static readonly maxWireBytes: i32 = 285;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayVideoGroup_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayVideoGroup_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayVideoGroup_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayVideoGroup_Response>();
        if(bytes.length > 285)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayVideoGroup_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayVideoGroup_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayVideoGroup_Response() : changetype<Ros2Aimdk_msgsSrvPlayVideoGroup_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/RequestAudioFocus_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvRequestAudioFocus_Request
{
    static readonly maxWireBytes: i32 = 148;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 148;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field focus_requester, native scalar aimdk_msgs/msg/FocusRequester. */
    focus_requester: Ros2Aimdk_msgsMsgFocusRequester = new Ros2Aimdk_msgsMsgFocusRequester();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
            if(child < 0)
                return child;
            if(child > 148 - n)
                return -90;
            n += child;
            if(n > 148)
                return -90;
        }
        {
            const child = this.focus_requester.wireSize();
            if(child < 0)
                return child;
            if(child > 148 - n)
                return -90;
            n += child;
            if(n > 148)
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
        this.request.writeControl(w);
        this.focus_requester.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvRequestAudioFocus_Request
    {
        const value = new Ros2Aimdk_msgsSrvRequestAudioFocus_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgFocusRequester.readControl(r);
            value.focus_requester = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvRequestAudioFocus_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a';
    static readonly maxWireBytes: i32 = 148;

    encodeChecked(value: Ros2Aimdk_msgsSrvRequestAudioFocus_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvRequestAudioFocus_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvRequestAudioFocus_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvRequestAudioFocus_Request>();
        if(bytes.length > 148)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvRequestAudioFocus_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvRequestAudioFocus_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvRequestAudioFocus_Request() : changetype<Ros2Aimdk_msgsSrvRequestAudioFocus_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/RequestAudioFocus_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvRequestAudioFocus_Response
{
    static readonly maxWireBytes: i32 = 285;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 285;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field focus_response, native scalar aimdk_msgs/msg/FocusResponse. */
    focus_response: Ros2Aimdk_msgsMsgFocusResponse = new Ros2Aimdk_msgsMsgFocusResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
            if(child < 0)
                return child;
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
                return -90;
        }
        {
            const child = this.focus_response.wireSize();
            if(child < 0)
                return child;
            if(child > 285 - n)
                return -90;
            n += child;
            if(n > 285)
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
        this.reponse.writeControl(w);
        this.focus_response.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvRequestAudioFocus_Response
    {
        const value = new Ros2Aimdk_msgsSrvRequestAudioFocus_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgFocusResponse.readControl(r);
            value.focus_response = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvRequestAudioFocus_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180';
    static readonly maxWireBytes: i32 = 285;

    encodeChecked(value: Ros2Aimdk_msgsSrvRequestAudioFocus_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvRequestAudioFocus_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvRequestAudioFocus_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvRequestAudioFocus_Response>();
        if(bytes.length > 285)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvRequestAudioFocus_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvRequestAudioFocus_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvRequestAudioFocus_Response() : changetype<Ros2Aimdk_msgsSrvRequestAudioFocus_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetAgentPropertiesRequest_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
{
    static readonly maxWireBytes: i32 = 544;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 544;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field contents, native scalar aimdk_msgs/msg/AgentProperties. */
    contents: Ros2Aimdk_msgsMsgAgentProperties = new Ros2Aimdk_msgsMsgAgentProperties();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 544 - n)
                return -90;
            n += child;
            if(n > 544)
                return -90;
        }
        {
            const child = this.contents.wireSize();
            if(child < 0)
                return child;
            if(child > 544 - n)
                return -90;
            n += child;
            if(n > 544)
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
        this.contents.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
    {
        const value = new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgAgentProperties.readControl(r);
            value.contents = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8';
    static readonly maxWireBytes: i32 = 544;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request>();
        if(bytes.length > 544)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
                                  : changetype<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetAgentPropertiesRequest_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();

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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
    {
        const value = new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
                                  : changetype<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMcAction_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMcAction_Request
{
    static readonly maxWireBytes: i32 = 276;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 276;
    /** Exact native field header, native scalar aimdk_msgs/msg/RequestHeader. */
    header: Ros2Aimdk_msgsMsgRequestHeader = new Ros2Aimdk_msgsMsgRequestHeader();
    /** Exact native field source, native scalar string. */
    source: string = '';
    /** Exact native field command, native scalar aimdk_msgs/msg/McActionCommand. */
    command: Ros2Aimdk_msgsMsgMcActionCommand = new Ros2Aimdk_msgsMsgMcActionCommand();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 276 - n)
                return -90;
            n += child;
            if(n > 276)
                return -90;
        }
        {
            if(!validUnicode(this.source) || this.source.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.source);
            if(size > 128)
                return -22;
            if(4 + size > 276 - n)
                return -90;
            n += 4 + size;
            if(n > 276)
                return -90;
        }
        {
            const child = this.command.wireSize();
            if(child < 0)
                return child;
            if(child > 276 - n)
                return -90;
            n += child;
            if(n > 276)
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
        w.text(this.source);
        this.command.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMcAction_Request
    {
        const value = new Ros2Aimdk_msgsSrvSetMcAction_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgRequestHeader.readControl(r);
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
            value.source = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcActionCommand.readControl(r);
            value.command = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMcAction_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMcAction_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246';
    static readonly maxWireBytes: i32 = 276;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMcAction_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMcAction_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMcAction_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMcAction_Request>();
        if(bytes.length > 276)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMcAction_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMcAction_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMcAction_Request() : changetype<Ros2Aimdk_msgsSrvSetMcAction_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMcAction_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMcAction_Response
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field response, native scalar aimdk_msgs/msg/CommonResponse. */
    response: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.response.wireSize();
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
        this.response.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMcAction_Response
    {
        const value = new Ros2Aimdk_msgsSrvSetMcAction_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.response = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMcAction_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMcAction_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMcAction_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMcAction_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMcAction_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMcAction_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMcAction_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMcAction_Response() : changetype<Ros2Aimdk_msgsSrvSetMcAction_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMcInputSource_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMcInputSource_Request
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field action, native scalar aimdk_msgs/msg/McInputAction. */
    action: Ros2Aimdk_msgsMsgMcInputAction = new Ros2Aimdk_msgsMsgMcInputAction();
    /** Exact native field input_source, native scalar aimdk_msgs/msg/McInputSource. */
    input_source: Ros2Aimdk_msgsMsgMcInputSource = new Ros2Aimdk_msgsMsgMcInputSource();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
            if(child < 0)
                return child;
            if(child > 152 - n)
                return -90;
            n += child;
            if(n > 152)
                return -90;
        }
        {
            const child = this.action.wireSize();
            if(child < 0)
                return child;
            if(child > 152 - n)
                return -90;
            n += child;
            if(n > 152)
                return -90;
        }
        {
            const child = this.input_source.wireSize();
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
        this.request.writeControl(w);
        this.action.writeControl(w);
        this.input_source.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMcInputSource_Request
    {
        const value = new Ros2Aimdk_msgsSrvSetMcInputSource_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcInputAction.readControl(r);
            value.action = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcInputSource.readControl(r);
            value.input_source = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMcInputSource_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMcInputSource_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMcInputSource_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMcInputSource_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMcInputSource_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMcInputSource_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMcInputSource_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMcInputSource_Request() : changetype<Ros2Aimdk_msgsSrvSetMcInputSource_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMcInputSource_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMcInputSource_Response
{
    static readonly maxWireBytes: i32 = 28;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 28;
    /** Exact native field response, native scalar aimdk_msgs/msg/CommonTaskResponse. */
    response: Ros2Aimdk_msgsMsgCommonTaskResponse = new Ros2Aimdk_msgsMsgCommonTaskResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.response.wireSize();
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
        this.response.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMcInputSource_Response
    {
        const value = new Ros2Aimdk_msgsSrvSetMcInputSource_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonTaskResponse.readControl(r);
            value.response = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMcInputSource_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb';
    static readonly maxWireBytes: i32 = 28;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMcInputSource_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMcInputSource_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMcInputSource_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMcInputSource_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMcInputSource_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMcInputSource_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMcInputSource_Response() : changetype<Ros2Aimdk_msgsSrvSetMcInputSource_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMcPresetMotion_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
{
    static readonly maxWireBytes: i32 = 297;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 297;
    /** Exact native field header, native scalar aimdk_msgs/msg/RequestHeader. */
    header: Ros2Aimdk_msgsMsgRequestHeader = new Ros2Aimdk_msgsMsgRequestHeader();
    /** Exact native field input_source, native scalar aimdk_msgs/msg/McInputSource. */
    input_source: Ros2Aimdk_msgsMsgMcInputSource = new Ros2Aimdk_msgsMsgMcInputSource();
    /** Exact native field area, native scalar aimdk_msgs/msg/McControlArea. */
    area: Ros2Aimdk_msgsMsgMcControlArea = new Ros2Aimdk_msgsMsgMcControlArea();
    /** Exact native field motion, native scalar aimdk_msgs/msg/McPresetMotion. */
    motion: Ros2Aimdk_msgsMsgMcPresetMotion = new Ros2Aimdk_msgsMsgMcPresetMotion();
    /** Exact native field interrupt, native scalar bool. */
    interrupt: bool = false;
    /** Exact native field ani_path, native scalar string. */
    ani_path: string = '';
    /** Exact native field play_timestamp, native scalar uint64. */
    play_timestamp: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 297 - n)
                return -90;
            n += child;
            if(n > 297)
                return -90;
        }
        {
            const child = this.input_source.wireSize();
            if(child < 0)
                return child;
            if(child > 297 - n)
                return -90;
            n += child;
            if(n > 297)
                return -90;
        }
        {
            const child = this.area.wireSize();
            if(child < 0)
                return child;
            if(child > 297 - n)
                return -90;
            n += child;
            if(n > 297)
                return -90;
        }
        {
            const child = this.motion.wireSize();
            if(child < 0)
                return child;
            if(child > 297 - n)
                return -90;
            n += child;
            if(n > 297)
                return -90;
        }
        {
            if(1 > 297 - n)
                return -90;
            n += 1;
            if(n > 297)
                return -90;
        }
        {
            if(!validUnicode(this.ani_path) || this.ani_path.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.ani_path);
            if(size > 128)
                return -22;
            if(4 + size > 297 - n)
                return -90;
            n += 4 + size;
            if(n > 297)
                return -90;
        }
        {
            if(8 > 297 - n)
                return -90;
            n += 8;
            if(n > 297)
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
        this.input_source.writeControl(w);
        this.area.writeControl(w);
        this.motion.writeControl(w);
        w.u8(this.interrupt ? 1 : 0);
        w.text(this.ani_path);
        w.integer(<u64>this.play_timestamp, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
    {
        const value = new Ros2Aimdk_msgsSrvSetMcPresetMotion_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgRequestHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcInputSource.readControl(r);
            value.input_source = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcControlArea.readControl(r);
            value.area = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgMcPresetMotion.readControl(r);
            value.motion = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.interrupt = decoded;
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
            value.ani_path = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.play_timestamp = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_1bc0bdea042012300548f5d9845b37dfc192d9680bb3beda186a69a11870ca96';
    static readonly maxWireBytes: i32 = 297;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request>();
        if(bytes.length > 297)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 41)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMcPresetMotion_Request() : changetype<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMcPresetMotion_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
{
    static readonly maxWireBytes: i32 = 28;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 28;
    /** Exact native field response, native scalar aimdk_msgs/msg/CommonTaskResponse. */
    response: Ros2Aimdk_msgsMsgCommonTaskResponse = new Ros2Aimdk_msgsMsgCommonTaskResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.response.wireSize();
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
        this.response.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
    {
        const value = new Ros2Aimdk_msgsSrvSetMcPresetMotion_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonTaskResponse.readControl(r);
            value.response = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMcPresetMotion_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85';
    static readonly maxWireBytes: i32 = 28;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMcPresetMotion_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMcPresetMotion_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMcPresetMotion_Response() : changetype<Ros2Aimdk_msgsSrvSetMcPresetMotion_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMicSourceRequest_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field mic_source, native scalar uint32. */
    mic_source: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 12 - n)
                return -90;
            n += child;
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
        this.header.writeControl(w);
        w.integer(<u64>this.mic_source, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
    {
        const value = new Ros2Aimdk_msgsSrvSetMicSourceRequest_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.mic_source = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMicSourceRequest_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMicSourceRequest_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMicSourceRequest_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMicSourceRequest_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMicSourceRequest_Request() : changetype<Ros2Aimdk_msgsSrvSetMicSourceRequest_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMicSourceRequest_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonResponse. */
    header: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();

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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
    {
        const value = new Ros2Aimdk_msgsSrvSetMicSourceRequest_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.header = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMicSourceRequest_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMicSourceRequest_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMicSourceRequest_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMicSourceRequest_Response() : changetype<Ros2Aimdk_msgsSrvSetMicSourceRequest_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMute_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMute_Request
{
    static readonly maxWireBytes: i32 = 9;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field is_mute, native scalar bool. */
    is_mute: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
            if(child < 0)
                return child;
            if(child > 9 - n)
                return -90;
            n += child;
            if(n > 9)
                return -90;
        }
        {
            if(1 > 9 - n)
                return -90;
            n += 1;
            if(n > 9)
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
        this.request.writeControl(w);
        w.u8(this.is_mute ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMute_Request
    {
        const value = new Ros2Aimdk_msgsSrvSetMute_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.is_mute = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMute_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMute_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3';
    static readonly maxWireBytes: i32 = 9;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMute_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMute_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMute_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMute_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMute_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMute_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMute_Request() : changetype<Ros2Aimdk_msgsSrvSetMute_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetMute_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetMute_Response
{
    static readonly maxWireBytes: i32 = 153;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 153;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field is_mute, native scalar bool. */
    is_mute: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
            if(child < 0)
                return child;
            if(child > 153 - n)
                return -90;
            n += child;
            if(n > 153)
                return -90;
        }
        {
            if(1 > 153 - n)
                return -90;
            n += 1;
            if(n > 153)
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
        this.reponse.writeControl(w);
        w.u8(this.is_mute ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetMute_Response
    {
        const value = new Ros2Aimdk_msgsSrvSetMute_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.is_mute = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMute_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMute_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50';
    static readonly maxWireBytes: i32 = 153;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetMute_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetMute_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetMute_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetMute_Response>();
        if(bytes.length > 153)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 25)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetMute_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetMute_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetMute_Response() : changetype<Ros2Aimdk_msgsSrvSetMute_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetPmuLed_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetPmuLed_Request
{
    static readonly LED_STRIP_MODE_CONSTANT: u8 = 0;
    static readonly LED_STRIP_MODE_BREATH: u8 = 1;
    static readonly LED_STRIP_MODE_FLASH: u8 = 2;
    static readonly LED_STRIP_MODE_FLOW: u8 = 3;
    static readonly LED_STRIP_MODE_MAX: u8 = 4;
    static readonly maxWireBytes: i32 = 149;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 149;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field trace_id, native scalar string. */
    trace_id: string = '';
    /** Exact native field led_strip_mode, native scalar uint8. */
    led_strip_mode: u8 = 0;
    /** Exact native field r, native scalar uint8. */
    r: u8 = 0;
    /** Exact native field g, native scalar uint8. */
    g: u8 = 0;
    /** Exact native field b, native scalar uint8. */
    b: u8 = 0;
    /** Exact native field priority, native scalar int32. */
    priority: i32 = 0;
    /** Exact native field reset_priority, native scalar bool. */
    reset_priority: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
            if(child < 0)
                return child;
            if(child > 149 - n)
                return -90;
            n += child;
            if(n > 149)
                return -90;
        }
        {
            if(!validUnicode(this.trace_id) || this.trace_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.trace_id);
            if(size > 128)
                return -22;
            if(4 + size > 149 - n)
                return -90;
            n += 4 + size;
            if(n > 149)
                return -90;
        }
        {
            if(1 > 149 - n)
                return -90;
            n += 1;
            if(n > 149)
                return -90;
        }
        {
            if(1 > 149 - n)
                return -90;
            n += 1;
            if(n > 149)
                return -90;
        }
        {
            if(1 > 149 - n)
                return -90;
            n += 1;
            if(n > 149)
                return -90;
        }
        {
            if(1 > 149 - n)
                return -90;
            n += 1;
            if(n > 149)
                return -90;
        }
        {
            if(4 > 149 - n)
                return -90;
            n += 4;
            if(n > 149)
                return -90;
        }
        {
            if(1 > 149 - n)
                return -90;
            n += 1;
            if(n > 149)
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
        this.request.writeControl(w);
        w.text(this.trace_id);
        w.integer(<u64>this.led_strip_mode, 1);
        w.integer(<u64>this.r, 1);
        w.integer(<u64>this.g, 1);
        w.integer(<u64>this.b, 1);
        w.integer(<u64>this.priority, 4);
        w.u8(this.reset_priority ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetPmuLed_Request
    {
        const value = new Ros2Aimdk_msgsSrvSetPmuLed_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
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
            value.trace_id = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.led_strip_mode = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.r = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.g = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.b = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.reset_priority = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetPmuLed_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e';
    static readonly maxWireBytes: i32 = 149;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetPmuLed_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetPmuLed_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetPmuLed_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetPmuLed_Request>();
        if(bytes.length > 149)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 21)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetPmuLed_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetPmuLed_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetPmuLed_Request() : changetype<Ros2Aimdk_msgsSrvSetPmuLed_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetPmuLed_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetPmuLed_Response
{
    static readonly maxWireBytes: i32 = 18;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 18;
    /** Exact native field header, native scalar aimdk_msgs/msg/ResponseHeader. */
    header: Ros2Aimdk_msgsMsgResponseHeader = new Ros2Aimdk_msgsMsgResponseHeader();
    /** Exact native field status_code, native scalar uint16. */
    status_code: u16 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 18 - n)
                return -90;
            n += child;
            if(n > 18)
                return -90;
        }
        {
            if(2 > 18 - n)
                return -90;
            n += 2;
            if(n > 18)
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
        w.integer(<u64>this.status_code, 2);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetPmuLed_Response
    {
        const value = new Ros2Aimdk_msgsSrvSetPmuLed_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgResponseHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.status_code = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetPmuLed_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28';
    static readonly maxWireBytes: i32 = 18;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetPmuLed_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetPmuLed_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetPmuLed_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetPmuLed_Response>();
        if(bytes.length > 18)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 18)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetPmuLed_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetPmuLed_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetPmuLed_Response() : changetype<Ros2Aimdk_msgsSrvSetPmuLed_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetVolume_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetVolume_Request
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field audio_volume, native scalar uint32. */
    audio_volume: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
            if(child < 0)
                return child;
            if(child > 12 - n)
                return -90;
            n += child;
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
        this.request.writeControl(w);
        w.integer(<u64>this.audio_volume, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetVolume_Request
    {
        const value = new Ros2Aimdk_msgsSrvSetVolume_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.audio_volume = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetVolume_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetVolume_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetVolume_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetVolume_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetVolume_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetVolume_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetVolume_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetVolume_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetVolume_Request() : changetype<Ros2Aimdk_msgsSrvSetVolume_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/SetVolume_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvSetVolume_Response
{
    static readonly maxWireBytes: i32 = 156;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 156;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();
    /** Exact native field audio_volume, native scalar uint32. */
    audio_volume: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
            if(child < 0)
                return child;
            if(child > 156 - n)
                return -90;
            n += child;
            if(n > 156)
                return -90;
        }
        {
            if(4 > 156 - n)
                return -90;
            n += 4;
            if(n > 156)
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
        this.reponse.writeControl(w);
        w.integer(<u64>this.audio_volume, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvSetVolume_Response
    {
        const value = new Ros2Aimdk_msgsSrvSetVolume_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.audio_volume = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetVolume_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetVolume_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e';
    static readonly maxWireBytes: i32 = 156;

    encodeChecked(value: Ros2Aimdk_msgsSrvSetVolume_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvSetVolume_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvSetVolume_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvSetVolume_Response>();
        if(bytes.length > 156)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvSetVolume_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvSetVolume_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvSetVolume_Response() : changetype<Ros2Aimdk_msgsSrvSetVolume_Response>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/StopAudioPlay_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvStopAudioPlay_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.request.wireSize();
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
        this.request.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvStopAudioPlay_Request
    {
        const value = new Ros2Aimdk_msgsSrvStopAudioPlay_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvStopAudioPlay_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_477159e3e8f462376693e7d0051c4b49cf5170520a056be2a2bd5a72d83e24b9';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Aimdk_msgsSrvStopAudioPlay_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvStopAudioPlay_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvStopAudioPlay_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvStopAudioPlay_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvStopAudioPlay_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvStopAudioPlay_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvStopAudioPlay_Request() : changetype<Ros2Aimdk_msgsSrvStopAudioPlay_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/StopAudioPlay_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvStopAudioPlay_Response
{
    static readonly maxWireBytes: i32 = 152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 152;
    /** Exact native field reponse, native scalar aimdk_msgs/msg/CommonResponse. */
    reponse: Ros2Aimdk_msgsMsgCommonResponse = new Ros2Aimdk_msgsMsgCommonResponse();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.reponse.wireSize();
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
        this.reponse.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvStopAudioPlay_Response
    {
        const value = new Ros2Aimdk_msgsSrvStopAudioPlay_Response();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonResponse.readControl(r);
            value.reponse = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvStopAudioPlay_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_9a21b16e6eb5642e5bf5e0e64b15999a661142a65d2cc8ea68d8c62a2a1fbcb4';
    static readonly maxWireBytes: i32 = 152;

    encodeChecked(value: Ros2Aimdk_msgsSrvStopAudioPlay_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvStopAudioPlay_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvStopAudioPlay_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvStopAudioPlay_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvStopAudioPlay_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvStopAudioPlay_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvStopAudioPlay_Response() : changetype<Ros2Aimdk_msgsSrvStopAudioPlay_Response>(out.value);
    }
}
