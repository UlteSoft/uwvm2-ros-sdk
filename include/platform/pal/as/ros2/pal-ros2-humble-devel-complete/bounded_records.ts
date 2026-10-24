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

/** @brief Complete original std_msgs/msg/ColorRGBA; spellings are published in generation proof. */
export class Ros2Std_msgsMsgColorRGBA
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** @brief Exact native field r, native scalar float32. */
    r: f32 = 0;
    /** @brief Exact native field g, native scalar float32. */
    g: f32 = 0;
    /** @brief Exact native field b, native scalar float32. */
    b: f32 = 0;
    /** @brief Exact native field a, native scalar float32. */
    a: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.r))
                return -22;
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.g))
                return -22;
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.b))
                return -22;
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.a))
                return -22;
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
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
        w.integer(<u64>reinterpret<u32>(this.r), 4);
        w.integer(<u64>reinterpret<u32>(this.g), 4);
        w.integer(<u64>reinterpret<u32>(this.b), 4);
        w.integer(<u64>reinterpret<u32>(this.a), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Std_msgsMsgColorRGBA
    {
        const value = new Ros2Std_msgsMsgColorRGBA();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.r = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.g = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.b = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.a = decoded;
        }
        return value;
    }
}

export class Ros2Std_msgsMsgColorRGBACodec implements VendorCodec<Ros2Std_msgsMsgColorRGBA>
{
    static readonly codecIdentity: string = "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2";
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros2Std_msgsMsgColorRGBA): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Std_msgsMsgColorRGBA): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Std_msgsMsgColorRGBA>
    {
        const out = new VendorDecoded<Ros2Std_msgsMsgColorRGBA>();
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
        const reader = new Reader(bytes), value = Ros2Std_msgsMsgColorRGBA.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Std_msgsMsgColorRGBA
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Std_msgsMsgColorRGBA() : changetype<Ros2Std_msgsMsgColorRGBA>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedFixedColorParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedFixedColorParams
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** @brief Exact native field color, native scalar std_msgs/msg/ColorRGBA. */
    color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.color.wireSize();
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.color.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedFixedColorParams
    {
        const value = new Ros2Pal_device_msgsMsgLedFixedColorParams();
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.color = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedFixedColorParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedFixedColorParams>
{
    static readonly codecIdentity: string = "UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac";
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedFixedColorParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedFixedColorParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedFixedColorParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedFixedColorParams>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedFixedColorParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedFixedColorParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedFixedColorParams() : changetype<Ros2Pal_device_msgsMsgLedFixedColorParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedRainbowParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedRainbowParams
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field transition_duration, native scalar builtin_interfaces/msg/Duration. */
    transition_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.transition_duration.wireSize();
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.transition_duration.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedRainbowParams
    {
        const value = new Ros2Pal_device_msgsMsgLedRainbowParams();
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.transition_duration = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedRainbowParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedRainbowParams>
{
    static readonly codecIdentity: string = "UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedRainbowParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedRainbowParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedRainbowParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedRainbowParams>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedRainbowParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedRainbowParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedRainbowParams() : changetype<Ros2Pal_device_msgsMsgLedRainbowParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedFadeParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedFadeParams
{
    static readonly maxWireBytes: i32 = 41;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 41;
    /** @brief Exact native field first_color, native scalar std_msgs/msg/ColorRGBA. */
    first_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field second_color, native scalar std_msgs/msg/ColorRGBA. */
    second_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field transition_duration, native scalar builtin_interfaces/msg/Duration. */
    transition_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field reverse_fade, native scalar bool. */
    reverse_fade: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.first_color.wireSize();
            if(child < 0)
                return child;
            if(child > 41 - n)
                return -90;
            n += child;
            if(n > 41)
                return -90;
        }
        {
            const child = this.second_color.wireSize();
            if(child < 0)
                return child;
            if(child > 41 - n)
                return -90;
            n += child;
            if(n > 41)
                return -90;
        }
        {
            const child = this.transition_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 41 - n)
                return -90;
            n += child;
            if(n > 41)
                return -90;
        }
        {
            if(1 > 41 - n)
                return -90;
            n += 1;
            if(n > 41)
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
        this.first_color.writeControl(w);
        this.second_color.writeControl(w);
        this.transition_duration.writeControl(w);
        w.u8(this.reverse_fade ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedFadeParams
    {
        const value = new Ros2Pal_device_msgsMsgLedFadeParams();
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.first_color = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.second_color = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.transition_duration = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.reverse_fade = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedFadeParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedFadeParams>
{
    static readonly codecIdentity: string = "UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5";
    static readonly maxWireBytes: i32 = 41;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedFadeParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedFadeParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedFadeParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedFadeParams>();
        if(bytes.length > 41)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 41)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedFadeParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedFadeParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedFadeParams() : changetype<Ros2Pal_device_msgsMsgLedFadeParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedBlinkParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedBlinkParams
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** @brief Exact native field first_color, native scalar std_msgs/msg/ColorRGBA. */
    first_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field second_color, native scalar std_msgs/msg/ColorRGBA. */
    second_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field first_color_duration, native scalar builtin_interfaces/msg/Duration. */
    first_color_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field second_color_duration, native scalar builtin_interfaces/msg/Duration. */
    second_color_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.first_color.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
            if(n > 48)
                return -90;
        }
        {
            const child = this.second_color.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
            if(n > 48)
                return -90;
        }
        {
            const child = this.first_color_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
            if(n > 48)
                return -90;
        }
        {
            const child = this.second_color_duration.wireSize();
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
        this.first_color.writeControl(w);
        this.second_color.writeControl(w);
        this.first_color_duration.writeControl(w);
        this.second_color_duration.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedBlinkParams
    {
        const value = new Ros2Pal_device_msgsMsgLedBlinkParams();
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.first_color = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.second_color = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.first_color_duration = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.second_color_duration = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedBlinkParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedBlinkParams>
{
    static readonly codecIdentity: string = "UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedBlinkParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedBlinkParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedBlinkParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedBlinkParams>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedBlinkParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedBlinkParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedBlinkParams() : changetype<Ros2Pal_device_msgsMsgLedBlinkParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedProgressParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedProgressParams
{
    static readonly maxWireBytes: i32 = 40;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 40;
    /** @brief Exact native field first_color, native scalar std_msgs/msg/ColorRGBA. */
    first_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field second_color, native scalar std_msgs/msg/ColorRGBA. */
    second_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field percentage, native scalar float32. */
    percentage: f32 = 0;
    /** @brief Exact native field led_offset, native scalar float32. */
    led_offset: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.first_color.wireSize();
            if(child < 0)
                return child;
            if(child > 40 - n)
                return -90;
            n += child;
            if(n > 40)
                return -90;
        }
        {
            const child = this.second_color.wireSize();
            if(child < 0)
                return child;
            if(child > 40 - n)
                return -90;
            n += child;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.percentage))
                return -22;
            if(4 > 40 - n)
                return -90;
            n += 4;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.led_offset))
                return -22;
            if(4 > 40 - n)
                return -90;
            n += 4;
            if(n > 40)
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
        this.first_color.writeControl(w);
        this.second_color.writeControl(w);
        w.integer(<u64>reinterpret<u32>(this.percentage), 4);
        w.integer(<u64>reinterpret<u32>(this.led_offset), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedProgressParams
    {
        const value = new Ros2Pal_device_msgsMsgLedProgressParams();
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.first_color = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.second_color = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.percentage = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.led_offset = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedProgressParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedProgressParams>
{
    static readonly codecIdentity: string = "UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0";
    static readonly maxWireBytes: i32 = 40;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedProgressParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedProgressParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedProgressParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedProgressParams>();
        if(bytes.length > 40)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedProgressParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedProgressParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedProgressParams() : changetype<Ros2Pal_device_msgsMsgLedProgressParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedFlowParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedFlowParams
{
    static readonly maxWireBytes: i32 = 40;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 40;
    /** @brief Exact native field first_color, native scalar std_msgs/msg/ColorRGBA. */
    first_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field second_color, native scalar std_msgs/msg/ColorRGBA. */
    second_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field percentage, native scalar float32. */
    percentage: f32 = 0;
    /** @brief Exact native field velocity, native scalar float32. */
    velocity: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.first_color.wireSize();
            if(child < 0)
                return child;
            if(child > 40 - n)
                return -90;
            n += child;
            if(n > 40)
                return -90;
        }
        {
            const child = this.second_color.wireSize();
            if(child < 0)
                return child;
            if(child > 40 - n)
                return -90;
            n += child;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.percentage))
                return -22;
            if(4 > 40 - n)
                return -90;
            n += 4;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(4 > 40 - n)
                return -90;
            n += 4;
            if(n > 40)
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
        this.first_color.writeControl(w);
        this.second_color.writeControl(w);
        w.integer(<u64>reinterpret<u32>(this.percentage), 4);
        w.integer(<u64>reinterpret<u32>(this.velocity), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedFlowParams
    {
        const value = new Ros2Pal_device_msgsMsgLedFlowParams();
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.first_color = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.second_color = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.percentage = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.velocity = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedFlowParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedFlowParams>
{
    static readonly codecIdentity: string = "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561";
    static readonly maxWireBytes: i32 = 40;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedFlowParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedFlowParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedFlowParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedFlowParams>();
        if(bytes.length > 40)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedFlowParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedFlowParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedFlowParams() : changetype<Ros2Pal_device_msgsMsgLedFlowParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedPreProgrammedParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedPreProgrammedParams
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** @brief Exact native field preprogrammed_id, native scalar uint8. */
    preprogrammed_id: u8 = 0;

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
        w.integer(<u64>this.preprogrammed_id, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedPreProgrammedParams
    {
        const value = new Ros2Pal_device_msgsMsgLedPreProgrammedParams();
        {
            const decoded = <u8>r.integer(1);
            value.preprogrammed_id = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedPreProgrammedParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedPreProgrammedParams>
{
    static readonly codecIdentity: string = "UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be";
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedPreProgrammedParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedPreProgrammedParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedPreProgrammedParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedPreProgrammedParams>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedPreProgrammedParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedPreProgrammedParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedPreProgrammedParams() : changetype<Ros2Pal_device_msgsMsgLedPreProgrammedParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedEffectViaTopicParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedEffectViaTopicParams
{
    static readonly maxWireBytes: i32 = 132;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 132;
    /** @brief Exact native field topic_name, native scalar string. */
    topic_name: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.topic_name) || this.topic_name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.topic_name);
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.topic_name);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedEffectViaTopicParams
    {
        const value = new Ros2Pal_device_msgsMsgLedEffectViaTopicParams();
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
            value.topic_name = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedEffectViaTopicParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedEffectViaTopicParams>
{
    static readonly codecIdentity: string = "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485";
    static readonly maxWireBytes: i32 = 132;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedEffectViaTopicParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedEffectViaTopicParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedEffectViaTopicParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedEffectViaTopicParams>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedEffectViaTopicParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedEffectViaTopicParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedEffectViaTopicParams() : changetype<Ros2Pal_device_msgsMsgLedEffectViaTopicParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedDataArrayParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedDataArrayParams
{
    static readonly maxWireBytes: i32 = 68;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 68;
    /** @brief Exact native field data, native scalar std_msgs/msg/ColorRGBA. */
    data: Array < Ros2Std_msgsMsgColorRGBA >= new Array<Ros2Std_msgsMsgColorRGBA>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.data.length > 4)
                return -22;
            if(4 > 68 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                const child = this.data[i].wireSize();
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
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            this.data[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedDataArrayParams
    {
        const value = new Ros2Pal_device_msgsMsgLedDataArrayParams();
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<Ros2Std_msgsMsgColorRGBA>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
                value.data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedDataArrayParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedDataArrayParams>
{
    static readonly codecIdentity: string = "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349";
    static readonly maxWireBytes: i32 = 68;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedDataArrayParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedDataArrayParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedDataArrayParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedDataArrayParams>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedDataArrayParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedDataArrayParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedDataArrayParams() : changetype<Ros2Pal_device_msgsMsgLedDataArrayParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedEffectParams; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedEffectParams
{
    static readonly FIXED_COLOR: u8 = 0;
    static readonly RAINBOW: u8 = 1;
    static readonly FADE: u8 = 2;
    static readonly BLINK: u8 = 3;
    static readonly PROGRESS: u8 = 4;
    static readonly FLOW: u8 = 5;
    static readonly PREPROGRAMMED_EFFECT: u8 = 6;
    static readonly EFFECT_VIA_TOPIC: u8 = 7;
    static readonly DATA_ARRAY: u8 = 8;
    static readonly maxWireBytes: i32 = 395;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 395;
    /** @brief Exact native field effect_type, native scalar uint8. */
    effect_type: u8 = 0;
    /** @brief Exact native field fixed_color, native scalar pal_device_msgs/msg/LedFixedColorParams. */
    fixed_color: Ros2Pal_device_msgsMsgLedFixedColorParams = new Ros2Pal_device_msgsMsgLedFixedColorParams();
    /** @brief Exact native field rainbow, native scalar pal_device_msgs/msg/LedRainbowParams. */
    rainbow: Ros2Pal_device_msgsMsgLedRainbowParams = new Ros2Pal_device_msgsMsgLedRainbowParams();
    /** @brief Exact native field fade, native scalar pal_device_msgs/msg/LedFadeParams. */
    fade: Ros2Pal_device_msgsMsgLedFadeParams = new Ros2Pal_device_msgsMsgLedFadeParams();
    /** @brief Exact native field blink, native scalar pal_device_msgs/msg/LedBlinkParams. */
    blink: Ros2Pal_device_msgsMsgLedBlinkParams = new Ros2Pal_device_msgsMsgLedBlinkParams();
    /** @brief Exact native field progress, native scalar pal_device_msgs/msg/LedProgressParams. */
    progress: Ros2Pal_device_msgsMsgLedProgressParams = new Ros2Pal_device_msgsMsgLedProgressParams();
    /** @brief Exact native field flow, native scalar pal_device_msgs/msg/LedFlowParams. */
    flow: Ros2Pal_device_msgsMsgLedFlowParams = new Ros2Pal_device_msgsMsgLedFlowParams();
    /** @brief Exact native field preprogrammed, native scalar pal_device_msgs/msg/LedPreProgrammedParams. */
    preprogrammed: Ros2Pal_device_msgsMsgLedPreProgrammedParams = new Ros2Pal_device_msgsMsgLedPreProgrammedParams();
    /** @brief Exact native field effect_via_topic, native scalar pal_device_msgs/msg/LedEffectViaTopicParams. */
    effect_via_topic: Ros2Pal_device_msgsMsgLedEffectViaTopicParams = new Ros2Pal_device_msgsMsgLedEffectViaTopicParams();
    /** @brief Exact native field data_array, native scalar pal_device_msgs/msg/LedDataArrayParams. */
    data_array: Ros2Pal_device_msgsMsgLedDataArrayParams = new Ros2Pal_device_msgsMsgLedDataArrayParams();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 395 - n)
                return -90;
            n += 1;
            if(n > 395)
                return -90;
        }
        {
            const child = this.fixed_color.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
                return -90;
        }
        {
            const child = this.rainbow.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
                return -90;
        }
        {
            const child = this.fade.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
                return -90;
        }
        {
            const child = this.blink.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
                return -90;
        }
        {
            const child = this.progress.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
                return -90;
        }
        {
            const child = this.flow.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
                return -90;
        }
        {
            const child = this.preprogrammed.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
                return -90;
        }
        {
            const child = this.effect_via_topic.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
                return -90;
        }
        {
            const child = this.data_array.wireSize();
            if(child < 0)
                return child;
            if(child > 395 - n)
                return -90;
            n += child;
            if(n > 395)
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
        w.integer(<u64>this.effect_type, 1);
        this.fixed_color.writeControl(w);
        this.rainbow.writeControl(w);
        this.fade.writeControl(w);
        this.blink.writeControl(w);
        this.progress.writeControl(w);
        this.flow.writeControl(w);
        this.preprogrammed.writeControl(w);
        this.effect_via_topic.writeControl(w);
        this.data_array.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedEffectParams
    {
        const value = new Ros2Pal_device_msgsMsgLedEffectParams();
        {
            const decoded = <u8>r.integer(1);
            value.effect_type = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedFixedColorParams.readControl(r);
            value.fixed_color = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedRainbowParams.readControl(r);
            value.rainbow = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedFadeParams.readControl(r);
            value.fade = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedBlinkParams.readControl(r);
            value.blink = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedProgressParams.readControl(r);
            value.progress = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedFlowParams.readControl(r);
            value.flow = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedPreProgrammedParams.readControl(r);
            value.preprogrammed = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedEffectViaTopicParams.readControl(r);
            value.effect_via_topic = decoded;
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedDataArrayParams.readControl(r);
            value.data_array = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedEffectParamsCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedEffectParams>
{
    static readonly codecIdentity: string = "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848";
    static readonly maxWireBytes: i32 = 395;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedEffectParams): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedEffectParams): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedEffectParams>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedEffectParams>();
        if(bytes.length > 395)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 203)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedEffectParams.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedEffectParams
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedEffectParams() : changetype<Ros2Pal_device_msgsMsgLedEffectParams>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/action/DoTimedLedEffect_Goal; spellings are published in generation proof. */
export class Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
{
    static readonly maxWireBytes: i32 = 472;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 472;
    /** @brief Exact native field devices, native scalar uint32. */
    devices: Array < u32 >= new Array<u32>();
    /** @brief Exact native field params, native scalar pal_device_msgs/msg/LedEffectParams. */
    params: Ros2Pal_device_msgsMsgLedEffectParams = new Ros2Pal_device_msgsMsgLedEffectParams();
    /** @brief Exact native field effect_duration, native scalar builtin_interfaces/msg/Duration. */
    effect_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field priority, native scalar uint8. */
    priority: u8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.devices.length > 16)
                return -22;
            if(4 > 472 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.devices.length; ++i)
            {
                if(4 > 472 - n)
                    return -90;
                n += 4;
                if(n > 472)
                    return -90;
            }
        }
        {
            const child = this.params.wireSize();
            if(child < 0)
                return child;
            if(child > 472 - n)
                return -90;
            n += child;
            if(n > 472)
                return -90;
        }
        {
            const child = this.effect_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 472 - n)
                return -90;
            n += child;
            if(n > 472)
                return -90;
        }
        {
            if(1 > 472 - n)
                return -90;
            n += 1;
            if(n > 472)
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
        w.u32(<u32>this.devices.length);
        for(let i = 0; i < this.devices.length; ++i)
        {
            w.integer(<u64>this.devices[i], 4);
        }
        this.params.writeControl(w);
        this.effect_duration.writeControl(w);
        w.integer(<u64>this.priority, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
    {
        const value = new Ros2Pal_device_msgsActionDoTimedLedEffect_Goal();
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.devices = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.devices.push(decoded);
            }
        }
        {
            const decoded = Ros2Pal_device_msgsMsgLedEffectParams.readControl(r);
            value.params = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.effect_duration = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsActionDoTimedLedEffect_GoalCodec implements VendorCodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal>
{
    static readonly codecIdentity: string = "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2";
    static readonly maxWireBytes: i32 = 472;

    encodeChecked(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Goal): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Goal): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal>();
        if(bytes.length > 472)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 216)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsActionDoTimedLedEffect_Goal.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsActionDoTimedLedEffect_Goal()
                                  : changetype<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/action/DoTimedLedEffect_Result; spellings are published in generation proof. */
export class Ros2Pal_device_msgsActionDoTimedLedEffect_Result
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
    static readControl(r: Reader): Ros2Pal_device_msgsActionDoTimedLedEffect_Result
    {
        const value = new Ros2Pal_device_msgsActionDoTimedLedEffect_Result();
        return value;
    }
}

export class Ros2Pal_device_msgsActionDoTimedLedEffect_ResultCodec implements VendorCodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Result>
{
    static readonly codecIdentity: string = "UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Result): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Result): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsActionDoTimedLedEffect_Result>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsActionDoTimedLedEffect_Result>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsActionDoTimedLedEffect_Result.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsActionDoTimedLedEffect_Result
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsActionDoTimedLedEffect_Result()
                                  : changetype<Ros2Pal_device_msgsActionDoTimedLedEffect_Result>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/action/DoTimedLedEffect_Feedback; spellings are published in generation proof. */
export class Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback
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
    static readControl(r: Reader): Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback
    {
        const value = new Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback();
        return value;
    }
}

export class Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackCodec implements VendorCodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback>
{
    static readonly codecIdentity: string = "UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback()
                                  : changetype<Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/BatteryState; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgBatteryState
{
    static readonly FULL: u8 = 5;
    static readonly HIGH: u8 = 4;
    static readonly MEDIUM: u8 = 3;
    static readonly LOW: u8 = 2;
    static readonly CRITICAL_LOW: u8 = 1;
    static readonly maxWireBytes: i32 = 5;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 5;
    /** @brief Exact native field charge_state, native scalar int8. */
    charge_state: i8 = 0;
    /** @brief Exact native field battery_percentage, native scalar float32. */
    battery_percentage: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 5 - n)
                return -90;
            n += 1;
            if(n > 5)
                return -90;
        }
        {
            if(!isFinite(this.battery_percentage))
                return -22;
            if(4 > 5 - n)
                return -90;
            n += 4;
            if(n > 5)
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
        w.integer(<u64>this.charge_state, 1);
        w.integer(<u64>reinterpret<u32>(this.battery_percentage), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgBatteryState
    {
        const value = new Ros2Pal_device_msgsMsgBatteryState();
        {
            const decoded = <i8>r.integer(1);
            value.charge_state = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.battery_percentage = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgBatteryStateCodec implements VendorCodec<Ros2Pal_device_msgsMsgBatteryState>
{
    static readonly codecIdentity: string = "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904";
    static readonly maxWireBytes: i32 = 5;

    encodeChecked(value: Ros2Pal_device_msgsMsgBatteryState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgBatteryState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgBatteryState>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgBatteryState>();
        if(bytes.length > 5)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 5)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgBatteryState.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgBatteryState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgBatteryState() : changetype<Ros2Pal_device_msgsMsgBatteryState>(out.value);
    }
}

/** @brief Complete original std_msgs/msg/Header; spellings are published in generation proof. */
export class Ros2Std_msgsMsgHeader
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
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

/** @brief Complete original pal_device_msgs/msg/Bumper; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgBumper
{
    static readonly maxWireBytes: i32 = 141;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 141;
    /** @brief Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** @brief Exact native field is_pressed, native scalar bool. */
    is_pressed: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 141 - n)
                return -90;
            n += child;
            if(n > 141)
                return -90;
        }
        {
            if(1 > 141 - n)
                return -90;
            n += 1;
            if(n > 141)
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
        w.u8(this.is_pressed ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgBumper
    {
        const value = new Ros2Pal_device_msgsMsgBumper();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.is_pressed = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgBumperCodec implements VendorCodec<Ros2Pal_device_msgsMsgBumper>
{
    static readonly codecIdentity: string = "UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022";
    static readonly maxWireBytes: i32 = 141;

    encodeChecked(value: Ros2Pal_device_msgsMsgBumper): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgBumper): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgBumper>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgBumper>();
        if(bytes.length > 141)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 13)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgBumper.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgBumper
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgBumper() : changetype<Ros2Pal_device_msgsMsgBumper>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/msg/LedGroup; spellings are published in generation proof. */
export class Ros2Pal_device_msgsMsgLedGroup
{
    static readonly LEFT_EAR: u8 = 1;
    static readonly RIGHT_EAR: u8 = 2;
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field led_mask, native scalar uint32. */
    led_mask: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.led_mask, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsMsgLedGroup
    {
        const value = new Ros2Pal_device_msgsMsgLedGroup();
        {
            const decoded = <u32>r.integer(4);
            value.led_mask = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsMsgLedGroupCodec implements VendorCodec<Ros2Pal_device_msgsMsgLedGroup>
{
    static readonly codecIdentity: string = "UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Pal_device_msgsMsgLedGroup): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsMsgLedGroup): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsMsgLedGroup>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsMsgLedGroup>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsMsgLedGroup.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsMsgLedGroup
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsMsgLedGroup() : changetype<Ros2Pal_device_msgsMsgLedGroup>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/CancelEffect_Request; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvCancelEffect_Request
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field effect_id, native scalar uint32. */
    effect_id: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.effect_id, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsSrvCancelEffect_Request
    {
        const value = new Ros2Pal_device_msgsSrvCancelEffect_Request();
        {
            const decoded = <u32>r.integer(4);
            value.effect_id = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsSrvCancelEffect_RequestCodec implements VendorCodec<Ros2Pal_device_msgsSrvCancelEffect_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Pal_device_msgsSrvCancelEffect_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvCancelEffect_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvCancelEffect_Request>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvCancelEffect_Request>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvCancelEffect_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvCancelEffect_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvCancelEffect_Request() : changetype<Ros2Pal_device_msgsSrvCancelEffect_Request>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/CancelEffect_Response; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvCancelEffect_Response
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
    static readControl(r: Reader): Ros2Pal_device_msgsSrvCancelEffect_Response
    {
        const value = new Ros2Pal_device_msgsSrvCancelEffect_Response();
        return value;
    }
}

export class Ros2Pal_device_msgsSrvCancelEffect_ResponseCodec implements VendorCodec<Ros2Pal_device_msgsSrvCancelEffect_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Pal_device_msgsSrvCancelEffect_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvCancelEffect_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvCancelEffect_Response>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvCancelEffect_Response>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvCancelEffect_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvCancelEffect_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvCancelEffect_Response() : changetype<Ros2Pal_device_msgsSrvCancelEffect_Response>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field shutdown_duration, native scalar builtin_interfaces/msg/Duration. */
    shutdown_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.shutdown_duration.wireSize();
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.shutdown_duration.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
    {
        const value = new Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request();
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.shutdown_duration = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestCodec implements VendorCodec<Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request()
                                  : changetype<Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
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
    static readControl(r: Reader): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
    {
        const value = new Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response();
        return value;
    }
}

export class Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseCodec implements VendorCodec<Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response()
                                  : changetype<Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/TimedBlinkEffect_Request; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
{
    static readonly maxWireBytes: i32 = 61;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 61;
    /** @brief Exact native field leds, native scalar pal_device_msgs/msg/LedGroup. */
    leds: Ros2Pal_device_msgsMsgLedGroup = new Ros2Pal_device_msgsMsgLedGroup();
    /** @brief Exact native field first_color, native scalar std_msgs/msg/ColorRGBA. */
    first_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field second_color, native scalar std_msgs/msg/ColorRGBA. */
    second_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field first_color_duration, native scalar builtin_interfaces/msg/Duration. */
    first_color_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field second_color_duration, native scalar builtin_interfaces/msg/Duration. */
    second_color_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field effect_duration, native scalar builtin_interfaces/msg/Duration. */
    effect_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field priority, native scalar uint8. */
    priority: u8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.leds.wireSize();
            if(child < 0)
                return child;
            if(child > 61 - n)
                return -90;
            n += child;
            if(n > 61)
                return -90;
        }
        {
            const child = this.first_color.wireSize();
            if(child < 0)
                return child;
            if(child > 61 - n)
                return -90;
            n += child;
            if(n > 61)
                return -90;
        }
        {
            const child = this.second_color.wireSize();
            if(child < 0)
                return child;
            if(child > 61 - n)
                return -90;
            n += child;
            if(n > 61)
                return -90;
        }
        {
            const child = this.first_color_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 61 - n)
                return -90;
            n += child;
            if(n > 61)
                return -90;
        }
        {
            const child = this.second_color_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 61 - n)
                return -90;
            n += child;
            if(n > 61)
                return -90;
        }
        {
            const child = this.effect_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 61 - n)
                return -90;
            n += child;
            if(n > 61)
                return -90;
        }
        {
            if(1 > 61 - n)
                return -90;
            n += 1;
            if(n > 61)
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
        this.leds.writeControl(w);
        this.first_color.writeControl(w);
        this.second_color.writeControl(w);
        this.first_color_duration.writeControl(w);
        this.second_color_duration.writeControl(w);
        this.effect_duration.writeControl(w);
        w.integer(<u64>this.priority, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
    {
        const value = new Ros2Pal_device_msgsSrvTimedBlinkEffect_Request();
        {
            const decoded = Ros2Pal_device_msgsMsgLedGroup.readControl(r);
            value.leds = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.first_color = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.second_color = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.first_color_duration = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.second_color_duration = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.effect_duration = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestCodec implements VendorCodec<Ros2Pal_device_msgsSrvTimedBlinkEffect_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c";
    static readonly maxWireBytes: i32 = 61;

    encodeChecked(value: Ros2Pal_device_msgsSrvTimedBlinkEffect_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvTimedBlinkEffect_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvTimedBlinkEffect_Request>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvTimedBlinkEffect_Request>();
        if(bytes.length > 61)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 61)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvTimedBlinkEffect_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvTimedBlinkEffect_Request()
                                  : changetype<Ros2Pal_device_msgsSrvTimedBlinkEffect_Request>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/TimedBlinkEffect_Response; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field effect_id, native scalar uint32. */
    effect_id: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.effect_id, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
    {
        const value = new Ros2Pal_device_msgsSrvTimedBlinkEffect_Response();
        {
            const decoded = <u32>r.integer(4);
            value.effect_id = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseCodec implements VendorCodec<Ros2Pal_device_msgsSrvTimedBlinkEffect_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Pal_device_msgsSrvTimedBlinkEffect_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvTimedBlinkEffect_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvTimedBlinkEffect_Response>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvTimedBlinkEffect_Response>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvTimedBlinkEffect_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvTimedBlinkEffect_Response()
                                  : changetype<Ros2Pal_device_msgsSrvTimedBlinkEffect_Response>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/TimedColourEffect_Request; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvTimedColourEffect_Request
{
    static readonly maxWireBytes: i32 = 29;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 29;
    /** @brief Exact native field leds, native scalar pal_device_msgs/msg/LedGroup. */
    leds: Ros2Pal_device_msgsMsgLedGroup = new Ros2Pal_device_msgsMsgLedGroup();
    /** @brief Exact native field color, native scalar std_msgs/msg/ColorRGBA. */
    color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field effect_duration, native scalar builtin_interfaces/msg/Duration. */
    effect_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field priority, native scalar uint8. */
    priority: u8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.leds.wireSize();
            if(child < 0)
                return child;
            if(child > 29 - n)
                return -90;
            n += child;
            if(n > 29)
                return -90;
        }
        {
            const child = this.color.wireSize();
            if(child < 0)
                return child;
            if(child > 29 - n)
                return -90;
            n += child;
            if(n > 29)
                return -90;
        }
        {
            const child = this.effect_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 29 - n)
                return -90;
            n += child;
            if(n > 29)
                return -90;
        }
        {
            if(1 > 29 - n)
                return -90;
            n += 1;
            if(n > 29)
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
        this.leds.writeControl(w);
        this.color.writeControl(w);
        this.effect_duration.writeControl(w);
        w.integer(<u64>this.priority, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsSrvTimedColourEffect_Request
    {
        const value = new Ros2Pal_device_msgsSrvTimedColourEffect_Request();
        {
            const decoded = Ros2Pal_device_msgsMsgLedGroup.readControl(r);
            value.leds = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.color = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.effect_duration = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsSrvTimedColourEffect_RequestCodec implements VendorCodec<Ros2Pal_device_msgsSrvTimedColourEffect_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8";
    static readonly maxWireBytes: i32 = 29;

    encodeChecked(value: Ros2Pal_device_msgsSrvTimedColourEffect_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvTimedColourEffect_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvTimedColourEffect_Request>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvTimedColourEffect_Request>();
        if(bytes.length > 29)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvTimedColourEffect_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvTimedColourEffect_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvTimedColourEffect_Request()
                                  : changetype<Ros2Pal_device_msgsSrvTimedColourEffect_Request>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/TimedColourEffect_Response; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvTimedColourEffect_Response
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field effect_id, native scalar uint32. */
    effect_id: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.effect_id, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsSrvTimedColourEffect_Response
    {
        const value = new Ros2Pal_device_msgsSrvTimedColourEffect_Response();
        {
            const decoded = <u32>r.integer(4);
            value.effect_id = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsSrvTimedColourEffect_ResponseCodec implements VendorCodec<Ros2Pal_device_msgsSrvTimedColourEffect_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Pal_device_msgsSrvTimedColourEffect_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvTimedColourEffect_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvTimedColourEffect_Response>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvTimedColourEffect_Response>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvTimedColourEffect_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvTimedColourEffect_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvTimedColourEffect_Response()
                                  : changetype<Ros2Pal_device_msgsSrvTimedColourEffect_Response>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/TimedFadeEffect_Request; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvTimedFadeEffect_Request
{
    static readonly maxWireBytes: i32 = 54;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 54;
    /** @brief Exact native field leds, native scalar pal_device_msgs/msg/LedGroup. */
    leds: Ros2Pal_device_msgsMsgLedGroup = new Ros2Pal_device_msgsMsgLedGroup();
    /** @brief Exact native field first_color, native scalar std_msgs/msg/ColorRGBA. */
    first_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field second_color, native scalar std_msgs/msg/ColorRGBA. */
    second_color: Ros2Std_msgsMsgColorRGBA = new Ros2Std_msgsMsgColorRGBA();
    /** @brief Exact native field color_change_duration, native scalar builtin_interfaces/msg/Duration. */
    color_change_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field reverse_fade, native scalar bool. */
    reverse_fade: bool = false;
    /** @brief Exact native field effect_duration, native scalar builtin_interfaces/msg/Duration. */
    effect_duration: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();
    /** @brief Exact native field priority, native scalar uint8. */
    priority: u8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.leds.wireSize();
            if(child < 0)
                return child;
            if(child > 54 - n)
                return -90;
            n += child;
            if(n > 54)
                return -90;
        }
        {
            const child = this.first_color.wireSize();
            if(child < 0)
                return child;
            if(child > 54 - n)
                return -90;
            n += child;
            if(n > 54)
                return -90;
        }
        {
            const child = this.second_color.wireSize();
            if(child < 0)
                return child;
            if(child > 54 - n)
                return -90;
            n += child;
            if(n > 54)
                return -90;
        }
        {
            const child = this.color_change_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 54 - n)
                return -90;
            n += child;
            if(n > 54)
                return -90;
        }
        {
            if(1 > 54 - n)
                return -90;
            n += 1;
            if(n > 54)
                return -90;
        }
        {
            const child = this.effect_duration.wireSize();
            if(child < 0)
                return child;
            if(child > 54 - n)
                return -90;
            n += child;
            if(n > 54)
                return -90;
        }
        {
            if(1 > 54 - n)
                return -90;
            n += 1;
            if(n > 54)
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
        this.leds.writeControl(w);
        this.first_color.writeControl(w);
        this.second_color.writeControl(w);
        this.color_change_duration.writeControl(w);
        w.u8(this.reverse_fade ? 1 : 0);
        this.effect_duration.writeControl(w);
        w.integer(<u64>this.priority, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsSrvTimedFadeEffect_Request
    {
        const value = new Ros2Pal_device_msgsSrvTimedFadeEffect_Request();
        {
            const decoded = Ros2Pal_device_msgsMsgLedGroup.readControl(r);
            value.leds = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.first_color = decoded;
        }
        {
            const decoded = Ros2Std_msgsMsgColorRGBA.readControl(r);
            value.second_color = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.color_change_duration = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.reverse_fade = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgDuration.readControl(r);
            value.effect_duration = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.priority = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsSrvTimedFadeEffect_RequestCodec implements VendorCodec<Ros2Pal_device_msgsSrvTimedFadeEffect_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13";
    static readonly maxWireBytes: i32 = 54;

    encodeChecked(value: Ros2Pal_device_msgsSrvTimedFadeEffect_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvTimedFadeEffect_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvTimedFadeEffect_Request>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvTimedFadeEffect_Request>();
        if(bytes.length > 54)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 54)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvTimedFadeEffect_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvTimedFadeEffect_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvTimedFadeEffect_Request() : changetype<Ros2Pal_device_msgsSrvTimedFadeEffect_Request>(out.value);
    }
}

/** @brief Complete original pal_device_msgs/srv/TimedFadeEffect_Response; spellings are published in generation proof. */
export class Ros2Pal_device_msgsSrvTimedFadeEffect_Response
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field effect_id, native scalar uint32. */
    effect_id: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.effect_id, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Pal_device_msgsSrvTimedFadeEffect_Response
    {
        const value = new Ros2Pal_device_msgsSrvTimedFadeEffect_Response();
        {
            const decoded = <u32>r.integer(4);
            value.effect_id = decoded;
        }
        return value;
    }
}

export class Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseCodec implements VendorCodec<Ros2Pal_device_msgsSrvTimedFadeEffect_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Pal_device_msgsSrvTimedFadeEffect_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Pal_device_msgsSrvTimedFadeEffect_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Pal_device_msgsSrvTimedFadeEffect_Response>
    {
        const out = new VendorDecoded<Ros2Pal_device_msgsSrvTimedFadeEffect_Response>();
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
        const reader = new Reader(bytes), value = Ros2Pal_device_msgsSrvTimedFadeEffect_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Pal_device_msgsSrvTimedFadeEffect_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Pal_device_msgsSrvTimedFadeEffect_Response()
                                  : changetype<Ros2Pal_device_msgsSrvTimedFadeEffect_Response>(out.value);
    }
}
