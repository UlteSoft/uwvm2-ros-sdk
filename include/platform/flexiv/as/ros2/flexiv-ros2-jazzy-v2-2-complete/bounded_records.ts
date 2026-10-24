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

/** @brief Complete original flexiv_msgs/action/ErrorRecovery_Goal; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionErrorRecovery_Goal
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionErrorRecovery_Goal
    {
        const value = new Ros2Flexiv_msgsActionErrorRecovery_Goal();
        return value;
    }
}

export class Ros2Flexiv_msgsActionErrorRecovery_GoalCodec implements VendorCodec<Ros2Flexiv_msgsActionErrorRecovery_Goal>
{
    static readonly codecIdentity: string = "UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Flexiv_msgsActionErrorRecovery_Goal): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionErrorRecovery_Goal): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionErrorRecovery_Goal>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionErrorRecovery_Goal>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionErrorRecovery_Goal.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionErrorRecovery_Goal
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionErrorRecovery_Goal() : changetype<Ros2Flexiv_msgsActionErrorRecovery_Goal>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/action/ErrorRecovery_Result; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionErrorRecovery_Result
{
    static readonly maxWireBytes: i32 = 263;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 263;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/ErrorRecovery_Result.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    success: bool = false;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/action/ErrorRecovery_Result.message; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    message: string = "";
    /**
     * @brief True when the robot is operational again but controllers must be restarted to resume motion
     * @details Original flexiv_msgs/action/ErrorRecovery_Result.requires_controller_restart; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    requires_controller_restart: bool = false;
    /**
     * @brief Policy that applied to the condition found, values defined in RecoveryPolicy.msg
     * @details Original flexiv_msgs/action/ErrorRecovery_Result.recovery_policy; native type uint8. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    recovery_policy: u8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 263 - n)
                return -90;
            n += 1;
            if(n > 263)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 263 - n)
                return -90;
            n += 4 + size;
            if(n > 263)
                return -90;
        }
        {
            if(1 > 263 - n)
                return -90;
            n += 1;
            if(n > 263)
                return -90;
        }
        {
            if(1 > 263 - n)
                return -90;
            n += 1;
            if(n > 263)
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
        w.u8(this.success ? 1 : 0);
        w.text(this.message);
        w.u8(this.requires_controller_restart ? 1 : 0);
        w.integer(<u64>this.recovery_policy, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionErrorRecovery_Result
    {
        const value = new Ros2Flexiv_msgsActionErrorRecovery_Result();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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
            value.message = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.requires_controller_restart = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.recovery_policy = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsActionErrorRecovery_ResultCodec implements VendorCodec<Ros2Flexiv_msgsActionErrorRecovery_Result>
{
    static readonly codecIdentity: string = "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc";
    static readonly maxWireBytes: i32 = 263;

    encodeChecked(value: Ros2Flexiv_msgsActionErrorRecovery_Result): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionErrorRecovery_Result): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionErrorRecovery_Result>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionErrorRecovery_Result>();
        if(bytes.length > 263)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 7)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionErrorRecovery_Result.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionErrorRecovery_Result
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionErrorRecovery_Result() : changetype<Ros2Flexiv_msgsActionErrorRecovery_Result>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/action/ErrorRecovery_Feedback; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionErrorRecovery_Feedback
{
    static readonly STATE_IDLE: u8 = 0;
    static readonly STATE_CLASSIFY: u8 = 1;
    static readonly STATE_STOP: u8 = 2;
    static readonly STATE_CLEAR_FAULT: u8 = 3;
    static readonly STATE_WAIT_FAULT_CLEARED: u8 = 4;
    static readonly STATE_SERVO_ON: u8 = 5;
    static readonly STATE_WAIT_OPERATIONAL: u8 = 6;
    static readonly STATE_COMPLETE: u8 = 7;
    static readonly STATE_FAILED: u8 = 8;
    static readonly maxWireBytes: i32 = 265;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 265;
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state; native type uint8.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    recovery_state: u8 = 0;
    /**
     * @brief Human-readable name of the recovery state above
     * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    recovery_state_name: string = "";
    /**
     * @brief Seconds elapsed since the recovery started
     * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.elapsed_seconds; native type float32.
     * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    elapsed_seconds: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 265 - n)
                return -90;
            n += 1;
            if(n > 265)
                return -90;
        }
        {
            if(!validUnicode(this.recovery_state_name) || this.recovery_state_name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.recovery_state_name);
            if(size > 256)
                return -22;
            if(4 + size > 265 - n)
                return -90;
            n += 4 + size;
            if(n > 265)
                return -90;
        }
        {
            if(!isFinite(this.elapsed_seconds))
                return -22;
            if(4 > 265 - n)
                return -90;
            n += 4;
            if(n > 265)
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
        w.integer(<u64>this.recovery_state, 1);
        w.text(this.recovery_state_name);
        w.integer(<u64>reinterpret<u32>(this.elapsed_seconds), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionErrorRecovery_Feedback
    {
        const value = new Ros2Flexiv_msgsActionErrorRecovery_Feedback();
        {
            const decoded = <u8>r.integer(1);
            value.recovery_state = decoded;
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
            value.recovery_state_name = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.elapsed_seconds = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec implements VendorCodec<Ros2Flexiv_msgsActionErrorRecovery_Feedback>
{
    static readonly codecIdentity: string = "UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739";
    static readonly maxWireBytes: i32 = 265;

    encodeChecked(value: Ros2Flexiv_msgsActionErrorRecovery_Feedback): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionErrorRecovery_Feedback): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionErrorRecovery_Feedback>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionErrorRecovery_Feedback>();
        if(bytes.length > 265)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 9)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionErrorRecovery_Feedback.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionErrorRecovery_Feedback
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionErrorRecovery_Feedback() : changetype<Ros2Flexiv_msgsActionErrorRecovery_Feedback>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/action/Grasp_Goal; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionGrasp_Goal
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /**
     * @brief N
     * @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    force: f64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.force))
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.force), 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionGrasp_Goal
    {
        const value = new Ros2Flexiv_msgsActionGrasp_Goal();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.force = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsActionGrasp_GoalCodec implements VendorCodec<Ros2Flexiv_msgsActionGrasp_Goal>
{
    static readonly codecIdentity: string = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Flexiv_msgsActionGrasp_Goal): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionGrasp_Goal): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionGrasp_Goal>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionGrasp_Goal>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionGrasp_Goal.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionGrasp_Goal
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionGrasp_Goal() : changetype<Ros2Flexiv_msgsActionGrasp_Goal>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/action/Grasp_Result; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionGrasp_Result
{
    static readonly maxWireBytes: i32 = 261;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 261;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    success: bool = false;
    /**
     * @brief Retain the complete original string field.
     * @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    error: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
            if(!validUnicode(this.error) || this.error.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
        w.text(this.error);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionGrasp_Result
    {
        const value = new Ros2Flexiv_msgsActionGrasp_Result();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsActionGrasp_ResultCodec implements VendorCodec<Ros2Flexiv_msgsActionGrasp_Result>
{
    static readonly codecIdentity: string = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a";
    static readonly maxWireBytes: i32 = 261;

    encodeChecked(value: Ros2Flexiv_msgsActionGrasp_Result): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionGrasp_Result): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionGrasp_Result>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionGrasp_Result>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionGrasp_Result.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionGrasp_Result
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionGrasp_Result() : changetype<Ros2Flexiv_msgsActionGrasp_Result>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/action/Grasp_Feedback; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionGrasp_Feedback
{
    static readonly maxWireBytes: i32 = 17;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 17;
    /**
     * @brief m
     * @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    current_width: f64 = 0;
    /**
     * @brief N
     * @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    current_force: f64 = 0;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    moving: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.current_width))
                return -22;
            if(8 > 17 - n)
                return -90;
            n += 8;
            if(n > 17)
                return -90;
        }
        {
            if(!isFinite(this.current_force))
                return -22;
            if(8 > 17 - n)
                return -90;
            n += 8;
            if(n > 17)
                return -90;
        }
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
            if(n > 17)
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
        w.integer(<u64>reinterpret<u64>(this.current_width), 8);
        w.integer(<u64>reinterpret<u64>(this.current_force), 8);
        w.u8(this.moving ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionGrasp_Feedback
    {
        const value = new Ros2Flexiv_msgsActionGrasp_Feedback();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.current_width = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.current_force = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.moving = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsActionGrasp_FeedbackCodec implements VendorCodec<Ros2Flexiv_msgsActionGrasp_Feedback>
{
    static readonly codecIdentity: string = "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05";
    static readonly maxWireBytes: i32 = 17;

    encodeChecked(value: Ros2Flexiv_msgsActionGrasp_Feedback): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionGrasp_Feedback): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionGrasp_Feedback>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionGrasp_Feedback>();
        if(bytes.length > 17)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 17)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionGrasp_Feedback.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionGrasp_Feedback
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionGrasp_Feedback() : changetype<Ros2Flexiv_msgsActionGrasp_Feedback>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/action/Move_Goal; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionMove_Goal
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /**
     * @brief m
     * @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    width: f64 = 0;
    /**
     * @brief m/s
     * @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    velocity: f64 = 0;
    /**
     * @brief N
     * @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    max_force: f64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.width))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.max_force))
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
        w.integer(<u64>reinterpret<u64>(this.width), 8);
        w.integer(<u64>reinterpret<u64>(this.velocity), 8);
        w.integer(<u64>reinterpret<u64>(this.max_force), 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionMove_Goal
    {
        const value = new Ros2Flexiv_msgsActionMove_Goal();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.width = decoded;
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
            value.max_force = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsActionMove_GoalCodec implements VendorCodec<Ros2Flexiv_msgsActionMove_Goal>
{
    static readonly codecIdentity: string = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2";
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros2Flexiv_msgsActionMove_Goal): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionMove_Goal): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionMove_Goal>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionMove_Goal>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionMove_Goal.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionMove_Goal
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionMove_Goal() : changetype<Ros2Flexiv_msgsActionMove_Goal>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/action/Move_Result; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionMove_Result
{
    static readonly maxWireBytes: i32 = 261;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 261;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    success: bool = false;
    /**
     * @brief Retain the complete original string field.
     * @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    error: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
            if(!validUnicode(this.error) || this.error.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
        w.text(this.error);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionMove_Result
    {
        const value = new Ros2Flexiv_msgsActionMove_Result();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsActionMove_ResultCodec implements VendorCodec<Ros2Flexiv_msgsActionMove_Result>
{
    static readonly codecIdentity: string = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d";
    static readonly maxWireBytes: i32 = 261;

    encodeChecked(value: Ros2Flexiv_msgsActionMove_Result): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionMove_Result): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionMove_Result>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionMove_Result>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionMove_Result.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionMove_Result
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionMove_Result() : changetype<Ros2Flexiv_msgsActionMove_Result>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/action/Move_Feedback; spellings are published in generation proof. */
export class Ros2Flexiv_msgsActionMove_Feedback
{
    static readonly maxWireBytes: i32 = 17;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 17;
    /**
     * @brief m
     * @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    current_width: f64 = 0;
    /**
     * @brief N
     * @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    current_force: f64 = 0;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    moving: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.current_width))
                return -22;
            if(8 > 17 - n)
                return -90;
            n += 8;
            if(n > 17)
                return -90;
        }
        {
            if(!isFinite(this.current_force))
                return -22;
            if(8 > 17 - n)
                return -90;
            n += 8;
            if(n > 17)
                return -90;
        }
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
            if(n > 17)
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
        w.integer(<u64>reinterpret<u64>(this.current_width), 8);
        w.integer(<u64>reinterpret<u64>(this.current_force), 8);
        w.u8(this.moving ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsActionMove_Feedback
    {
        const value = new Ros2Flexiv_msgsActionMove_Feedback();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.current_width = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.current_force = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.moving = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsActionMove_FeedbackCodec implements VendorCodec<Ros2Flexiv_msgsActionMove_Feedback>
{
    static readonly codecIdentity: string = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38";
    static readonly maxWireBytes: i32 = 17;

    encodeChecked(value: Ros2Flexiv_msgsActionMove_Feedback): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsActionMove_Feedback): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsActionMove_Feedback>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsActionMove_Feedback>();
        if(bytes.length > 17)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 17)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsActionMove_Feedback.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsActionMove_Feedback
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsActionMove_Feedback() : changetype<Ros2Flexiv_msgsActionMove_Feedback>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/Digital; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgDigital
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    pin: u8 = 0;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    state: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.pin, 1);
        w.u8(this.state ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgDigital
    {
        const value = new Ros2Flexiv_msgsMsgDigital();
        {
            const decoded = <u8>r.integer(1);
            value.pin = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.state = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgDigitalCodec implements VendorCodec<Ros2Flexiv_msgsMsgDigital>
{
    static readonly codecIdentity: string = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf";
    static readonly maxWireBytes: i32 = 2;

    encodeChecked(value: Ros2Flexiv_msgsMsgDigital): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgDigital): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgDigital>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgDigital>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgDigital.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgDigital
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgDigital() : changetype<Ros2Flexiv_msgsMsgDigital>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/GPIOStates; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgGPIOStates
{
    static readonly maxWireBytes: i32 = 68;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 68;
    /**
     * @brief Retain the complete original flexiv_msgs/msg/Digital field.
     * @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
     * elements. Storage belongs to the complete value and acquires no ROS resource.
     */
    states: Array < Ros2Flexiv_msgsMsgDigital >= new Array<Ros2Flexiv_msgsMsgDigital>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.states.length > 32)
                return -22;
            if(4 > 68 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.states.length; ++i)
            {
                const child = this.states[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 68 - n)
                    return -90;
                n += child;
                if(n > 68)
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
        w.u32(<u32>this.states.length);
        for(let i = 0; i < this.states.length; ++i)
        {
            this.states[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgGPIOStates
    {
        const value = new Ros2Flexiv_msgsMsgGPIOStates();
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.states = new Array<Ros2Flexiv_msgsMsgDigital>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Flexiv_msgsMsgDigital.readControl(r);
                value.states.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgGPIOStatesCodec implements VendorCodec<Ros2Flexiv_msgsMsgGPIOStates>
{
    static readonly codecIdentity: string = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14";
    static readonly maxWireBytes: i32 = 68;

    encodeChecked(value: Ros2Flexiv_msgsMsgGPIOStates): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgGPIOStates): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgGPIOStates>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgGPIOStates>();
        if(bytes.length > 68)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgGPIOStates.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgGPIOStates
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgGPIOStates() : changetype<Ros2Flexiv_msgsMsgGPIOStates>(out.value);
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

/** @brief Complete original flexiv_msgs/msg/JointImpedance; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgJointImpedance
{
    static readonly maxWireBytes: i32 = 9373;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9373;
    /**
     * @brief Impedance properties of the robot's joint motion controller, used in the joint impedance
     * control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header
     * @details Original flexiv_msgs/msg/JointImpedance.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
     * robot are covered: the robot reports no nominal joint stiffness for external axes.
     * @details Original flexiv_msgs/msg/JointImpedance.joint_names; native type string. At most 32
     * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad]
     * @details Original flexiv_msgs/msg/JointImpedance.k_q; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    k_q: Array < f64 >= new Array<f64>();
    /**
     * @brief Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7
     * @details Original flexiv_msgs/msg/JointImpedance.z_q; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    z_q: Array < f64 >= new Array<f64>();
    /**
     * @brief Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad]
     * @details Original flexiv_msgs/msg/JointImpedance.k_q_nom; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    k_q_nom: Array < f64 >= new Array<f64>();
    /**
     * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
     * impedance control mode: they are held and applied on the next controller start.
     * @details Original flexiv_msgs/msg/JointImpedance.in_effect; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    in_effect: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 9373 - n)
                return -90;
            n += child;
            if(n > 9373)
                return -90;
        }
        {
            if(this.joint_names.length > 32)
                return -22;
            if(4 > 9373 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 9373 - n)
                    return -90;
                n += 4 + size;
                if(n > 9373)
                    return -90;
            }
        }
        {
            if(this.k_q.length > 32)
                return -22;
            if(4 > 9373 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.k_q.length; ++i)
            {
                if(!isFinite(this.k_q[i]))
                    return -22;
                if(8 > 9373 - n)
                    return -90;
                n += 8;
                if(n > 9373)
                    return -90;
            }
        }
        {
            if(this.z_q.length > 32)
                return -22;
            if(4 > 9373 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.z_q.length; ++i)
            {
                if(!isFinite(this.z_q[i]))
                    return -22;
                if(8 > 9373 - n)
                    return -90;
                n += 8;
                if(n > 9373)
                    return -90;
            }
        }
        {
            if(this.k_q_nom.length > 32)
                return -22;
            if(4 > 9373 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.k_q_nom.length; ++i)
            {
                if(!isFinite(this.k_q_nom[i]))
                    return -22;
                if(8 > 9373 - n)
                    return -90;
                n += 8;
                if(n > 9373)
                    return -90;
            }
        }
        {
            if(1 > 9373 - n)
                return -90;
            n += 1;
            if(n > 9373)
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
        w.u32(<u32>this.k_q.length);
        for(let i = 0; i < this.k_q.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.k_q[i]), 8);
        }
        w.u32(<u32>this.z_q.length);
        for(let i = 0; i < this.z_q.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.z_q[i]), 8);
        }
        w.u32(<u32>this.k_q_nom.length);
        for(let i = 0; i < this.k_q_nom.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.k_q_nom[i]), 8);
        }
        w.u8(this.in_effect ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgJointImpedance
    {
        const value = new Ros2Flexiv_msgsMsgJointImpedance();
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
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.k_q = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.k_q.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.z_q = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.z_q.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.k_q_nom = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.k_q_nom.push(decoded);
            }
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.in_effect = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgJointImpedanceCodec implements VendorCodec<Ros2Flexiv_msgsMsgJointImpedance>
{
    static readonly codecIdentity: string = "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a";
    static readonly maxWireBytes: i32 = 9373;

    encodeChecked(value: Ros2Flexiv_msgsMsgJointImpedance): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgJointImpedance): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgJointImpedance>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgJointImpedance>();
        if(bytes.length > 9373)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgJointImpedance.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgJointImpedance
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgJointImpedance() : changetype<Ros2Flexiv_msgsMsgJointImpedance>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/JointInertiaScale; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgJointInertiaScale
{
    static readonly maxWireBytes: i32 = 8853;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8853;
    /**
     * @brief Inertia shaping scales of the robot's joint motion controller, used in the joint impedance
     * control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header
     * @details Original flexiv_msgs/msg/JointInertiaScale.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
     * robot are covered, matching JointImpedance.msg.
     * @details Original flexiv_msgs/msg/JointInertiaScale.joint_names; native type string. At most 32
     * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0
     * means no shaping; a smaller scale makes the joint behave as if it were lighter.
     * @details Original flexiv_msgs/msg/JointInertiaScale.inertia_scales; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    inertia_scales: Array < f64 >= new Array<f64>();
    /**
     * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
     * impedance control mode: they are held and applied on the next controller start.
     * @details Original flexiv_msgs/msg/JointInertiaScale.in_effect; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    in_effect: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 8853 - n)
                return -90;
            n += child;
            if(n > 8853)
                return -90;
        }
        {
            if(this.joint_names.length > 32)
                return -22;
            if(4 > 8853 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 8853 - n)
                    return -90;
                n += 4 + size;
                if(n > 8853)
                    return -90;
            }
        }
        {
            if(this.inertia_scales.length > 32)
                return -22;
            if(4 > 8853 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.inertia_scales.length; ++i)
            {
                if(!isFinite(this.inertia_scales[i]))
                    return -22;
                if(8 > 8853 - n)
                    return -90;
                n += 8;
                if(n > 8853)
                    return -90;
            }
        }
        {
            if(1 > 8853 - n)
                return -90;
            n += 1;
            if(n > 8853)
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
        w.u32(<u32>this.inertia_scales.length);
        for(let i = 0; i < this.inertia_scales.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.inertia_scales[i]), 8);
        }
        w.u8(this.in_effect ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgJointInertiaScale
    {
        const value = new Ros2Flexiv_msgsMsgJointInertiaScale();
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
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.inertia_scales = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.inertia_scales.push(decoded);
            }
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.in_effect = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgJointInertiaScaleCodec implements VendorCodec<Ros2Flexiv_msgsMsgJointInertiaScale>
{
    static readonly codecIdentity: string = "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f";
    static readonly maxWireBytes: i32 = 8853;

    encodeChecked(value: Ros2Flexiv_msgsMsgJointInertiaScale): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgJointInertiaScale): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgJointInertiaScale>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgJointInertiaScale>();
        if(bytes.length > 8853)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 21)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgJointInertiaScale.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgJointInertiaScale
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgJointInertiaScale() : changetype<Ros2Flexiv_msgsMsgJointInertiaScale>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/JointPosVel; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgJointPosVel
{
    static readonly maxWireBytes: i32 = 520;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 520;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    positions: Array < f64 >= new Array<f64>();
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    velocities: Array < f64 >= new Array<f64>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.positions.length > 32)
                return -22;
            if(4 > 520 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.positions.length; ++i)
            {
                if(!isFinite(this.positions[i]))
                    return -22;
                if(8 > 520 - n)
                    return -90;
                n += 8;
                if(n > 520)
                    return -90;
            }
        }
        {
            if(this.velocities.length > 32)
                return -22;
            if(4 > 520 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocities.length; ++i)
            {
                if(!isFinite(this.velocities[i]))
                    return -22;
                if(8 > 520 - n)
                    return -90;
                n += 8;
                if(n > 520)
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
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgJointPosVel
    {
        const value = new Ros2Flexiv_msgsMsgJointPosVel();
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
        return value;
    }
}

export class Ros2Flexiv_msgsMsgJointPosVelCodec implements VendorCodec<Ros2Flexiv_msgsMsgJointPosVel>
{
    static readonly codecIdentity: string = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca";
    static readonly maxWireBytes: i32 = 520;

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
        if(bytes.length > 520)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
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

/** @brief Complete original flexiv_msgs/msg/MaxContactTorque; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgMaxContactTorque
{
    static readonly maxWireBytes: i32 = 9113;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9113;
    /**
     * @brief Maximum contact torques of the robot's joint motion controller, used in the joint impedance
     * control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header
     * @details Original flexiv_msgs/msg/MaxContactTorque.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
     * robot are covered, matching JointImpedance.msg.
     * @details Original flexiv_msgs/msg/MaxContactTorque.joint_names; native type string. At most 32
     * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Maximum contact torque the controller regulates its output to maintain. [Nm]
     * @details Original flexiv_msgs/msg/MaxContactTorque.max_contact_torques; native type float64. At most
     * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    max_contact_torques: Array < f64 >= new Array<f64>();
    /**
     * @brief Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm]
     * @details Original flexiv_msgs/msg/MaxContactTorque.tau_max; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    tau_max: Array < f64 >= new Array<f64>();
    /**
     * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
     * impedance control mode: they are held and applied on the next controller start.
     * @details Original flexiv_msgs/msg/MaxContactTorque.in_effect; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    in_effect: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 9113 - n)
                return -90;
            n += child;
            if(n > 9113)
                return -90;
        }
        {
            if(this.joint_names.length > 32)
                return -22;
            if(4 > 9113 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 9113 - n)
                    return -90;
                n += 4 + size;
                if(n > 9113)
                    return -90;
            }
        }
        {
            if(this.max_contact_torques.length > 32)
                return -22;
            if(4 > 9113 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.max_contact_torques.length; ++i)
            {
                if(!isFinite(this.max_contact_torques[i]))
                    return -22;
                if(8 > 9113 - n)
                    return -90;
                n += 8;
                if(n > 9113)
                    return -90;
            }
        }
        {
            if(this.tau_max.length > 32)
                return -22;
            if(4 > 9113 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.tau_max.length; ++i)
            {
                if(!isFinite(this.tau_max[i]))
                    return -22;
                if(8 > 9113 - n)
                    return -90;
                n += 8;
                if(n > 9113)
                    return -90;
            }
        }
        {
            if(1 > 9113 - n)
                return -90;
            n += 1;
            if(n > 9113)
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
        w.u32(<u32>this.max_contact_torques.length);
        for(let i = 0; i < this.max_contact_torques.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.max_contact_torques[i]), 8);
        }
        w.u32(<u32>this.tau_max.length);
        for(let i = 0; i < this.tau_max.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau_max[i]), 8);
        }
        w.u8(this.in_effect ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgMaxContactTorque
    {
        const value = new Ros2Flexiv_msgsMsgMaxContactTorque();
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
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.max_contact_torques = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.max_contact_torques.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.tau_max = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.tau_max.push(decoded);
            }
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.in_effect = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgMaxContactTorqueCodec implements VendorCodec<Ros2Flexiv_msgsMsgMaxContactTorque>
{
    static readonly codecIdentity: string = "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da";
    static readonly maxWireBytes: i32 = 9113;

    encodeChecked(value: Ros2Flexiv_msgsMsgMaxContactTorque): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgMaxContactTorque): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgMaxContactTorque>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgMaxContactTorque>();
        if(bytes.length > 9113)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 25)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgMaxContactTorque.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgMaxContactTorque
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgMaxContactTorque() : changetype<Ros2Flexiv_msgsMsgMaxContactTorque>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/Mode; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgMode
{
    static readonly MODE_UNKNOWN: i8 = 0;
    static readonly MODE_IDLE: i8 = 1;
    static readonly MODE_RT_JOINT_TORQUE: i8 = 2;
    static readonly MODE_RT_JOINT_IMPEDANCE: i8 = 3;
    static readonly MODE_NRT_JOINT_IMPEDANCE: i8 = 4;
    static readonly MODE_RT_JOINT_POSITION: i8 = 5;
    static readonly MODE_NRT_JOINT_POSITION: i8 = 6;
    static readonly MODE_NRT_PLAN_EXECUTION: i8 = 7;
    static readonly MODE_NRT_PRIMITIVE_EXECUTION: i8 = 8;
    static readonly MODE_RT_CARTESIAN_MOTION_FORCE: i8 = 9;
    static readonly MODE_NRT_CARTESIAN_MOTION_FORCE: i8 = 10;
    static readonly MODE_NRT_SUPER_PRIMITIVE: i8 = 11;
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
    static readonly codecIdentity: string = "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87";
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

/** @brief Complete original flexiv_msgs/msg/RobotEvent; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgRobotEvent
{
    static readonly LEVEL_UNKNOWN: u8 = 0;
    static readonly LEVEL_INFO: u8 = 1;
    static readonly LEVEL_WARNING: u8 = 2;
    static readonly LEVEL_ERROR: u8 = 3;
    static readonly LEVEL_CRITICAL: u8 = 4;
    static readonly maxWireBytes: i32 = 1053;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1053;
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/RobotEvent.level; native type uint8. Scalar value. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    level: u8 = 0;
    /**
     * @brief Unique ID of the event
     * @details Original flexiv_msgs/msg/RobotEvent.id; native type int32. Scalar value. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    id: i32 = 0;
    /**
     * @brief Brief description of the event
     * @details Original flexiv_msgs/msg/RobotEvent.description; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    description: string = "";
    /**
     * @brief Consequences caused by the event
     * @details Original flexiv_msgs/msg/RobotEvent.consequences; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    consequences: string = "";
    /**
     * @brief Probable causes of the event
     * @details Original flexiv_msgs/msg/RobotEvent.probable_causes; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    probable_causes: string = "";
    /**
     * @brief Recommended actions after the event
     * @details Original flexiv_msgs/msg/RobotEvent.recommended_actions; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    recommended_actions: string = "";
    /**
     * @brief Timestamp of the event
     * @details Original flexiv_msgs/msg/RobotEvent.timestamp; native type builtin_interfaces/msg/Time.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    timestamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1053 - n)
                return -90;
            n += 1;
            if(n > 1053)
                return -90;
        }
        {
            if(4 > 1053 - n)
                return -90;
            n += 4;
            if(n > 1053)
                return -90;
        }
        {
            if(!validUnicode(this.description) || this.description.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.description);
            if(size > 256)
                return -22;
            if(4 + size > 1053 - n)
                return -90;
            n += 4 + size;
            if(n > 1053)
                return -90;
        }
        {
            if(!validUnicode(this.consequences) || this.consequences.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.consequences);
            if(size > 256)
                return -22;
            if(4 + size > 1053 - n)
                return -90;
            n += 4 + size;
            if(n > 1053)
                return -90;
        }
        {
            if(!validUnicode(this.probable_causes) || this.probable_causes.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.probable_causes);
            if(size > 256)
                return -22;
            if(4 + size > 1053 - n)
                return -90;
            n += 4 + size;
            if(n > 1053)
                return -90;
        }
        {
            if(!validUnicode(this.recommended_actions) || this.recommended_actions.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.recommended_actions);
            if(size > 256)
                return -22;
            if(4 + size > 1053 - n)
                return -90;
            n += 4 + size;
            if(n > 1053)
                return -90;
        }
        {
            const child = this.timestamp.wireSize();
            if(child < 0)
                return child;
            if(child > 1053 - n)
                return -90;
            n += child;
            if(n > 1053)
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
        w.integer(<u64>this.level, 1);
        w.integer(<u64>this.id, 4);
        w.text(this.description);
        w.text(this.consequences);
        w.text(this.probable_causes);
        w.text(this.recommended_actions);
        this.timestamp.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgRobotEvent
    {
        const value = new Ros2Flexiv_msgsMsgRobotEvent();
        {
            const decoded = <u8>r.integer(1);
            value.level = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.id = decoded;
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
            value.description = decoded;
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
            value.consequences = decoded;
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
            value.probable_causes = decoded;
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
            value.recommended_actions = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.timestamp = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgRobotEventCodec implements VendorCodec<Ros2Flexiv_msgsMsgRobotEvent>
{
    static readonly codecIdentity: string = "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17";
    static readonly maxWireBytes: i32 = 1053;

    encodeChecked(value: Ros2Flexiv_msgsMsgRobotEvent): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgRobotEvent): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgRobotEvent>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgRobotEvent>();
        if(bytes.length > 1053)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgRobotEvent.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgRobotEvent
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgRobotEvent() : changetype<Ros2Flexiv_msgsMsgRobotEvent>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/OperationalStatus; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgOperationalStatus
{
    static readonly STATUS_UNKNOWN: u8 = 0;
    static readonly STATUS_READY: u8 = 1;
    static readonly STATUS_BOOTING: u8 = 2;
    static readonly STATUS_ESTOP_NOT_RELEASED: u8 = 3;
    static readonly STATUS_NOT_SERVO_ON: u8 = 4;
    static readonly STATUS_RELEASING_BRAKE: u8 = 5;
    static readonly STATUS_MINOR_FAULT: u8 = 6;
    static readonly STATUS_CRITICAL_FAULT: u8 = 7;
    static readonly STATUS_IN_REDUCED_STATE: u8 = 8;
    static readonly STATUS_IN_RECOVERY_STATE: u8 = 9;
    static readonly STATUS_IN_MANUAL_MODE: u8 = 10;
    static readonly STATUS_IN_AUTO_MODE: u8 = 11;
    static readonly DRIVER_UNINITIALIZED: u8 = 0;
    static readonly DRIVER_READY: u8 = 1;
    static readonly DRIVER_FAULT: u8 = 2;
    static readonly DRIVER_RECOVERING: u8 = 3;
    static readonly DRIVER_LOCKOUT: u8 = 4;
    static readonly DRIVER_DISCONNECTED: u8 = 5;
    static readonly maxWireBytes: i32 = 17650;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 17650;
    /**
     * @brief Operational status of the robot and of the driver supervising it. The status values mirror
     * flexiv::rdk::OperationalStatus one-for-one. Header
     * @details Original flexiv_msgs/msg/OperationalStatus.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/OperationalStatus.operational_status; native type uint8. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    operational_status: u8 = 0;
    /**
     * @brief Human-readable name of the operational status above
     * @details Original flexiv_msgs/msg/OperationalStatus.operational_status_name; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    operational_status_name: string = "";
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/OperationalStatus.driver_state; native type uint8. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    driver_state: u8 = 0;
    /**
     * @brief Robot condition flags
     * @details Original flexiv_msgs/msg/OperationalStatus.connected; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    connected: bool = false;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.fault; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    fault: bool = false;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.operational; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    operational: bool = false;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.estop_released; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    estop_released: bool = false;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.reduced; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    reduced: bool = false;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.recovery_state; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    recovery_state: bool = false;
    /**
     * @brief Current robot control mode, values defined in Mode.msg
     * @details Original flexiv_msgs/msg/OperationalStatus.control_mode; native type int8. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    control_mode: i8 = 0;
    /**
     * @brief How the current condition should be recovered from, values defined in RecoveryPolicy.msg
     * @details Original flexiv_msgs/msg/OperationalStatus.recovery_policy; native type uint8. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    recovery_policy: u8 = 0;
    /**
     * @brief Operator-facing explanation of the current condition and what to do about it
     * @details Original flexiv_msgs/msg/OperationalStatus.message; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    message: string = "";
    /**
     * @brief Most recent error and critical events reported by the robot
     * @details Original flexiv_msgs/msg/OperationalStatus.recent_events; native type
     * flexiv_msgs/msg/RobotEvent. At most 16 elements. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    recent_events: Array < Ros2Flexiv_msgsMsgRobotEvent >= new Array<Ros2Flexiv_msgsMsgRobotEvent>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 17650 - n)
                return -90;
            n += child;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(!validUnicode(this.operational_status_name) || this.operational_status_name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.operational_status_name);
            if(size > 256)
                return -22;
            if(4 + size > 17650 - n)
                return -90;
            n += 4 + size;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(1 > 17650 - n)
                return -90;
            n += 1;
            if(n > 17650)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 17650 - n)
                return -90;
            n += 4 + size;
            if(n > 17650)
                return -90;
        }
        {
            if(this.recent_events.length > 16)
                return -22;
            if(4 > 17650 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.recent_events.length; ++i)
            {
                const child = this.recent_events[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 17650 - n)
                    return -90;
                n += child;
                if(n > 17650)
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
        w.integer(<u64>this.operational_status, 1);
        w.text(this.operational_status_name);
        w.integer(<u64>this.driver_state, 1);
        w.u8(this.connected ? 1 : 0);
        w.u8(this.fault ? 1 : 0);
        w.u8(this.operational ? 1 : 0);
        w.u8(this.estop_released ? 1 : 0);
        w.u8(this.reduced ? 1 : 0);
        w.u8(this.recovery_state ? 1 : 0);
        w.integer(<u64>this.control_mode, 1);
        w.integer(<u64>this.recovery_policy, 1);
        w.text(this.message);
        w.u32(<u32>this.recent_events.length);
        for(let i = 0; i < this.recent_events.length; ++i)
        {
            this.recent_events[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgOperationalStatus
    {
        const value = new Ros2Flexiv_msgsMsgOperationalStatus();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.operational_status = decoded;
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
            value.operational_status_name = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.driver_state = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.connected = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.fault = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.operational = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.estop_released = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.reduced = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.recovery_state = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.control_mode = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.recovery_policy = decoded;
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
            value.message = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.recent_events = new Array<Ros2Flexiv_msgsMsgRobotEvent>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Flexiv_msgsMsgRobotEvent.readControl(r);
                value.recent_events.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgOperationalStatusCodec implements VendorCodec<Ros2Flexiv_msgsMsgOperationalStatus>
{
    static readonly codecIdentity: string = "UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62";
    static readonly maxWireBytes: i32 = 17650;

    encodeChecked(value: Ros2Flexiv_msgsMsgOperationalStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgOperationalStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgOperationalStatus>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgOperationalStatus>();
        if(bytes.length > 17650)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 34)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgOperationalStatus.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgOperationalStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgOperationalStatus() : changetype<Ros2Flexiv_msgsMsgOperationalStatus>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/RecoveryPolicy; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgRecoveryPolicy
{
    static readonly NONE: u8 = 0;
    static readonly TRANSIENT: u8 = 1;
    static readonly AUTO_RECOVERABLE: u8 = 2;
    static readonly WAIT_OPERATOR: u8 = 3;
    static readonly SAFETY_LOCKOUT: u8 = 4;
    static readonly CONNECTION_LOST: u8 = 5;
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/RecoveryPolicy.recovery_policy; native type uint8. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    recovery_policy: u8 = 0;

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
        w.integer(<u64>this.recovery_policy, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgRecoveryPolicy
    {
        const value = new Ros2Flexiv_msgsMsgRecoveryPolicy();
        {
            const decoded = <u8>r.integer(1);
            value.recovery_policy = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgRecoveryPolicyCodec implements VendorCodec<Ros2Flexiv_msgsMsgRecoveryPolicy>
{
    static readonly codecIdentity: string = "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Flexiv_msgsMsgRecoveryPolicy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsMsgRecoveryPolicy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsMsgRecoveryPolicy>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsMsgRecoveryPolicy>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsMsgRecoveryPolicy.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsMsgRecoveryPolicy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsMsgRecoveryPolicy() : changetype<Ros2Flexiv_msgsMsgRecoveryPolicy>(out.value);
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

/** @brief Complete original geometry_msgs/msg/PoseStamped; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgPoseStamped
{
    static readonly maxWireBytes: i32 = 324;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 324;
    /**
     * @brief A Pose with reference coordinate frame and timestamp
     * @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Pose field.
     * @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    pose: Ros2Geometry_msgsMsgPose = new Ros2Geometry_msgsMsgPose();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 324 - n)
                return -90;
            n += child;
            if(n > 324)
                return -90;
        }
        {
            const child = this.pose.wireSize();
            if(child < 0)
                return child;
            if(child > 324 - n)
                return -90;
            n += child;
            if(n > 324)
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
        this.pose.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
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
    static readonly codecIdentity: string = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad";
    static readonly maxWireBytes: i32 = 324;

    encodeChecked(value: Ros2Geometry_msgsMsgPoseStamped): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
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
        if(bytes.length > 324)
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

/** @brief Complete original geometry_msgs/msg/TwistStamped; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgTwistStamped
{
    static readonly maxWireBytes: i32 = 316;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 316;
    /**
     * @brief A twist with reference coordinate frame and timestamp
     * @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Twist field.
     * @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    twist: Ros2Geometry_msgsMsgTwist = new Ros2Geometry_msgsMsgTwist();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 316 - n)
                return -90;
            n += child;
            if(n > 316)
                return -90;
        }
        {
            const child = this.twist.wireSize();
            if(child < 0)
                return child;
            if(child > 316 - n)
                return -90;
            n += child;
            if(n > 316)
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
        this.twist.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgTwistStamped
    {
        const value = new Ros2Geometry_msgsMsgTwistStamped();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgTwist.readControl(r);
            value.twist = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgTwistStampedCodec implements VendorCodec<Ros2Geometry_msgsMsgTwistStamped>
{
    static readonly codecIdentity: string = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308";
    static readonly maxWireBytes: i32 = 316;

    encodeChecked(value: Ros2Geometry_msgsMsgTwistStamped): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgTwistStamped): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgTwistStamped>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgTwistStamped>();
        if(bytes.length > 316)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 60)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgTwistStamped.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgTwistStamped
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgTwistStamped() : changetype<Ros2Geometry_msgsMsgTwistStamped>(out.value);
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

/** @brief Complete original geometry_msgs/msg/WrenchStamped; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgWrenchStamped
{
    static readonly maxWireBytes: i32 = 316;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 316;
    /**
     * @brief A wrench with reference coordinate frame and timestamp
     * @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Retain the complete original geometry_msgs/msg/Wrench field.
     * @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    wrench: Ros2Geometry_msgsMsgWrench = new Ros2Geometry_msgsMsgWrench();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 316 - n)
                return -90;
            n += child;
            if(n > 316)
                return -90;
        }
        {
            const child = this.wrench.wireSize();
            if(child < 0)
                return child;
            if(child > 316 - n)
                return -90;
            n += child;
            if(n > 316)
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
        this.wrench.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgWrenchStamped
    {
        const value = new Ros2Geometry_msgsMsgWrenchStamped();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrench.readControl(r);
            value.wrench = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgWrenchStampedCodec implements VendorCodec<Ros2Geometry_msgsMsgWrenchStamped>
{
    static readonly codecIdentity: string = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177";
    static readonly maxWireBytes: i32 = 316;

    encodeChecked(value: Ros2Geometry_msgsMsgWrenchStamped): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgWrenchStamped): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgWrenchStamped>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgWrenchStamped>();
        if(bytes.length > 316)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 60)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgWrenchStamped.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgWrenchStamped
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgWrenchStamped() : changetype<Ros2Geometry_msgsMsgWrenchStamped>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/msg/RobotStates; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgRobotStates
{
    static readonly maxWireBytes: i32 = 5160;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 5160;
    /**
     * @brief Header
     * @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /**
     * @brief Robot system timestamp
     * @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
     * builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    robot_timestamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /**
     * @brief Measured joint positions using link-side encoder
     * @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    q: Array < f64 >= new Array<f64>();
    /**
     * @brief Measured joint positions using motor-side encoder
     * @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    theta: Array < f64 >= new Array<f64>();
    /**
     * @brief Measured joint velocities using link-side encoder
     * @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    dq: Array < f64 >= new Array<f64>();
    /**
     * @brief Measured joint velocities using motor-side encoder
     * @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    dtheta: Array < f64 >= new Array<f64>();
    /**
     * @brief Measured joint torques
     * @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    tau: Array < f64 >= new Array<f64>();
    /**
     * @brief Numerical derivative of measured joint torques
     * @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    tau_dot: Array < f64 >= new Array<f64>();
    /**
     * @brief Estimated external joint torques
     * @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    tau_ext: Array < f64 >= new Array<f64>();
    /**
     * @brief Estimated interaction joint torques
     * @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    tau_interact: Array < f64 >= new Array<f64>();
    /**
     * @brief Measured joint temperatures
     * @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    temperature: Array < f64 >= new Array<f64>();
    /**
     * @brief Measured TCP pose expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    tcp_pose: Ros2Geometry_msgsMsgPoseStamped = new Ros2Geometry_msgsMsgPoseStamped();
    /**
     * @brief Measured TCP twist expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    tcp_twist: Ros2Geometry_msgsMsgTwistStamped = new Ros2Geometry_msgsMsgTwistStamped();
    /**
     * @brief Measured flange pose expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
     * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    flange_pose: Ros2Geometry_msgsMsgPoseStamped = new Ros2Geometry_msgsMsgPoseStamped();
    /**
     * @brief Raw force-torque (FT) sensor reading in flange frame
     * @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    raw_ft_sensor: Ros2Geometry_msgsMsgWrenchStamped = new Ros2Geometry_msgsMsgWrenchStamped();
    /**
     * @brief Estimated external wrench applied on TCP and expressed in TCP frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped = new Ros2Geometry_msgsMsgWrenchStamped();
    /**
     * @brief Estimated external wrench applied on TCP and expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped = new Ros2Geometry_msgsMsgWrenchStamped();
    /**
     * @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
     * @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    raw_tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped = new Ros2Geometry_msgsMsgWrenchStamped();
    /**
     * @brief Unfiltered external wrench applied on TCP and expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    raw_tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped = new Ros2Geometry_msgsMsgWrenchStamped();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            const child = this.robot_timestamp.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            if(this.q.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.q.length; ++i)
            {
                if(!isFinite(this.q[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            if(this.theta.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.theta.length; ++i)
            {
                if(!isFinite(this.theta[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            if(this.dq.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.dq.length; ++i)
            {
                if(!isFinite(this.dq[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            if(this.dtheta.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.dtheta.length; ++i)
            {
                if(!isFinite(this.dtheta[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            if(this.tau.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.tau.length; ++i)
            {
                if(!isFinite(this.tau[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            if(this.tau_dot.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.tau_dot.length; ++i)
            {
                if(!isFinite(this.tau_dot[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            if(this.tau_ext.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.tau_ext.length; ++i)
            {
                if(!isFinite(this.tau_ext[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            if(this.tau_interact.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.tau_interact.length; ++i)
            {
                if(!isFinite(this.tau_interact[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            if(this.temperature.length > 32)
                return -22;
            if(4 > 5160 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.temperature.length; ++i)
            {
                if(!isFinite(this.temperature[i]))
                    return -22;
                if(8 > 5160 - n)
                    return -90;
                n += 8;
                if(n > 5160)
                    return -90;
            }
        }
        {
            const child = this.tcp_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            const child = this.tcp_twist.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            const child = this.flange_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            const child = this.raw_ft_sensor.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            const child = this.tcp_wrench_local.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            const child = this.tcp_wrench.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            const child = this.raw_tcp_wrench_local.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
                return -90;
        }
        {
            const child = this.raw_tcp_wrench.wireSize();
            if(child < 0)
                return child;
            if(child > 5160 - n)
                return -90;
            n += child;
            if(n > 5160)
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
        this.robot_timestamp.writeControl(w);
        w.u32(<u32>this.q.length);
        for(let i = 0; i < this.q.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.q[i]), 8);
        }
        w.u32(<u32>this.theta.length);
        for(let i = 0; i < this.theta.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.theta[i]), 8);
        }
        w.u32(<u32>this.dq.length);
        for(let i = 0; i < this.dq.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.dq[i]), 8);
        }
        w.u32(<u32>this.dtheta.length);
        for(let i = 0; i < this.dtheta.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.dtheta[i]), 8);
        }
        w.u32(<u32>this.tau.length);
        for(let i = 0; i < this.tau.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau[i]), 8);
        }
        w.u32(<u32>this.tau_dot.length);
        for(let i = 0; i < this.tau_dot.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau_dot[i]), 8);
        }
        w.u32(<u32>this.tau_ext.length);
        for(let i = 0; i < this.tau_ext.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau_ext[i]), 8);
        }
        w.u32(<u32>this.tau_interact.length);
        for(let i = 0; i < this.tau_interact.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.tau_interact[i]), 8);
        }
        w.u32(<u32>this.temperature.length);
        for(let i = 0; i < this.temperature.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.temperature[i]), 8);
        }
        this.tcp_pose.writeControl(w);
        this.tcp_twist.writeControl(w);
        this.flange_pose.writeControl(w);
        this.raw_ft_sensor.writeControl(w);
        this.tcp_wrench_local.writeControl(w);
        this.tcp_wrench.writeControl(w);
        this.raw_tcp_wrench_local.writeControl(w);
        this.raw_tcp_wrench.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsMsgRobotStates
    {
        const value = new Ros2Flexiv_msgsMsgRobotStates();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.robot_timestamp = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
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
            const count = r.u32();
            if(!r.valid || count > 32)
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
            const count = r.u32();
            if(!r.valid || count > 32)
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
            const count = r.u32();
            if(!r.valid || count > 32)
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
            const count = r.u32();
            if(!r.valid || count > 32)
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
            const count = r.u32();
            if(!r.valid || count > 32)
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
            const count = r.u32();
            if(!r.valid || count > 32)
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
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.tau_interact = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.tau_interact.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.temperature = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.temperature.push(decoded);
            }
        }
        {
            const decoded = Ros2Geometry_msgsMsgPoseStamped.readControl(r);
            value.tcp_pose = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgTwistStamped.readControl(r);
            value.tcp_twist = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgPoseStamped.readControl(r);
            value.flange_pose = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrenchStamped.readControl(r);
            value.raw_ft_sensor = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrenchStamped.readControl(r);
            value.tcp_wrench_local = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrenchStamped.readControl(r);
            value.tcp_wrench = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrenchStamped.readControl(r);
            value.raw_tcp_wrench_local = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgWrenchStamped.readControl(r);
            value.raw_tcp_wrench = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsMsgRobotStatesCodec implements VendorCodec<Ros2Flexiv_msgsMsgRobotStates>
{
    static readonly codecIdentity: string = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a";
    static readonly maxWireBytes: i32 = 5160;

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
        if(bytes.length > 5160)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 552)
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

/** @brief Complete original flexiv_msgs/srv/GetOperationalStatus_Request; spellings are published in generation proof. */
export class Ros2Flexiv_msgsSrvGetOperationalStatus_Request
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsSrvGetOperationalStatus_Request
    {
        const value = new Ros2Flexiv_msgsSrvGetOperationalStatus_Request();
        return value;
    }
}

export class Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec implements VendorCodec<Ros2Flexiv_msgsSrvGetOperationalStatus_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsSrvGetOperationalStatus_Request>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsSrvGetOperationalStatus_Request>();
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
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsSrvGetOperationalStatus_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsSrvGetOperationalStatus_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsSrvGetOperationalStatus_Request()
                                  : changetype<Ros2Flexiv_msgsSrvGetOperationalStatus_Request>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/srv/GetOperationalStatus_Response; spellings are published in generation proof. */
export class Ros2Flexiv_msgsSrvGetOperationalStatus_Response
{
    static readonly maxWireBytes: i32 = 17650;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 17650;
    /**
     * @brief Retain the complete original flexiv_msgs/msg/OperationalStatus field.
     * @details Original flexiv_msgs/srv/GetOperationalStatus_Response.status; native type
     * flexiv_msgs/msg/OperationalStatus. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    status: Ros2Flexiv_msgsMsgOperationalStatus = new Ros2Flexiv_msgsMsgOperationalStatus();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.status.wireSize();
            if(child < 0)
                return child;
            if(child > 17650 - n)
                return -90;
            n += child;
            if(n > 17650)
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
        this.status.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsSrvGetOperationalStatus_Response
    {
        const value = new Ros2Flexiv_msgsSrvGetOperationalStatus_Response();
        {
            const decoded = Ros2Flexiv_msgsMsgOperationalStatus.readControl(r);
            value.status = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec implements VendorCodec<Ros2Flexiv_msgsSrvGetOperationalStatus_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da";
    static readonly maxWireBytes: i32 = 17650;

    encodeChecked(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsSrvGetOperationalStatus_Response>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsSrvGetOperationalStatus_Response>();
        if(bytes.length > 17650)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 34)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsSrvGetOperationalStatus_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsSrvGetOperationalStatus_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsSrvGetOperationalStatus_Response()
                                  : changetype<Ros2Flexiv_msgsSrvGetOperationalStatus_Response>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/srv/SetJointImpedance_Request; spellings are published in generation proof. */
export class Ros2Flexiv_msgsSrvSetJointImpedance_Request
{
    static readonly maxWireBytes: i32 = 8844;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8844;
    /**
     * @brief Set impedance properties of the robot's joint motion controller. Requires the driver to run
     * with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
     * changes. Joints to set, named exactly as published on ~/joint_impedance. Leave empty to address
     * every joint the interface covers, in that published order. On a dual-arm robot this is how a single
     * arm is set on its own: name that arm's joints and the other arm is left untouched.
     * @details Original flexiv_msgs/srv/SetJointImpedance_Request.joint_names; native type string. At most
     * 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Joint motion stiffness K_q, one entry per joint in joint_names, or one per covered joint when
     * joint_names is empty. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which
     * in this position-streaming driver means the joint will sag under gravity. [Nm/rad]
     * @details Original flexiv_msgs/srv/SetJointImpedance_Request.k_q; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    k_q: Array < f64 >= new Array<f64>();
    /**
     * @brief Joint motion damping ratio Z_q, matching k_q entry for entry, or empty for the nominal 0.7.
     * Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues.
     * @details Original flexiv_msgs/srv/SetJointImpedance_Request.z_q; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    z_q: Array < f64 >= new Array<f64>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.joint_names.length > 32)
                return -22;
            if(4 > 8844 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 8844 - n)
                    return -90;
                n += 4 + size;
                if(n > 8844)
                    return -90;
            }
        }
        {
            if(this.k_q.length > 32)
                return -22;
            if(4 > 8844 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.k_q.length; ++i)
            {
                if(!isFinite(this.k_q[i]))
                    return -22;
                if(8 > 8844 - n)
                    return -90;
                n += 8;
                if(n > 8844)
                    return -90;
            }
        }
        {
            if(this.z_q.length > 32)
                return -22;
            if(4 > 8844 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.z_q.length; ++i)
            {
                if(!isFinite(this.z_q[i]))
                    return -22;
                if(8 > 8844 - n)
                    return -90;
                n += 8;
                if(n > 8844)
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
        w.u32(<u32>this.joint_names.length);
        for(let i = 0; i < this.joint_names.length; ++i)
        {
            w.text(this.joint_names[i]);
        }
        w.u32(<u32>this.k_q.length);
        for(let i = 0; i < this.k_q.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.k_q[i]), 8);
        }
        w.u32(<u32>this.z_q.length);
        for(let i = 0; i < this.z_q.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.z_q[i]), 8);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsSrvSetJointImpedance_Request
    {
        const value = new Ros2Flexiv_msgsSrvSetJointImpedance_Request();
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
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.k_q = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.k_q.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.z_q = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.z_q.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec implements VendorCodec<Ros2Flexiv_msgsSrvSetJointImpedance_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08";
    static readonly maxWireBytes: i32 = 8844;

    encodeChecked(value: Ros2Flexiv_msgsSrvSetJointImpedance_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsSrvSetJointImpedance_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsSrvSetJointImpedance_Request>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsSrvSetJointImpedance_Request>();
        if(bytes.length > 8844)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsSrvSetJointImpedance_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsSrvSetJointImpedance_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsSrvSetJointImpedance_Request() : changetype<Ros2Flexiv_msgsSrvSetJointImpedance_Request>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/srv/SetJointImpedance_Response; spellings are published in generation proof. */
export class Ros2Flexiv_msgsSrvSetJointImpedance_Response
{
    static readonly maxWireBytes: i32 = 9634;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9634;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetJointImpedance_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    success: bool = false;
    /**
     * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
     * @details Original flexiv_msgs/srv/SetJointImpedance_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    message: string = "";
    /**
     * @brief Every joint the interface covers and the values now held for it, unchanged from before on a
     * rejection. Joints the request did not name keep the value they already had.
     * @details Original flexiv_msgs/srv/SetJointImpedance_Response.setting; native type
     * flexiv_msgs/msg/JointImpedance. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    setting: Ros2Flexiv_msgsMsgJointImpedance = new Ros2Flexiv_msgsMsgJointImpedance();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 9634 - n)
                return -90;
            n += 1;
            if(n > 9634)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 9634 - n)
                return -90;
            n += 4 + size;
            if(n > 9634)
                return -90;
        }
        {
            const child = this.setting.wireSize();
            if(child < 0)
                return child;
            if(child > 9634 - n)
                return -90;
            n += child;
            if(n > 9634)
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
        w.u8(this.success ? 1 : 0);
        w.text(this.message);
        this.setting.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsSrvSetJointImpedance_Response
    {
        const value = new Ros2Flexiv_msgsSrvSetJointImpedance_Response();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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
            value.message = decoded;
        }
        {
            const decoded = Ros2Flexiv_msgsMsgJointImpedance.readControl(r);
            value.setting = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec implements VendorCodec<Ros2Flexiv_msgsSrvSetJointImpedance_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96";
    static readonly maxWireBytes: i32 = 9634;

    encodeChecked(value: Ros2Flexiv_msgsSrvSetJointImpedance_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsSrvSetJointImpedance_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsSrvSetJointImpedance_Response>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsSrvSetJointImpedance_Response>();
        if(bytes.length > 9634)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 34)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsSrvSetJointImpedance_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsSrvSetJointImpedance_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsSrvSetJointImpedance_Response() : changetype<Ros2Flexiv_msgsSrvSetJointImpedance_Response>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/srv/SetJointInertiaScale_Request; spellings are published in generation proof. */
export class Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
{
    static readonly maxWireBytes: i32 = 8584;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8584;
    /**
     * @brief Set inertia shaping scales of the robot's joint motion controller, which make the joints
     * behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.
     * An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as
     * published on ~/joint_inertia_scale. Leave empty to address every joint the interface covers, in that
     * published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's
     * joints and the other arm is left untouched.
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.joint_names; native type string. At
     * most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Inertia shaping scale sigma_q, one entry per joint in joint_names, or one per covered joint
     * when joint_names is empty. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a
     * smaller scale corresponds to lighter inertia.
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.inertia_scales; native type float64.
     * At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    inertia_scales: Array < f64 >= new Array<f64>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.joint_names.length > 32)
                return -22;
            if(4 > 8584 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 8584 - n)
                    return -90;
                n += 4 + size;
                if(n > 8584)
                    return -90;
            }
        }
        {
            if(this.inertia_scales.length > 32)
                return -22;
            if(4 > 8584 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.inertia_scales.length; ++i)
            {
                if(!isFinite(this.inertia_scales[i]))
                    return -22;
                if(8 > 8584 - n)
                    return -90;
                n += 8;
                if(n > 8584)
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
        w.u32(<u32>this.joint_names.length);
        for(let i = 0; i < this.joint_names.length; ++i)
        {
            w.text(this.joint_names[i]);
        }
        w.u32(<u32>this.inertia_scales.length);
        for(let i = 0; i < this.inertia_scales.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.inertia_scales[i]), 8);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
    {
        const value = new Ros2Flexiv_msgsSrvSetJointInertiaScale_Request();
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
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.inertia_scales = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.inertia_scales.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec implements VendorCodec<Ros2Flexiv_msgsSrvSetJointInertiaScale_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625";
    static readonly maxWireBytes: i32 = 8584;

    encodeChecked(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsSrvSetJointInertiaScale_Request>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsSrvSetJointInertiaScale_Request>();
        if(bytes.length > 8584)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsSrvSetJointInertiaScale_Request()
                                  : changetype<Ros2Flexiv_msgsSrvSetJointInertiaScale_Request>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/srv/SetJointInertiaScale_Response; spellings are published in generation proof. */
export class Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
{
    static readonly maxWireBytes: i32 = 9114;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9114;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    success: bool = false;
    /**
     * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    message: string = "";
    /**
     * @brief Every joint the interface covers and the values now held for it, unchanged from before on a
     * rejection. Joints the request did not name keep the value they already had.
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.setting; native type
     * flexiv_msgs/msg/JointInertiaScale. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    setting: Ros2Flexiv_msgsMsgJointInertiaScale = new Ros2Flexiv_msgsMsgJointInertiaScale();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 9114 - n)
                return -90;
            n += 1;
            if(n > 9114)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 9114 - n)
                return -90;
            n += 4 + size;
            if(n > 9114)
                return -90;
        }
        {
            const child = this.setting.wireSize();
            if(child < 0)
                return child;
            if(child > 9114 - n)
                return -90;
            n += child;
            if(n > 9114)
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
        w.u8(this.success ? 1 : 0);
        w.text(this.message);
        this.setting.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
    {
        const value = new Ros2Flexiv_msgsSrvSetJointInertiaScale_Response();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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
            value.message = decoded;
        }
        {
            const decoded = Ros2Flexiv_msgsMsgJointInertiaScale.readControl(r);
            value.setting = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec implements VendorCodec<Ros2Flexiv_msgsSrvSetJointInertiaScale_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931";
    static readonly maxWireBytes: i32 = 9114;

    encodeChecked(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsSrvSetJointInertiaScale_Response>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsSrvSetJointInertiaScale_Response>();
        if(bytes.length > 9114)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 26)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsSrvSetJointInertiaScale_Response()
                                  : changetype<Ros2Flexiv_msgsSrvSetJointInertiaScale_Response>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/srv/SetMaxContactTorque_Request; spellings are published in generation proof. */
export class Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
{
    static readonly maxWireBytes: i32 = 8584;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8584;
    /**
     * @brief Set maximum contact torques of the robot's joint motion controller. The controller regulates
     * its output to keep contact torques with the environment under these values. Requires the driver to
     * run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
     * changes. Joints to set, named exactly as published on ~/max_contact_torque. Leave empty to address
     * every joint the interface covers, in that published order. On a dual-arm robot this is how a single
     * arm is set on its own: name that arm's joints and the other arm is left untouched.
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.joint_names; native type string. At
     * most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    joint_names: Array < string >= new Array<string>();
    /**
     * @brief Maximum contact torque, one entry per joint in joint_names, or one per covered joint when
     * joint_names is empty. Valid range [0, tau_max]. Raising this increases the force the robot may exert
     * on its surroundings. [Nm]
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.max_contact_torques; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    max_contact_torques: Array < f64 >= new Array<f64>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.joint_names.length > 32)
                return -22;
            if(4 > 8584 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 8584 - n)
                    return -90;
                n += 4 + size;
                if(n > 8584)
                    return -90;
            }
        }
        {
            if(this.max_contact_torques.length > 32)
                return -22;
            if(4 > 8584 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.max_contact_torques.length; ++i)
            {
                if(!isFinite(this.max_contact_torques[i]))
                    return -22;
                if(8 > 8584 - n)
                    return -90;
                n += 8;
                if(n > 8584)
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
        w.u32(<u32>this.joint_names.length);
        for(let i = 0; i < this.joint_names.length; ++i)
        {
            w.text(this.joint_names[i]);
        }
        w.u32(<u32>this.max_contact_torques.length);
        for(let i = 0; i < this.max_contact_torques.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.max_contact_torques[i]), 8);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
    {
        const value = new Ros2Flexiv_msgsSrvSetMaxContactTorque_Request();
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
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.max_contact_torques = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.max_contact_torques.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec implements VendorCodec<Ros2Flexiv_msgsSrvSetMaxContactTorque_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e";
    static readonly maxWireBytes: i32 = 8584;

    encodeChecked(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsSrvSetMaxContactTorque_Request>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsSrvSetMaxContactTorque_Request>();
        if(bytes.length > 8584)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsSrvSetMaxContactTorque_Request() : changetype<Ros2Flexiv_msgsSrvSetMaxContactTorque_Request>(out.value);
    }
}

/** @brief Complete original flexiv_msgs/srv/SetMaxContactTorque_Response; spellings are published in generation proof. */
export class Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
{
    static readonly maxWireBytes: i32 = 9374;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9374;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    success: bool = false;
    /**
     * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    message: string = "";
    /**
     * @brief Every joint the interface covers and the values now held for it, unchanged from before on a
     * rejection. Joints the request did not name keep the value they already had.
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.setting; native type
     * flexiv_msgs/msg/MaxContactTorque. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    setting: Ros2Flexiv_msgsMsgMaxContactTorque = new Ros2Flexiv_msgsMsgMaxContactTorque();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 9374 - n)
                return -90;
            n += 1;
            if(n > 9374)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 9374 - n)
                return -90;
            n += 4 + size;
            if(n > 9374)
                return -90;
        }
        {
            const child = this.setting.wireSize();
            if(child < 0)
                return child;
            if(child > 9374 - n)
                return -90;
            n += child;
            if(n > 9374)
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
        w.u8(this.success ? 1 : 0);
        w.text(this.message);
        this.setting.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
    {
        const value = new Ros2Flexiv_msgsSrvSetMaxContactTorque_Response();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
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
            value.message = decoded;
        }
        {
            const decoded = Ros2Flexiv_msgsMsgMaxContactTorque.readControl(r);
            value.setting = decoded;
        }
        return value;
    }
}

export class Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec implements VendorCodec<Ros2Flexiv_msgsSrvSetMaxContactTorque_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c";
    static readonly maxWireBytes: i32 = 9374;

    encodeChecked(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Flexiv_msgsSrvSetMaxContactTorque_Response>
    {
        const out = new VendorDecoded<Ros2Flexiv_msgsSrvSetMaxContactTorque_Response>();
        if(bytes.length > 9374)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 30)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Flexiv_msgsSrvSetMaxContactTorque_Response()
                                  : changetype<Ros2Flexiv_msgsSrvSetMaxContactTorque_Response>(out.value);
    }
}
