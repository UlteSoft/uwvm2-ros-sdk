// @file bounded_records.ts
// @brief Full agibot as codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_9_0_main values in as. 75 original records retain 237 fields and 57
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
    static readonly codecIdentity: string = 'UWVMROS1_c200e5c12c94037c8d6c15a2ad74e549f98381340d3fdec13fa58e6c749546d3';
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
    static readonly codecIdentity: string = 'UWVMROS1_570dc0d22fba76baa35fa65776e7e4b8152f2aa525dee858b21d91ede97543ef';
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
    static readonly codecIdentity: string = 'UWVMROS1_051be5d21402ad0034bd25ebfb308609846579a4b459b2cbf70f92c05ffeedfe';
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

/** Complete original aimdk_msgs/msg/FaceEmojiStatus; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgFaceEmojiStatus
{
    static readonly STATUS_IDLE: u8 = 0;
    static readonly STATUS_START: u8 = 1;
    static readonly STATUS_RUNNING: u8 = 2;
    static readonly STATUS_FINISHED: u8 = 3;
    static readonly STATUS_STOPPED: u8 = 4;
    static readonly maxWireBytes: i32 = 2415;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2415;
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

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 2415 - n)
                return -90;
            n += child;
            if(n > 2415)
                return -90;
        }
        {
            if(!validUnicode(this.e_path) || this.e_path.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.e_path);
            if(size > 128)
                return -22;
            if(4 + size > 2415 - n)
                return -90;
            n += 4 + size;
            if(n > 2415)
                return -90;
        }
        {
            if(this.e_path_list.length > 16)
                return -22;
            if(4 > 2415 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.e_path_list.length; ++i)
            {
                if(!validUnicode(this.e_path_list[i]) || this.e_path_list[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.e_path_list[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 2415 - n)
                    return -90;
                n += 4 + size;
                if(n > 2415)
                    return -90;
            }
        }
        {
            if(1 > 2415 - n)
                return -90;
            n += 1;
            if(n > 2415)
                return -90;
        }
        {
            if(1 > 2415 - n)
                return -90;
            n += 1;
            if(n > 2415)
                return -90;
        }
        {
            if(4 > 2415 - n)
                return -90;
            n += 4;
            if(n > 2415)
                return -90;
        }
        {
            if(1 > 2415 - n)
                return -90;
            n += 1;
            if(n > 2415)
                return -90;
        }
        {
            if(!isFinite(this.time_to_end_ms))
                return -22;
            if(8 > 2415 - n)
                return -90;
            n += 8;
            if(n > 2415)
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
        return value;
    }
}

export class Ros2Aimdk_msgsMsgFaceEmojiStatusCodec implements VendorCodec<Ros2Aimdk_msgsMsgFaceEmojiStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7';
    static readonly maxWireBytes: i32 = 2415;

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
        if(bytes.length > 2415)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 47)
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
    static readonly codecIdentity: string = 'UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6';
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
    static readonly codecIdentity: string = 'UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e';
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

/** Complete original aimdk_msgs/msg/HandStateArray; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgHandStateArray
{
    static readonly maxWireBytes: i32 = 1474;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1474;
    /** Exact native field header, native scalar aimdk_msgs/msg/MessageHeader. */
    header: Ros2Aimdk_msgsMsgMessageHeader = new Ros2Aimdk_msgsMsgMessageHeader();
    /** Exact native field left_hand_type, native scalar aimdk_msgs/msg/HandType. */
    left_hand_type: Ros2Aimdk_msgsMsgHandType = new Ros2Aimdk_msgsMsgHandType();
    /** Exact native field left_hands, native scalar aimdk_msgs/msg/HandState. */
    left_hands: Array<Ros2Aimdk_msgsMsgHandState> = new Array<Ros2Aimdk_msgsMsgHandState>();
    /** Exact native field right_hand_type, native scalar aimdk_msgs/msg/HandType. */
    right_hand_type: Ros2Aimdk_msgsMsgHandType = new Ros2Aimdk_msgsMsgHandType();
    /** Exact native field right_hands, native scalar aimdk_msgs/msg/HandState. */
    right_hands: Array<Ros2Aimdk_msgsMsgHandState> = new Array<Ros2Aimdk_msgsMsgHandState>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 1474 - n)
                return -90;
            n += child;
            if(n > 1474)
                return -90;
        }
        {
            const child = this.left_hand_type.wireSize();
            if(child < 0)
                return child;
            if(child > 1474 - n)
                return -90;
            n += child;
            if(n > 1474)
                return -90;
        }
        {
            if(this.left_hands.length > 4)
                return -22;
            if(4 > 1474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.left_hands.length; ++i)
            {
                const child = this.left_hands[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1474 - n)
                    return -90;
                n += child;
                if(n > 1474)
                    return -90;
            }
        }
        {
            const child = this.right_hand_type.wireSize();
            if(child < 0)
                return child;
            if(child > 1474 - n)
                return -90;
            n += child;
            if(n > 1474)
                return -90;
        }
        {
            if(this.right_hands.length > 4)
                return -22;
            if(4 > 1474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.right_hands.length; ++i)
            {
                const child = this.right_hands[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1474 - n)
                    return -90;
                n += child;
                if(n > 1474)
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
        return value;
    }
}

export class Ros2Aimdk_msgsMsgHandStateArrayCodec implements VendorCodec<Ros2Aimdk_msgsMsgHandStateArray>
{
    static readonly codecIdentity: string = 'UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d';
    static readonly maxWireBytes: i32 = 1474;

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
        if(bytes.length > 1474)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 34)
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
    static readonly maxWireBytes: i32 = 159;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 159;
    /** Exact native field name, native scalar string. */
    name: string = '';
    /** Exact native field position, native scalar float64. */
    position: f64 = 0;
    /** Exact native field velocity, native scalar float64. */
    velocity: f64 = 0;
    /** Exact native field effort, native scalar float64. */
    effort: f64 = 0;
    /** Exact native field coil_temp, native scalar uint8. */
    coil_temp: u8 = 0;
    /** Exact native field motor_temp, native scalar uint8. */
    motor_temp: u8 = 0;
    /** Exact native field motor_vol, native scalar uint8. */
    motor_vol: u8 = 0;

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
            if(4 + size > 159 - n)
                return -90;
            n += 4 + size;
            if(n > 159)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(8 > 159 - n)
                return -90;
            n += 8;
            if(n > 159)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(8 > 159 - n)
                return -90;
            n += 8;
            if(n > 159)
                return -90;
        }
        {
            if(!isFinite(this.effort))
                return -22;
            if(8 > 159 - n)
                return -90;
            n += 8;
            if(n > 159)
                return -90;
        }
        {
            if(1 > 159 - n)
                return -90;
            n += 1;
            if(n > 159)
                return -90;
        }
        {
            if(1 > 159 - n)
                return -90;
            n += 1;
            if(n > 159)
                return -90;
        }
        {
            if(1 > 159 - n)
                return -90;
            n += 1;
            if(n > 159)
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
        w.integer(<u64>this.coil_temp, 1);
        w.integer(<u64>this.motor_temp, 1);
        w.integer(<u64>this.motor_vol, 1);
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
            const decoded = <u8>r.integer(1);
            value.coil_temp = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.motor_temp = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.motor_vol = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsMsgJointStateCodec implements VendorCodec<Ros2Aimdk_msgsMsgJointState>
{
    static readonly codecIdentity: string = 'UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f';
    static readonly maxWireBytes: i32 = 159;

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
        if(bytes.length > 159)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 31)
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
    static readonly maxWireBytes: i32 = 10333;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10333;
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
            if(child > 10333 - n)
                return -90;
            n += child;
            if(n > 10333)
                return -90;
        }
        {
            const child = this.state.wireSize();
            if(child < 0)
                return child;
            if(child > 10333 - n)
                return -90;
            n += child;
            if(n > 10333)
                return -90;
        }
        {
            if(this.joints.length > 64)
                return -22;
            if(4 > 10333 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joints.length; ++i)
            {
                const child = this.joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10333 - n)
                    return -90;
                n += child;
                if(n > 10333)
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
    static readonly codecIdentity: string = 'UWVMROS1_5be49aebcfbd4a6580e9c83ceafc5c13c7d4bee8b7d667d3510bbf17acddce36';
    static readonly maxWireBytes: i32 = 10333;

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
        if(bytes.length > 10333)
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

/** Complete original aimdk_msgs/msg/PlayMediaFileRequest; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPlayMediaFileRequest
{
    static readonly maxWireBytes: i32 = 406;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 406;
    /** Exact native field file_name, native scalar string. */
    file_name: string = '';
    /** Exact native field sample_rate, native scalar uint32. */
    sample_rate: u32 = 0;
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
            if(!validUnicode(this.file_name) || this.file_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.file_name);
            if(size > 128)
                return -22;
            if(4 + size > 406 - n)
                return -90;
            n += 4 + size;
            if(n > 406)
                return -90;
        }
        {
            if(4 > 406 - n)
                return -90;
            n += 4;
            if(n > 406)
                return -90;
        }
        {
            const child = this.priority_level.wireSize();
            if(child < 0)
                return child;
            if(child > 406 - n)
                return -90;
            n += child;
            if(n > 406)
                return -90;
        }
        {
            if(4 > 406 - n)
                return -90;
            n += 4;
            if(n > 406)
                return -90;
        }
        {
            if(!validUnicode(this.domain) || this.domain.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.domain);
            if(size > 128)
                return -22;
            if(4 + size > 406 - n)
                return -90;
            n += 4 + size;
            if(n > 406)
                return -90;
        }
        {
            if(!validUnicode(this.trace_id) || this.trace_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.trace_id);
            if(size > 128)
                return -22;
            if(4 + size > 406 - n)
                return -90;
            n += 4 + size;
            if(n > 406)
                return -90;
        }
        {
            if(1 > 406 - n)
                return -90;
            n += 1;
            if(n > 406)
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
        w.text(this.file_name);
        w.integer(<u64>this.sample_rate, 4);
        this.priority_level.writeControl(w);
        w.integer(<u64>this.priority_weight, 4);
        w.text(this.domain);
        w.text(this.trace_id);
        w.u8(this.is_interrupted ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsMsgPlayMediaFileRequest
    {
        const value = new Ros2Aimdk_msgsMsgPlayMediaFileRequest();
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
            const decoded = <u32>r.integer(4);
            value.sample_rate = decoded;
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

export class Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec implements VendorCodec<Ros2Aimdk_msgsMsgPlayMediaFileRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_904909a9d55bb158b68473dba999ce76712c609d8cded69ecb88c65380c6ff02';
    static readonly maxWireBytes: i32 = 406;

    encodeChecked(value: Ros2Aimdk_msgsMsgPlayMediaFileRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsMsgPlayMediaFileRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsMsgPlayMediaFileRequest>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsMsgPlayMediaFileRequest>();
        if(bytes.length > 406)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 22)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsMsgPlayMediaFileRequest.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Aimdk_msgsMsgPlayMediaFileRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsMsgPlayMediaFileRequest() : changetype<Ros2Aimdk_msgsMsgPlayMediaFileRequest>(out.value);
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
    static readonly maxWireBytes: i32 = 538;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 538;
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
            if(4 + size > 538 - n)
                return -90;
            n += 4 + size;
            if(n > 538)
                return -90;
        }
        {
            const child = this.priority_level.wireSize();
            if(child < 0)
                return child;
            if(child > 538 - n)
                return -90;
            n += child;
            if(n > 538)
                return -90;
        }
        {
            if(4 > 538 - n)
                return -90;
            n += 4;
            if(n > 538)
                return -90;
        }
        {
            if(!validUnicode(this.domain) || this.domain.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.domain);
            if(size > 128)
                return -22;
            if(4 + size > 538 - n)
                return -90;
            n += 4 + size;
            if(n > 538)
                return -90;
        }
        {
            if(!validUnicode(this.trace_id) || this.trace_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.trace_id);
            if(size > 128)
                return -22;
            if(4 + size > 538 - n)
                return -90;
            n += 4 + size;
            if(n > 538)
                return -90;
        }
        {
            if(1 > 538 - n)
                return -90;
            n += 1;
            if(n > 538)
                return -90;
        }
        {
            if(!validUnicode(this.error_message) || this.error_message.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error_message);
            if(size > 128)
                return -22;
            if(4 + size > 538 - n)
                return -90;
            n += 4 + size;
            if(n > 538)
                return -90;
        }
        {
            if(4 > 538 - n)
                return -90;
            n += 4;
            if(n > 538)
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
        return value;
    }
}

export class Ros2Aimdk_msgsMsgPlayTtsResponseCodec implements VendorCodec<Ros2Aimdk_msgsMsgPlayTtsResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82';
    static readonly maxWireBytes: i32 = 538;

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
        if(bytes.length > 538)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 26)
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

/** Complete original aimdk_msgs/msg/PmuState; spellings are published in generation proof. */
export class Ros2Aimdk_msgsMsgPmuState
{
    static readonly maxWireBytes: i32 = 1097;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1097;
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
            if(4 + size > 1097 - n)
                return -90;
            n += 4 + size;
            if(n > 1097)
                return -90;
        }
        {
            if(!validUnicode(this.pmu_hardware_version) || this.pmu_hardware_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pmu_hardware_version);
            if(size > 128)
                return -22;
            if(4 + size > 1097 - n)
                return -90;
            n += 4 + size;
            if(n > 1097)
                return -90;
        }
        {
            if(!validUnicode(this.pmu_protocol_version) || this.pmu_protocol_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.pmu_protocol_version);
            if(size > 128)
                return -22;
            if(4 + size > 1097 - n)
                return -90;
            n += 4 + size;
            if(n > 1097)
                return -90;
        }
        {
            if(4 > 1097 - n)
                return -90;
            n += 4;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.head_power_current))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.output_48v_current))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.rk3588_current))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.output_12v_current))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.bus_48v_current))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.orin_current))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.bus_48v_pmos_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.battery_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.fan_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.output_12v_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.output_48v_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.bus_48v_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.head_power_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.orin_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.rk3588_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!validUnicode(this.bms_manufacturer) || this.bms_manufacturer.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.bms_manufacturer);
            if(size > 128)
                return -22;
            if(4 + size > 1097 - n)
                return -90;
            n += 4 + size;
            if(n > 1097)
                return -90;
        }
        {
            if(!validUnicode(this.bms_serial_number) || this.bms_serial_number.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.bms_serial_number);
            if(size > 128)
                return -22;
            if(4 + size > 1097 - n)
                return -90;
            n += 4 + size;
            if(n > 1097)
                return -90;
        }
        {
            if(!validUnicode(this.bms_hardware_version) || this.bms_hardware_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.bms_hardware_version);
            if(size > 128)
                return -22;
            if(4 + size > 1097 - n)
                return -90;
            n += 4 + size;
            if(n > 1097)
                return -90;
        }
        {
            if(!validUnicode(this.bms_software_version) || this.bms_software_version.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.bms_software_version);
            if(size > 128)
                return -22;
            if(4 + size > 1097 - n)
                return -90;
            n += 4 + size;
            if(n > 1097)
                return -90;
        }
        {
            if(4 > 1097 - n)
                return -90;
            n += 4;
            if(n > 1097)
                return -90;
        }
        {
            if(2 > 1097 - n)
                return -90;
            n += 2;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.battery_pack_voltage))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.battery_current))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.battery_output_power))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(!isFinite(this.battery_temperature))
                return -22;
            if(8 > 1097 - n)
                return -90;
            n += 8;
            if(n > 1097)
                return -90;
        }
        {
            if(4 > 1097 - n)
                return -90;
            n += 4;
            if(n > 1097)
                return -90;
        }
        {
            if(1 > 1097 - n)
                return -90;
            n += 1;
            if(n > 1097)
                return -90;
        }
        {
            if(2 > 1097 - n)
                return -90;
            n += 2;
            if(n > 1097)
                return -90;
        }
        {
            if(4 > 1097 - n)
                return -90;
            n += 4;
            if(n > 1097)
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
    static readonly codecIdentity: string = 'UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c';
    static readonly maxWireBytes: i32 = 1097;

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
        if(bytes.length > 1097)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 201)
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
    static readonly maxWireBytes: i32 = 2712;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2712;
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
            if(child > 2712 - n)
                return -90;
            n += child;
            if(n > 2712)
                return -90;
        }
        {
            if(this.head_joints.length > 4)
                return -22;
            if(4 > 2712 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.head_joints.length; ++i)
            {
                const child = this.head_joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2712 - n)
                    return -90;
                n += child;
                if(n > 2712)
                    return -90;
            }
        }
        {
            if(this.arm_joints.length > 4)
                return -22;
            if(4 > 2712 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.arm_joints.length; ++i)
            {
                const child = this.arm_joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2712 - n)
                    return -90;
                n += child;
                if(n > 2712)
                    return -90;
            }
        }
        {
            if(this.waist_joints.length > 4)
                return -22;
            if(4 > 2712 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.waist_joints.length; ++i)
            {
                const child = this.waist_joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2712 - n)
                    return -90;
                n += child;
                if(n > 2712)
                    return -90;
            }
        }
        {
            if(this.leg_joints.length > 4)
                return -22;
            if(4 > 2712 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.leg_joints.length; ++i)
            {
                const child = this.leg_joints[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2712 - n)
                    return -90;
                n += child;
                if(n > 2712)
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
    static readonly codecIdentity: string = 'UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793';
    static readonly maxWireBytes: i32 = 2712;

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
        if(bytes.length > 2712)
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
    static readonly codecIdentity: string = 'UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c';
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

/** Complete original aimdk_msgs/srv/LedStripCommand_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvLedStripCommand_Request
{
    static readonly LED_STRIP_MODE_CONSTANT: u8 = 0;
    static readonly LED_STRIP_MODE_BREATH: u8 = 1;
    static readonly LED_STRIP_MODE_FLASH: u8 = 2;
    static readonly LED_STRIP_MODE_FLOW: u8 = 3;
    static readonly LED_STRIP_MODE_MAX: u8 = 4;
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field request, native scalar aimdk_msgs/msg/CommonRequest. */
    request: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field led_strip_mode, native scalar uint8. */
    led_strip_mode: u8 = 0;
    /** Exact native field r, native scalar uint8. */
    r: u8 = 0;
    /** Exact native field g, native scalar uint8. */
    g: u8 = 0;
    /** Exact native field b, native scalar uint8. */
    b: u8 = 0;

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
            if(1 > 12 - n)
                return -90;
            n += 1;
            if(n > 12)
                return -90;
        }
        {
            if(1 > 12 - n)
                return -90;
            n += 1;
            if(n > 12)
                return -90;
        }
        {
            if(1 > 12 - n)
                return -90;
            n += 1;
            if(n > 12)
                return -90;
        }
        {
            if(1 > 12 - n)
                return -90;
            n += 1;
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
        w.integer(<u64>this.led_strip_mode, 1);
        w.integer(<u64>this.r, 1);
        w.integer(<u64>this.g, 1);
        w.integer(<u64>this.b, 1);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvLedStripCommand_Request
    {
        const value = new Ros2Aimdk_msgsSrvLedStripCommand_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.request = decoded;
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
        return value;
    }
}

export class Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvLedStripCommand_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Aimdk_msgsSrvLedStripCommand_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvLedStripCommand_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvLedStripCommand_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvLedStripCommand_Request>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvLedStripCommand_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvLedStripCommand_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvLedStripCommand_Request() : changetype<Ros2Aimdk_msgsSrvLedStripCommand_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/LedStripCommand_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvLedStripCommand_Response
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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvLedStripCommand_Response
    {
        const value = new Ros2Aimdk_msgsSrvLedStripCommand_Response();
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

export class Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvLedStripCommand_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9';
    static readonly maxWireBytes: i32 = 18;

    encodeChecked(value: Ros2Aimdk_msgsSrvLedStripCommand_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvLedStripCommand_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvLedStripCommand_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvLedStripCommand_Response>();
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
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvLedStripCommand_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvLedStripCommand_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvLedStripCommand_Response() : changetype<Ros2Aimdk_msgsSrvLedStripCommand_Response>(out.value);
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

/** Complete original aimdk_msgs/srv/PlayMediaFile_Request; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayMediaFile_Request
{
    static readonly maxWireBytes: i32 = 414;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 414;
    /** Exact native field header, native scalar aimdk_msgs/msg/CommonRequest. */
    header: Ros2Aimdk_msgsMsgCommonRequest = new Ros2Aimdk_msgsMsgCommonRequest();
    /** Exact native field media_file_req, native scalar aimdk_msgs/msg/PlayMediaFileRequest. */
    media_file_req: Ros2Aimdk_msgsMsgPlayMediaFileRequest = new Ros2Aimdk_msgsMsgPlayMediaFileRequest();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 414 - n)
                return -90;
            n += child;
            if(n > 414)
                return -90;
        }
        {
            const child = this.media_file_req.wireSize();
            if(child < 0)
                return child;
            if(child > 414 - n)
                return -90;
            n += child;
            if(n > 414)
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
        this.media_file_req.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayMediaFile_Request
    {
        const value = new Ros2Aimdk_msgsSrvPlayMediaFile_Request();
        {
            const decoded = Ros2Aimdk_msgsMsgCommonRequest.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Aimdk_msgsMsgPlayMediaFileRequest.readControl(r);
            value.media_file_req = decoded;
        }
        return value;
    }
}

export class Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayMediaFile_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_de9106af79fdc65581b3c2aa7642a1caab223f294e25e32c2251daddeb26717e';
    static readonly maxWireBytes: i32 = 414;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayMediaFile_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayMediaFile_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayMediaFile_Request>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayMediaFile_Request>();
        if(bytes.length > 414)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 30)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayMediaFile_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayMediaFile_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayMediaFile_Request() : changetype<Ros2Aimdk_msgsSrvPlayMediaFile_Request>(out.value);
    }
}

/** Complete original aimdk_msgs/srv/PlayMediaFile_Response; spellings are published in generation proof. */
export class Ros2Aimdk_msgsSrvPlayMediaFile_Response
{
    static readonly maxWireBytes: i32 = 690;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 690;
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
            if(child > 690 - n)
                return -90;
            n += child;
            if(n > 690)
                return -90;
        }
        {
            const child = this.tts_resp.wireSize();
            if(child < 0)
                return child;
            if(child > 690 - n)
                return -90;
            n += child;
            if(n > 690)
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
    static readControl(r: Reader): Ros2Aimdk_msgsSrvPlayMediaFile_Response
    {
        const value = new Ros2Aimdk_msgsSrvPlayMediaFile_Response();
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

export class Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec implements VendorCodec<Ros2Aimdk_msgsSrvPlayMediaFile_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_c9d87c3e8eba48eac719d9efc5dd3f09846e62be5ce94afaaf79fe0f82c1b70b';
    static readonly maxWireBytes: i32 = 690;

    encodeChecked(value: Ros2Aimdk_msgsSrvPlayMediaFile_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Aimdk_msgsSrvPlayMediaFile_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Aimdk_msgsSrvPlayMediaFile_Response>
    {
        const out = new VendorDecoded<Ros2Aimdk_msgsSrvPlayMediaFile_Response>();
        if(bytes.length > 690)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 50)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Aimdk_msgsSrvPlayMediaFile_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Aimdk_msgsSrvPlayMediaFile_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Aimdk_msgsSrvPlayMediaFile_Response() : changetype<Ros2Aimdk_msgsSrvPlayMediaFile_Response>(out.value);
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
    static readonly maxWireBytes: i32 = 690;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 690;
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
            if(child > 690 - n)
                return -90;
            n += child;
            if(n > 690)
                return -90;
        }
        {
            const child = this.tts_resp.wireSize();
            if(child < 0)
                return child;
            if(child > 690 - n)
                return -90;
            n += child;
            if(n > 690)
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
    static readonly codecIdentity: string = 'UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6';
    static readonly maxWireBytes: i32 = 690;

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
        if(bytes.length > 690)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 50)
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
    static readonly codecIdentity: string = 'UWVMROS1_e6f9e68a634c0391e9c6ac58aa2840b1b99cb523b5c3019d0b45bcf966df893f';
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
    static readonly maxWireBytes: i32 = 149;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 149;
    /** Exact native field header, native scalar aimdk_msgs/msg/RequestHeader. */
    header: Ros2Aimdk_msgsMsgRequestHeader = new Ros2Aimdk_msgsMsgRequestHeader();
    /** Exact native field area, native scalar aimdk_msgs/msg/McControlArea. */
    area: Ros2Aimdk_msgsMsgMcControlArea = new Ros2Aimdk_msgsMsgMcControlArea();
    /** Exact native field motion, native scalar aimdk_msgs/msg/McPresetMotion. */
    motion: Ros2Aimdk_msgsMsgMcPresetMotion = new Ros2Aimdk_msgsMsgMcPresetMotion();
    /** Exact native field interrupt, native scalar bool. */
    interrupt: bool = false;
    /** Exact native field ani_path, native scalar string. */
    ani_path: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 149 - n)
                return -90;
            n += child;
            if(n > 149)
                return -90;
        }
        {
            const child = this.area.wireSize();
            if(child < 0)
                return child;
            if(child > 149 - n)
                return -90;
            n += child;
            if(n > 149)
                return -90;
        }
        {
            const child = this.motion.wireSize();
            if(child < 0)
                return child;
            if(child > 149 - n)
                return -90;
            n += child;
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
            if(!validUnicode(this.ani_path) || this.ani_path.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.ani_path);
            if(size > 128)
                return -22;
            if(4 + size > 149 - n)
                return -90;
            n += 4 + size;
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
        this.header.writeControl(w);
        this.area.writeControl(w);
        this.motion.writeControl(w);
        w.u8(this.interrupt ? 1 : 0);
        w.text(this.ani_path);
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
        return value;
    }
}

export class Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec implements VendorCodec<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea';
    static readonly maxWireBytes: i32 = 149;

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
