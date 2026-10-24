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

export interface VendorCodec<T> {
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

/** @brief Complete original interbotix_uxarm_joy/ArmJoy; spellings are published in generation proof. */
export class Ros1Interbotix_uxarm_joyArmJoy
{
    static readonly EE_X_INC: i8 = 1;
    static readonly EE_X_DEC: i8 = 2;
    static readonly EE_Y_INC: i8 = 3;
    static readonly EE_Y_DEC: i8 = 4;
    static readonly EE_Z_INC: i8 = 5;
    static readonly EE_Z_DEC: i8 = 6;
    static readonly EE_YAW_CCW: i8 = 7;
    static readonly EE_YAW_CW: i8 = 8;
    static readonly EE_PITCH_UP: i8 = 9;
    static readonly EE_PITCH_DOWN: i8 = 10;
    static readonly WAIST_CCW: i8 = 11;
    static readonly WAIST_CW: i8 = 12;
    static readonly GRIPPER_OPEN: i8 = 13;
    static readonly GRIPPER_CLOSE: i8 = 14;
    static readonly HOME_POSE: i8 = 15;
    static readonly HOLDUP_POSE: i8 = 16;
    static readonly SPEED_INC: i8 = 17;
    static readonly SPEED_DEC: i8 = 18;
    static readonly SPEED_COARSE: i8 = 19;
    static readonly SPEED_FINE: i8 = 20;
    static readonly GRIPPER_SPEED_INC: i8 = 21;
    static readonly GRIPPER_SPEED_DEC: i8 = 22;
    static readonly MODE_SERVO: i8 = 23;
    static readonly MODE_TEACH: i8 = 24;
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** @brief Exact native field ee_x_cmd, native scalar int8. */
    ee_x_cmd: i8 = 0;
    /** @brief Exact native field ee_y_cmd, native scalar int8. */
    ee_y_cmd: i8 = 0;
    /** @brief Exact native field ee_z_cmd, native scalar int8. */
    ee_z_cmd: i8 = 0;
    /** @brief Exact native field ee_yaw_cmd, native scalar int8. */
    ee_yaw_cmd: i8 = 0;
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
    /** @brief Exact native field gripper_speed_cmd, native scalar int8. */
    gripper_speed_cmd: i8 = 0;
    /** @brief Exact native field mode_cmd, native scalar int8. */
    mode_cmd: i8 = 0;

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
        w.integer(<u64>this.ee_yaw_cmd, 1);
        w.integer(<u64>this.ee_pitch_cmd, 1);
        w.integer(<u64>this.waist_cmd, 1);
        w.integer(<u64>this.gripper_cmd, 1);
        w.integer(<u64>this.pose_cmd, 1);
        w.integer(<u64>this.speed_cmd, 1);
        w.integer(<u64>this.speed_toggle_cmd, 1);
        w.integer(<u64>this.gripper_speed_cmd, 1);
        w.integer(<u64>this.mode_cmd, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Interbotix_uxarm_joyArmJoy
    {
        const value = new Ros1Interbotix_uxarm_joyArmJoy();
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
            value.ee_yaw_cmd = decoded;
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
            value.gripper_speed_cmd = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.mode_cmd = decoded;
        }
        return value;
    }
}

export class Ros1Interbotix_uxarm_joyArmJoyCodec implements VendorCodec<Ros1Interbotix_uxarm_joyArmJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53";
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros1Interbotix_uxarm_joyArmJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_uxarm_joyArmJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_uxarm_joyArmJoy>
    {
        const out = new VendorDecoded<Ros1Interbotix_uxarm_joyArmJoy>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_uxarm_joyArmJoy.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_uxarm_joyArmJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_uxarm_joyArmJoy() : changetype<Ros1Interbotix_uxarm_joyArmJoy>(out.value);
    }
}
