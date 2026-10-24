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

/** @brief Complete original flexiv_msgs/msg/Mode; spellings are published in generation proof. */
export class Ros2Flexiv_msgsMsgMode
{
    static readonly MODE_UNKNOWN: i8 = -1;
    static readonly MODE_IDLE: i8 = 0;
    static readonly MODE_RT_JOINT_TORQUE: i8 = 1;
    static readonly MODE_RT_JOINT_IMPEDANCE: i8 = 2;
    static readonly MODE_NRT_JOINT_IMPEDANCE: i8 = 3;
    static readonly MODE_RT_JOINT_POSITION: i8 = 4;
    static readonly MODE_NRT_JOINT_POSITION: i8 = 5;
    static readonly MODE_NRT_PLAN_EXECUTION: i8 = 6;
    static readonly MODE_NRT_PRIMITIVE_EXECUTION: i8 = 7;
    static readonly MODE_RT_CARTESIAN_MOTION_FORCE: i8 = 8;
    static readonly MODE_NRT_CARTESIAN_MOTION_FORCE: i8 = 9;
    static readonly MODE_NRT_SUPER_PRIMITIVE: i8 = 10;
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
    static readonly codecIdentity: string = "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6";
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
