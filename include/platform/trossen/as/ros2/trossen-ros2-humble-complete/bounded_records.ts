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

/** @brief Complete original interbotix_footswitch_msgs/msg/FootswitchState; spellings are published in generation proof. */
export class Ros2Interbotix_footswitch_msgsMsgFootswitchState
{
    static readonly maxWireBytes: i32 = 143;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 143;
    /** @brief Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** @brief Exact native field state, native scalar bool. */
    state: Array < bool >= new Array<bool>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
            this.state.push(false);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 143 - n)
                return -90;
            n += child;
            if(n > 143)
                return -90;
        }
        {
            if(this.state.length != 3)
                return -22;
            for(let i = 0; i < this.state.length; ++i)
            {
                if(1 > 143 - n)
                    return -90;
                n += 1;
                if(n > 143)
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
        for(let i = 0; i < this.state.length; ++i)
        {
            w.u8(this.state[i] ? 1 : 0);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_footswitch_msgsMsgFootswitchState
    {
        const value = new Ros2Interbotix_footswitch_msgsMsgFootswitchState();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.state = new Array<bool>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const bit = r.u8();
                if(bit > 1)
                    r.valid = false;
                const decoded = bit != 0;
                value.state.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Interbotix_footswitch_msgsMsgFootswitchStateCodec implements VendorCodec<Ros2Interbotix_footswitch_msgsMsgFootswitchState>
{
    static readonly codecIdentity: string = "UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c";
    static readonly maxWireBytes: i32 = 143;

    encodeChecked(value: Ros2Interbotix_footswitch_msgsMsgFootswitchState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_footswitch_msgsMsgFootswitchState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_footswitch_msgsMsgFootswitchState>
    {
        const out = new VendorDecoded<Ros2Interbotix_footswitch_msgsMsgFootswitchState>();
        if(bytes.length > 143)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 15)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_footswitch_msgsMsgFootswitchState.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_footswitch_msgsMsgFootswitchState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_footswitch_msgsMsgFootswitchState()
                                  : changetype<Ros2Interbotix_footswitch_msgsMsgFootswitchState>(out.value);
    }
}

/** @brief Complete original interbotix_slate_msgs/srv/SetLightState_Request; spellings are published in generation proof. */
export class Ros2Interbotix_slate_msgsSrvSetLightState_Request
{
    static readonly LIGHT_STATE_OFF: u32 = 0;
    static readonly LIGHT_STATE_RED: u32 = 1;
    static readonly LIGHT_STATE_GREEN: u32 = 2;
    static readonly LIGHT_STATE_YELLOW: u32 = 3;
    static readonly LIGHT_STATE_BLUE: u32 = 4;
    static readonly LIGHT_STATE_PURPLE: u32 = 5;
    static readonly LIGHT_STATE_CYAN: u32 = 6;
    static readonly LIGHT_STATE_WHITE: u32 = 7;
    static readonly LIGHT_STATE_RED_FLASH: u32 = 9;
    static readonly LIGHT_STATE_GREEN_FLASH: u32 = 10;
    static readonly LIGHT_STATE_YELLOW_FLASH: u32 = 11;
    static readonly LIGHT_STATE_BLUE_FLASH: u32 = 12;
    static readonly LIGHT_STATE_PURPLE_FLASH: u32 = 13;
    static readonly LIGHT_STATE_CYAN_FLASH: u32 = 14;
    static readonly LIGHT_STATE_WHITE_FLASH: u32 = 15;
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field light_state, native scalar uint32. */
    light_state: u32 = 0;

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
        w.integer(<u64>this.light_state, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_slate_msgsSrvSetLightState_Request
    {
        const value = new Ros2Interbotix_slate_msgsSrvSetLightState_Request();
        {
            const decoded = <u32>r.integer(4);
            value.light_state = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_slate_msgsSrvSetLightState_RequestCodec implements VendorCodec<Ros2Interbotix_slate_msgsSrvSetLightState_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Interbotix_slate_msgsSrvSetLightState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_slate_msgsSrvSetLightState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_slate_msgsSrvSetLightState_Request>
    {
        const out = new VendorDecoded<Ros2Interbotix_slate_msgsSrvSetLightState_Request>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_slate_msgsSrvSetLightState_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_slate_msgsSrvSetLightState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_slate_msgsSrvSetLightState_Request()
                                  : changetype<Ros2Interbotix_slate_msgsSrvSetLightState_Request>(out.value);
    }
}

/** @brief Complete original interbotix_slate_msgs/srv/SetLightState_Response; spellings are published in generation proof. */
export class Ros2Interbotix_slate_msgsSrvSetLightState_Response
{
    static readonly maxWireBytes: i32 = 133;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 133;
    /** @brief Exact native field success, native scalar bool. */
    success: bool = false;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 133 - n)
                return -90;
            n += 1;
            if(n > 133)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
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
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_slate_msgsSrvSetLightState_Response
    {
        const value = new Ros2Interbotix_slate_msgsSrvSetLightState_Response();
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

export class Ros2Interbotix_slate_msgsSrvSetLightState_ResponseCodec implements VendorCodec<Ros2Interbotix_slate_msgsSrvSetLightState_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784";
    static readonly maxWireBytes: i32 = 133;

    encodeChecked(value: Ros2Interbotix_slate_msgsSrvSetLightState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_slate_msgsSrvSetLightState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_slate_msgsSrvSetLightState_Response>
    {
        const out = new VendorDecoded<Ros2Interbotix_slate_msgsSrvSetLightState_Response>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_slate_msgsSrvSetLightState_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_slate_msgsSrvSetLightState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_slate_msgsSrvSetLightState_Response()
                                  : changetype<Ros2Interbotix_slate_msgsSrvSetLightState_Response>(out.value);
    }
}

/** @brief Complete original interbotix_slate_msgs/srv/SetString_Request; spellings are published in generation proof. */
export class Ros2Interbotix_slate_msgsSrvSetString_Request
{
    static readonly maxWireBytes: i32 = 132;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 132;
    /** @brief Exact native field data, native scalar string. */
    data: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.data) || this.data.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.data);
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
        w.text(this.data);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_slate_msgsSrvSetString_Request
    {
        const value = new Ros2Interbotix_slate_msgsSrvSetString_Request();
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
            value.data = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_slate_msgsSrvSetString_RequestCodec implements VendorCodec<Ros2Interbotix_slate_msgsSrvSetString_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45";
    static readonly maxWireBytes: i32 = 132;

    encodeChecked(value: Ros2Interbotix_slate_msgsSrvSetString_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_slate_msgsSrvSetString_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_slate_msgsSrvSetString_Request>
    {
        const out = new VendorDecoded<Ros2Interbotix_slate_msgsSrvSetString_Request>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_slate_msgsSrvSetString_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_slate_msgsSrvSetString_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_slate_msgsSrvSetString_Request() : changetype<Ros2Interbotix_slate_msgsSrvSetString_Request>(out.value);
    }
}

/** @brief Complete original interbotix_slate_msgs/srv/SetString_Response; spellings are published in generation proof. */
export class Ros2Interbotix_slate_msgsSrvSetString_Response
{
    static readonly maxWireBytes: i32 = 133;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 133;
    /** @brief Exact native field success, native scalar bool. */
    success: bool = false;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 133 - n)
                return -90;
            n += 1;
            if(n > 133)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
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
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_slate_msgsSrvSetString_Response
    {
        const value = new Ros2Interbotix_slate_msgsSrvSetString_Response();
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

export class Ros2Interbotix_slate_msgsSrvSetString_ResponseCodec implements VendorCodec<Ros2Interbotix_slate_msgsSrvSetString_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33";
    static readonly maxWireBytes: i32 = 133;

    encodeChecked(value: Ros2Interbotix_slate_msgsSrvSetString_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_slate_msgsSrvSetString_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_slate_msgsSrvSetString_Response>
    {
        const out = new VendorDecoded<Ros2Interbotix_slate_msgsSrvSetString_Response>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_slate_msgsSrvSetString_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_slate_msgsSrvSetString_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_slate_msgsSrvSetString_Response()
                                  : changetype<Ros2Interbotix_slate_msgsSrvSetString_Response>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/msg/ArmJoy; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsMsgArmJoy
{
    static readonly EE_X_INC: i8 = 1;
    static readonly EE_X_DEC: i8 = 2;
    static readonly EE_Y_INC: i8 = 3;
    static readonly EE_Y_DEC: i8 = 4;
    static readonly EE_Z_INC: i8 = 5;
    static readonly EE_Z_DEC: i8 = 6;
    static readonly EE_ROLL_CCW: i8 = 7;
    static readonly EE_ROLL_CW: i8 = 8;
    static readonly EE_PITCH_UP: i8 = 9;
    static readonly EE_PITCH_DOWN: i8 = 10;
    static readonly WAIST_CCW: i8 = 11;
    static readonly WAIST_CW: i8 = 12;
    static readonly GRIPPER_RELEASE: i8 = 13;
    static readonly GRIPPER_GRASP: i8 = 14;
    static readonly HOME_POSE: i8 = 15;
    static readonly SLEEP_POSE: i8 = 16;
    static readonly SPEED_INC: i8 = 17;
    static readonly SPEED_DEC: i8 = 18;
    static readonly SPEED_COARSE: i8 = 19;
    static readonly SPEED_FINE: i8 = 20;
    static readonly GRIPPER_PWM_INC: i8 = 21;
    static readonly GRIPPER_PWM_DEC: i8 = 22;
    static readonly TORQUE_ON: i8 = 23;
    static readonly TORQUE_OFF: i8 = 24;
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** @brief Exact native field ee_x_cmd, native scalar int8. */
    ee_x_cmd: i8 = 0;
    /** @brief Exact native field ee_y_cmd, native scalar int8. */
    ee_y_cmd: i8 = 0;
    /** @brief Exact native field ee_z_cmd, native scalar int8. */
    ee_z_cmd: i8 = 0;
    /** @brief Exact native field ee_roll_cmd, native scalar int8. */
    ee_roll_cmd: i8 = 0;
    /** @brief Exact native field ee_pitch_cmd, native scalar int8. */
    ee_pitch_cmd: i8 = 0;
    /** @brief Exact native field waist_cmd, native scalar int8. */
    waist_cmd: i8 = 0;
    /** @brief Exact native field gripper_cmd, native scalar int8. */
    gripper_cmd: i8 = 0;
    /** @brief Exact native field pose_cmd, native scalar int8. */
    pose_cmd: i8 = 0;
    /** @brief Exact native field speed_cmd, native scalar int8. */
    speed_cmd: i8 = 0;
    /** @brief Exact native field speed_toggle_cmd, native scalar int8. */
    speed_toggle_cmd: i8 = 0;
    /** @brief Exact native field gripper_pwm_cmd, native scalar int8. */
    gripper_pwm_cmd: i8 = 0;
    /** @brief Exact native field torque_cmd, native scalar int8. */
    torque_cmd: i8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.ee_x_cmd, 1);
        w.integer(<u64>this.ee_y_cmd, 1);
        w.integer(<u64>this.ee_z_cmd, 1);
        w.integer(<u64>this.ee_roll_cmd, 1);
        w.integer(<u64>this.ee_pitch_cmd, 1);
        w.integer(<u64>this.waist_cmd, 1);
        w.integer(<u64>this.gripper_cmd, 1);
        w.integer(<u64>this.pose_cmd, 1);
        w.integer(<u64>this.speed_cmd, 1);
        w.integer(<u64>this.speed_toggle_cmd, 1);
        w.integer(<u64>this.gripper_pwm_cmd, 1);
        w.integer(<u64>this.torque_cmd, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsMsgArmJoy
    {
        const value = new Ros2Interbotix_xs_msgsMsgArmJoy();
        {
            const decoded = <i8>r.integer(1);
            value.ee_x_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_y_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_z_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_roll_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_pitch_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.waist_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.gripper_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.pose_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.speed_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.speed_toggle_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.gripper_pwm_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.torque_cmd = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsMsgArmJoyCodec implements VendorCodec<Ros2Interbotix_xs_msgsMsgArmJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f";
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Interbotix_xs_msgsMsgArmJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsMsgArmJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsMsgArmJoy>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsMsgArmJoy>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsMsgArmJoy.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsMsgArmJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsMsgArmJoy() : changetype<Ros2Interbotix_xs_msgsMsgArmJoy>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/msg/HexJoy; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsMsgHexJoy
{
    static readonly WORLD_X_INC: i8 = 1;
    static readonly WORLD_X_DEC: i8 = 2;
    static readonly WORLD_Y_INC: i8 = 3;
    static readonly WORLD_Y_DEC: i8 = 4;
    static readonly WORLD_YAW_CCW: i8 = 5;
    static readonly WORLD_YAW_CW: i8 = 6;
    static readonly PLACE_X_INC: i8 = 7;
    static readonly PLACE_X_DEC: i8 = 8;
    static readonly PLACE_Y_INC: i8 = 9;
    static readonly PLACE_Y_DEC: i8 = 10;
    static readonly PLACE_Z_INC: i8 = 11;
    static readonly PLACE_Z_DEC: i8 = 12;
    static readonly PLACE_ROLL_CCW: i8 = 13;
    static readonly PLACE_ROLL_CW: i8 = 14;
    static readonly PLACE_PITCH_UP: i8 = 15;
    static readonly PLACE_PITCH_DOWN: i8 = 16;
    static readonly MOVE_HEXAPOD: i8 = 17;
    static readonly MOVE_LEG: i8 = 18;
    static readonly HOME_POSE: i8 = 19;
    static readonly SLEEP_POSE: i8 = 20;
    static readonly GAIT_NEXT: i8 = 21;
    static readonly GAIT_PREVIOUS: i8 = 22;
    static readonly LEG_NEXT: i8 = 23;
    static readonly LEG_PREVIOUS: i8 = 24;
    static readonly WIDEN_STANCE: i8 = 25;
    static readonly NARROW_STANCE: i8 = 26;
    static readonly REBOOT_MOTORS: i8 = 27;
    static readonly SET_HOME_POSE: i8 = 28;
    static readonly SPEED_INC: i8 = 29;
    static readonly SPEED_DEC: i8 = 30;
    static readonly SPEED_COARSE: i8 = 31;
    static readonly SPEED_FINE: i8 = 32;
    static readonly maxWireBytes: i32 = 17;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 17;
    /** @brief Exact native field world_x_cmd, native scalar int8. */
    world_x_cmd: i8 = 0;
    /** @brief Exact native field world_y_cmd, native scalar int8. */
    world_y_cmd: i8 = 0;
    /** @brief Exact native field world_yaw_cmd, native scalar int8. */
    world_yaw_cmd: i8 = 0;
    /** @brief Exact native field place_x_cmd, native scalar int8. */
    place_x_cmd: i8 = 0;
    /** @brief Exact native field place_y_cmd, native scalar int8. */
    place_y_cmd: i8 = 0;
    /** @brief Exact native field place_z_cmd, native scalar int8. */
    place_z_cmd: i8 = 0;
    /** @brief Exact native field place_roll_cmd, native scalar int8. */
    place_roll_cmd: i8 = 0;
    /** @brief Exact native field place_pitch_cmd, native scalar int8. */
    place_pitch_cmd: i8 = 0;
    /** @brief Exact native field pose_cmd, native scalar int8. */
    pose_cmd: i8 = 0;
    /** @brief Exact native field move_type_cmd, native scalar int8. */
    move_type_cmd: i8 = 0;
    /** @brief Exact native field gait_toggle_cmd, native scalar int8. */
    gait_toggle_cmd: i8 = 0;
    /** @brief Exact native field leg_toggle_cmd, native scalar int8. */
    leg_toggle_cmd: i8 = 0;
    /** @brief Exact native field stance_cmd, native scalar int8. */
    stance_cmd: i8 = 0;
    /** @brief Exact native field reboot_cmd, native scalar int8. */
    reboot_cmd: i8 = 0;
    /** @brief Exact native field set_home_pose_cmd, native scalar int8. */
    set_home_pose_cmd: i8 = 0;
    /** @brief Exact native field speed_cmd, native scalar int8. */
    speed_cmd: i8 = 0;
    /** @brief Exact native field speed_toggle_cmd, native scalar int8. */
    speed_toggle_cmd: i8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
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
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
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
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
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
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
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
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
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
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
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
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
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
        {
            if(1 > 17 - n)
                return -90;
            n += 1;
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
        w.integer(<u64>this.world_x_cmd, 1);
        w.integer(<u64>this.world_y_cmd, 1);
        w.integer(<u64>this.world_yaw_cmd, 1);
        w.integer(<u64>this.place_x_cmd, 1);
        w.integer(<u64>this.place_y_cmd, 1);
        w.integer(<u64>this.place_z_cmd, 1);
        w.integer(<u64>this.place_roll_cmd, 1);
        w.integer(<u64>this.place_pitch_cmd, 1);
        w.integer(<u64>this.pose_cmd, 1);
        w.integer(<u64>this.move_type_cmd, 1);
        w.integer(<u64>this.gait_toggle_cmd, 1);
        w.integer(<u64>this.leg_toggle_cmd, 1);
        w.integer(<u64>this.stance_cmd, 1);
        w.integer(<u64>this.reboot_cmd, 1);
        w.integer(<u64>this.set_home_pose_cmd, 1);
        w.integer(<u64>this.speed_cmd, 1);
        w.integer(<u64>this.speed_toggle_cmd, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsMsgHexJoy
    {
        const value = new Ros2Interbotix_xs_msgsMsgHexJoy();
        {
            const decoded = <i8>r.integer(1);
            value.world_x_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.world_y_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.world_yaw_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.place_x_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.place_y_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.place_z_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.place_roll_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.place_pitch_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.pose_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.move_type_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.gait_toggle_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.leg_toggle_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.stance_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.reboot_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.set_home_pose_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.speed_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.speed_toggle_cmd = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsMsgHexJoyCodec implements VendorCodec<Ros2Interbotix_xs_msgsMsgHexJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d";
    static readonly maxWireBytes: i32 = 17;

    encodeChecked(value: Ros2Interbotix_xs_msgsMsgHexJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsMsgHexJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsMsgHexJoy>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsMsgHexJoy>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsMsgHexJoy.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsMsgHexJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsMsgHexJoy() : changetype<Ros2Interbotix_xs_msgsMsgHexJoy>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/msg/JointGroupCommand; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsMsgJointGroupCommand
{
    static readonly maxWireBytes: i32 = 392;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 392;
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field cmd, native scalar float32. */
    cmd: Array < f32 >= new Array<f32>();

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
            if(4 + size > 392 - n)
                return -90;
            n += 4 + size;
            if(n > 392)
                return -90;
        }
        {
            if(this.cmd.length > 64)
                return -22;
            if(4 > 392 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.cmd.length; ++i)
            {
                if(!isFinite(this.cmd[i]))
                    return -22;
                if(4 > 392 - n)
                    return -90;
                n += 4;
                if(n > 392)
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
        w.text(this.name);
        w.u32(<u32>this.cmd.length);
        for(let i = 0; i < this.cmd.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.cmd[i]), 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsMsgJointGroupCommand
    {
        const value = new Ros2Interbotix_xs_msgsMsgJointGroupCommand();
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
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.cmd = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.cmd.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsMsgJointGroupCommandCodec implements VendorCodec<Ros2Interbotix_xs_msgsMsgJointGroupCommand>
{
    static readonly codecIdentity: string = "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a";
    static readonly maxWireBytes: i32 = 392;

    encodeChecked(value: Ros2Interbotix_xs_msgsMsgJointGroupCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsMsgJointGroupCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsMsgJointGroupCommand>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsMsgJointGroupCommand>();
        if(bytes.length > 392)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsMsgJointGroupCommand.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsMsgJointGroupCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsMsgJointGroupCommand() : changetype<Ros2Interbotix_xs_msgsMsgJointGroupCommand>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/msg/JointSingleCommand; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsMsgJointSingleCommand
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field cmd, native scalar float32. */
    cmd: f32 = 0;

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
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
        }
        {
            if(!isFinite(this.cmd))
                return -22;
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
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
        w.integer(<u64>reinterpret<u32>(this.cmd), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsMsgJointSingleCommand
    {
        const value = new Ros2Interbotix_xs_msgsMsgJointSingleCommand();
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
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.cmd = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsMsgJointSingleCommandCodec implements VendorCodec<Ros2Interbotix_xs_msgsMsgJointSingleCommand>
{
    static readonly codecIdentity: string = "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94";
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Interbotix_xs_msgsMsgJointSingleCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsMsgJointSingleCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsMsgJointSingleCommand>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsMsgJointSingleCommand>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsMsgJointSingleCommand.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsMsgJointSingleCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsMsgJointSingleCommand() : changetype<Ros2Interbotix_xs_msgsMsgJointSingleCommand>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/msg/JointTemps; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsMsgJointTemps
{
    static readonly maxWireBytes: i32 = 8712;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8712;
    /** @brief Exact native field names, native scalar string. */
    names: Array < string >= new Array<string>();
    /** @brief Exact native field temps, native scalar int32. */
    temps: Array < i32 >= new Array<i32>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.names.length > 64)
                return -22;
            if(4 > 8712 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.names.length; ++i)
            {
                if(!validUnicode(this.names[i]) || this.names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.names[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 8712 - n)
                    return -90;
                n += 4 + size;
                if(n > 8712)
                    return -90;
            }
        }
        {
            if(this.temps.length > 64)
                return -22;
            if(4 > 8712 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.temps.length; ++i)
            {
                if(4 > 8712 - n)
                    return -90;
                n += 4;
                if(n > 8712)
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
        w.u32(<u32>this.names.length);
        for(let i = 0; i < this.names.length; ++i)
        {
            w.text(this.names[i]);
        }
        w.u32(<u32>this.temps.length);
        for(let i = 0; i < this.temps.length; ++i)
        {
            w.integer(<u64>this.temps[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsMsgJointTemps
    {
        const value = new Ros2Interbotix_xs_msgsMsgJointTemps();
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.names = new Array<string>();
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
                value.names.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.temps = new Array<i32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i32>r.integer(4);
                value.temps.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsMsgJointTempsCodec implements VendorCodec<Ros2Interbotix_xs_msgsMsgJointTemps>
{
    static readonly codecIdentity: string = "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4";
    static readonly maxWireBytes: i32 = 8712;

    encodeChecked(value: Ros2Interbotix_xs_msgsMsgJointTemps): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsMsgJointTemps): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsMsgJointTemps>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsMsgJointTemps>();
        if(bytes.length > 8712)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsMsgJointTemps.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsMsgJointTemps
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsMsgJointTemps() : changetype<Ros2Interbotix_xs_msgsMsgJointTemps>(out.value);
    }
}

/** @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint; spellings are published in generation proof. */
export class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    static readonly maxWireBytes: i32 = 536;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 536;
    /** @brief Exact native field positions, native scalar float64. */
    positions: Array < f64 >= new Array<f64>();
    /** @brief Exact native field velocities, native scalar float64. */
    velocities: Array < f64 >= new Array<f64>();
    /** @brief Exact native field accelerations, native scalar float64. */
    accelerations: Array < f64 >= new Array<f64>();
    /** @brief Exact native field effort, native scalar float64. */
    effort: Array < f64 >= new Array<f64>();
    /** @brief Exact native field time_from_start, native scalar builtin_interfaces/msg/Duration. */
    time_from_start: Ros2Builtin_interfacesMsgDuration = new Ros2Builtin_interfacesMsgDuration();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.positions.length > 16)
                return -22;
            if(4 > 536 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.positions.length; ++i)
            {
                if(!isFinite(this.positions[i]))
                    return -22;
                if(8 > 536 - n)
                    return -90;
                n += 8;
                if(n > 536)
                    return -90;
            }
        }
        {
            if(this.velocities.length > 16)
                return -22;
            if(4 > 536 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocities.length; ++i)
            {
                if(!isFinite(this.velocities[i]))
                    return -22;
                if(8 > 536 - n)
                    return -90;
                n += 8;
                if(n > 536)
                    return -90;
            }
        }
        {
            if(this.accelerations.length > 16)
                return -22;
            if(4 > 536 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.accelerations.length; ++i)
            {
                if(!isFinite(this.accelerations[i]))
                    return -22;
                if(8 > 536 - n)
                    return -90;
                n += 8;
                if(n > 536)
                    return -90;
            }
        }
        {
            if(this.effort.length > 16)
                return -22;
            if(4 > 536 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 536 - n)
                    return -90;
                n += 8;
                if(n > 536)
                    return -90;
            }
        }
        {
            const child = this.time_from_start.wireSize();
            if(child < 0)
                return child;
            if(child > 536 - n)
                return -90;
            n += child;
            if(n > 536)
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
            if(!r.valid || count > 16)
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
            if(!r.valid || count > 16)
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
            if(!r.valid || count > 16)
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
            if(!r.valid || count > 16)
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
    static readonly codecIdentity: string = "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1";
    static readonly maxWireBytes: i32 = 536;

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
        if(bytes.length > 536)
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
    static readonly maxWireBytes: i32 = 4404;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4404;
    /** @brief Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** @brief Exact native field joint_names, native scalar string. */
    joint_names: Array < string >= new Array<string>();
    /** @brief Exact native field points, native scalar trajectory_msgs/msg/JointTrajectoryPoint. */
    points: Array < Ros2Trajectory_msgsMsgJointTrajectoryPoint >= new Array<Ros2Trajectory_msgsMsgJointTrajectoryPoint>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 4404 - n)
                return -90;
            n += child;
            if(n > 4404)
                return -90;
        }
        {
            if(this.joint_names.length > 16)
                return -22;
            if(4 > 4404 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 4404 - n)
                    return -90;
                n += 4 + size;
                if(n > 4404)
                    return -90;
            }
        }
        {
            if(this.points.length > 4)
                return -22;
            if(4 > 4404 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.points.length; ++i)
            {
                const child = this.points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 4404 - n)
                    return -90;
                n += child;
                if(n > 4404)
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
            if(!r.valid || count > 16)
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
            if(!r.valid || count > 4)
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
    static readonly codecIdentity: string = "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7";
    static readonly maxWireBytes: i32 = 4404;

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
        if(bytes.length > 4404)
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

/** @brief Complete original interbotix_xs_msgs/msg/JointTrajectoryCommand; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
{
    static readonly maxWireBytes: i32 = 4668;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4668;
    /** @brief Exact native field cmd_type, native scalar string. */
    cmd_type: string = "";
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field traj, native scalar trajectory_msgs/msg/JointTrajectory. */
    traj: Ros2Trajectory_msgsMsgJointTrajectory = new Ros2Trajectory_msgsMsgJointTrajectory();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.cmd_type) || this.cmd_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cmd_type);
            if(size > 128)
                return -22;
            if(4 + size > 4668 - n)
                return -90;
            n += 4 + size;
            if(n > 4668)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 4668 - n)
                return -90;
            n += 4 + size;
            if(n > 4668)
                return -90;
        }
        {
            const child = this.traj.wireSize();
            if(child < 0)
                return child;
            if(child > 4668 - n)
                return -90;
            n += child;
            if(n > 4668)
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
        w.text(this.cmd_type);
        w.text(this.name);
        this.traj.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
    {
        const value = new Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand();
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
            value.cmd_type = decoded;
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
            const decoded = Ros2Trajectory_msgsMsgJointTrajectory.readControl(r);
            value.traj = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandCodec implements VendorCodec<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand>
{
    static readonly codecIdentity: string = "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52";
    static readonly maxWireBytes: i32 = 4668;

    encodeChecked(value: Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand>();
        if(bytes.length > 4668)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand()
                                  : changetype<Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/msg/LocobotJoy; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsMsgLocobotJoy
{
    static readonly RESET_ODOM: i8 = 1;
    static readonly PAN_CCW: i8 = 2;
    static readonly PAN_CW: i8 = 3;
    static readonly TILT_UP: i8 = 4;
    static readonly TILT_DOWN: i8 = 5;
    static readonly PAN_TILT_HOME: i8 = 6;
    static readonly EE_X_INC: i8 = 7;
    static readonly EE_X_DEC: i8 = 8;
    static readonly EE_Y_INC: i8 = 9;
    static readonly EE_Y_DEC: i8 = 10;
    static readonly EE_Z_INC: i8 = 11;
    static readonly EE_Z_DEC: i8 = 12;
    static readonly EE_ROLL_CCW: i8 = 13;
    static readonly EE_ROLL_CW: i8 = 14;
    static readonly EE_PITCH_UP: i8 = 15;
    static readonly EE_PITCH_DOWN: i8 = 16;
    static readonly WAIST_CCW: i8 = 17;
    static readonly WAIST_CW: i8 = 18;
    static readonly GRIPPER_RELEASE: i8 = 19;
    static readonly GRIPPER_GRASP: i8 = 20;
    static readonly HOME_POSE: i8 = 21;
    static readonly SLEEP_POSE: i8 = 22;
    static readonly SPEED_INC: i8 = 23;
    static readonly SPEED_DEC: i8 = 24;
    static readonly SPEED_COARSE: i8 = 25;
    static readonly SPEED_FINE: i8 = 26;
    static readonly GRIPPER_PWM_INC: i8 = 27;
    static readonly GRIPPER_PWM_DEC: i8 = 28;
    static readonly maxWireBytes: i32 = 30;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 30;
    /** @brief Exact native field base_x_cmd, native scalar float64. */
    base_x_cmd: f64 = 0;
    /** @brief Exact native field base_theta_cmd, native scalar float64. */
    base_theta_cmd: f64 = 0;
    /** @brief Exact native field base_reset_odom_cmd, native scalar int8. */
    base_reset_odom_cmd: i8 = 0;
    /** @brief Exact native field pan_cmd, native scalar int8. */
    pan_cmd: i8 = 0;
    /** @brief Exact native field tilt_cmd, native scalar int8. */
    tilt_cmd: i8 = 0;
    /** @brief Exact native field ee_x_cmd, native scalar int8. */
    ee_x_cmd: i8 = 0;
    /** @brief Exact native field ee_y_cmd, native scalar int8. */
    ee_y_cmd: i8 = 0;
    /** @brief Exact native field ee_z_cmd, native scalar int8. */
    ee_z_cmd: i8 = 0;
    /** @brief Exact native field ee_roll_cmd, native scalar int8. */
    ee_roll_cmd: i8 = 0;
    /** @brief Exact native field ee_pitch_cmd, native scalar int8. */
    ee_pitch_cmd: i8 = 0;
    /** @brief Exact native field waist_cmd, native scalar int8. */
    waist_cmd: i8 = 0;
    /** @brief Exact native field gripper_cmd, native scalar int8. */
    gripper_cmd: i8 = 0;
    /** @brief Exact native field pose_cmd, native scalar int8. */
    pose_cmd: i8 = 0;
    /** @brief Exact native field speed_cmd, native scalar int8. */
    speed_cmd: i8 = 0;
    /** @brief Exact native field speed_toggle_cmd, native scalar int8. */
    speed_toggle_cmd: i8 = 0;
    /** @brief Exact native field gripper_pwm_cmd, native scalar int8. */
    gripper_pwm_cmd: i8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.base_x_cmd))
                return -22;
            if(8 > 30 - n)
                return -90;
            n += 8;
            if(n > 30)
                return -90;
        }
        {
            if(!isFinite(this.base_theta_cmd))
                return -22;
            if(8 > 30 - n)
                return -90;
            n += 8;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
                return -90;
        }
        {
            if(1 > 30 - n)
                return -90;
            n += 1;
            if(n > 30)
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
        w.integer(<u64>reinterpret<u64>(this.base_x_cmd), 8);
        w.integer(<u64>reinterpret<u64>(this.base_theta_cmd), 8);
        w.integer(<u64>this.base_reset_odom_cmd, 1);
        w.integer(<u64>this.pan_cmd, 1);
        w.integer(<u64>this.tilt_cmd, 1);
        w.integer(<u64>this.ee_x_cmd, 1);
        w.integer(<u64>this.ee_y_cmd, 1);
        w.integer(<u64>this.ee_z_cmd, 1);
        w.integer(<u64>this.ee_roll_cmd, 1);
        w.integer(<u64>this.ee_pitch_cmd, 1);
        w.integer(<u64>this.waist_cmd, 1);
        w.integer(<u64>this.gripper_cmd, 1);
        w.integer(<u64>this.pose_cmd, 1);
        w.integer(<u64>this.speed_cmd, 1);
        w.integer(<u64>this.speed_toggle_cmd, 1);
        w.integer(<u64>this.gripper_pwm_cmd, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsMsgLocobotJoy
    {
        const value = new Ros2Interbotix_xs_msgsMsgLocobotJoy();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.base_x_cmd = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.base_theta_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.base_reset_odom_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.pan_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.tilt_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_x_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_y_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_z_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_roll_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.ee_pitch_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.waist_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.gripper_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.pose_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.speed_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.speed_toggle_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.gripper_pwm_cmd = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsMsgLocobotJoyCodec implements VendorCodec<Ros2Interbotix_xs_msgsMsgLocobotJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633";
    static readonly maxWireBytes: i32 = 30;

    encodeChecked(value: Ros2Interbotix_xs_msgsMsgLocobotJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsMsgLocobotJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsMsgLocobotJoy>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsMsgLocobotJoy>();
        if(bytes.length > 30)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 30)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsMsgLocobotJoy.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsMsgLocobotJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsMsgLocobotJoy() : changetype<Ros2Interbotix_xs_msgsMsgLocobotJoy>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/msg/TurretJoy; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsMsgTurretJoy
{
    static readonly PAN_CCW: i8 = 1;
    static readonly PAN_CW: i8 = 2;
    static readonly TILT_UP: i8 = 3;
    static readonly TILT_DOWN: i8 = 4;
    static readonly PAN_TILT_HOME: i8 = 5;
    static readonly SPEED_INC: i8 = 6;
    static readonly SPEED_DEC: i8 = 7;
    static readonly SPEED_COARSE: i8 = 8;
    static readonly SPEED_FINE: i8 = 9;
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field pan_cmd, native scalar int8. */
    pan_cmd: i8 = 0;
    /** @brief Exact native field tilt_cmd, native scalar int8. */
    tilt_cmd: i8 = 0;
    /** @brief Exact native field speed_cmd, native scalar int8. */
    speed_cmd: i8 = 0;
    /** @brief Exact native field speed_toggle_cmd, native scalar int8. */
    speed_toggle_cmd: i8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 4 - n)
                return -90;
            n += 1;
            if(n > 4)
                return -90;
        }
        {
            if(1 > 4 - n)
                return -90;
            n += 1;
            if(n > 4)
                return -90;
        }
        {
            if(1 > 4 - n)
                return -90;
            n += 1;
            if(n > 4)
                return -90;
        }
        {
            if(1 > 4 - n)
                return -90;
            n += 1;
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
        w.integer(<u64>this.pan_cmd, 1);
        w.integer(<u64>this.tilt_cmd, 1);
        w.integer(<u64>this.speed_cmd, 1);
        w.integer(<u64>this.speed_toggle_cmd, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsMsgTurretJoy
    {
        const value = new Ros2Interbotix_xs_msgsMsgTurretJoy();
        {
            const decoded = <i8>r.integer(1);
            value.pan_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.tilt_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.speed_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.speed_toggle_cmd = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsMsgTurretJoyCodec implements VendorCodec<Ros2Interbotix_xs_msgsMsgTurretJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2Interbotix_xs_msgsMsgTurretJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsMsgTurretJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsMsgTurretJoy>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsMsgTurretJoy>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsMsgTurretJoy.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsMsgTurretJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsMsgTurretJoy() : changetype<Ros2Interbotix_xs_msgsMsgTurretJoy>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/MotorGains_Request; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvMotorGains_Request
{
    static readonly maxWireBytes: i32 = 292;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 292;
    /** @brief Exact native field cmd_type, native scalar string. */
    cmd_type: string = "";
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field kp_pos, native scalar int32. */
    kp_pos: i32 = 0;
    /** @brief Exact native field ki_pos, native scalar int32. */
    ki_pos: i32 = 0;
    /** @brief Exact native field kd_pos, native scalar int32. */
    kd_pos: i32 = 0;
    /** @brief Exact native field k1, native scalar int32. */
    k1: i32 = 0;
    /** @brief Exact native field k2, native scalar int32. */
    k2: i32 = 0;
    /** @brief Exact native field kp_vel, native scalar int32. */
    kp_vel: i32 = 0;
    /** @brief Exact native field ki_vel, native scalar int32. */
    ki_vel: i32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.cmd_type) || this.cmd_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cmd_type);
            if(size > 128)
                return -22;
            if(4 + size > 292 - n)
                return -90;
            n += 4 + size;
            if(n > 292)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 292 - n)
                return -90;
            n += 4 + size;
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
        {
            if(4 > 292 - n)
                return -90;
            n += 4;
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
        {
            if(4 > 292 - n)
                return -90;
            n += 4;
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
        {
            if(4 > 292 - n)
                return -90;
            n += 4;
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.cmd_type);
        w.text(this.name);
        w.integer(<u64>this.kp_pos, 4);
        w.integer(<u64>this.ki_pos, 4);
        w.integer(<u64>this.kd_pos, 4);
        w.integer(<u64>this.k1, 4);
        w.integer(<u64>this.k2, 4);
        w.integer(<u64>this.kp_vel, 4);
        w.integer(<u64>this.ki_vel, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvMotorGains_Request
    {
        const value = new Ros2Interbotix_xs_msgsSrvMotorGains_Request();
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
            value.cmd_type = decoded;
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
            const decoded = <i32>r.integer(4);
            value.kp_pos = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.ki_pos = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.kd_pos = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.k1 = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.k2 = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.kp_vel = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.ki_vel = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvMotorGains_RequestCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvMotorGains_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f";
    static readonly maxWireBytes: i32 = 292;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvMotorGains_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvMotorGains_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvMotorGains_Request>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvMotorGains_Request>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvMotorGains_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvMotorGains_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvMotorGains_Request() : changetype<Ros2Interbotix_xs_msgsSrvMotorGains_Request>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/MotorGains_Response; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvMotorGains_Response
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
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvMotorGains_Response
    {
        const value = new Ros2Interbotix_xs_msgsSrvMotorGains_Response();
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvMotorGains_ResponseCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvMotorGains_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvMotorGains_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvMotorGains_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvMotorGains_Response>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvMotorGains_Response>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvMotorGains_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvMotorGains_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvMotorGains_Response() : changetype<Ros2Interbotix_xs_msgsSrvMotorGains_Response>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/OperatingModes_Request; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvOperatingModes_Request
{
    static readonly maxWireBytes: i32 = 536;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 536;
    /** @brief Exact native field cmd_type, native scalar string. */
    cmd_type: string = "";
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field mode, native scalar string. */
    mode: string = "";
    /** @brief Exact native field profile_type, native scalar string. */
    profile_type: string = "";
    /** @brief Exact native field profile_velocity, native scalar int32. */
    profile_velocity: i32 = 0;
    /** @brief Exact native field profile_acceleration, native scalar int32. */
    profile_acceleration: i32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.cmd_type) || this.cmd_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cmd_type);
            if(size > 128)
                return -22;
            if(4 + size > 536 - n)
                return -90;
            n += 4 + size;
            if(n > 536)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 536 - n)
                return -90;
            n += 4 + size;
            if(n > 536)
                return -90;
        }
        {
            if(!validUnicode(this.mode) || this.mode.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.mode);
            if(size > 128)
                return -22;
            if(4 + size > 536 - n)
                return -90;
            n += 4 + size;
            if(n > 536)
                return -90;
        }
        {
            if(!validUnicode(this.profile_type) || this.profile_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.profile_type);
            if(size > 128)
                return -22;
            if(4 + size > 536 - n)
                return -90;
            n += 4 + size;
            if(n > 536)
                return -90;
        }
        {
            if(4 > 536 - n)
                return -90;
            n += 4;
            if(n > 536)
                return -90;
        }
        {
            if(4 > 536 - n)
                return -90;
            n += 4;
            if(n > 536)
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
        w.text(this.cmd_type);
        w.text(this.name);
        w.text(this.mode);
        w.text(this.profile_type);
        w.integer(<u64>this.profile_velocity, 4);
        w.integer(<u64>this.profile_acceleration, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvOperatingModes_Request
    {
        const value = new Ros2Interbotix_xs_msgsSrvOperatingModes_Request();
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
            value.cmd_type = decoded;
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
            value.mode = decoded;
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
            value.profile_type = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.profile_velocity = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.profile_acceleration = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvOperatingModes_RequestCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvOperatingModes_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15";
    static readonly maxWireBytes: i32 = 536;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvOperatingModes_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvOperatingModes_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvOperatingModes_Request>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvOperatingModes_Request>();
        if(bytes.length > 536)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvOperatingModes_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvOperatingModes_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvOperatingModes_Request()
                                  : changetype<Ros2Interbotix_xs_msgsSrvOperatingModes_Request>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/OperatingModes_Response; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvOperatingModes_Response
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
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvOperatingModes_Response
    {
        const value = new Ros2Interbotix_xs_msgsSrvOperatingModes_Response();
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvOperatingModes_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvOperatingModes_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvOperatingModes_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvOperatingModes_Response>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvOperatingModes_Response>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvOperatingModes_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvOperatingModes_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvOperatingModes_Response()
                                  : changetype<Ros2Interbotix_xs_msgsSrvOperatingModes_Response>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/Reboot_Request; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvReboot_Request
{
    static readonly maxWireBytes: i32 = 266;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 266;
    /** @brief Exact native field cmd_type, native scalar string. */
    cmd_type: string = "";
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field enable, native scalar bool. */
    enable: bool = false;
    /** @brief Exact native field smart_reboot, native scalar bool. */
    smart_reboot: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.cmd_type) || this.cmd_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cmd_type);
            if(size > 128)
                return -22;
            if(4 + size > 266 - n)
                return -90;
            n += 4 + size;
            if(n > 266)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 266 - n)
                return -90;
            n += 4 + size;
            if(n > 266)
                return -90;
        }
        {
            if(1 > 266 - n)
                return -90;
            n += 1;
            if(n > 266)
                return -90;
        }
        {
            if(1 > 266 - n)
                return -90;
            n += 1;
            if(n > 266)
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
        w.text(this.cmd_type);
        w.text(this.name);
        w.u8(this.enable ? 1 : 0);
        w.u8(this.smart_reboot ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvReboot_Request
    {
        const value = new Ros2Interbotix_xs_msgsSrvReboot_Request();
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
            value.cmd_type = decoded;
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
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.enable = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.smart_reboot = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvReboot_RequestCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvReboot_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55";
    static readonly maxWireBytes: i32 = 266;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvReboot_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvReboot_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvReboot_Request>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvReboot_Request>();
        if(bytes.length > 266)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 10)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvReboot_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvReboot_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvReboot_Request() : changetype<Ros2Interbotix_xs_msgsSrvReboot_Request>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/Reboot_Response; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvReboot_Response
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
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvReboot_Response
    {
        const value = new Ros2Interbotix_xs_msgsSrvReboot_Response();
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvReboot_ResponseCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvReboot_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvReboot_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvReboot_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvReboot_Response>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvReboot_Response>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvReboot_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvReboot_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvReboot_Response() : changetype<Ros2Interbotix_xs_msgsSrvReboot_Response>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/RegisterValues_Request; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvRegisterValues_Request
{
    static readonly maxWireBytes: i32 = 400;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 400;
    /** @brief Exact native field cmd_type, native scalar string. */
    cmd_type: string = "";
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field reg, native scalar string. */
    reg: string = "";
    /** @brief Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.cmd_type) || this.cmd_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cmd_type);
            if(size > 128)
                return -22;
            if(4 + size > 400 - n)
                return -90;
            n += 4 + size;
            if(n > 400)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 400 - n)
                return -90;
            n += 4 + size;
            if(n > 400)
                return -90;
        }
        {
            if(!validUnicode(this.reg) || this.reg.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.reg);
            if(size > 128)
                return -22;
            if(4 + size > 400 - n)
                return -90;
            n += 4 + size;
            if(n > 400)
                return -90;
        }
        {
            if(4 > 400 - n)
                return -90;
            n += 4;
            if(n > 400)
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
        w.text(this.cmd_type);
        w.text(this.name);
        w.text(this.reg);
        w.integer(<u64>this.value, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvRegisterValues_Request
    {
        const value = new Ros2Interbotix_xs_msgsSrvRegisterValues_Request();
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
            value.cmd_type = decoded;
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
            value.reg = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvRegisterValues_RequestCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvRegisterValues_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd";
    static readonly maxWireBytes: i32 = 400;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvRegisterValues_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvRegisterValues_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvRegisterValues_Request>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvRegisterValues_Request>();
        if(bytes.length > 400)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvRegisterValues_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvRegisterValues_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvRegisterValues_Request()
                                  : changetype<Ros2Interbotix_xs_msgsSrvRegisterValues_Request>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/RegisterValues_Response; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvRegisterValues_Response
{
    static readonly maxWireBytes: i32 = 68;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 68;
    /** @brief Exact native field values, native scalar int32. */
    values: Array < i32 >= new Array<i32>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.values.length > 16)
                return -22;
            if(4 > 68 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(4 > 68 - n)
                    return -90;
                n += 4;
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
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>this.values[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvRegisterValues_Response
    {
        const value = new Ros2Interbotix_xs_msgsSrvRegisterValues_Response();
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<i32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i32>r.integer(4);
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvRegisterValues_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a";
    static readonly maxWireBytes: i32 = 68;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvRegisterValues_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvRegisterValues_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvRegisterValues_Response>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvRegisterValues_Response>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvRegisterValues_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvRegisterValues_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvRegisterValues_Response()
                                  : changetype<Ros2Interbotix_xs_msgsSrvRegisterValues_Response>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/RobotInfo_Request; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvRobotInfo_Request
{
    static readonly maxWireBytes: i32 = 264;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 264;
    /** @brief Exact native field cmd_type, native scalar string. */
    cmd_type: string = "";
    /** @brief Exact native field name, native scalar string. */
    name: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.cmd_type) || this.cmd_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cmd_type);
            if(size > 128)
                return -22;
            if(4 + size > 264 - n)
                return -90;
            n += 4 + size;
            if(n > 264)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
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
        w.text(this.cmd_type);
        w.text(this.name);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvRobotInfo_Request
    {
        const value = new Ros2Interbotix_xs_msgsSrvRobotInfo_Request();
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
            value.cmd_type = decoded;
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
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvRobotInfo_RequestCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvRobotInfo_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9";
    static readonly maxWireBytes: i32 = 264;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvRobotInfo_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvRobotInfo_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvRobotInfo_Request>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvRobotInfo_Request>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvRobotInfo_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvRobotInfo_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvRobotInfo_Request() : changetype<Ros2Interbotix_xs_msgsSrvRobotInfo_Request>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/RobotInfo_Response; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvRobotInfo_Response
{
    static readonly maxWireBytes: i32 = 18474;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 18474;
    /** @brief Exact native field mode, native scalar string. */
    mode: string = "";
    /** @brief Exact native field profile_type, native scalar string. */
    profile_type: string = "";
    /** @brief Exact native field joint_names, native scalar string. */
    joint_names: Array < string >= new Array<string>();
    /** @brief Exact native field joint_ids, native scalar int16. */
    joint_ids: Array < i16 >= new Array<i16>();
    /** @brief Exact native field joint_lower_limits, native scalar float32. */
    joint_lower_limits: Array < f32 >= new Array<f32>();
    /** @brief Exact native field joint_upper_limits, native scalar float32. */
    joint_upper_limits: Array < f32 >= new Array<f32>();
    /** @brief Exact native field joint_velocity_limits, native scalar float32. */
    joint_velocity_limits: Array < f32 >= new Array<f32>();
    /** @brief Exact native field joint_sleep_positions, native scalar float32. */
    joint_sleep_positions: Array < f32 >= new Array<f32>();
    /** @brief Exact native field joint_state_indices, native scalar int16. */
    joint_state_indices: Array < i16 >= new Array<i16>();
    /** @brief Exact native field num_joints, native scalar int16. */
    num_joints: i16 = 0;
    /** @brief Exact native field name, native scalar string. */
    name: Array < string >= new Array<string>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.mode) || this.mode.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.mode);
            if(size > 128)
                return -22;
            if(4 + size > 18474 - n)
                return -90;
            n += 4 + size;
            if(n > 18474)
                return -90;
        }
        {
            if(!validUnicode(this.profile_type) || this.profile_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.profile_type);
            if(size > 128)
                return -22;
            if(4 + size > 18474 - n)
                return -90;
            n += 4 + size;
            if(n > 18474)
                return -90;
        }
        {
            if(this.joint_names.length > 64)
                return -22;
            if(4 > 18474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 18474 - n)
                    return -90;
                n += 4 + size;
                if(n > 18474)
                    return -90;
            }
        }
        {
            if(this.joint_ids.length > 64)
                return -22;
            if(4 > 18474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_ids.length; ++i)
            {
                if(2 > 18474 - n)
                    return -90;
                n += 2;
                if(n > 18474)
                    return -90;
            }
        }
        {
            if(this.joint_lower_limits.length > 64)
                return -22;
            if(4 > 18474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_lower_limits.length; ++i)
            {
                if(!isFinite(this.joint_lower_limits[i]))
                    return -22;
                if(4 > 18474 - n)
                    return -90;
                n += 4;
                if(n > 18474)
                    return -90;
            }
        }
        {
            if(this.joint_upper_limits.length > 64)
                return -22;
            if(4 > 18474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_upper_limits.length; ++i)
            {
                if(!isFinite(this.joint_upper_limits[i]))
                    return -22;
                if(4 > 18474 - n)
                    return -90;
                n += 4;
                if(n > 18474)
                    return -90;
            }
        }
        {
            if(this.joint_velocity_limits.length > 64)
                return -22;
            if(4 > 18474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_velocity_limits.length; ++i)
            {
                if(!isFinite(this.joint_velocity_limits[i]))
                    return -22;
                if(4 > 18474 - n)
                    return -90;
                n += 4;
                if(n > 18474)
                    return -90;
            }
        }
        {
            if(this.joint_sleep_positions.length > 64)
                return -22;
            if(4 > 18474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_sleep_positions.length; ++i)
            {
                if(!isFinite(this.joint_sleep_positions[i]))
                    return -22;
                if(4 > 18474 - n)
                    return -90;
                n += 4;
                if(n > 18474)
                    return -90;
            }
        }
        {
            if(this.joint_state_indices.length > 64)
                return -22;
            if(4 > 18474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_state_indices.length; ++i)
            {
                if(2 > 18474 - n)
                    return -90;
                n += 2;
                if(n > 18474)
                    return -90;
            }
        }
        {
            if(2 > 18474 - n)
                return -90;
            n += 2;
            if(n > 18474)
                return -90;
        }
        {
            if(this.name.length > 64)
                return -22;
            if(4 > 18474 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(!validUnicode(this.name[i]) || this.name[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.name[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 18474 - n)
                    return -90;
                n += 4 + size;
                if(n > 18474)
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
        w.text(this.mode);
        w.text(this.profile_type);
        w.u32(<u32>this.joint_names.length);
        for(let i = 0; i < this.joint_names.length; ++i)
        {
            w.text(this.joint_names[i]);
        }
        w.u32(<u32>this.joint_ids.length);
        for(let i = 0; i < this.joint_ids.length; ++i)
        {
            w.integer(<u64>this.joint_ids[i], 2);
        }
        w.u32(<u32>this.joint_lower_limits.length);
        for(let i = 0; i < this.joint_lower_limits.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.joint_lower_limits[i]), 4);
        }
        w.u32(<u32>this.joint_upper_limits.length);
        for(let i = 0; i < this.joint_upper_limits.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.joint_upper_limits[i]), 4);
        }
        w.u32(<u32>this.joint_velocity_limits.length);
        for(let i = 0; i < this.joint_velocity_limits.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.joint_velocity_limits[i]), 4);
        }
        w.u32(<u32>this.joint_sleep_positions.length);
        for(let i = 0; i < this.joint_sleep_positions.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.joint_sleep_positions[i]), 4);
        }
        w.u32(<u32>this.joint_state_indices.length);
        for(let i = 0; i < this.joint_state_indices.length; ++i)
        {
            w.integer(<u64>this.joint_state_indices[i], 2);
        }
        w.integer(<u64>this.num_joints, 2);
        w.u32(<u32>this.name.length);
        for(let i = 0; i < this.name.length; ++i)
        {
            w.text(this.name[i]);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvRobotInfo_Response
    {
        const value = new Ros2Interbotix_xs_msgsSrvRobotInfo_Response();
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
            value.mode = decoded;
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
            value.profile_type = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
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
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.joint_ids = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.joint_ids.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.joint_lower_limits = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_lower_limits.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.joint_upper_limits = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_upper_limits.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.joint_velocity_limits = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_velocity_limits.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.joint_sleep_positions = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_sleep_positions.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.joint_state_indices = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.joint_state_indices.push(decoded);
            }
        }
        {
            const decoded = <i16>r.integer(2);
            value.num_joints = decoded;
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
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvRobotInfo_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14";
    static readonly maxWireBytes: i32 = 18474;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvRobotInfo_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvRobotInfo_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvRobotInfo_Response>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvRobotInfo_Response>();
        if(bytes.length > 18474)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 42)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvRobotInfo_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvRobotInfo_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvRobotInfo_Response() : changetype<Ros2Interbotix_xs_msgsSrvRobotInfo_Response>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/TorqueEnable_Request; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
{
    static readonly maxWireBytes: i32 = 265;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 265;
    /** @brief Exact native field cmd_type, native scalar string. */
    cmd_type: string = "";
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field enable, native scalar bool. */
    enable: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.cmd_type) || this.cmd_type.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.cmd_type);
            if(size > 128)
                return -22;
            if(4 + size > 265 - n)
                return -90;
            n += 4 + size;
            if(n > 265)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 265 - n)
                return -90;
            n += 4 + size;
            if(n > 265)
                return -90;
        }
        {
            if(1 > 265 - n)
                return -90;
            n += 1;
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
        w.text(this.cmd_type);
        w.text(this.name);
        w.u8(this.enable ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
    {
        const value = new Ros2Interbotix_xs_msgsSrvTorqueEnable_Request();
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
            value.cmd_type = decoded;
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
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.enable = decoded;
        }
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvTorqueEnable_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da";
    static readonly maxWireBytes: i32 = 265;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvTorqueEnable_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvTorqueEnable_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvTorqueEnable_Request>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvTorqueEnable_Request>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvTorqueEnable_Request() : changetype<Ros2Interbotix_xs_msgsSrvTorqueEnable_Request>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/srv/TorqueEnable_Response; spellings are published in generation proof. */
export class Ros2Interbotix_xs_msgsSrvTorqueEnable_Response
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
    static readControl(r: Reader): Ros2Interbotix_xs_msgsSrvTorqueEnable_Response
    {
        const value = new Ros2Interbotix_xs_msgsSrvTorqueEnable_Response();
        return value;
    }
}

export class Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseCodec implements VendorCodec<Ros2Interbotix_xs_msgsSrvTorqueEnable_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros2Interbotix_xs_msgsSrvTorqueEnable_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Interbotix_xs_msgsSrvTorqueEnable_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Interbotix_xs_msgsSrvTorqueEnable_Response>
    {
        const out = new VendorDecoded<Ros2Interbotix_xs_msgsSrvTorqueEnable_Response>();
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
        const reader = new Reader(bytes), value = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros2Interbotix_xs_msgsSrvTorqueEnable_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Interbotix_xs_msgsSrvTorqueEnable_Response()
                                  : changetype<Ros2Interbotix_xs_msgsSrvTorqueEnable_Response>(out.value);
    }
}
