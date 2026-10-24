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

/** @brief Complete original flexiv_msgs/msg/JointPosVel; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgJointPosVel
{
    static readonly maxWireBytes: i32 = 112;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 112;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    positions: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    velocities: Array < f64 >= new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 7; ++i)
            this.positions.push(0);
        for(let i = 0; i < 7; ++i)
            this.velocities.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.positions.length != 7)
                return -22;
            for(let i = 0; i < this.positions.length; ++i)
            {
                if(!isFinite(this.positions[i]))
                    return -22;
                if(8 > 112 - n)
                    return -90;
                n += 8;
                if(n > 112)
                    return -90;
            }
        }
        {
            if(this.velocities.length != 7)
                return -22;
            for(let i = 0; i < this.velocities.length; ++i)
            {
                if(!isFinite(this.velocities[i]))
                    return -22;
                if(8 > 112 - n)
                    return -90;
                n += 8;
                if(n > 112)
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
        for(let i = 0; i < this.positions.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.positions[i]), 8);
        }
        for(let i = 0; i < this.velocities.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.velocities[i]), 8);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgJointPosVel
    {
        const value = new Ros2Flexiv_msgsMsgJointPosVel();
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
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
            const count: u32 = 7;
            if(!r.valid || count > 7)
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
        return value;
    }
}

export class Ros2Flexiv_msgsMsgJointPosVelCodec implements VendorCodec<Ros2Flexiv_msgsMsgJointPosVel>
{
    static readonly codecIdentity: string = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8";
    static readonly maxWireBytes: i32 = 112;

    encodeChecked(value: Ros2Flexiv_msgsMsgJointPosVel): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgJointPosVel): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgJointPosVel>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgJointPosVel>();
        if(bytes.length > 112)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 112)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgJointPosVel.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgJointPosVel
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgJointPosVel() : changetype<Ros2Flexiv_msgsMsgJointPosVel>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/Mode; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgMode
{
    static readonly MODE_UNKNOWN: i8 = -1;
    static readonly MODE_IDLE: i8 = 0;
    static readonly MODE_RT_JOINT_TORQUE: i8 = 1;
    static readonly MODE_RT_JOINT_POSITION: i8 = 2;
    static readonly MODE_NRT_JOINT_POSITION: i8 = 3;
    static readonly MODE_NRT_PLAN_EXECUTION: i8 = 4;
    static readonly MODE_NRT_PRIMITIVE_EXECUTION: i8 = 5;
    static readonly MODE_RT_CARTESIAN_MOTION_FORCE_BASE: i8 = 6;
    static readonly MODE_RT_CARTESIAN_MOTION_FORCE_TCP: i8 = 7;
    static readonly MODE_NRT_CARTESIAN_MOTION_FORCE_BASE: i8 = 8;
    static readonly MODE_NRT_CARTESIAN_MOTION_FORCE_TCP: i8 = 9;
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /**
     * @brief Retain the complete original int8 field.
     * @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    mode: i8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.mode, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgMode
    {
        const value = new Ros2Flexiv_msgsMsgMode();
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgModeCodec implements VendorCodec<Ros2Flexiv_msgsMsgMode>
{
    static readonly codecIdentity: string = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Flexiv_msgsMsgMode): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgMode): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgMode>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgMode>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgMode.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgMode
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgMode() : changetype<Ros2Flexiv_msgsMsgMode>(out.value);
    }
}

/** @brief Complete original geometry_msgs/msg/Point; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPoint
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /**
     * @brief This contains the position of a point in free space
     * @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    x: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    y: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
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
    static readonly codecIdentity: string = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros2Geometry_msgsMsgPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
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

/** @brief Complete original geometry_msgs/msg/Pose; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPose
{
    static readonly maxWireBytes: i32 = 56;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 56;
    /**
     * @brief A representation of pose in free space, composed of position and orientation.
     * @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    position: Ros2Geometry_msgsMsgPoint = new Ros2Geometry_msgsMsgPoint();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Quaternion field.
     * @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    orientation: Ros2Geometry_msgsMsgQuaternion = new Ros2Geometry_msgsMsgQuaternion();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.position.writeControl(w);
        this.orientation.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
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
    static readonly codecIdentity: string = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
    static readonly maxWireBytes: i32 = 56;

    encodeChecked(value: Ros2Geometry_msgsMsgPose): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
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

/** @brief Complete original geometry_msgs/msg/Accel; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgAccel
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /**
     * @brief This expresses acceleration in free space broken into its linear and angular parts.
     * @details Original geometry_msgs/msg/Accel.linear; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    linear: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original geometry_msgs/msg/Accel.angular; native type geometry_msgs/msg/Vector3. Scalar
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
    static readControl(r: Reader): Ros2Geometry_msgsMsgAccel
    {
        const value = new Ros2Geometry_msgsMsgAccel();
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

export class Ros2Geometry_msgsMsgAccelCodec implements VendorCodec<Ros2Geometry_msgsMsgAccel>
{
    static readonly codecIdentity: string = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros2Geometry_msgsMsgAccel): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgAccel): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgAccel>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgAccel>();
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
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgAccel.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgAccel
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgAccel() : changetype<Ros2Geometry_msgsMsgAccel>(out.value);
    }
}

/** @brief Complete original geometry_msgs/msg/Wrench; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgWrench
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /**
     * @brief This represents force in free space, separated into its linear and angular parts.
     * @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    force: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    torque: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.force.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
            if(n > 48)
                return -90;
        }
        {
            const child = this.torque.wireSize();
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
        this.force.writeControl(w);
        this.torque.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgWrench
    {
        const value = new Ros2Geometry_msgsMsgWrench();
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.force = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.torque = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgWrenchCodec implements VendorCodec<Ros2Geometry_msgsMsgWrench>
{
    static readonly codecIdentity: string = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros2Geometry_msgsMsgWrench): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgWrench): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgWrench>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgWrench>();
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
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgWrench.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgWrench
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgWrench() : changetype<Ros2Geometry_msgsMsgWrench>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/RobotStates; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgRobotStates
{
    static readonly maxWireBytes: i32 = 864;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 864;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/RobotStates.q; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    q: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    theta: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    dq: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    dtheta: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    tau: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/RobotStates.tau_des; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    tau_des: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    tau_dot: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    tau_ext: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Pose field.
     * @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/Pose. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    tcp_pose: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Pose field.
     * @details Original flexiv_msgs/msg/RobotStates.tcp_pose_des; native type geometry_msgs/msg/Pose.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    tcp_pose_des: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Accel field.
     * @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/Accel. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    tcp_vel: Ros2Geometry_msgsMsgAccel = new Ros2Geometry_msgsMsgAccel();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Pose field.
     * @details Original flexiv_msgs/msg/RobotStates.cam_pose; native type geometry_msgs/msg/Pose. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    cam_pose: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Pose field.
     * @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type geometry_msgs/msg/Pose.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    flange_pose: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Wrench field.
     * @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type geometry_msgs/msg/Wrench.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    ft_sensor_raw: Ros2Geometry_msgsMsgWrench = new Ros2Geometry_msgsMsgWrench();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Wrench field.
     * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame; native type
     * geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    ext_wrench_tcp_frame: Ros2Geometry_msgsMsgWrench = new Ros2Geometry_msgsMsgWrench();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Wrench field.
     * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_base_frame; native type
     * geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    ext_wrench_base_frame: Ros2Geometry_msgsMsgWrench = new Ros2Geometry_msgsMsgWrench();

    constructor()
    {
        for(let i = 0; i < 7; ++i)
            this.q.push(0);
        for(let i = 0; i < 7; ++i)
            this.theta.push(0);
        for(let i = 0; i < 7; ++i)
            this.dq.push(0);
        for(let i = 0; i < 7; ++i)
            this.dtheta.push(0);
        for(let i = 0; i < 7; ++i)
            this.tau.push(0);
        for(let i = 0; i < 7; ++i)
            this.tau_des.push(0);
        for(let i = 0; i < 7; ++i)
            this.tau_dot.push(0);
        for(let i = 0; i < 7; ++i)
            this.tau_ext.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.q.length != 7)
                return -22;
            for(let i = 0; i < this.q.length; ++i)
            {
                if(!isFinite(this.q[i]))
                    return -22;
                if(8 > 864 - n)
                    return -90;
                n += 8;
                if(n > 864)
                    return -90;
            }
        }
        {
            if(this.theta.length != 7)
                return -22;
            for(let i = 0; i < this.theta.length; ++i)
            {
                if(!isFinite(this.theta[i]))
                    return -22;
                if(8 > 864 - n)
                    return -90;
                n += 8;
                if(n > 864)
                    return -90;
            }
        }
        {
            if(this.dq.length != 7)
                return -22;
            for(let i = 0; i < this.dq.length; ++i)
            {
                if(!isFinite(this.dq[i]))
                    return -22;
                if(8 > 864 - n)
                    return -90;
                n += 8;
                if(n > 864)
                    return -90;
            }
        }
        {
            if(this.dtheta.length != 7)
                return -22;
            for(let i = 0; i < this.dtheta.length; ++i)
            {
                if(!isFinite(this.dtheta[i]))
                    return -22;
                if(8 > 864 - n)
                    return -90;
                n += 8;
                if(n > 864)
                    return -90;
            }
        }
        {
            if(this.tau.length != 7)
                return -22;
            for(let i = 0; i < this.tau.length; ++i)
            {
                if(!isFinite(this.tau[i]))
                    return -22;
                if(8 > 864 - n)
                    return -90;
                n += 8;
                if(n > 864)
                    return -90;
            }
        }
        {
            if(this.tau_des.length != 7)
                return -22;
            for(let i = 0; i < this.tau_des.length; ++i)
            {
                if(!isFinite(this.tau_des[i]))
                    return -22;
                if(8 > 864 - n)
                    return -90;
                n += 8;
                if(n > 864)
                    return -90;
            }
        }
        {
            if(this.tau_dot.length != 7)
                return -22;
            for(let i = 0; i < this.tau_dot.length; ++i)
            {
                if(!isFinite(this.tau_dot[i]))
                    return -22;
                if(8 > 864 - n)
                    return -90;
                n += 8;
                if(n > 864)
                    return -90;
            }
        }
        {
            if(this.tau_ext.length != 7)
                return -22;
            for(let i = 0; i < this.tau_ext.length; ++i)
            {
                if(!isFinite(this.tau_ext[i]))
                    return -22;
                if(8 > 864 - n)
                    return -90;
                n += 8;
                if(n > 864)
                    return -90;
            }
        }
        {
            const child = this.tcp_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 864 - n)
                return -90;
            n += child;
            if(n > 864)
                return -90;
        }
        {
            const child = this.tcp_pose_des.wireSize();
            if(child < 0)
                return child;
            if(child > 864 - n)
                return -90;
            n += child;
            if(n > 864)
                return -90;
        }
        {
            const child = this.tcp_vel.wireSize();
            if(child < 0)
                return child;
            if(child > 864 - n)
                return -90;
            n += child;
            if(n > 864)
                return -90;
        }
        {
            const child = this.cam_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 864 - n)
                return -90;
            n += child;
            if(n > 864)
                return -90;
        }
        {
            const child = this.flange_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 864 - n)
                return -90;
            n += child;
            if(n > 864)
                return -90;
        }
        {
            const child = this.ft_sensor_raw.wireSize();
            if(child < 0)
                return child;
            if(child > 864 - n)
                return -90;
            n += child;
            if(n > 864)
                return -90;
        }
        {
            const child = this.ext_wrench_tcp_frame.wireSize();
            if(child < 0)
                return child;
            if(child > 864 - n)
                return -90;
            n += child;
            if(n > 864)
                return -90;
        }
        {
            const child = this.ext_wrench_base_frame.wireSize();
            if(child < 0)
                return child;
            if(child > 864 - n)
                return -90;
            n += child;
            if(n > 864)
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
        for(let i = 0; i < this.q.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.q[i]), 8);
        }
        for(let i = 0; i < this.theta.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.theta[i]), 8);
        }
        for(let i = 0; i < this.dq.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.dq[i]), 8);
        }
        for(let i = 0; i < this.dtheta.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.dtheta[i]), 8);
        }
        for(let i = 0; i < this.tau.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau[i]), 8);
        }
        for(let i = 0; i < this.tau_des.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau_des[i]), 8);
        }
        for(let i = 0; i < this.tau_dot.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau_dot[i]), 8);
        }
        for(let i = 0; i < this.tau_ext.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau_ext[i]), 8);
        }
        this.tcp_pose.writeControl(w);
        this.tcp_pose_des.writeControl(w);
        this.tcp_vel.writeControl(w);
        this.cam_pose.writeControl(w);
        this.flange_pose.writeControl(w);
        this.ft_sensor_raw.writeControl(w);
        this.ext_wrench_tcp_frame.writeControl(w);
        this.ext_wrench_base_frame.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgRobotStates
    {
        const value = new Ros2Flexiv_msgsMsgRobotStates();
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.q = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.q.push(decoded);
            }
        }
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.theta = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.theta.push(decoded);
            }
        }
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.dq = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.dq.push(decoded);
            }
        }
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.dtheta = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.dtheta.push(decoded);
            }
        }
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.tau = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.tau.push(decoded);
            }
        }
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.tau_des = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.tau_des.push(decoded);
            }
        }
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.tau_dot = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.tau_dot.push(decoded);
            }
        }
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.tau_ext = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.tau_ext.push(decoded);
            }
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose.readControl(r);
            value.tcp_pose = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose.readControl(r);
            value.tcp_pose_des = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgAccel.readControl(r);
            value.tcp_vel = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose.readControl(r);
            value.cam_pose = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPose.readControl(r);
            value.flange_pose = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrench.readControl(r);
            value.ft_sensor_raw = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrench.readControl(r);
            value.ext_wrench_tcp_frame = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrench.readControl(r);
            value.ext_wrench_base_frame = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgRobotStatesCodec implements VendorCodec<Ros2Flexiv_msgsMsgRobotStates>
{
    static readonly codecIdentity: string = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b";
    static readonly maxWireBytes: i32 = 864;

    encodeChecked(value: Ros2Flexiv_msgsMsgRobotStates): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgRobotStates): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgRobotStates>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgRobotStates>();
        if(bytes.length > 864)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 864)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgRobotStates.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgRobotStates
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgRobotStates() : changetype<Ros2Flexiv_msgsMsgRobotStates>(out.value);
    }
}
