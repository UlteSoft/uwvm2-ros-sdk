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

/** @brief Complete original flexiv_msgs/JointPosVel; spellings are published in generation proof. */
export class Ros1Flexiv_msgsJointPosVel
{
    static readonly maxWireBytes: i32 = 112;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 112;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/JointPosVel.positions; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    positions: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/JointPosVel.velocities; native type float64. Exactly 7 elements.
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
    static readControl(r: Reader): Ros1Flexiv_msgsJointPosVel
    {
        const value = new Ros1Flexiv_msgsJointPosVel();
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

export class Ros1Flexiv_msgsJointPosVelCodec implements VendorCodec<Ros1Flexiv_msgsJointPosVel>
{
    static readonly codecIdentity: string = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa";
    static readonly maxWireBytes: i32 = 112;

    encodeChecked(value: Ros1Flexiv_msgsJointPosVel): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Flexiv_msgsJointPosVel): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Flexiv_msgsJointPosVel>
    {
        const out = new VendorDecoded<Ros1Flexiv_msgsJointPosVel>();
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
        const reader = new Reader(bytes), value = Ros1Flexiv_msgsJointPosVel.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Flexiv_msgsJointPosVel
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Flexiv_msgsJointPosVel() : changetype<Ros1Flexiv_msgsJointPosVel>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/Mode; spellings are published in generation proof. */
export class Ros1Flexiv_msgsMode
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
     * @details Original flexiv_msgs/Mode.mode; native type int8. Scalar value. Storage belongs to the
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
    static readControl(r: Reader): Ros1Flexiv_msgsMode
    {
        const value = new Ros1Flexiv_msgsMode();
        {
            const decoded = <i8>r.integer(1);
            value.mode = decoded;
        }
        return value;
    }
}

export class Ros1Flexiv_msgsModeCodec implements VendorCodec<Ros1Flexiv_msgsMode>
{
    static readonly codecIdentity: string = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Flexiv_msgsMode): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Flexiv_msgsMode): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Flexiv_msgsMode>
    {
        const out = new VendorDecoded<Ros1Flexiv_msgsMode>();
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
        const reader = new Reader(bytes), value = Ros1Flexiv_msgsMode.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Flexiv_msgsMode
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Flexiv_msgsMode() : changetype<Ros1Flexiv_msgsMode>(out.value);
    }
}

/** @brief Complete original geometry_msgs/Point; spellings are published in generation proof. */
export class Ros1Geometry_msgsPoint
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /**
     * @brief This contains the position of a point in free space
     * @details Original geometry_msgs/Point.x; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    x: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Point.y; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    y: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Point.z; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
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
    static readControl(r: Reader): Ros1Geometry_msgsPoint
    {
        const value = new Ros1Geometry_msgsPoint();
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

export class Ros1Geometry_msgsPointCodec implements VendorCodec<Ros1Geometry_msgsPoint>
{
    static readonly codecIdentity: string = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros1Geometry_msgsPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Geometry_msgsPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsPoint>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsPoint>();
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
        const reader = new Reader(bytes), value = Ros1Geometry_msgsPoint.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Geometry_msgsPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsPoint() : changetype<Ros1Geometry_msgsPoint>(out.value);
    }
}

/** @brief Complete original geometry_msgs/Quaternion; spellings are published in generation proof. */
export class Ros1Geometry_msgsQuaternion
{
    static readonly maxWireBytes: i32 = 32;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 32;
    /**
     * @brief This represents an orientation in free space in quaternion form.
     * @details Original geometry_msgs/Quaternion.x; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    x: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Quaternion.y; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    y: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Quaternion.z; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    z: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Quaternion.w; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    w: f64 = 0;

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
    static readControl(r: Reader): Ros1Geometry_msgsQuaternion
    {
        const value = new Ros1Geometry_msgsQuaternion();
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

export class Ros1Geometry_msgsQuaternionCodec implements VendorCodec<Ros1Geometry_msgsQuaternion>
{
    static readonly codecIdentity: string = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
    static readonly maxWireBytes: i32 = 32;

    encodeChecked(value: Ros1Geometry_msgsQuaternion): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Geometry_msgsQuaternion): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsQuaternion>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsQuaternion>();
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
        const reader = new Reader(bytes), value = Ros1Geometry_msgsQuaternion.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Geometry_msgsQuaternion
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsQuaternion() : changetype<Ros1Geometry_msgsQuaternion>(out.value);
    }
}

/** @brief Complete original geometry_msgs/Pose; spellings are published in generation proof. */
export class Ros1Geometry_msgsPose
{
    static readonly maxWireBytes: i32 = 56;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 56;
    /**
     * @brief A representation of pose in free space, composed of position and orientation.
     * @details Original geometry_msgs/Pose.position; native type geometry_msgs/Point. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    position: Ros1Geometry_msgsPoint = new Ros1Geometry_msgsPoint();
    /**
     * @brief Retain the complete original geometry_msgs/Quaternion field.
     * @details Original geometry_msgs/Pose.orientation; native type geometry_msgs/Quaternion. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    orientation: Ros1Geometry_msgsQuaternion = new Ros1Geometry_msgsQuaternion();

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
    static readControl(r: Reader): Ros1Geometry_msgsPose
    {
        const value = new Ros1Geometry_msgsPose();
        {
            const decoded = Ros1Geometry_msgsPoint.readControl(r);
            value.position = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsQuaternion.readControl(r);
            value.orientation = decoded;
        }
        return value;
    }
}

export class Ros1Geometry_msgsPoseCodec implements VendorCodec<Ros1Geometry_msgsPose>
{
    static readonly codecIdentity: string = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
    static readonly maxWireBytes: i32 = 56;

    encodeChecked(value: Ros1Geometry_msgsPose): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Geometry_msgsPose): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsPose>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsPose>();
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
        const reader = new Reader(bytes), value = Ros1Geometry_msgsPose.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Geometry_msgsPose
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsPose() : changetype<Ros1Geometry_msgsPose>(out.value);
    }
}

/** @brief Complete original geometry_msgs/Vector3; spellings are published in generation proof. */
export class Ros1Geometry_msgsVector3
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /**
     * @brief This represents a vector in free space. It is only meant to represent a direction. Therefore,
     * it does not make sense to apply a translation to it (e.g., when applying a generic rigid
     * transformation to a Vector3, tf2 will only apply the rotation). If you want your data to be
     * translatable too, use the geometry_msgs/Point message instead.
     * @details Original geometry_msgs/Vector3.x; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    x: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Vector3.y; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    y: f64 = 0;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Vector3.z; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
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
    static readControl(r: Reader): Ros1Geometry_msgsVector3
    {
        const value = new Ros1Geometry_msgsVector3();
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

export class Ros1Geometry_msgsVector3Codec implements VendorCodec<Ros1Geometry_msgsVector3>
{
    static readonly codecIdentity: string = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros1Geometry_msgsVector3): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Geometry_msgsVector3): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsVector3>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsVector3>();
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
        const reader = new Reader(bytes), value = Ros1Geometry_msgsVector3.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Geometry_msgsVector3
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsVector3() : changetype<Ros1Geometry_msgsVector3>(out.value);
    }
}

/** @brief Complete original geometry_msgs/Accel; spellings are published in generation proof. */
export class Ros1Geometry_msgsAccel
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /**
     * @brief This expresses acceleration in free space broken into its linear and angular parts.
     * @details Original geometry_msgs/Accel.linear; native type geometry_msgs/Vector3. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    linear: Ros1Geometry_msgsVector3 = new Ros1Geometry_msgsVector3();
    /**
     * @brief Retain the complete original geometry_msgs/Vector3 field.
     * @details Original geometry_msgs/Accel.angular; native type geometry_msgs/Vector3. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    angular: Ros1Geometry_msgsVector3 = new Ros1Geometry_msgsVector3();

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
    static readControl(r: Reader): Ros1Geometry_msgsAccel
    {
        const value = new Ros1Geometry_msgsAccel();
        {
            const decoded = Ros1Geometry_msgsVector3.readControl(r);
            value.linear = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsVector3.readControl(r);
            value.angular = decoded;
        }
        return value;
    }
}

export class Ros1Geometry_msgsAccelCodec implements VendorCodec<Ros1Geometry_msgsAccel>
{
    static readonly codecIdentity: string = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros1Geometry_msgsAccel): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Geometry_msgsAccel): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsAccel>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsAccel>();
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
        const reader = new Reader(bytes), value = Ros1Geometry_msgsAccel.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Geometry_msgsAccel
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsAccel() : changetype<Ros1Geometry_msgsAccel>(out.value);
    }
}

/** @brief Complete original geometry_msgs/Wrench; spellings are published in generation proof. */
export class Ros1Geometry_msgsWrench
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /**
     * @brief This represents force in free space, separated into its linear and angular parts.
     * @details Original geometry_msgs/Wrench.force; native type geometry_msgs/Vector3. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    force: Ros1Geometry_msgsVector3 = new Ros1Geometry_msgsVector3();
    /**
     * @brief Retain the complete original geometry_msgs/Vector3 field.
     * @details Original geometry_msgs/Wrench.torque; native type geometry_msgs/Vector3. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    torque: Ros1Geometry_msgsVector3 = new Ros1Geometry_msgsVector3();

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
    static readControl(r: Reader): Ros1Geometry_msgsWrench
    {
        const value = new Ros1Geometry_msgsWrench();
        {
            const decoded = Ros1Geometry_msgsVector3.readControl(r);
            value.force = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsVector3.readControl(r);
            value.torque = decoded;
        }
        return value;
    }
}

export class Ros1Geometry_msgsWrenchCodec implements VendorCodec<Ros1Geometry_msgsWrench>
{
    static readonly codecIdentity: string = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros1Geometry_msgsWrench): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Geometry_msgsWrench): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsWrench>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsWrench>();
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
        const reader = new Reader(bytes), value = Ros1Geometry_msgsWrench.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Geometry_msgsWrench
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsWrench() : changetype<Ros1Geometry_msgsWrench>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/RobotStates; spellings are published in generation proof. */
export class Ros1Flexiv_msgsRobotStates
{
    static readonly maxWireBytes: i32 = 864;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 864;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.q; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    q: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.theta; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    theta: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.dq; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    dq: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.dtheta; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    dtheta: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.tau; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    tau: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.tau_des; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    tau_des: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.tau_dot; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    tau_dot: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.tau_ext; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    tau_ext: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original geometry_msgs/Pose field.
     * @details Original flexiv_msgs/RobotStates.tcp_pose; native type geometry_msgs/Pose. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    tcp_pose: Ros1Geometry_msgsPose = new Ros1Geometry_msgsPose();
    /**
     * @brief Retain the complete original geometry_msgs/Pose field.
     * @details Original flexiv_msgs/RobotStates.tcp_pose_des; native type geometry_msgs/Pose. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    tcp_pose_des: Ros1Geometry_msgsPose = new Ros1Geometry_msgsPose();
    /**
     * @brief Retain the complete original geometry_msgs/Accel field.
     * @details Original flexiv_msgs/RobotStates.tcp_vel; native type geometry_msgs/Accel. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    tcp_vel: Ros1Geometry_msgsAccel = new Ros1Geometry_msgsAccel();
    /**
     * @brief Retain the complete original geometry_msgs/Pose field.
     * @details Original flexiv_msgs/RobotStates.cam_pose; native type geometry_msgs/Pose. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    cam_pose: Ros1Geometry_msgsPose = new Ros1Geometry_msgsPose();
    /**
     * @brief Retain the complete original geometry_msgs/Pose field.
     * @details Original flexiv_msgs/RobotStates.flange_pose; native type geometry_msgs/Pose. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    flange_pose: Ros1Geometry_msgsPose = new Ros1Geometry_msgsPose();
    /**
     * @brief Retain the complete original geometry_msgs/Wrench field.
     * @details Original flexiv_msgs/RobotStates.ft_sensor_raw; native type geometry_msgs/Wrench. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    ft_sensor_raw: Ros1Geometry_msgsWrench = new Ros1Geometry_msgsWrench();
    /**
     * @brief Retain the complete original geometry_msgs/Wrench field.
     * @details Original flexiv_msgs/RobotStates.ext_wrench_tcp_frame; native type geometry_msgs/Wrench.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    ext_wrench_tcp_frame: Ros1Geometry_msgsWrench = new Ros1Geometry_msgsWrench();
    /**
     * @brief Retain the complete original geometry_msgs/Wrench field.
     * @details Original flexiv_msgs/RobotStates.ext_wrench_base_frame; native type geometry_msgs/Wrench.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    ext_wrench_base_frame: Ros1Geometry_msgsWrench = new Ros1Geometry_msgsWrench();

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
    static readControl(r: Reader): Ros1Flexiv_msgsRobotStates
    {
        const value = new Ros1Flexiv_msgsRobotStates();
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
            const decoded = Ros1Geometry_msgsPose.readControl(r);
            value.tcp_pose = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsPose.readControl(r);
            value.tcp_pose_des = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsAccel.readControl(r);
            value.tcp_vel = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsPose.readControl(r);
            value.cam_pose = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsPose.readControl(r);
            value.flange_pose = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsWrench.readControl(r);
            value.ft_sensor_raw = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsWrench.readControl(r);
            value.ext_wrench_tcp_frame = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsWrench.readControl(r);
            value.ext_wrench_base_frame = decoded;
        }
        return value;
    }
}

export class Ros1Flexiv_msgsRobotStatesCodec implements VendorCodec<Ros1Flexiv_msgsRobotStates>
{
    static readonly codecIdentity: string = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8";
    static readonly maxWireBytes: i32 = 864;

    encodeChecked(value: Ros1Flexiv_msgsRobotStates): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Flexiv_msgsRobotStates): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Flexiv_msgsRobotStates>
    {
        const out = new VendorDecoded<Ros1Flexiv_msgsRobotStates>();
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
        const reader = new Reader(bytes), value = Ros1Flexiv_msgsRobotStates.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Flexiv_msgsRobotStates
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Flexiv_msgsRobotStates() : changetype<Ros1Flexiv_msgsRobotStates>(out.value);
    }
}
