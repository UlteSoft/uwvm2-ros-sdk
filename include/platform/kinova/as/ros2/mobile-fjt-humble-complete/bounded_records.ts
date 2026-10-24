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

/** @brief Complete original std_msgs/msg/Header; spellings are published in generation proof. */
export class Ros2Std_msgsMsgHeader
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
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
     * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
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
            if(child > 140 - n)
                return -90;
            n += child;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf("\0") >= 0)
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
    static readonly codecIdentity: string = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
    static readonly maxWireBytes: i32 = 140;

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

/** @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint; spellings are published in generation proof. */
export class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    static readonly maxWireBytes: i32 = 280;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 280;
    /**
     * @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
     * positions[, effort] for the trajectory to be executed. All specified values are in the same order as
     * the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
     * "0" position. The units depend on the specific joint type: radians for revolute or continuous
     * joints, and meters for prismatic joints.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most 8
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    positions: Array < f64 >= new Array<f64>();
    /**
     * @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
     * for revolute or continuous joints, and meters/second for prismatic joints.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
     * 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    velocities: Array < f64 >= new Array<f64>();
    /**
     * @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
     * for revolute or continuous joints, and meters/second^2 for prismatic joints.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
     * most 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    accelerations: Array < f64 >= new Array<f64>();
    /**
     * @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
     * denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
     * @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 8
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
            if(this.positions.length > 8)
                return -22;
            if(4 > 280 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.positions.length; ++i)
            {
                if(!isFinite(this.positions[i]))
                    return -22;
                if(8 > 280 - n)
                    return -90;
                n += 8;
                if(n > 280)
                    return -90;
            }
        }
        {
            if(this.velocities.length > 8)
                return -22;
            if(4 > 280 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocities.length; ++i)
            {
                if(!isFinite(this.velocities[i]))
                    return -22;
                if(8 > 280 - n)
                    return -90;
                n += 8;
                if(n > 280)
                    return -90;
            }
        }
        {
            if(this.accelerations.length > 8)
                return -22;
            if(4 > 280 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.accelerations.length; ++i)
            {
                if(!isFinite(this.accelerations[i]))
                    return -22;
                if(8 > 280 - n)
                    return -90;
                n += 8;
                if(n > 280)
                    return -90;
            }
        }
        {
            if(this.effort.length > 8)
                return -22;
            if(4 > 280 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 280 - n)
                    return -90;
                n += 8;
                if(n > 280)
                    return -90;
            }
        }
        {
            const child = this.time_from_start.wireSize();
            if(child < 0)
                return child;
            if(child > 280 - n)
                return -90;
            n += child;
            if(n > 280)
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
            if(!r.valid || count > 8)
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
            if(!r.valid || count > 8)
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
            if(!r.valid || count > 8)
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
            if(!r.valid || count > 8)
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
    static readonly codecIdentity: string = "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1";
    static readonly maxWireBytes: i32 = 280;

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
        if(bytes.length > 280)
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
    static readonly maxWireBytes: i32 = 1484;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1484;
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
     * @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 8
     * elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
     * efforts of the joints at each time point.
     * @details Original trajectory_msgs/msg/JointTrajectory.points; native type
     * trajectory_msgs/msg/JointTrajectoryPoint. At most 1 elements. Storage belongs to the complete value
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
            if(child > 1484 - n)
                return -90;
            n += child;
            if(n > 1484)
                return -90;
        }
        {
            if(this.joint_names.length > 8)
                return -22;
            if(4 > 1484 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 1484 - n)
                    return -90;
                n += 4 + size;
                if(n > 1484)
                    return -90;
            }
        }
        {
            if(this.points.length > 1)
                return -22;
            if(4 > 1484 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.points.length; ++i)
            {
                const child = this.points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 1484 - n)
                    return -90;
                n += child;
                if(n > 1484)
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
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.joint_names = new Array<string>();
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
                value.joint_names.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 1)
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
    static readonly codecIdentity: string = "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77";
    static readonly maxWireBytes: i32 = 1484;

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
        if(bytes.length > 1484)
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

/** @brief Complete original geometry_msgs/msg/Vector3; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgVector3
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /**
     * @brief This represents a vector in free space. This is semantically different than a point. A vector
     * is always anchored at the origin. When a transform is applied to a vector, only the rotational
     * component is applied.
     * @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    x: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    y: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    z: f64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
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
    static readonly codecIdentity: string = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros2Geometry_msgsMsgVector3): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
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

/** @brief Complete original geometry_msgs/msg/Quaternion; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgQuaternion
{
    static readonly maxWireBytes: i32 = 32;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 32;
    /**
     * @brief This represents an orientation in free space in quaternion form.
     * @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
     * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    x: f64 = reinterpret<f64>(u64(0x0000000000000000));
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
     * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    y: f64 = reinterpret<f64>(u64(0x0000000000000000));
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
     * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    z: f64 = reinterpret<f64>(u64(0x0000000000000000));
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
     * original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    w: f64 = reinterpret<f64>(u64(0x3ff0000000000000));

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
        w.integer(<u64>reinterpret<u64>(this.w), 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
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
    static readonly codecIdentity: string = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
    static readonly maxWireBytes: i32 = 32;

    encodeChecked(value: Ros2Geometry_msgsMsgQuaternion): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
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

/** @brief Complete original geometry_msgs/msg/Transform; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgTransform
{
    static readonly maxWireBytes: i32 = 56;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 56;
    /**
     * @brief This represents the transform between two coordinate frames in free space.
     * @details Original geometry_msgs/msg/Transform.translation; native type geometry_msgs/msg/Vector3.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    translation: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Quaternion field.
     * @details Original geometry_msgs/msg/Transform.rotation; native type geometry_msgs/msg/Quaternion.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    rotation: Ros2Geometry_msgsMsgQuaternion = new Ros2Geometry_msgsMsgQuaternion();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.translation.wireSize();
            if(child < 0)
                return child;
            if(child > 56 - n)
                return -90;
            n += child;
            if(n > 56)
                return -90;
        }
        {
            const child = this.rotation.wireSize();
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.translation.writeControl(w);
        this.rotation.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgTransform
    {
        const value = new Ros2Geometry_msgsMsgTransform();
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.translation = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgQuaternion.readControl(r);
            value.rotation = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgTransformCodec implements VendorCodec<Ros2Geometry_msgsMsgTransform>
{
    static readonly codecIdentity: string = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
    static readonly maxWireBytes: i32 = 56;

    encodeChecked(value: Ros2Geometry_msgsMsgTransform): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgTransform): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgTransform>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgTransform>();
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
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgTransform.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgTransform
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgTransform() : changetype<Ros2Geometry_msgsMsgTransform>(out.value);
    }
}

/** @brief Complete original geometry_msgs/msg/Twist; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgTwist
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /**
     * @brief This expresses velocity in free space broken into its linear and angular parts.
     * @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    linear: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    angular: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.linear.writeControl(w);
        this.angular.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
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
    static readonly codecIdentity: string = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros2Geometry_msgsMsgTwist): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
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

/** @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; spellings are published in generation proof. */
export class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    static readonly maxWireBytes: i32 = 844;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 844;
    /**
     * @brief Each multi-dof joint can specify a transform (up to 6 DOF).
     * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms; native type
     * geometry_msgs/msg/Transform. At most 1 elements. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    transforms: Array < Ros2Geometry_msgsMsgTransform >= new Array<Ros2Geometry_msgsMsgTransform>();
    /**
     * @brief There can be a velocity specified for the origin of the joint.
     * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities; native type
     * geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    velocities: Array < Ros2Geometry_msgsMsgTwist >= new Array<Ros2Geometry_msgsMsgTwist>();
    /**
     * @brief There can be an acceleration specified for the origin of the joint.
     * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations; native type
     * geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    accelerations: Array < Ros2Geometry_msgsMsgTwist >= new Array<Ros2Geometry_msgsMsgTwist>();
    /**
     * @brief Desired time from the trajectory start to arrive at this trajectory point.
     * @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start; native type
     * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    time_from_start: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.transforms.length > 1)
                return -22;
            if(4 > 844 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.transforms.length; ++i)
            {
                const child = this.transforms[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 844 - n)
                    return -90;
                n += child;
                if(n > 844)
                    return -90;
            }
        }
        {
            if(this.velocities.length > 8)
                return -22;
            if(4 > 844 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocities.length; ++i)
            {
                const child = this.velocities[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 844 - n)
                    return -90;
                n += child;
                if(n > 844)
                    return -90;
            }
        }
        {
            if(this.accelerations.length > 8)
                return -22;
            if(4 > 844 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.accelerations.length; ++i)
            {
                const child = this.accelerations[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 844 - n)
                    return -90;
                n += child;
                if(n > 844)
                    return -90;
            }
        }
        {
            const child = this.time_from_start.wireSize();
            if(child < 0)
                return child;
            if(child > 844 - n)
                return -90;
            n += child;
            if(n > 844)
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
        w.u32(<u32>this.transforms.length);
        for(let i = 0; i < this.transforms.length; ++i)
        {
            this.transforms[i].writeControl(w);
        }
        w.u32(<u32>this.velocities.length);
        for(let i = 0; i < this.velocities.length; ++i)
        {
            this.velocities[i].writeControl(w);
        }
        w.u32(<u32>this.accelerations.length);
        for(let i = 0; i < this.accelerations.length; ++i)
        {
            this.accelerations[i].writeControl(w);
        }
        this.time_from_start.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
        const value = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        {
            const count = r.u32();
            if(!r.valid || count > 1)
            {
                r.valid = false;
                return value;
            }
            value.transforms = new Array<Ros2Geometry_msgsMsgTransform>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgTransform.readControl(r);
                value.transforms.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.velocities = new Array<Ros2Geometry_msgsMsgTwist>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgTwist.readControl(r);
                value.velocities.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.accelerations = new Array<Ros2Geometry_msgsMsgTwist>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgTwist.readControl(r);
                value.accelerations.push(decoded);
            }
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.time_from_start = decoded;
        }
        return value;
    }
}

export class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec implements VendorCodec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>
{
    static readonly codecIdentity: string = "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf";
    static readonly maxWireBytes: i32 = 844;

    encodeChecked(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>
    {
        const out = new VendorDecoded<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>();
        if(bytes.length > 844)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
                                  : changetype<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>(out.value);
    }
}

/** @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectory; spellings are published in generation proof. */
export class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
{
    static readonly maxWireBytes: i32 = 2048;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2048;
    /**
     * @brief The header is used to specify the coordinate frame and the reference time for the trajectory
     * durations
     * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.header; native type
     * std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief A representation of a multi-dof joint trajectory (each point is a transformation) Each point
     * along the trajectory will include an array of positions/velocities/accelerations that has the same
     * length as the array of joint names, and has the same order of joints as the joint names array.
     * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names; native type string. At
     * most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
     * @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.points; native type
     * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. At most 1 elements. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    points: Array < Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint >= new Array<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 2048 - n)
                return -90;
            n += child;
            if(n > 2048)
                return -90;
        }
        {
            if(this.joint_names.length > 8)
                return -22;
            if(4 > 2048 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 2048 - n)
                    return -90;
                n += 4 + size;
                if(n > 2048)
                    return -90;
            }
        }
        {
            if(this.points.length > 1)
                return -22;
            if(4 > 2048 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.points.length; ++i)
            {
                const child = this.points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2048 - n)
                    return -90;
                n += child;
                if(n > 2048)
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
    static readControl(r: Reader): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    {
        const value = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.joint_names = new Array<string>();
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
                value.joint_names.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 1)
            {
                r.valid = false;
                return value;
            }
            value.points = new Array<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readControl(r);
                value.points.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec implements VendorCodec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>
{
    static readonly codecIdentity: string = "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5";
    static readonly maxWireBytes: i32 = 2048;

    encodeChecked(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>
    {
        const out = new VendorDecoded<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>();
        if(bytes.length > 2048)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory() : changetype<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>(out.value);
    }
}

/** @brief Complete original control_msgs/msg/JointTolerance; spellings are published in generation proof. */
export class Ros2Control_msgsMsgJointTolerance
{
    static readonly maxWireBytes: i32 = 156;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 156;
    /**
     * @brief The tolerances specify the amount the position, velocity, and accelerations can vary from the
     * setpoints.  For example, in the case of trajectory control, when the actual position varies beyond
     * (desired position + position tolerance), the trajectory goal may abort.  There are two special
     * values for tolerances: * 0 - The tolerance is unspecified and will remain at whatever the default is
     * * -1 - The tolerance is "erased".  If there was a default, the joint will be allowed to move without
     * restriction.
     * @details Original control_msgs/msg/JointTolerance.name; native type string. Scalar value. UTF-8
     * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    name: string = "";
    /**
     * @brief in radians or meters (for a revolute or prismatic joint, respectively)
     * @details Original control_msgs/msg/JointTolerance.position; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    position: f64 = 0;
    /**
     * @brief in rad/sec or m/sec
     * @details Original control_msgs/msg/JointTolerance.velocity; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    velocity: f64 = 0;
    /**
     * @brief in rad/sec^2 or m/sec^2
     * @details Original control_msgs/msg/JointTolerance.acceleration; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    acceleration: f64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 156 - n)
                return -90;
            n += 4 + size;
            if(n > 156)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(8 > 156 - n)
                return -90;
            n += 8;
            if(n > 156)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(8 > 156 - n)
                return -90;
            n += 8;
            if(n > 156)
                return -90;
        }
        {
            if(!isFinite(this.acceleration))
                return -22;
            if(8 > 156 - n)
                return -90;
            n += 8;
            if(n > 156)
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
        w.text(this.name);
        w.integer(<u64>reinterpret<u64>(this.position), 8);
        w.integer(<u64>reinterpret<u64>(this.velocity), 8);
        w.integer(<u64>reinterpret<u64>(this.acceleration), 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Control_msgsMsgJointTolerance
    {
        const value = new Ros2Control_msgsMsgJointTolerance();
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
        return value;
    }
}

export class Ros2Control_msgsMsgJointToleranceCodec implements VendorCodec<Ros2Control_msgsMsgJointTolerance>
{
    static readonly codecIdentity: string = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a";
    static readonly maxWireBytes: i32 = 156;

    encodeChecked(value: Ros2Control_msgsMsgJointTolerance): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Control_msgsMsgJointTolerance): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Control_msgsMsgJointTolerance>
    {
        const out = new VendorDecoded<Ros2Control_msgsMsgJointTolerance>();
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
        const reader = new Reader(bytes), value = Ros2Control_msgsMsgJointTolerance.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Control_msgsMsgJointTolerance
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Control_msgsMsgJointTolerance() : changetype<Ros2Control_msgsMsgJointTolerance>(out.value);
    }
}

/** @brief Complete original control_msgs/msg/JointComponentTolerance; spellings are published in generation proof. */
export class Ros2Control_msgsMsgJointComponentTolerance
{
    static readonly X_AXIS: u16 = 1;
    static readonly Y_AXIS: u16 = 2;
    static readonly Z_AXIS: u16 = 3;
    static readonly TRANSLATION: u16 = 4;
    static readonly ROTATION: u16 = 5;
    static readonly maxWireBytes: i32 = 158;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 158;
    /**
     * @brief Retain the complete original string field.
     * @details Original control_msgs/msg/JointComponentTolerance.joint_name; native type string. Scalar
     * value. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    joint_name: string = "";
    /**
     * @brief Retain the complete original uint16 field.
     * @details Original control_msgs/msg/JointComponentTolerance.component; native type uint16. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    component: u16 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original control_msgs/msg/JointComponentTolerance.position; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    position: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original control_msgs/msg/JointComponentTolerance.velocity; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    velocity: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original control_msgs/msg/JointComponentTolerance.acceleration; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    acceleration: f64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.joint_name) || this.joint_name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.joint_name);
            if(size > 128)
                return -22;
            if(4 + size > 158 - n)
                return -90;
            n += 4 + size;
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
            if(!isFinite(this.acceleration))
                return -22;
            if(8 > 158 - n)
                return -90;
            n += 8;
            if(n > 158)
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
        w.text(this.joint_name);
        w.integer(<u64>this.component, 2);
        w.integer(<u64>reinterpret<u64>(this.position), 8);
        w.integer(<u64>reinterpret<u64>(this.velocity), 8);
        w.integer(<u64>reinterpret<u64>(this.acceleration), 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Control_msgsMsgJointComponentTolerance
    {
        const value = new Ros2Control_msgsMsgJointComponentTolerance();
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
            value.joint_name = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.component = decoded;
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
        return value;
    }
}

export class Ros2Control_msgsMsgJointComponentToleranceCodec implements VendorCodec<Ros2Control_msgsMsgJointComponentTolerance>
{
    static readonly codecIdentity: string = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb";
    static readonly maxWireBytes: i32 = 158;

    encodeChecked(value: Ros2Control_msgsMsgJointComponentTolerance): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Control_msgsMsgJointComponentTolerance): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Control_msgsMsgJointComponentTolerance>
    {
        const out = new VendorDecoded<Ros2Control_msgsMsgJointComponentTolerance>();
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
        const reader = new Reader(bytes), value = Ros2Control_msgsMsgJointComponentTolerance.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Control_msgsMsgJointComponentTolerance
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Control_msgsMsgJointComponentTolerance() : changetype<Ros2Control_msgsMsgJointComponentTolerance>(out.value);
    }
}

/** @brief Complete original control_msgs/action/FollowJointTrajectory_Goal; spellings are published in generation proof. */
export class Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    static readonly maxWireBytes: i32 = 8580;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8580;
    /**
     * @brief The trajectory for all revolute, continuous or prismatic joints
     * @details Original control_msgs/action/FollowJointTrajectory_Goal.trajectory; native type
     * trajectory_msgs/msg/JointTrajectory. Scalar value. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    trajectory: Ros2Trajectory_msgsMsgJointTrajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
    /**
     * @brief The trajectory for all planar or floating joints (i.e. individual joints with more than one
     * DOF)
     * @details Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory; native type
     * trajectory_msgs/msg/MultiDOFJointTrajectory. Scalar value. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
    /**
     * @brief Tolerances for the trajectory.  If the measured joint values fall outside the tolerances the
     * trajectory goal is aborted.  Any tolerances that are not specified (by being omitted or set to 0)
     * are set to the defaults for the action server (often taken from the parameter server). Tolerances
     * applied to the joints as the trajectory is executed.  If violated, the goal aborts with error_code
     * set to PATH_TOLERANCE_VIOLATED.
     * @details Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance; native type
     * control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    path_tolerance: Array < Ros2Control_msgsMsgJointTolerance >= new Array<Ros2Control_msgsMsgJointTolerance>();
    /**
     * @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
     * @details Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance; native
     * type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    component_path_tolerance: Array < Ros2Control_msgsMsgJointComponentTolerance >= new Array<Ros2Control_msgsMsgJointComponentTolerance>();
    /**
     * @brief To report success, the joints must be within goal_tolerance of the final trajectory value.
     * The goal must be achieved by time the trajectory ends plus goal_time_tolerance.
     * (goal_time_tolerance allows some leeway in time, so that the trajectory goal can still succeed even
     * if the joints reach the goal some time after the precise end time of the trajectory).  If the joints
     * are not within goal_tolerance after "trajectory finish time" + goal_time_tolerance, the goal aborts
     * with error_code set to GOAL_TOLERANCE_VIOLATED
     * @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance; native type
     * control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    goal_tolerance: Array < Ros2Control_msgsMsgJointTolerance >= new Array<Ros2Control_msgsMsgJointTolerance>();
    /**
     * @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
     * @details Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance; native
     * type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    component_goal_tolerance: Array < Ros2Control_msgsMsgJointComponentTolerance >= new Array<Ros2Control_msgsMsgJointComponentTolerance>();
    /**
     * @brief Retain the complete original builtin_interfaces/msg/Duration field.
     * @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance; native type
     * builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    goal_time_tolerance: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.trajectory.wireSize();
            if(child < 0)
                return child;
            if(child > 8580 - n)
                return -90;
            n += child;
            if(n > 8580)
                return -90;
        }
        {
            const child = this.multi_dof_trajectory.wireSize();
            if(child < 0)
                return child;
            if(child > 8580 - n)
                return -90;
            n += child;
            if(n > 8580)
                return -90;
        }
        {
            if(this.path_tolerance.length > 8)
                return -22;
            if(4 > 8580 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.path_tolerance.length; ++i)
            {
                const child = this.path_tolerance[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 8580 - n)
                    return -90;
                n += child;
                if(n > 8580)
                    return -90;
            }
        }
        {
            if(this.component_path_tolerance.length > 8)
                return -22;
            if(4 > 8580 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.component_path_tolerance.length; ++i)
            {
                const child = this.component_path_tolerance[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 8580 - n)
                    return -90;
                n += child;
                if(n > 8580)
                    return -90;
            }
        }
        {
            if(this.goal_tolerance.length > 8)
                return -22;
            if(4 > 8580 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.goal_tolerance.length; ++i)
            {
                const child = this.goal_tolerance[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 8580 - n)
                    return -90;
                n += child;
                if(n > 8580)
                    return -90;
            }
        }
        {
            if(this.component_goal_tolerance.length > 8)
                return -22;
            if(4 > 8580 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.component_goal_tolerance.length; ++i)
            {
                const child = this.component_goal_tolerance[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 8580 - n)
                    return -90;
                n += child;
                if(n > 8580)
                    return -90;
            }
        }
        {
            const child = this.goal_time_tolerance.wireSize();
            if(child < 0)
                return child;
            if(child > 8580 - n)
                return -90;
            n += child;
            if(n > 8580)
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
        this.trajectory.writeControl(w);
        this.multi_dof_trajectory.writeControl(w);
        w.u32(<u32>this.path_tolerance.length);
        for(let i = 0; i < this.path_tolerance.length; ++i)
        {
            this.path_tolerance[i].writeControl(w);
        }
        w.u32(<u32>this.component_path_tolerance.length);
        for(let i = 0; i < this.component_path_tolerance.length; ++i)
        {
            this.component_path_tolerance[i].writeControl(w);
        }
        w.u32(<u32>this.goal_tolerance.length);
        for(let i = 0; i < this.goal_tolerance.length; ++i)
        {
            this.goal_tolerance[i].writeControl(w);
        }
        w.u32(<u32>this.component_goal_tolerance.length);
        for(let i = 0; i < this.component_goal_tolerance.length; ++i)
        {
            this.component_goal_tolerance[i].writeControl(w);
        }
        this.goal_time_tolerance.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Control_msgsActionFollowJointTrajectory_Goal
    {
        const value = new Ros2Control_msgsActionFollowJointTrajectory_Goal();
        {
            const decoded = Ros2Trajectory_msgsMsgJointTrajectory.readControl(r);
            value.trajectory = decoded;
        }
        {
            const decoded = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.readControl(r);
            value.multi_dof_trajectory = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.path_tolerance = new Array<Ros2Control_msgsMsgJointTolerance>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Control_msgsMsgJointTolerance.readControl(r);
                value.path_tolerance.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.component_path_tolerance = new Array<Ros2Control_msgsMsgJointComponentTolerance>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Control_msgsMsgJointComponentTolerance.readControl(r);
                value.component_path_tolerance.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.goal_tolerance = new Array<Ros2Control_msgsMsgJointTolerance>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Control_msgsMsgJointTolerance.readControl(r);
                value.goal_tolerance.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.component_goal_tolerance = new Array<Ros2Control_msgsMsgJointComponentTolerance>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Control_msgsMsgJointComponentTolerance.readControl(r);
                value.component_goal_tolerance.push(decoded);
            }
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.goal_time_tolerance = decoded;
        }
        return value;
    }
}

export class Ros2Control_msgsActionFollowJointTrajectory_GoalCodec implements VendorCodec<Ros2Control_msgsActionFollowJointTrajectory_Goal>
{
    static readonly codecIdentity: string = "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018";
    static readonly maxWireBytes: i32 = 8580;

    encodeChecked(value: Ros2Control_msgsActionFollowJointTrajectory_Goal): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Control_msgsActionFollowJointTrajectory_Goal): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Control_msgsActionFollowJointTrajectory_Goal>
    {
        const out = new VendorDecoded<Ros2Control_msgsActionFollowJointTrajectory_Goal>();
        if(bytes.length > 8580)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 64)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Control_msgsActionFollowJointTrajectory_Goal.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Control_msgsActionFollowJointTrajectory_Goal
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Control_msgsActionFollowJointTrajectory_Goal()
                                  : changetype<Ros2Control_msgsActionFollowJointTrajectory_Goal>(out.value);
    }
}

/** @brief Complete original control_msgs/action/FollowJointTrajectory_Result; spellings are published in generation proof. */
export class Ros2Control_msgsActionFollowJointTrajectory_Result
{
    static readonly SUCCESSFUL: i32 = 0;
    static readonly INVALID_GOAL: i32 = -1;
    static readonly INVALID_JOINTS: i32 = -2;
    static readonly OLD_HEADER_TIMESTAMP: i32 = -3;
    static readonly PATH_TOLERANCE_VIOLATED: i32 = -4;
    static readonly GOAL_TOLERANCE_VIOLATED: i32 = -5;
    static readonly maxWireBytes: i32 = 264;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 264;
    /**
     * @brief Retain the complete original int32 field.
     * @details Original control_msgs/action/FollowJointTrajectory_Result.error_code; native type int32.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    error_code: i32 = 0;
    /**
     * @brief Human readable description of the error code. Contains complementary information that is
     * especially useful when execution fails, for instance: - INVALID_GOAL: The reason for the invalid
     * goal (e.g., the requested trajectory is in the past). - INVALID_JOINTS: The mismatch between the
     * expected controller joints and those provided in the goal. - PATH_TOLERANCE_VIOLATED and
     * GOAL_TOLERANCE_VIOLATED: Which joint violated which tolerance, and by how much.
     * @details Original control_msgs/action/FollowJointTrajectory_Result.error_string; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    error_string: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 264 - n)
                return -90;
            n += 4;
            if(n > 264)
                return -90;
        }
        {
            if(!validUnicode(this.error_string) || this.error_string.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error_string);
            if(size > 256)
                return -22;
            if(4 + size > 264 - n)
                return -90;
            n += 4 + size;
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.error_code, 4);
        w.text(this.error_string);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Control_msgsActionFollowJointTrajectory_Result
    {
        const value = new Ros2Control_msgsActionFollowJointTrajectory_Result();
        {
            const decoded = <i32>r.integer(4);
            value.error_code = decoded;
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
            value.error_string = decoded;
        }
        return value;
    }
}

export class Ros2Control_msgsActionFollowJointTrajectory_ResultCodec implements VendorCodec<Ros2Control_msgsActionFollowJointTrajectory_Result>
{
    static readonly codecIdentity: string = "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649";
    static readonly maxWireBytes: i32 = 264;

    encodeChecked(value: Ros2Control_msgsActionFollowJointTrajectory_Result): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Control_msgsActionFollowJointTrajectory_Result): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Control_msgsActionFollowJointTrajectory_Result>
    {
        const out = new VendorDecoded<Ros2Control_msgsActionFollowJointTrajectory_Result>();
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
        const reader = new Reader(bytes), value = Ros2Control_msgsActionFollowJointTrajectory_Result.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Control_msgsActionFollowJointTrajectory_Result
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Control_msgsActionFollowJointTrajectory_Result()
                                  : changetype<Ros2Control_msgsActionFollowJointTrajectory_Result>(out.value);
    }
}

/** @brief Complete original control_msgs/action/FollowJointTrajectory_Feedback; spellings are published in generation proof. */
export class Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    static readonly maxWireBytes: i32 = 4708;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4708;
    /**
     * @brief Retain the complete original std_msgs/msg/Header field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.header; native type
     * std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Retain the complete original string field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names; native type
     * string. At most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.desired; native type
     * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
    /**
     * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.actual; native type
     * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
    /**
     * @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.error; native type
     * trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    error: Ros2Trajectory_msgsMsgJointTrajectoryPoint = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
    /**
     * @brief Retain the complete original string field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names; native
     * type string. At most 1 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    multi_dof_joint_names: Array < string >= new Array<string>();
    /**
     * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired; native type
     * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
    /**
     * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual; native type
     * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
    /**
     * @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
     * @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error; native type
     * trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 4708 - n)
                return -90;
            n += child;
            if(n > 4708)
                return -90;
        }
        {
            if(this.joint_names.length > 8)
                return -22;
            if(4 > 4708 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 4708 - n)
                    return -90;
                n += 4 + size;
                if(n > 4708)
                    return -90;
            }
        }
        {
            const child = this.desired.wireSize();
            if(child < 0)
                return child;
            if(child > 4708 - n)
                return -90;
            n += child;
            if(n > 4708)
                return -90;
        }
        {
            const child = this.actual.wireSize();
            if(child < 0)
                return child;
            if(child > 4708 - n)
                return -90;
            n += child;
            if(n > 4708)
                return -90;
        }
        {
            const child = this.error.wireSize();
            if(child < 0)
                return child;
            if(child > 4708 - n)
                return -90;
            n += child;
            if(n > 4708)
                return -90;
        }
        {
            if(this.multi_dof_joint_names.length > 1)
                return -22;
            if(4 > 4708 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.multi_dof_joint_names.length; ++i)
            {
                if(!validUnicode(this.multi_dof_joint_names[i]) || this.multi_dof_joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.multi_dof_joint_names[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 4708 - n)
                    return -90;
                n += 4 + size;
                if(n > 4708)
                    return -90;
            }
        }
        {
            const child = this.multi_dof_desired.wireSize();
            if(child < 0)
                return child;
            if(child > 4708 - n)
                return -90;
            n += child;
            if(n > 4708)
                return -90;
        }
        {
            const child = this.multi_dof_actual.wireSize();
            if(child < 0)
                return child;
            if(child > 4708 - n)
                return -90;
            n += child;
            if(n > 4708)
                return -90;
        }
        {
            const child = this.multi_dof_error.wireSize();
            if(child < 0)
                return child;
            if(child > 4708 - n)
                return -90;
            n += child;
            if(n > 4708)
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
        this.header.writeControl(w);
        w.u32(<u32>this.joint_names.length);
        for(let i = 0; i < this.joint_names.length; ++i)
        {
            w.text(this.joint_names[i]);
        }
        this.desired.writeControl(w);
        this.actual.writeControl(w);
        this.error.writeControl(w);
        w.u32(<u32>this.multi_dof_joint_names.length);
        for(let i = 0; i < this.multi_dof_joint_names.length; ++i)
        {
            w.text(this.multi_dof_joint_names[i]);
        }
        this.multi_dof_desired.writeControl(w);
        this.multi_dof_actual.writeControl(w);
        this.multi_dof_error.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Control_msgsActionFollowJointTrajectory_Feedback
    {
        const value = new Ros2Control_msgsActionFollowJointTrajectory_Feedback();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.joint_names = new Array<string>();
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
                value.joint_names.push(decoded);
            }
        }
        {
            const decoded = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readControl(r);
            value.desired = decoded;
        }
        {
            const decoded = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readControl(r);
            value.actual = decoded;
        }
        {
            const decoded = Ros2Trajectory_msgsMsgJointTrajectoryPoint.readControl(r);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 1)
            {
                r.valid = false;
                return value;
            }
            value.multi_dof_joint_names = new Array<string>();
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
                value.multi_dof_joint_names.push(decoded);
            }
        }
        {
            const decoded = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readControl(r);
            value.multi_dof_desired = decoded;
        }
        {
            const decoded = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readControl(r);
            value.multi_dof_actual = decoded;
        }
        {
            const decoded = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.readControl(r);
            value.multi_dof_error = decoded;
        }
        return value;
    }
}

export class Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec implements VendorCodec<Ros2Control_msgsActionFollowJointTrajectory_Feedback>
{
    static readonly codecIdentity: string = "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529";
    static readonly maxWireBytes: i32 = 4708;

    encodeChecked(value: Ros2Control_msgsActionFollowJointTrajectory_Feedback): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Control_msgsActionFollowJointTrajectory_Feedback): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Control_msgsActionFollowJointTrajectory_Feedback>
    {
        const out = new VendorDecoded<Ros2Control_msgsActionFollowJointTrajectory_Feedback>();
        if(bytes.length > 4708)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 152)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Control_msgsActionFollowJointTrajectory_Feedback.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Control_msgsActionFollowJointTrajectory_Feedback
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Control_msgsActionFollowJointTrajectory_Feedback()
                                  : changetype<Ros2Control_msgsActionFollowJointTrajectory_Feedback>(out.value);
    }
}

/** @brief Complete original sensor_msgs/msg/JointState; spellings are published in generation proof. */
export class Ros2Sensor_msgsMsgJointState
{
    static readonly maxWireBytes: i32 = 1404;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1404;
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
     * @details Original sensor_msgs/msg/JointState.name; native type string. At most 8 elements. UTF-8
     * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    name: Array < string >= new Array<string>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 8 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    position: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 8 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    velocity: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 8 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
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
            if(child > 1404 - n)
                return -90;
            n += child;
            if(n > 1404)
                return -90;
        }
        {
            if(this.name.length > 8)
                return -22;
            if(4 > 1404 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(!validUnicode(this.name[i]) || this.name[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.name[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 1404 - n)
                    return -90;
                n += 4 + size;
                if(n > 1404)
                    return -90;
            }
        }
        {
            if(this.position.length > 8)
                return -22;
            if(4 > 1404 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                    return -22;
                if(8 > 1404 - n)
                    return -90;
                n += 8;
                if(n > 1404)
                    return -90;
            }
        }
        {
            if(this.velocity.length > 8)
                return -22;
            if(4 > 1404 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                    return -22;
                if(8 > 1404 - n)
                    return -90;
                n += 8;
                if(n > 1404)
                    return -90;
            }
        }
        {
            if(this.effort.length > 8)
                return -22;
            if(4 > 1404 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 1404 - n)
                    return -90;
                n += 8;
                if(n > 1404)
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
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.name = new Array<string>();
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
                value.name.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
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
            if(!r.valid || count > 8)
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
            if(!r.valid || count > 8)
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
    static readonly codecIdentity: string = "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11";
    static readonly maxWireBytes: i32 = 1404;

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
        if(bytes.length > 1404)
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
