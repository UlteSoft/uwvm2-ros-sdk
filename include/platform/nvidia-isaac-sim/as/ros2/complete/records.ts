/** @brief Complete industrial canonical records. No I/O or authority. */
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

export interface VendorCodec<T> extends Codec<T> {
    encode(value: T): Uint8Array;
    valid(bytes: Uint8Array): bool;
    decode(bytes: Uint8Array): T;
    encodeChecked(value: T): VendorEncoded;
    decodeChecked(bytes: Uint8Array): VendorDecoded<T>;
}

/** @brief One exact-size private linear buffer; finish refuses any unexpected extent. */
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

/** @brief Complete original builtin_interfaces/msg/Time; spellings are published in generation proof. */
export class Ros2Builtin_interfacesMsgTime
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field sec, native scalar int32. */
    sec: i32 = 0;
    /** @brief Exact native field nanosec, native scalar uint32. */
    nanosec: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sec, 4);
        w.integer(<u64>this.nanosec, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
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
    static readonly codecIdentity: string = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Builtin_interfacesMsgTime): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
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

/** @brief Complete original std_msgs/msg/Header; spellings are published in generation proof. */
export class Ros2Std_msgsMsgHeader
{
    static readonly maxWireBytes: i32 = 76;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 76;
    /** @brief Exact native field stamp, native scalar builtin_interfaces/msg/Time. */
    stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /** @brief Exact native field frame_id, native scalar string. */
    frame_id: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 76 - n)
                return -90;
            n += child;
            if(n > 76)
                return -90;
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.frame_id);
            if(size > 64)
                return -22;
            if(4 + size > 76 - n)
                return -90;
            n += 4 + size;
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.stamp.writeControl(w);
        w.text(this.frame_id);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Std_msgsMsgHeader
    {
        const value = new Ros2Std_msgsMsgHeader();
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.stamp = decoded;
        }
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
            value.frame_id = decoded;
        }
        return value;
    }
}

export class Ros2Std_msgsMsgHeaderCodec implements VendorCodec<Ros2Std_msgsMsgHeader>
{
    static readonly codecIdentity: string = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
    static readonly maxWireBytes: i32 = 76;

    encodeChecked(value: Ros2Std_msgsMsgHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
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

/** @brief Complete original sensor_msgs/msg/JointState; spellings are published in generation proof. */
export class Ros2Sensor_msgsMsgJointState
{
    static readonly maxWireBytes: i32 = 5980;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 5980;
    /** @brief Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** @brief Exact native field name, native scalar string. */
    name: Array<string> = new Array<string>();
    /** @brief Exact native field position, native scalar float64. */
    position: Array<f64> = new Array<f64>();
    /** @brief Exact native field velocity, native scalar float64. */
    velocity: Array<f64> = new Array<f64>();
    /** @brief Exact native field effort, native scalar float64. */
    effort: Array<f64> = new Array<f64>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 5980 - n)
                return -90;
            n += child;
            if(n > 5980)
                return -90;
        }
        {
            if(this.name.length > 64)
                return -22;
            if(4 > 5980 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(!validUnicode(this.name[i]) || this.name[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.name[i]);
                if(size > 64)
                    return -22;
                if(4 + size > 5980 - n)
                    return -90;
                n += 4 + size;
                if(n > 5980)
                    return -90;
            }
        }
        {
            if(this.position.length > 64)
                return -22;
            if(4 > 5980 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                    return -22;
                if(8 > 5980 - n)
                    return -90;
                n += 8;
                if(n > 5980)
                    return -90;
            }
        }
        {
            if(this.velocity.length > 64)
                return -22;
            if(4 > 5980 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                    return -22;
                if(8 > 5980 - n)
                    return -90;
                n += 8;
                if(n > 5980)
                    return -90;
            }
        }
        {
            if(this.effort.length > 64)
                return -22;
            if(4 > 5980 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 5980 - n)
                    return -90;
                n += 8;
                if(n > 5980)
                    return -90;
            }
        }
        if((this.name.length != 0 && this.position.length != 0 && this.name.length != this.position.length) ||
           (this.name.length != 0 && this.velocity.length != 0 && this.name.length != this.velocity.length) ||
           (this.name.length != 0 && this.effort.length != 0 && this.name.length != this.effort.length) ||
           (this.position.length != 0 && this.velocity.length != 0 && this.position.length != this.velocity.length) ||
           (this.position.length != 0 && this.effort.length != 0 && this.position.length != this.effort.length) ||
           (this.velocity.length != 0 && this.effort.length != 0 && this.velocity.length != this.effort.length))
            return -22;
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        w.u32(<u32>this.name.length);
        for(let i = 0; i < this.name.length; ++i)
        {
            w.text(this.name[i]);
        }
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
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Sensor_msgsMsgJointState
    {
        const value = new Ros2Sensor_msgsMsgJointState();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.name = new Array<string>();
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
                value.name.push(decoded);
            }
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
        if((value.name.length != 0 && value.position.length != 0 && value.name.length != value.position.length) ||
           (value.name.length != 0 && value.velocity.length != 0 && value.name.length != value.velocity.length) ||
           (value.name.length != 0 && value.effort.length != 0 && value.name.length != value.effort.length) ||
           (value.position.length != 0 && value.velocity.length != 0 && value.position.length != value.velocity.length) ||
           (value.position.length != 0 && value.effort.length != 0 && value.position.length != value.effort.length) ||
           (value.velocity.length != 0 && value.effort.length != 0 && value.velocity.length != value.effort.length))
            r.valid = false;
        return value;
    }
}

export class Ros2Sensor_msgsMsgJointStateCodec implements VendorCodec<Ros2Sensor_msgsMsgJointState>
{
    static readonly codecIdentity: string = "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac";
    static readonly maxWireBytes: i32 = 5980;

    encodeChecked(value: Ros2Sensor_msgsMsgJointState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Sensor_msgsMsgJointState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Sensor_msgsMsgJointState>
    {
        const out = new VendorDecoded<Ros2Sensor_msgsMsgJointState>();
        if(bytes.length > 5980)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Sensor_msgsMsgJointState.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Sensor_msgsMsgJointState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Sensor_msgsMsgJointState() : changetype<Ros2Sensor_msgsMsgJointState>(out.value);
    }
}

/** @brief Complete original uwvm_isaac_sim_bridge/msg/ClockEvent; spellings are published in generation proof. */
export class Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
{
    static readonly AUTOMATIC: u8 = 1;
    static readonly MANUAL: u8 = 2;
    static readonly maxWireBytes: i32 = 14;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 14;
    /** @brief Exact native field kind, native scalar uint8. */
    kind: u8 = 0;
    /** @brief Exact native field phase, native scalar uint8. */
    phase: u8 = 0;
    /** @brief Exact native field frame, native scalar uint32. */
    frame: u32 = 0;
    /** @brief Exact native field sec, native scalar int32. */
    sec: i32 = 0;
    /** @brief Exact native field nanosec, native scalar uint32. */
    nanosec: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
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
        {
            if(4 > 14 - n)
                return -90;
            n += 4;
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.kind, 1);
        w.integer(<u64>this.phase, 1);
        w.integer(<u64>this.frame, 4);
        w.integer(<u64>this.sec, 4);
        w.integer(<u64>this.nanosec, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
    {
        const value = new Ros2Uwvm_isaac_sim_bridgeMsgClockEvent();
        {
            const decoded = <u8>r.integer(1);
            value.kind = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.phase = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.frame = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.sec = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.nanosec = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec implements VendorCodec<Ros2Uwvm_isaac_sim_bridgeMsgClockEvent>
{
    static readonly codecIdentity: string = "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6";
    static readonly maxWireBytes: i32 = 14;

    encodeChecked(value: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_isaac_sim_bridgeMsgClockEvent>
    {
        const out = new VendorDecoded<Ros2Uwvm_isaac_sim_bridgeMsgClockEvent>();
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
        const reader = new Reader(bytes), value = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_isaac_sim_bridgeMsgClockEvent() : changetype<Ros2Uwvm_isaac_sim_bridgeMsgClockEvent>(out.value);
    }
}

/**
 * @brief Complete original uwvm_isaac_sim_bridge/srv/ClockControl_Request; spellings are published in generation
 * proof.
 */
export class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
{
    static readonly START: u8 = 1;
    static readonly STEP: u8 = 2;
    static readonly FINISH: u8 = 3;
    static readonly CANCEL: u8 = 4;
    static readonly maxWireBytes: i32 = 22;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 22;
    /** @brief Exact native field operation, native scalar uint8. */
    operation: u8 = 0;
    /** @brief Exact native field session_nonce, native scalar uint64. */
    session_nonce: u64 = 0;
    /** @brief Exact native field request_sequence, native scalar uint32. */
    request_sequence: u32 = 0;
    /** @brief Exact native field phase, native scalar uint8. */
    phase: u8 = 0;
    /** @brief Exact native field frame, native scalar uint32. */
    frame: u32 = 0;
    /** @brief Exact native field impulse, native scalar bool. */
    impulse: bool = false;
    /** @brief Exact native field extra_update, native scalar bool. */
    extra_update: bool = false;
    /** @brief Exact native field pacing_milliseconds, native scalar uint16. */
    pacing_milliseconds: u16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 22 - n)
                return -90;
            n += 1;
            if(n > 22)
                return -90;
        }
        {
            if(8 > 22 - n)
                return -90;
            n += 8;
            if(n > 22)
                return -90;
        }
        {
            if(4 > 22 - n)
                return -90;
            n += 4;
            if(n > 22)
                return -90;
        }
        {
            if(1 > 22 - n)
                return -90;
            n += 1;
            if(n > 22)
                return -90;
        }
        {
            if(4 > 22 - n)
                return -90;
            n += 4;
            if(n > 22)
                return -90;
        }
        {
            if(1 > 22 - n)
                return -90;
            n += 1;
            if(n > 22)
                return -90;
        }
        {
            if(1 > 22 - n)
                return -90;
            n += 1;
            if(n > 22)
                return -90;
        }
        {
            if(2 > 22 - n)
                return -90;
            n += 2;
            if(n > 22)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.operation, 1);
        w.integer(<u64>this.session_nonce, 8);
        w.integer(<u64>this.request_sequence, 4);
        w.integer(<u64>this.phase, 1);
        w.integer(<u64>this.frame, 4);
        w.u8(this.impulse ? 1 : 0);
        w.u8(this.extra_update ? 1 : 0);
        w.integer(<u64>this.pacing_milliseconds, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
    {
        const value = new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request();
        {
            const decoded = <u8>r.integer(1);
            value.operation = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.session_nonce = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.request_sequence = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.phase = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.frame = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.impulse = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.extra_update = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.pacing_milliseconds = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec implements VendorCodec<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19";
    static readonly maxWireBytes: i32 = 22;

    encodeChecked(value: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>();
        if(bytes.length > 22)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 22)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request()
                                  : changetype<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>(out.value);
    }
}

/**
 * @brief Complete original uwvm_isaac_sim_bridge/srv/ClockControl_Response; spellings are published in generation
 * proof.
 */
export class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** @brief Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** @brief Exact native field session_nonce, native scalar uint64. */
    session_nonce: u64 = 0;
    /** @brief Exact native field request_sequence, native scalar uint32. */
    request_sequence: u32 = 0;
    /** @brief Exact native field state, native scalar uint8. */
    state: u8 = 0;
    /** @brief Exact native field actual_app_updates, native scalar uint64. */
    actual_app_updates: u64 = 0;
    /** @brief Exact native field completed_steps, native scalar uint32. */
    completed_steps: u32 = 0;
    /** @brief Exact native field has_event, native scalar bool. */
    has_event: bool = false;
    /** @brief Exact native field event, native scalar uwvm_isaac_sim_bridge/msg/ClockEvent. */
    event: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent = new Ros2Uwvm_isaac_sim_bridgeMsgClockEvent();
    /** @brief Exact native field cleanup_status, native scalar uint32. */
    cleanup_status: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 48 - n)
                return -90;
            n += 4;
            if(n > 48)
                return -90;
        }
        {
            if(8 > 48 - n)
                return -90;
            n += 8;
            if(n > 48)
                return -90;
        }
        {
            if(4 > 48 - n)
                return -90;
            n += 4;
            if(n > 48)
                return -90;
        }
        {
            if(1 > 48 - n)
                return -90;
            n += 1;
            if(n > 48)
                return -90;
        }
        {
            if(8 > 48 - n)
                return -90;
            n += 8;
            if(n > 48)
                return -90;
        }
        {
            if(4 > 48 - n)
                return -90;
            n += 4;
            if(n > 48)
                return -90;
        }
        {
            if(1 > 48 - n)
                return -90;
            n += 1;
            if(n > 48)
                return -90;
        }
        {
            const child = this.event.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
            if(n > 48)
                return -90;
        }
        {
            if(4 > 48 - n)
                return -90;
            n += 4;
            if(n > 48)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.integer(<u64>this.session_nonce, 8);
        w.integer(<u64>this.request_sequence, 4);
        w.integer(<u64>this.state, 1);
        w.integer(<u64>this.actual_app_updates, 8);
        w.integer(<u64>this.completed_steps, 4);
        w.u8(this.has_event ? 1 : 0);
        this.event.writeControl(w);
        w.integer(<u64>this.cleanup_status, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
    {
        const value = new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.session_nonce = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.request_sequence = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.state = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.actual_app_updates = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.completed_steps = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.has_event = decoded;
        }
        {
            const decoded = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.readControl(r);
            value.event = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.cleanup_status = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec implements VendorCodec<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>();
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
        const reader = new Reader(bytes), value = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response()
                                  : changetype<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>(out.value);
    }
}
