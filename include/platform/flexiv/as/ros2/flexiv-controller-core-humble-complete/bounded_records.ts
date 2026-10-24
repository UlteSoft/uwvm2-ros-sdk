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
    /**
     * @brief This message communicates ROS Time defined here:
     * https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
     * values.
     * @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    sec: i32 = 0;
    /**
     * @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
     * e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
     * represented as {sec: 1, nanosec: 7e8}
     * @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
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

/** @brief Complete original builtin_interfaces/msg/Duration; spellings are published in generation proof. */
export class Ros2Builtin_interfacesMsgDuration
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /**
     * @brief Duration defines a period between two time points. Messages of this datatype are of ROS Time
     * following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component,
     * valid over all int32 values.
     * @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    sec: i32 = 0;
    /**
     * @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
     * e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is
     * represented as {sec: 1, nanosec: 7e8}
     * @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
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
    static readControl(r: Reader): Ros2Builtin_interfacesMsgDuration
    {
        const value = new Ros2Builtin_interfacesMsgDuration();
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

export class Ros2Builtin_interfacesMsgDurationCodec implements VendorCodec<Ros2Builtin_interfacesMsgDuration>
{
    static readonly codecIdentity: string = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Builtin_interfacesMsgDuration): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Builtin_interfacesMsgDuration): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Builtin_interfacesMsgDuration>
    {
        const out = new VendorDecoded<Ros2Builtin_interfacesMsgDuration>();
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
        const reader = new Reader(bytes), value = Ros2Builtin_interfacesMsgDuration.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Builtin_interfacesMsgDuration
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Builtin_interfacesMsgDuration() : changetype<Ros2Builtin_interfacesMsgDuration>(out.value);
    }
}

/** @brief Complete original std_msgs/msg/Header; spellings are published in generation proof. */
export class Ros2Std_msgsMsgHeader
{
    static readonly maxWireBytes: i32 = 268;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 268;
    /**
     * @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
     * timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
     * seconds and nanoseconds.
     * @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /**
     * @brief Transform frame with which this data is associated.
     * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
     * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
     */
    frame_id: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 268 - n)
                return -90;
            n += child;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.frame_id);
            if(size > 256)
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
            value.frame_id = decoded;
        }
        return value;
    }
}

export class Ros2Std_msgsMsgHeaderCodec implements VendorCodec<Ros2Std_msgsMsgHeader>
{
    static readonly codecIdentity: string = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
    static readonly maxWireBytes: i32 = 268;

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
    static readonly maxWireBytes: i32 = 9372;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9372;
    /**
     * @brief This is a message that holds data to describe the state of a set of torque controlled joints.
     * The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
     * m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
     * N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
     * states were recorded. All the joint states in one message have to be recorded at the same time.
     * This message consists of a multiple arrays, one for each part of the joint state. The goal is to
     * make each of the fields optional. When e.g. your joints have no effort associated with them, you can
     * leave the effort array empty.  All arrays in this message should have the same size, or be empty.
     * This is the only way to uniquely associate the joint name with the correct states.
     * @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Retain the complete original string field.
     * @details Original sensor_msgs/msg/JointState.name; native type string. At most 32 elements. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    name: Array < string >= new Array<string>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    position: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    velocity: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    effort: Array < f64 >= new Array<f64>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 9372 - n)
                return -90;
            n += child;
            if(n > 9372)
                return -90;
        }
        {
            if(this.name.length > 32)
                return -22;
            if(4 > 9372 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(!validUnicode(this.name[i]) || this.name[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.name[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 9372 - n)
                    return -90;
                n += 4 + size;
                if(n > 9372)
                    return -90;
            }
        }
        {
            if(this.position.length > 32)
                return -22;
            if(4 > 9372 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                    return -22;
                if(8 > 9372 - n)
                    return -90;
                n += 8;
                if(n > 9372)
                    return -90;
            }
        }
        {
            if(this.velocity.length > 32)
                return -22;
            if(4 > 9372 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                    return -22;
                if(8 > 9372 - n)
                    return -90;
                n += 8;
                if(n > 9372)
                    return -90;
            }
        }
        {
            if(this.effort.length > 32)
                return -22;
            if(4 > 9372 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 9372 - n)
                    return -90;
                n += 8;
                if(n > 9372)
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
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.name = new Array<string>();
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
                value.name.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
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
            if(!r.valid || count > 32)
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
            if(!r.valid || count > 32)
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
    static readonly codecIdentity: string = "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556";
    static readonly maxWireBytes: i32 = 9372;

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
        if(bytes.length > 9372)
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

/** @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint; spellings are published in generation proof. */
export class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    static readonly maxWireBytes: i32 = 1048;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1048;
    /**
     * @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
     * positions[, effort] for the trajectory to be executed. All specified values are in the same order as
     * the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
     * "0" position. The units depend on the specific joint type: radians for revolute or continuous
     * joints, and meters for prismatic joints.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most
     * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    positions: Array < f64 >= new Array<f64>();
    /**
     * @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
     * for revolute or continuous joints, and meters/second for prismatic joints.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
     * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    velocities: Array < f64 >= new Array<f64>();
    /**
     * @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
     * for revolute or continuous joints, and meters/second^2 for prismatic joints.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
     * most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    accelerations: Array < f64 >= new Array<f64>();
    /**
     * @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
     * denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    effort: Array < f64 >= new Array<f64>();
    /**
     * @brief Desired time from the trajectory start to arrive at this trajectory point.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
     * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    time_from_start: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.positions.length > 32)
                return -22;
            if(4 > 1048 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.positions.length; ++i)
            {
                if(!isFinite(this.positions[i]))
                    return -22;
                if(8 > 1048 - n)
                    return -90;
                n += 8;
                if(n > 1048)
                    return -90;
            }
        }
        {
            if(this.velocities.length > 32)
                return -22;
            if(4 > 1048 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocities.length; ++i)
            {
                if(!isFinite(this.velocities[i]))
                    return -22;
                if(8 > 1048 - n)
                    return -90;
                n += 8;
                if(n > 1048)
                    return -90;
            }
        }
        {
            if(this.accelerations.length > 32)
                return -22;
            if(4 > 1048 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.accelerations.length; ++i)
            {
                if(!isFinite(this.accelerations[i]))
                    return -22;
                if(8 > 1048 - n)
                    return -90;
                n += 8;
                if(n > 1048)
                    return -90;
            }
        }
        {
            if(this.effort.length > 32)
                return -22;
            if(4 > 1048 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 1048 - n)
                    return -90;
                n += 8;
                if(n > 1048)
                    return -90;
            }
        }
        {
            const child = this.time_from_start.wireSize();
            if(child < 0)
                return child;
            if(child > 1048 - n)
                return -90;
            n += child;
            if(n > 1048)
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
        w.u32(<u32>this.positions.length);
        for(let i = 0; i < this.positions.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.positions[i]), 8);
        }
        w.u32(<u32>this.velocities.length);
        for(let i = 0; i < this.velocities.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.velocities[i]), 8);
        }
        w.u32(<u32>this.accelerations.length);
        for(let i = 0; i < this.accelerations.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.accelerations[i]), 8);
        }
        w.u32(<u32>this.effort.length);
        for(let i = 0; i < this.effort.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.effort[i]), 8);
        }
        this.time_from_start.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        const value = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.positions = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.positions.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.velocities = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.velocities.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.accelerations = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.accelerations.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
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
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.time_from_start = decoded;
        }
        return value;
    }
}

export class Ros2Trajectory_msgsMsgJointTrajectoryPointCodec implements VendorCodec<Ros2Trajectory_msgsMsgJointTrajectoryPoint>
{
    static readonly codecIdentity: string = "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c";
    static readonly maxWireBytes: i32 = 1048;

    encodeChecked(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Trajectory_msgsMsgJointTrajectoryPoint>
    {
        const out = new VendorDecoded<Ros2Trajectory_msgsMsgJointTrajectoryPoint>();
        if(bytes.length > 1048)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Trajectory_msgsMsgJointTrajectoryPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Trajectory_msgsMsgJointTrajectoryPoint() : changetype<Ros2Trajectory_msgsMsgJointTrajectoryPoint>(out.value);
    }
}

/** @brief Complete original trajectory_msgs/msg/JointTrajectory; spellings are published in generation proof. */
export class Ros2Trajectory_msgsMsgJointTrajectory
{
    static readonly maxWireBytes: i32 = 16980;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16980;
    /**
     * @brief The header is used to specify the coordinate frame and the reference time for the trajectory
     * durations
     * @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief The names of the active joints in each trajectory point. These names are ordered and must
     * correspond to the values in each trajectory point.
     * @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 32
     * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
     * efforts of the joints at each time point.
     * @details Original trajectory_msgs/msg/JointTrajectory.points; native type
     * trajectory_msgs/msg/JointTrajectoryPoint. At most 8 elements. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    points: Array < Ros2Trajectory_msgsMsgJointTrajectoryPoint >= new Array<Ros2Trajectory_msgsMsgJointTrajectoryPoint>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 16980 - n)
                return -90;
            n += child;
            if(n > 16980)
                return -90;
        }
        {
            if(this.joint_names.length > 32)
                return -22;
            if(4 > 16980 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 16980 - n)
                    return -90;
                n += 4 + size;
                if(n > 16980)
                    return -90;
            }
        }
        {
            if(this.points.length > 8)
                return -22;
            if(4 > 16980 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.points.length; ++i)
            {
                const child = this.points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 16980 - n)
                    return -90;
                n += child;
                if(n > 16980)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        w.u32(<u32>this.joint_names.length);
        for(let i = 0; i < this.joint_names.length; ++i)
        {
            w.text(this.joint_names[i]);
        }
        w.u32(<u32>this.points.length);
        for(let i = 0; i < this.points.length; ++i)
        {
            this.points[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Trajectory_msgsMsgJointTrajectory
    {
        const value = new Ros2Trajectory_msgsMsgJointTrajectory();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.joint_names = new Array<string>();
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
                value.joint_names.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.points = new Array<Ros2Trajectory_msgsMsgJointTrajectoryPoint>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readControl(r);
                value.points.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Trajectory_msgsMsgJointTrajectoryCodec implements VendorCodec<Ros2Trajectory_msgsMsgJointTrajectory>
{
    static readonly codecIdentity: string = "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4";
    static readonly maxWireBytes: i32 = 16980;

    encodeChecked(value: Ros2Trajectory_msgsMsgJointTrajectory): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Trajectory_msgsMsgJointTrajectory): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Trajectory_msgsMsgJointTrajectory>
    {
        const out = new VendorDecoded<Ros2Trajectory_msgsMsgJointTrajectory>();
        if(bytes.length > 16980)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Trajectory_msgsMsgJointTrajectory.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Trajectory_msgsMsgJointTrajectory
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Trajectory_msgsMsgJointTrajectory() : changetype<Ros2Trajectory_msgsMsgJointTrajectory>(out.value);
    }
}

/** @brief Complete original std_msgs/msg/MultiArrayDimension; spellings are published in generation proof. */
export class Ros2Std_msgsMsgMultiArrayDimension
{
    static readonly maxWireBytes: i32 = 268;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 268;
    /**
     * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
     * recommended to create your own semantically meaningful message. However if you would like to
     * continue using this please use the equivalent in example_msgs. label of given dimension
     * @details Original std_msgs/msg/MultiArrayDimension.label; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    label: string = "";
    /**
     * @brief size of given dimension (in type units)
     * @details Original std_msgs/msg/MultiArrayDimension.size; native type uint32. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    size: u32 = 0;
    /**
     * @brief stride of given dimension
     * @details Original std_msgs/msg/MultiArrayDimension.stride; native type uint32. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    stride: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.label) || this.label.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.label);
            if(size > 256)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        {
            if(4 > 268 - n)
                return -90;
            n += 4;
            if(n > 268)
                return -90;
        }
        {
            if(4 > 268 - n)
                return -90;
            n += 4;
            if(n > 268)
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
        w.text(this.label);
        w.integer(<u64>this.size, 4);
        w.integer(<u64>this.stride, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Std_msgsMsgMultiArrayDimension
    {
        const value = new Ros2Std_msgsMsgMultiArrayDimension();
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

export class Ros2Std_msgsMsgMultiArrayDimensionCodec implements VendorCodec<Ros2Std_msgsMsgMultiArrayDimension>
{
    static readonly codecIdentity: string = "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d";
    static readonly maxWireBytes: i32 = 268;

    encodeChecked(value: Ros2Std_msgsMsgMultiArrayDimension): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Std_msgsMsgMultiArrayDimension): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Std_msgsMsgMultiArrayDimension>
    {
        const out = new VendorDecoded<Ros2Std_msgsMsgMultiArrayDimension>();
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
        const reader = new Reader(bytes), value = Ros2Std_msgsMsgMultiArrayDimension.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Std_msgsMsgMultiArrayDimension
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Std_msgsMsgMultiArrayDimension() : changetype<Ros2Std_msgsMsgMultiArrayDimension>(out.value);
    }
}

/** @brief Complete original std_msgs/msg/MultiArrayLayout; spellings are published in generation proof. */
export class Ros2Std_msgsMsgMultiArrayLayout
{
    static readonly maxWireBytes: i32 = 2152;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2152;
    /**
     * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
     * recommended to create your own semantically meaningful message. However if you would like to
     * continue using this please use the equivalent in example_msgs. The multiarray declares a generic
     * multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner
     * most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most
     * dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A
     * standard, 3-channel 640x480 image with interleaved color channels would be specified as:
     * dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride
     * is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920
     * dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith
     * row, jth column, and kth channel. Array of dimension properties
     * @details Original std_msgs/msg/MultiArrayLayout.dim; native type std_msgs/msg/MultiArrayDimension.
     * At most 8 elements. Storage belongs to the complete value and acquires no ROS resource.
     */
    dim: Array < Ros2Std_msgsMsgMultiArrayDimension >= new Array<Ros2Std_msgsMsgMultiArrayDimension>();
    /**
     * @brief padding bytes at front of data
     * @details Original std_msgs/msg/MultiArrayLayout.data_offset; native type uint32. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    data_offset: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.dim.length > 8)
                return -22;
            if(4 > 2152 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.dim.length; ++i)
            {
                const child = this.dim[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2152 - n)
                    return -90;
                n += child;
                if(n > 2152)
                    return -90;
            }
        }
        {
            if(4 > 2152 - n)
                return -90;
            n += 4;
            if(n > 2152)
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
        w.u32(<u32>this.dim.length);
        for(let i = 0; i < this.dim.length; ++i)
        {
            this.dim[i].writeControl(w);
        }
        w.integer(<u64>this.data_offset, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Std_msgsMsgMultiArrayLayout
    {
        const value = new Ros2Std_msgsMsgMultiArrayLayout();
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.dim = new Array<Ros2Std_msgsMsgMultiArrayDimension>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Std_msgsMsgMultiArrayDimension.readControl(r);
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

export class Ros2Std_msgsMsgMultiArrayLayoutCodec implements VendorCodec<Ros2Std_msgsMsgMultiArrayLayout>
{
    static readonly codecIdentity: string = "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40";
    static readonly maxWireBytes: i32 = 2152;

    encodeChecked(value: Ros2Std_msgsMsgMultiArrayLayout): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Std_msgsMsgMultiArrayLayout): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Std_msgsMsgMultiArrayLayout>
    {
        const out = new VendorDecoded<Ros2Std_msgsMsgMultiArrayLayout>();
        if(bytes.length > 2152)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Std_msgsMsgMultiArrayLayout.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Std_msgsMsgMultiArrayLayout
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Std_msgsMsgMultiArrayLayout() : changetype<Ros2Std_msgsMsgMultiArrayLayout>(out.value);
    }
}

/** @brief Complete original std_msgs/msg/Float64MultiArray; spellings are published in generation proof. */
export class Ros2Std_msgsMsgFloat64MultiArray
{
    static readonly maxWireBytes: i32 = 2412;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2412;
    /**
     * @brief This was originally provided as an example message. It is deprecated as of Foxy It is
     * recommended to create your own semantically meaningful message. However if you would like to
     * continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout
     * message definition for documentation on all multiarrays. specification of data layout
     * @details Original std_msgs/msg/Float64MultiArray.layout; native type std_msgs/msg/MultiArrayLayout.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    layout: Ros2Std_msgsMsgMultiArrayLayout = new Ros2Std_msgsMsgMultiArrayLayout();
    /**
     * @brief array of data
     * @details Original std_msgs/msg/Float64MultiArray.data; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    data: Array < f64 >= new Array<f64>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.layout.wireSize();
            if(child < 0)
                return child;
            if(child > 2412 - n)
                return -90;
            n += child;
            if(n > 2412)
                return -90;
        }
        {
            if(this.data.length > 32)
                return -22;
            if(4 > 2412 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                if(!isFinite(this.data[i]))
                    return -22;
                if(8 > 2412 - n)
                    return -90;
                n += 8;
                if(n > 2412)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.layout.writeControl(w);
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.data[i]), 8);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Std_msgsMsgFloat64MultiArray
    {
        const value = new Ros2Std_msgsMsgFloat64MultiArray();
        {
            const decoded = Ros2Std_msgsMsgMultiArrayLayout.readControl(r);
            value.layout = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
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

export class Ros2Std_msgsMsgFloat64MultiArrayCodec implements VendorCodec<Ros2Std_msgsMsgFloat64MultiArray>
{
    static readonly codecIdentity: string = "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2";
    static readonly maxWireBytes: i32 = 2412;

    encodeChecked(value: Ros2Std_msgsMsgFloat64MultiArray): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Std_msgsMsgFloat64MultiArray): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Std_msgsMsgFloat64MultiArray>
    {
        const out = new VendorDecoded<Ros2Std_msgsMsgFloat64MultiArray>();
        if(bytes.length > 2412)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Std_msgsMsgFloat64MultiArray.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Std_msgsMsgFloat64MultiArray
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Std_msgsMsgFloat64MultiArray() : changetype<Ros2Std_msgsMsgFloat64MultiArray>(out.value);
    }
}
