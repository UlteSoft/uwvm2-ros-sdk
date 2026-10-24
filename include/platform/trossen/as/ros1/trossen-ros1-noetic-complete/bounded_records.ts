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

/** @brief Complete original interbotix_slate_msgs/SetStringRequest; spellings are published in generation proof. */
export class Ros1Interbotix_slate_msgsSetStringRequest
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
    static readControl(r: Reader): Ros1Interbotix_slate_msgsSetStringRequest
    {
        const value = new Ros1Interbotix_slate_msgsSetStringRequest();
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

export class Ros1Interbotix_slate_msgsSetStringRequestCodec implements VendorCodec<Ros1Interbotix_slate_msgsSetStringRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105";
    static readonly maxWireBytes: i32 = 132;

    encodeChecked(value: Ros1Interbotix_slate_msgsSetStringRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_slate_msgsSetStringRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_slate_msgsSetStringRequest>
    {
        const out = new VendorDecoded<Ros1Interbotix_slate_msgsSetStringRequest>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_slate_msgsSetStringRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_slate_msgsSetStringRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_slate_msgsSetStringRequest() : changetype<Ros1Interbotix_slate_msgsSetStringRequest>(out.value);
    }
}

/** @brief Complete original interbotix_slate_msgs/SetStringResponse; spellings are published in generation proof. */
export class Ros1Interbotix_slate_msgsSetStringResponse
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
    static readControl(r: Reader): Ros1Interbotix_slate_msgsSetStringResponse
    {
        const value = new Ros1Interbotix_slate_msgsSetStringResponse();
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

export class Ros1Interbotix_slate_msgsSetStringResponseCodec implements VendorCodec<Ros1Interbotix_slate_msgsSetStringResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c";
    static readonly maxWireBytes: i32 = 133;

    encodeChecked(value: Ros1Interbotix_slate_msgsSetStringResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_slate_msgsSetStringResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_slate_msgsSetStringResponse>
    {
        const out = new VendorDecoded<Ros1Interbotix_slate_msgsSetStringResponse>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_slate_msgsSetStringResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_slate_msgsSetStringResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_slate_msgsSetStringResponse() : changetype<Ros1Interbotix_slate_msgsSetStringResponse>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/ArmJoy; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsArmJoy
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
    static readonly GRIPPER_OPEN: i8 = 13;
    static readonly GRIPPER_CLOSE: i8 = 14;
    static readonly HOME_POSE: i8 = 15;
    static readonly SLEEP_POSE: i8 = 16;
    static readonly SPEED_INC: i8 = 17;
    static readonly SPEED_DEC: i8 = 18;
    static readonly SPEED_COURSE: i8 = 19;
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsArmJoy
    {
        const value = new Ros1Interbotix_xs_msgsArmJoy();
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

export class Ros1Interbotix_xs_msgsArmJoyCodec implements VendorCodec<Ros1Interbotix_xs_msgsArmJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3";
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros1Interbotix_xs_msgsArmJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsArmJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsArmJoy>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsArmJoy>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsArmJoy.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsArmJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsArmJoy() : changetype<Ros1Interbotix_xs_msgsArmJoy>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/HexJoy; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsHexJoy
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
    static readonly SPEED_COURSE: i8 = 31;
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsHexJoy
    {
        const value = new Ros1Interbotix_xs_msgsHexJoy();
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

export class Ros1Interbotix_xs_msgsHexJoyCodec implements VendorCodec<Ros1Interbotix_xs_msgsHexJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37";
    static readonly maxWireBytes: i32 = 17;

    encodeChecked(value: Ros1Interbotix_xs_msgsHexJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsHexJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsHexJoy>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsHexJoy>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsHexJoy.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsHexJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsHexJoy() : changetype<Ros1Interbotix_xs_msgsHexJoy>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/JointGroupCommand; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsJointGroupCommand
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsJointGroupCommand
    {
        const value = new Ros1Interbotix_xs_msgsJointGroupCommand();
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

export class Ros1Interbotix_xs_msgsJointGroupCommandCodec implements VendorCodec<Ros1Interbotix_xs_msgsJointGroupCommand>
{
    static readonly codecIdentity: string = "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec";
    static readonly maxWireBytes: i32 = 392;

    encodeChecked(value: Ros1Interbotix_xs_msgsJointGroupCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsJointGroupCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsJointGroupCommand>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsJointGroupCommand>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsJointGroupCommand.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsJointGroupCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsJointGroupCommand() : changetype<Ros1Interbotix_xs_msgsJointGroupCommand>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/JointSingleCommand; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsJointSingleCommand
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsJointSingleCommand
    {
        const value = new Ros1Interbotix_xs_msgsJointSingleCommand();
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

export class Ros1Interbotix_xs_msgsJointSingleCommandCodec implements VendorCodec<Ros1Interbotix_xs_msgsJointSingleCommand>
{
    static readonly codecIdentity: string = "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0";
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Interbotix_xs_msgsJointSingleCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsJointSingleCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsJointSingleCommand>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsJointSingleCommand>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsJointSingleCommand.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsJointSingleCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsJointSingleCommand() : changetype<Ros1Interbotix_xs_msgsJointSingleCommand>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/JointTemps; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsJointTemps
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsJointTemps
    {
        const value = new Ros1Interbotix_xs_msgsJointTemps();
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

export class Ros1Interbotix_xs_msgsJointTempsCodec implements VendorCodec<Ros1Interbotix_xs_msgsJointTemps>
{
    static readonly codecIdentity: string = "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511";
    static readonly maxWireBytes: i32 = 8712;

    encodeChecked(value: Ros1Interbotix_xs_msgsJointTemps): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsJointTemps): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsJointTemps>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsJointTemps>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsJointTemps.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsJointTemps
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsJointTemps() : changetype<Ros1Interbotix_xs_msgsJointTemps>(out.value);
    }
}

/** @brief Complete original time; spellings are published in generation proof. */
export class Ros1Time
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field sec, native scalar uint32. */
    sec: u32 = 0;
    /** @brief Exact native field nsec, native scalar uint32. */
    nsec: u32 = 0;

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
        if(this.nsec >= 1000000000)
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
        w.integer(<u64>this.nsec, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Time
    {
        const value = new Ros1Time();
        {
            const decoded = <u32>r.integer(4);
            value.sec = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.nsec = decoded;
        }
        if(value.nsec >= 1000000000)
            r.valid = false;
        return value;
    }
}

export class Ros1TimeCodec implements VendorCodec<Ros1Time>
{
    static readonly codecIdentity: string = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Time): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Time): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Time>
    {
        const out = new VendorDecoded<Ros1Time>();
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
        const reader = new Reader(bytes), value = Ros1Time.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Time
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Time() : changetype<Ros1Time>(out.value);
    }
}

/** @brief Complete original std_msgs/Header; spellings are published in generation proof. */
export class Ros1Std_msgsHeader
{
    static readonly maxWireBytes: i32 = 144;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 144;
    /** @brief Exact native field seq, native scalar uint32. */
    seq: u32 = 0;
    /** @brief Exact native field stamp, native scalar time. */
    stamp: Ros1Time = new Ros1Time();
    /** @brief Exact native field frame_id, native scalar string. */
    frame_id: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 144 - n)
                return -90;
            n += 4;
            if(n > 144)
                return -90;
        }
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 144 - n)
                return -90;
            n += child;
            if(n > 144)
                return -90;
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.frame_id);
            if(size > 128)
                return -22;
            if(4 + size > 144 - n)
                return -90;
            n += 4 + size;
            if(n > 144)
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
        w.integer(<u64>this.seq, 4);
        this.stamp.writeControl(w);
        w.text(this.frame_id);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Std_msgsHeader
    {
        const value = new Ros1Std_msgsHeader();
        {
            const decoded = <u32>r.integer(4);
            value.seq = decoded;
        }
        {
            const decoded = Ros1Time.readControl(r);
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

export class Ros1Std_msgsHeaderCodec implements VendorCodec<Ros1Std_msgsHeader>
{
    static readonly codecIdentity: string = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
    static readonly maxWireBytes: i32 = 144;

    encodeChecked(value: Ros1Std_msgsHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Std_msgsHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Std_msgsHeader>
    {
        const out = new VendorDecoded<Ros1Std_msgsHeader>();
        if(bytes.length > 144)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Std_msgsHeader.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Std_msgsHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Std_msgsHeader() : changetype<Ros1Std_msgsHeader>(out.value);
    }
}

/** @brief Complete original duration; spellings are published in generation proof. */
export class Ros1Duration
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field sec, native scalar int32. */
    sec: i32 = 0;
    /** @brief Exact native field nsec, native scalar int32. */
    nsec: i32 = 0;

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
        if(this.nsec < 0 || this.nsec >= 1000000000)
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
        w.integer(<u64>this.nsec, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Duration
    {
        const value = new Ros1Duration();
        {
            const decoded = <i32>r.integer(4);
            value.sec = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.nsec = decoded;
        }
        if(value.nsec < 0 || value.nsec >= 1000000000)
            r.valid = false;
        return value;
    }
}

export class Ros1DurationCodec implements VendorCodec<Ros1Duration>
{
    static readonly codecIdentity: string = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Duration): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Duration): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Duration>
    {
        const out = new VendorDecoded<Ros1Duration>();
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
        const reader = new Reader(bytes), value = Ros1Duration.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Duration
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Duration() : changetype<Ros1Duration>(out.value);
    }
}

/** @brief Complete original trajectory_msgs/JointTrajectoryPoint; spellings are published in generation proof. */
export class Ros1Trajectory_msgsJointTrajectoryPoint
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
    /** @brief Exact native field time_from_start, native scalar duration. */
    time_from_start: Ros1Duration = new Ros1Duration();

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
    static readControl(r: Reader): Ros1Trajectory_msgsJointTrajectoryPoint
    {
        const value = new Ros1Trajectory_msgsJointTrajectoryPoint();
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
            const decoded = Ros1Duration.readControl(r);
            value.time_from_start = decoded;
        }
        return value;
    }
}

export class Ros1Trajectory_msgsJointTrajectoryPointCodec implements VendorCodec<Ros1Trajectory_msgsJointTrajectoryPoint>
{
    static readonly codecIdentity: string = "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81";
    static readonly maxWireBytes: i32 = 536;

    encodeChecked(value: Ros1Trajectory_msgsJointTrajectoryPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Trajectory_msgsJointTrajectoryPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Trajectory_msgsJointTrajectoryPoint>
    {
        const out = new VendorDecoded<Ros1Trajectory_msgsJointTrajectoryPoint>();
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
        const reader = new Reader(bytes), value = Ros1Trajectory_msgsJointTrajectoryPoint.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Trajectory_msgsJointTrajectoryPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Trajectory_msgsJointTrajectoryPoint() : changetype<Ros1Trajectory_msgsJointTrajectoryPoint>(out.value);
    }
}

/** @brief Complete original trajectory_msgs/JointTrajectory; spellings are published in generation proof. */
export class Ros1Trajectory_msgsJointTrajectory
{
    static readonly maxWireBytes: i32 = 4408;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4408;
    /** @brief Exact native field header, native scalar std_msgs/Header. */
    header: Ros1Std_msgsHeader = new Ros1Std_msgsHeader();
    /** @brief Exact native field joint_names, native scalar string. */
    joint_names: Array < string >= new Array<string>();
    /** @brief Exact native field points, native scalar trajectory_msgs/JointTrajectoryPoint. */
    points: Array < Ros1Trajectory_msgsJointTrajectoryPoint >= new Array<Ros1Trajectory_msgsJointTrajectoryPoint>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 4408 - n)
                return -90;
            n += child;
            if(n > 4408)
                return -90;
        }
        {
            if(this.joint_names.length > 16)
                return -22;
            if(4 > 4408 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_names.length; ++i)
            {
                if(!validUnicode(this.joint_names[i]) || this.joint_names[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.joint_names[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 4408 - n)
                    return -90;
                n += 4 + size;
                if(n > 4408)
                    return -90;
            }
        }
        {
            if(this.points.length > 4)
                return -22;
            if(4 > 4408 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.points.length; ++i)
            {
                const child = this.points[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 4408 - n)
                    return -90;
                n += child;
                if(n > 4408)
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
    static readControl(r: Reader): Ros1Trajectory_msgsJointTrajectory
    {
        const value = new Ros1Trajectory_msgsJointTrajectory();
        {
            const decoded = Ros1Std_msgsHeader.readControl(r);
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
            value.points = new Array<Ros1Trajectory_msgsJointTrajectoryPoint>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Trajectory_msgsJointTrajectoryPoint.readControl(r);
                value.points.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Trajectory_msgsJointTrajectoryCodec implements VendorCodec<Ros1Trajectory_msgsJointTrajectory>
{
    static readonly codecIdentity: string = "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9";
    static readonly maxWireBytes: i32 = 4408;

    encodeChecked(value: Ros1Trajectory_msgsJointTrajectory): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Trajectory_msgsJointTrajectory): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Trajectory_msgsJointTrajectory>
    {
        const out = new VendorDecoded<Ros1Trajectory_msgsJointTrajectory>();
        if(bytes.length > 4408)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Trajectory_msgsJointTrajectory.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Trajectory_msgsJointTrajectory
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Trajectory_msgsJointTrajectory() : changetype<Ros1Trajectory_msgsJointTrajectory>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/JointTrajectoryCommand; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsJointTrajectoryCommand
{
    static readonly maxWireBytes: i32 = 4672;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4672;
    /** @brief Exact native field cmd_type, native scalar string. */
    cmd_type: string = "";
    /** @brief Exact native field name, native scalar string. */
    name: string = "";
    /** @brief Exact native field traj, native scalar trajectory_msgs/JointTrajectory. */
    traj: Ros1Trajectory_msgsJointTrajectory = new Ros1Trajectory_msgsJointTrajectory();

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
            if(4 + size > 4672 - n)
                return -90;
            n += 4 + size;
            if(n > 4672)
                return -90;
        }
        {
            if(!validUnicode(this.name) || this.name.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.name);
            if(size > 128)
                return -22;
            if(4 + size > 4672 - n)
                return -90;
            n += 4 + size;
            if(n > 4672)
                return -90;
        }
        {
            const child = this.traj.wireSize();
            if(child < 0)
                return child;
            if(child > 4672 - n)
                return -90;
            n += child;
            if(n > 4672)
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsJointTrajectoryCommand
    {
        const value = new Ros1Interbotix_xs_msgsJointTrajectoryCommand();
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
            const decoded = Ros1Trajectory_msgsJointTrajectory.readControl(r);
            value.traj = decoded;
        }
        return value;
    }
}

export class Ros1Interbotix_xs_msgsJointTrajectoryCommandCodec implements VendorCodec<Ros1Interbotix_xs_msgsJointTrajectoryCommand>
{
    static readonly codecIdentity: string = "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7";
    static readonly maxWireBytes: i32 = 4672;

    encodeChecked(value: Ros1Interbotix_xs_msgsJointTrajectoryCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsJointTrajectoryCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsJointTrajectoryCommand>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsJointTrajectoryCommand>();
        if(bytes.length > 4672)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 32)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsJointTrajectoryCommand.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsJointTrajectoryCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsJointTrajectoryCommand() : changetype<Ros1Interbotix_xs_msgsJointTrajectoryCommand>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/LocobotJoy; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsLocobotJoy
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
    static readonly GRIPPER_OPEN: i8 = 19;
    static readonly GRIPPER_CLOSE: i8 = 20;
    static readonly HOME_POSE: i8 = 21;
    static readonly SLEEP_POSE: i8 = 22;
    static readonly SPEED_INC: i8 = 23;
    static readonly SPEED_DEC: i8 = 24;
    static readonly SPEED_COURSE: i8 = 25;
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsLocobotJoy
    {
        const value = new Ros1Interbotix_xs_msgsLocobotJoy();
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

export class Ros1Interbotix_xs_msgsLocobotJoyCodec implements VendorCodec<Ros1Interbotix_xs_msgsLocobotJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613";
    static readonly maxWireBytes: i32 = 30;

    encodeChecked(value: Ros1Interbotix_xs_msgsLocobotJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsLocobotJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsLocobotJoy>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsLocobotJoy>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsLocobotJoy.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsLocobotJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsLocobotJoy() : changetype<Ros1Interbotix_xs_msgsLocobotJoy>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/MotorGainsRequest; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsMotorGainsRequest
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsMotorGainsRequest
    {
        const value = new Ros1Interbotix_xs_msgsMotorGainsRequest();
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

export class Ros1Interbotix_xs_msgsMotorGainsRequestCodec implements VendorCodec<Ros1Interbotix_xs_msgsMotorGainsRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009";
    static readonly maxWireBytes: i32 = 292;

    encodeChecked(value: Ros1Interbotix_xs_msgsMotorGainsRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsMotorGainsRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsMotorGainsRequest>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsMotorGainsRequest>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsMotorGainsRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsMotorGainsRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsMotorGainsRequest() : changetype<Ros1Interbotix_xs_msgsMotorGainsRequest>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/MotorGainsResponse; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsMotorGainsResponse
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsMotorGainsResponse
    {
        const value = new Ros1Interbotix_xs_msgsMotorGainsResponse();
        return value;
    }
}

export class Ros1Interbotix_xs_msgsMotorGainsResponseCodec implements VendorCodec<Ros1Interbotix_xs_msgsMotorGainsResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Interbotix_xs_msgsMotorGainsResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsMotorGainsResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsMotorGainsResponse>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsMotorGainsResponse>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsMotorGainsResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsMotorGainsResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsMotorGainsResponse() : changetype<Ros1Interbotix_xs_msgsMotorGainsResponse>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/OperatingModesRequest; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsOperatingModesRequest
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsOperatingModesRequest
    {
        const value = new Ros1Interbotix_xs_msgsOperatingModesRequest();
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

export class Ros1Interbotix_xs_msgsOperatingModesRequestCodec implements VendorCodec<Ros1Interbotix_xs_msgsOperatingModesRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3";
    static readonly maxWireBytes: i32 = 536;

    encodeChecked(value: Ros1Interbotix_xs_msgsOperatingModesRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsOperatingModesRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsOperatingModesRequest>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsOperatingModesRequest>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsOperatingModesRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsOperatingModesRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsOperatingModesRequest() : changetype<Ros1Interbotix_xs_msgsOperatingModesRequest>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/OperatingModesResponse; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsOperatingModesResponse
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsOperatingModesResponse
    {
        const value = new Ros1Interbotix_xs_msgsOperatingModesResponse();
        return value;
    }
}

export class Ros1Interbotix_xs_msgsOperatingModesResponseCodec implements VendorCodec<Ros1Interbotix_xs_msgsOperatingModesResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Interbotix_xs_msgsOperatingModesResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsOperatingModesResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsOperatingModesResponse>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsOperatingModesResponse>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsOperatingModesResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsOperatingModesResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsOperatingModesResponse() : changetype<Ros1Interbotix_xs_msgsOperatingModesResponse>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/RebootRequest; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsRebootRequest
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsRebootRequest
    {
        const value = new Ros1Interbotix_xs_msgsRebootRequest();
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

export class Ros1Interbotix_xs_msgsRebootRequestCodec implements VendorCodec<Ros1Interbotix_xs_msgsRebootRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a";
    static readonly maxWireBytes: i32 = 266;

    encodeChecked(value: Ros1Interbotix_xs_msgsRebootRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsRebootRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsRebootRequest>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsRebootRequest>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsRebootRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsRebootRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsRebootRequest() : changetype<Ros1Interbotix_xs_msgsRebootRequest>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/RebootResponse; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsRebootResponse
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsRebootResponse
    {
        const value = new Ros1Interbotix_xs_msgsRebootResponse();
        return value;
    }
}

export class Ros1Interbotix_xs_msgsRebootResponseCodec implements VendorCodec<Ros1Interbotix_xs_msgsRebootResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Interbotix_xs_msgsRebootResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsRebootResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsRebootResponse>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsRebootResponse>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsRebootResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsRebootResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsRebootResponse() : changetype<Ros1Interbotix_xs_msgsRebootResponse>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/RegisterValuesRequest; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsRegisterValuesRequest
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsRegisterValuesRequest
    {
        const value = new Ros1Interbotix_xs_msgsRegisterValuesRequest();
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

export class Ros1Interbotix_xs_msgsRegisterValuesRequestCodec implements VendorCodec<Ros1Interbotix_xs_msgsRegisterValuesRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a";
    static readonly maxWireBytes: i32 = 400;

    encodeChecked(value: Ros1Interbotix_xs_msgsRegisterValuesRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsRegisterValuesRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsRegisterValuesRequest>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsRegisterValuesRequest>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsRegisterValuesRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsRegisterValuesRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsRegisterValuesRequest() : changetype<Ros1Interbotix_xs_msgsRegisterValuesRequest>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/RegisterValuesResponse; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsRegisterValuesResponse
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsRegisterValuesResponse
    {
        const value = new Ros1Interbotix_xs_msgsRegisterValuesResponse();
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

export class Ros1Interbotix_xs_msgsRegisterValuesResponseCodec implements VendorCodec<Ros1Interbotix_xs_msgsRegisterValuesResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659";
    static readonly maxWireBytes: i32 = 68;

    encodeChecked(value: Ros1Interbotix_xs_msgsRegisterValuesResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsRegisterValuesResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsRegisterValuesResponse>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsRegisterValuesResponse>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsRegisterValuesResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsRegisterValuesResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsRegisterValuesResponse() : changetype<Ros1Interbotix_xs_msgsRegisterValuesResponse>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/RobotInfoRequest; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsRobotInfoRequest
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsRobotInfoRequest
    {
        const value = new Ros1Interbotix_xs_msgsRobotInfoRequest();
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

export class Ros1Interbotix_xs_msgsRobotInfoRequestCodec implements VendorCodec<Ros1Interbotix_xs_msgsRobotInfoRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176";
    static readonly maxWireBytes: i32 = 264;

    encodeChecked(value: Ros1Interbotix_xs_msgsRobotInfoRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsRobotInfoRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsRobotInfoRequest>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsRobotInfoRequest>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsRobotInfoRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsRobotInfoRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsRobotInfoRequest() : changetype<Ros1Interbotix_xs_msgsRobotInfoRequest>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/RobotInfoResponse; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsRobotInfoResponse
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsRobotInfoResponse
    {
        const value = new Ros1Interbotix_xs_msgsRobotInfoResponse();
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

export class Ros1Interbotix_xs_msgsRobotInfoResponseCodec implements VendorCodec<Ros1Interbotix_xs_msgsRobotInfoResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d";
    static readonly maxWireBytes: i32 = 18474;

    encodeChecked(value: Ros1Interbotix_xs_msgsRobotInfoResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsRobotInfoResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsRobotInfoResponse>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsRobotInfoResponse>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsRobotInfoResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsRobotInfoResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsRobotInfoResponse() : changetype<Ros1Interbotix_xs_msgsRobotInfoResponse>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/TorqueEnableRequest; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsTorqueEnableRequest
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsTorqueEnableRequest
    {
        const value = new Ros1Interbotix_xs_msgsTorqueEnableRequest();
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

export class Ros1Interbotix_xs_msgsTorqueEnableRequestCodec implements VendorCodec<Ros1Interbotix_xs_msgsTorqueEnableRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a";
    static readonly maxWireBytes: i32 = 265;

    encodeChecked(value: Ros1Interbotix_xs_msgsTorqueEnableRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsTorqueEnableRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsTorqueEnableRequest>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsTorqueEnableRequest>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsTorqueEnableRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsTorqueEnableRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsTorqueEnableRequest() : changetype<Ros1Interbotix_xs_msgsTorqueEnableRequest>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/TorqueEnableResponse; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsTorqueEnableResponse
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsTorqueEnableResponse
    {
        const value = new Ros1Interbotix_xs_msgsTorqueEnableResponse();
        return value;
    }
}

export class Ros1Interbotix_xs_msgsTorqueEnableResponseCodec implements VendorCodec<Ros1Interbotix_xs_msgsTorqueEnableResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Interbotix_xs_msgsTorqueEnableResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsTorqueEnableResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsTorqueEnableResponse>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsTorqueEnableResponse>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsTorqueEnableResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsTorqueEnableResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsTorqueEnableResponse() : changetype<Ros1Interbotix_xs_msgsTorqueEnableResponse>(out.value);
    }
}

/** @brief Complete original interbotix_xs_msgs/TurretJoy; spellings are published in generation proof. */
export class Ros1Interbotix_xs_msgsTurretJoy
{
    static readonly PAN_CCW: i8 = 1;
    static readonly PAN_CW: i8 = 2;
    static readonly TILT_UP: i8 = 3;
    static readonly TILT_DOWN: i8 = 4;
    static readonly PAN_TILT_HOME: i8 = 5;
    static readonly SPEED_INC: i8 = 6;
    static readonly SPEED_DEC: i8 = 7;
    static readonly SPEED_COURSE: i8 = 8;
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
    static readControl(r: Reader): Ros1Interbotix_xs_msgsTurretJoy
    {
        const value = new Ros1Interbotix_xs_msgsTurretJoy();
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

export class Ros1Interbotix_xs_msgsTurretJoyCodec implements VendorCodec<Ros1Interbotix_xs_msgsTurretJoy>
{
    static readonly codecIdentity: string = "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros1Interbotix_xs_msgsTurretJoy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Interbotix_xs_msgsTurretJoy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Interbotix_xs_msgsTurretJoy>
    {
        const out = new VendorDecoded<Ros1Interbotix_xs_msgsTurretJoy>();
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
        const reader = new Reader(bytes), value = Ros1Interbotix_xs_msgsTurretJoy.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Interbotix_xs_msgsTurretJoy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Interbotix_xs_msgsTurretJoy() : changetype<Ros1Interbotix_xs_msgsTurretJoy>(out.value);
    }
}

/** @brief Complete original xarm_msgs/ClearErrRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsClearErrRequest
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
    static readControl(r: Reader): Ros1Xarm_msgsClearErrRequest
    {
        const value = new Ros1Xarm_msgsClearErrRequest();
        return value;
    }
}

export class Ros1Xarm_msgsClearErrRequestCodec implements VendorCodec<Ros1Xarm_msgsClearErrRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Xarm_msgsClearErrRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsClearErrRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsClearErrRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsClearErrRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsClearErrRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsClearErrRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsClearErrRequest() : changetype<Ros1Xarm_msgsClearErrRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/ClearErrResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsClearErrResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsClearErrResponse
    {
        const value = new Ros1Xarm_msgsClearErrResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsClearErrResponseCodec implements VendorCodec<Ros1Xarm_msgsClearErrResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsClearErrResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsClearErrResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsClearErrResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsClearErrResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsClearErrResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsClearErrResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsClearErrResponse() : changetype<Ros1Xarm_msgsClearErrResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/ConfigToolModbusRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsConfigToolModbusRequest
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field baud_rate, native scalar int32. */
    baud_rate: i32 = 0;
    /** @brief Exact native field timeout_ms, native scalar int32. */
    timeout_ms: i32 = 0;

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
        w.integer(<u64>this.baud_rate, 4);
        w.integer(<u64>this.timeout_ms, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsConfigToolModbusRequest
    {
        const value = new Ros1Xarm_msgsConfigToolModbusRequest();
        {
            const decoded = <i32>r.integer(4);
            value.baud_rate = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.timeout_ms = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsConfigToolModbusRequestCodec implements VendorCodec<Ros1Xarm_msgsConfigToolModbusRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Xarm_msgsConfigToolModbusRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsConfigToolModbusRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsConfigToolModbusRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsConfigToolModbusRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsConfigToolModbusRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsConfigToolModbusRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsConfigToolModbusRequest() : changetype<Ros1Xarm_msgsConfigToolModbusRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/ConfigToolModbusResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsConfigToolModbusResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
                return -90;
        }
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
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
        w.text(this.message);
        w.integer(<u64>this.ret, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsConfigToolModbusResponse
    {
        const value = new Ros1Xarm_msgsConfigToolModbusResponse();
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
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsConfigToolModbusResponseCodec implements VendorCodec<Ros1Xarm_msgsConfigToolModbusResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsConfigToolModbusResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsConfigToolModbusResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsConfigToolModbusResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsConfigToolModbusResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsConfigToolModbusResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsConfigToolModbusResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsConfigToolModbusResponse() : changetype<Ros1Xarm_msgsConfigToolModbusResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GetAnalogIORequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsGetAnalogIORequest
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** @brief Exact native field port_num, native scalar int16. */
    port_num: i16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 2 - n)
                return -90;
            n += 2;
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
        w.integer(<u64>this.port_num, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGetAnalogIORequest
    {
        const value = new Ros1Xarm_msgsGetAnalogIORequest();
        {
            const decoded = <i16>r.integer(2);
            value.port_num = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsGetAnalogIORequestCodec implements VendorCodec<Ros1Xarm_msgsGetAnalogIORequest>
{
    static readonly codecIdentity: string = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
    static readonly maxWireBytes: i32 = 2;

    encodeChecked(value: Ros1Xarm_msgsGetAnalogIORequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGetAnalogIORequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetAnalogIORequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetAnalogIORequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGetAnalogIORequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGetAnalogIORequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetAnalogIORequest() : changetype<Ros1Xarm_msgsGetAnalogIORequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GetAnalogIOResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsGetAnalogIOResponse
{
    static readonly maxWireBytes: i32 = 138;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 138;
    /** @brief Exact native field analog_value, native scalar float32. */
    analog_value: f32 = 0;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.analog_value))
                return -22;
            if(4 > 138 - n)
                return -90;
            n += 4;
            if(n > 138)
                return -90;
        }
        {
            if(2 > 138 - n)
                return -90;
            n += 2;
            if(n > 138)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 138 - n)
                return -90;
            n += 4 + size;
            if(n > 138)
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
        w.integer(<u64>reinterpret<u32>(this.analog_value), 4);
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGetAnalogIOResponse
    {
        const value = new Ros1Xarm_msgsGetAnalogIOResponse();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.analog_value = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsGetAnalogIOResponseCodec implements VendorCodec<Ros1Xarm_msgsGetAnalogIOResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968";
    static readonly maxWireBytes: i32 = 138;

    encodeChecked(value: Ros1Xarm_msgsGetAnalogIOResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGetAnalogIOResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetAnalogIOResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetAnalogIOResponse>();
        if(bytes.length > 138)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 10)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGetAnalogIOResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGetAnalogIOResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetAnalogIOResponse() : changetype<Ros1Xarm_msgsGetAnalogIOResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GetControllerDigitalIORequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsGetControllerDigitalIORequest
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** @brief Exact native field io_num, native scalar int16. */
    io_num: i16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 2 - n)
                return -90;
            n += 2;
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
        w.integer(<u64>this.io_num, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGetControllerDigitalIORequest
    {
        const value = new Ros1Xarm_msgsGetControllerDigitalIORequest();
        {
            const decoded = <i16>r.integer(2);
            value.io_num = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsGetControllerDigitalIORequestCodec implements VendorCodec<Ros1Xarm_msgsGetControllerDigitalIORequest>
{
    static readonly codecIdentity: string = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
    static readonly maxWireBytes: i32 = 2;

    encodeChecked(value: Ros1Xarm_msgsGetControllerDigitalIORequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGetControllerDigitalIORequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetControllerDigitalIORequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetControllerDigitalIORequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGetControllerDigitalIORequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGetControllerDigitalIORequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetControllerDigitalIORequest() : changetype<Ros1Xarm_msgsGetControllerDigitalIORequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GetControllerDigitalIOResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsGetControllerDigitalIOResponse
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field value, native scalar int16. */
    value: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 136 - n)
                return -90;
            n += 2;
            if(n > 136)
                return -90;
        }
        {
            if(2 > 136 - n)
                return -90;
            n += 2;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
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
        w.integer(<u64>this.ret, 2);
        w.integer(<u64>this.value, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGetControllerDigitalIOResponse
    {
        const value = new Ros1Xarm_msgsGetControllerDigitalIOResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.value = decoded;
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

export class Ros1Xarm_msgsGetControllerDigitalIOResponseCodec implements VendorCodec<Ros1Xarm_msgsGetControllerDigitalIOResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3";
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Xarm_msgsGetControllerDigitalIOResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGetControllerDigitalIOResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetControllerDigitalIOResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetControllerDigitalIOResponse>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGetControllerDigitalIOResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGetControllerDigitalIOResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetControllerDigitalIOResponse() : changetype<Ros1Xarm_msgsGetControllerDigitalIOResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GetDigitalIORequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsGetDigitalIORequest
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
    static readControl(r: Reader): Ros1Xarm_msgsGetDigitalIORequest
    {
        const value = new Ros1Xarm_msgsGetDigitalIORequest();
        return value;
    }
}

export class Ros1Xarm_msgsGetDigitalIORequestCodec implements VendorCodec<Ros1Xarm_msgsGetDigitalIORequest>
{
    static readonly codecIdentity: string = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Xarm_msgsGetDigitalIORequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGetDigitalIORequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetDigitalIORequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetDigitalIORequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGetDigitalIORequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGetDigitalIORequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetDigitalIORequest() : changetype<Ros1Xarm_msgsGetDigitalIORequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GetDigitalIOResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsGetDigitalIOResponse
{
    static readonly maxWireBytes: i32 = 142;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 142;
    /** @brief Exact native field digital_1, native scalar int32. */
    digital_1: i32 = 0;
    /** @brief Exact native field digital_2, native scalar int32. */
    digital_2: i32 = 0;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 142 - n)
                return -90;
            n += 4;
            if(n > 142)
                return -90;
        }
        {
            if(4 > 142 - n)
                return -90;
            n += 4;
            if(n > 142)
                return -90;
        }
        {
            if(2 > 142 - n)
                return -90;
            n += 2;
            if(n > 142)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 142 - n)
                return -90;
            n += 4 + size;
            if(n > 142)
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
        w.integer(<u64>this.digital_1, 4);
        w.integer(<u64>this.digital_2, 4);
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGetDigitalIOResponse
    {
        const value = new Ros1Xarm_msgsGetDigitalIOResponse();
        {
            const decoded = <i32>r.integer(4);
            value.digital_1 = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.digital_2 = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsGetDigitalIOResponseCodec implements VendorCodec<Ros1Xarm_msgsGetDigitalIOResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2";
    static readonly maxWireBytes: i32 = 142;

    encodeChecked(value: Ros1Xarm_msgsGetDigitalIOResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGetDigitalIOResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetDigitalIOResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetDigitalIOResponse>();
        if(bytes.length > 142)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 14)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGetDigitalIOResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGetDigitalIOResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetDigitalIOResponse() : changetype<Ros1Xarm_msgsGetDigitalIOResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GetErrRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsGetErrRequest
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
    static readControl(r: Reader): Ros1Xarm_msgsGetErrRequest
    {
        const value = new Ros1Xarm_msgsGetErrRequest();
        return value;
    }
}

export class Ros1Xarm_msgsGetErrRequestCodec implements VendorCodec<Ros1Xarm_msgsGetErrRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Xarm_msgsGetErrRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGetErrRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetErrRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetErrRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGetErrRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGetErrRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetErrRequest() : changetype<Ros1Xarm_msgsGetErrRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GetErrResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsGetErrResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field err, native scalar int16. */
    err: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.err, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGetErrResponse
    {
        const value = new Ros1Xarm_msgsGetErrResponse();
        {
            const decoded = <i16>r.integer(2);
            value.err = decoded;
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

export class Ros1Xarm_msgsGetErrResponseCodec implements VendorCodec<Ros1Xarm_msgsGetErrResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsGetErrResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGetErrResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetErrResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetErrResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGetErrResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGetErrResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetErrResponse() : changetype<Ros1Xarm_msgsGetErrResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GripperConfigRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsGripperConfigRequest
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field pulse_vel, native scalar float32. */
    pulse_vel: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.pulse_vel))
                return -22;
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
        w.integer(<u64>reinterpret<u32>(this.pulse_vel), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGripperConfigRequest
    {
        const value = new Ros1Xarm_msgsGripperConfigRequest();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.pulse_vel = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsGripperConfigRequestCodec implements VendorCodec<Ros1Xarm_msgsGripperConfigRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros1Xarm_msgsGripperConfigRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGripperConfigRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGripperConfigRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGripperConfigRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGripperConfigRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGripperConfigRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGripperConfigRequest() : changetype<Ros1Xarm_msgsGripperConfigRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GripperConfigResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsGripperConfigResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGripperConfigResponse
    {
        const value = new Ros1Xarm_msgsGripperConfigResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsGripperConfigResponseCodec implements VendorCodec<Ros1Xarm_msgsGripperConfigResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsGripperConfigResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGripperConfigResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGripperConfigResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGripperConfigResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGripperConfigResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGripperConfigResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGripperConfigResponse() : changetype<Ros1Xarm_msgsGripperConfigResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GripperMoveRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsGripperMoveRequest
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field pulse_pos, native scalar float32. */
    pulse_pos: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.pulse_pos))
                return -22;
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
        w.integer(<u64>reinterpret<u32>(this.pulse_pos), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGripperMoveRequest
    {
        const value = new Ros1Xarm_msgsGripperMoveRequest();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.pulse_pos = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsGripperMoveRequestCodec implements VendorCodec<Ros1Xarm_msgsGripperMoveRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros1Xarm_msgsGripperMoveRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGripperMoveRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGripperMoveRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGripperMoveRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGripperMoveRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGripperMoveRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGripperMoveRequest() : changetype<Ros1Xarm_msgsGripperMoveRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GripperMoveResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsGripperMoveResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGripperMoveResponse
    {
        const value = new Ros1Xarm_msgsGripperMoveResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsGripperMoveResponseCodec implements VendorCodec<Ros1Xarm_msgsGripperMoveResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsGripperMoveResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGripperMoveResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGripperMoveResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGripperMoveResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGripperMoveResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGripperMoveResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGripperMoveResponse() : changetype<Ros1Xarm_msgsGripperMoveResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GripperStateRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsGripperStateRequest
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
    static readControl(r: Reader): Ros1Xarm_msgsGripperStateRequest
    {
        const value = new Ros1Xarm_msgsGripperStateRequest();
        return value;
    }
}

export class Ros1Xarm_msgsGripperStateRequestCodec implements VendorCodec<Ros1Xarm_msgsGripperStateRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
    static readonly maxWireBytes: i32 = 0;

    encodeChecked(value: Ros1Xarm_msgsGripperStateRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGripperStateRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGripperStateRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGripperStateRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGripperStateRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGripperStateRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGripperStateRequest() : changetype<Ros1Xarm_msgsGripperStateRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/GripperStateResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsGripperStateResponse
{
    static readonly maxWireBytes: i32 = 6;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 6;
    /** @brief Exact native field curr_pos, native scalar float32. */
    curr_pos: f32 = 0;
    /** @brief Exact native field err_code, native scalar int16. */
    err_code: i16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.curr_pos))
                return -22;
            if(4 > 6 - n)
                return -90;
            n += 4;
            if(n > 6)
                return -90;
        }
        {
            if(2 > 6 - n)
                return -90;
            n += 2;
            if(n > 6)
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
        w.integer(<u64>reinterpret<u32>(this.curr_pos), 4);
        w.integer(<u64>this.err_code, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsGripperStateResponse
    {
        const value = new Ros1Xarm_msgsGripperStateResponse();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.curr_pos = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.err_code = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsGripperStateResponseCodec implements VendorCodec<Ros1Xarm_msgsGripperStateResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4";
    static readonly maxWireBytes: i32 = 6;

    encodeChecked(value: Ros1Xarm_msgsGripperStateResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsGripperStateResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGripperStateResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGripperStateResponse>();
        if(bytes.length > 6)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsGripperStateResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsGripperStateResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGripperStateResponse() : changetype<Ros1Xarm_msgsGripperStateResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/IOState; spellings are published in generation proof. */
export class Ros1Xarm_msgsIOState
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** @brief Exact native field digital_1, native scalar int32. */
    digital_1: i32 = 0;
    /** @brief Exact native field digital_2, native scalar int32. */
    digital_2: i32 = 0;
    /** @brief Exact native field analog_1, native scalar float32. */
    analog_1: f32 = 0;
    /** @brief Exact native field analog_2, native scalar float32. */
    analog_2: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.analog_1))
                return -22;
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.analog_2))
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
        w.integer(<u64>this.digital_1, 4);
        w.integer(<u64>this.digital_2, 4);
        w.integer(<u64>reinterpret<u32>(this.analog_1), 4);
        w.integer(<u64>reinterpret<u32>(this.analog_2), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsIOState
    {
        const value = new Ros1Xarm_msgsIOState();
        {
            const decoded = <i32>r.integer(4);
            value.digital_1 = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.digital_2 = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.analog_1 = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.analog_2 = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsIOStateCodec implements VendorCodec<Ros1Xarm_msgsIOState>
{
    static readonly codecIdentity: string = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros1Xarm_msgsIOState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsIOState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsIOState>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsIOState>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsIOState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsIOState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsIOState() : changetype<Ros1Xarm_msgsIOState>(out.value);
    }
}

/** @brief Complete original xarm_msgs/MoveRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsMoveRequest
{
    static readonly maxWireBytes: i32 = 84;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 84;
    /** @brief Exact native field pose, native scalar float32. */
    pose: Array < f32 >= new Array<f32>();
    /** @brief Exact native field mvvelo, native scalar float32. */
    mvvelo: f32 = 0;
    /** @brief Exact native field mvacc, native scalar float32. */
    mvacc: f32 = 0;
    /** @brief Exact native field mvtime, native scalar float32. */
    mvtime: f32 = 0;
    /** @brief Exact native field mvradii, native scalar float32. */
    mvradii: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pose.length > 16)
                return -22;
            if(4 > 84 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.pose.length; ++i)
            {
                if(!isFinite(this.pose[i]))
                    return -22;
                if(4 > 84 - n)
                    return -90;
                n += 4;
                if(n > 84)
                    return -90;
            }
        }
        {
            if(!isFinite(this.mvvelo))
                return -22;
            if(4 > 84 - n)
                return -90;
            n += 4;
            if(n > 84)
                return -90;
        }
        {
            if(!isFinite(this.mvacc))
                return -22;
            if(4 > 84 - n)
                return -90;
            n += 4;
            if(n > 84)
                return -90;
        }
        {
            if(!isFinite(this.mvtime))
                return -22;
            if(4 > 84 - n)
                return -90;
            n += 4;
            if(n > 84)
                return -90;
        }
        {
            if(!isFinite(this.mvradii))
                return -22;
            if(4 > 84 - n)
                return -90;
            n += 4;
            if(n > 84)
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
        w.u32(<u32>this.pose.length);
        for(let i = 0; i < this.pose.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.pose[i]), 4);
        }
        w.integer(<u64>reinterpret<u32>(this.mvvelo), 4);
        w.integer(<u64>reinterpret<u32>(this.mvacc), 4);
        w.integer(<u64>reinterpret<u32>(this.mvtime), 4);
        w.integer(<u64>reinterpret<u32>(this.mvradii), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsMoveRequest
    {
        const value = new Ros1Xarm_msgsMoveRequest();
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.pose = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pose.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.mvvelo = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.mvacc = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.mvtime = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.mvradii = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsMoveRequestCodec implements VendorCodec<Ros1Xarm_msgsMoveRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5";
    static readonly maxWireBytes: i32 = 84;

    encodeChecked(value: Ros1Xarm_msgsMoveRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsMoveRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsMoveRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsMoveRequest>();
        if(bytes.length > 84)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsMoveRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsMoveRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsMoveRequest() : changetype<Ros1Xarm_msgsMoveRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/MoveResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsMoveResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsMoveResponse
    {
        const value = new Ros1Xarm_msgsMoveResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsMoveResponseCodec implements VendorCodec<Ros1Xarm_msgsMoveResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsMoveResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsMoveResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsMoveResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsMoveResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsMoveResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsMoveResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsMoveResponse() : changetype<Ros1Xarm_msgsMoveResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/RobotMsg; spellings are published in generation proof. */
export class Ros1Xarm_msgsRobotMsg
{
    static readonly maxWireBytes: i32 = 130;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 130;
    /** @brief Exact native field state, native scalar int16. */
    state: i16 = 0;
    /** @brief Exact native field mode, native scalar int16. */
    mode: i16 = 0;
    /** @brief Exact native field cmdnum, native scalar int16. */
    cmdnum: i16 = 0;
    /** @brief Exact native field mt_brake, native scalar int16. */
    mt_brake: i16 = 0;
    /** @brief Exact native field mt_able, native scalar int16. */
    mt_able: i16 = 0;
    /** @brief Exact native field err, native scalar int16. */
    err: i16 = 0;
    /** @brief Exact native field warn, native scalar int16. */
    warn: i16 = 0;
    /** @brief Exact native field angle, native scalar float32. */
    angle: Array < f32 >= new Array<f32>();
    /** @brief Exact native field pose, native scalar float32. */
    pose: Array < f32 >= new Array<f32>();
    /** @brief Exact native field offset, native scalar float32. */
    offset: Array < f32 >= new Array<f32>();

    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.pose.push(0);
        for(let i = 0; i < 6; ++i)
            this.offset.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 130 - n)
                return -90;
            n += 2;
            if(n > 130)
                return -90;
        }
        {
            if(2 > 130 - n)
                return -90;
            n += 2;
            if(n > 130)
                return -90;
        }
        {
            if(2 > 130 - n)
                return -90;
            n += 2;
            if(n > 130)
                return -90;
        }
        {
            if(2 > 130 - n)
                return -90;
            n += 2;
            if(n > 130)
                return -90;
        }
        {
            if(2 > 130 - n)
                return -90;
            n += 2;
            if(n > 130)
                return -90;
        }
        {
            if(2 > 130 - n)
                return -90;
            n += 2;
            if(n > 130)
                return -90;
        }
        {
            if(2 > 130 - n)
                return -90;
            n += 2;
            if(n > 130)
                return -90;
        }
        {
            if(this.angle.length > 16)
                return -22;
            if(4 > 130 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.angle.length; ++i)
            {
                if(!isFinite(this.angle[i]))
                    return -22;
                if(4 > 130 - n)
                    return -90;
                n += 4;
                if(n > 130)
                    return -90;
            }
        }
        {
            if(this.pose.length != 6)
                return -22;
            for(let i = 0; i < this.pose.length; ++i)
            {
                if(!isFinite(this.pose[i]))
                    return -22;
                if(4 > 130 - n)
                    return -90;
                n += 4;
                if(n > 130)
                    return -90;
            }
        }
        {
            if(this.offset.length != 6)
                return -22;
            for(let i = 0; i < this.offset.length; ++i)
            {
                if(!isFinite(this.offset[i]))
                    return -22;
                if(4 > 130 - n)
                    return -90;
                n += 4;
                if(n > 130)
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
        w.integer(<u64>this.state, 2);
        w.integer(<u64>this.mode, 2);
        w.integer(<u64>this.cmdnum, 2);
        w.integer(<u64>this.mt_brake, 2);
        w.integer(<u64>this.mt_able, 2);
        w.integer(<u64>this.err, 2);
        w.integer(<u64>this.warn, 2);
        w.u32(<u32>this.angle.length);
        for(let i = 0; i < this.angle.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.angle[i]), 4);
        }
        for(let i = 0; i < this.pose.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.pose[i]), 4);
        }
        for(let i = 0; i < this.offset.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.offset[i]), 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsRobotMsg
    {
        const value = new Ros1Xarm_msgsRobotMsg();
        {
            const decoded = <i16>r.integer(2);
            value.state = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.mode = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.cmdnum = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.mt_brake = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.mt_able = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.err = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.warn = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.angle = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.angle.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.pose = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pose.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.offset = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.offset.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Xarm_msgsRobotMsgCodec implements VendorCodec<Ros1Xarm_msgsRobotMsg>
{
    static readonly codecIdentity: string = "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41";
    static readonly maxWireBytes: i32 = 130;

    encodeChecked(value: Ros1Xarm_msgsRobotMsg): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsRobotMsg): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsRobotMsg>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsRobotMsg>();
        if(bytes.length > 130)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 66)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsRobotMsg.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsRobotMsg
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsRobotMsg() : changetype<Ros1Xarm_msgsRobotMsg>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetAxisRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetAxisRequest
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field id, native scalar int16. */
    id: i16 = 0;
    /** @brief Exact native field data, native scalar int16. */
    data: i16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 4 - n)
                return -90;
            n += 2;
            if(n > 4)
                return -90;
        }
        {
            if(2 > 4 - n)
                return -90;
            n += 2;
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
        w.integer(<u64>this.id, 2);
        w.integer(<u64>this.data, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetAxisRequest
    {
        const value = new Ros1Xarm_msgsSetAxisRequest();
        {
            const decoded = <i16>r.integer(2);
            value.id = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.data = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsSetAxisRequestCodec implements VendorCodec<Ros1Xarm_msgsSetAxisRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros1Xarm_msgsSetAxisRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetAxisRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetAxisRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetAxisRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetAxisRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetAxisRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetAxisRequest() : changetype<Ros1Xarm_msgsSetAxisRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetAxisResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetAxisResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetAxisResponse
    {
        const value = new Ros1Xarm_msgsSetAxisResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsSetAxisResponseCodec implements VendorCodec<Ros1Xarm_msgsSetAxisResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsSetAxisResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetAxisResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetAxisResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetAxisResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetAxisResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetAxisResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetAxisResponse() : changetype<Ros1Xarm_msgsSetAxisResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetDigitalIORequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetDigitalIORequest
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field io_num, native scalar int16. */
    io_num: i16 = 0;
    /** @brief Exact native field value, native scalar int16. */
    value: i16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 4 - n)
                return -90;
            n += 2;
            if(n > 4)
                return -90;
        }
        {
            if(2 > 4 - n)
                return -90;
            n += 2;
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
        w.integer(<u64>this.io_num, 2);
        w.integer(<u64>this.value, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetDigitalIORequest
    {
        const value = new Ros1Xarm_msgsSetDigitalIORequest();
        {
            const decoded = <i16>r.integer(2);
            value.io_num = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsSetDigitalIORequestCodec implements VendorCodec<Ros1Xarm_msgsSetDigitalIORequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros1Xarm_msgsSetDigitalIORequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetDigitalIORequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetDigitalIORequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetDigitalIORequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetDigitalIORequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetDigitalIORequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetDigitalIORequest() : changetype<Ros1Xarm_msgsSetDigitalIORequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetDigitalIOResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetDigitalIOResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetDigitalIOResponse
    {
        const value = new Ros1Xarm_msgsSetDigitalIOResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsSetDigitalIOResponseCodec implements VendorCodec<Ros1Xarm_msgsSetDigitalIOResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsSetDigitalIOResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetDigitalIOResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetDigitalIOResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetDigitalIOResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetDigitalIOResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetDigitalIOResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetDigitalIOResponse() : changetype<Ros1Xarm_msgsSetDigitalIOResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetInt16Request; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetInt16Request
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** @brief Exact native field data, native scalar int16. */
    data: i16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 2 - n)
                return -90;
            n += 2;
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
        w.integer(<u64>this.data, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetInt16Request
    {
        const value = new Ros1Xarm_msgsSetInt16Request();
        {
            const decoded = <i16>r.integer(2);
            value.data = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsSetInt16RequestCodec implements VendorCodec<Ros1Xarm_msgsSetInt16Request>
{
    static readonly codecIdentity: string = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
    static readonly maxWireBytes: i32 = 2;

    encodeChecked(value: Ros1Xarm_msgsSetInt16Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetInt16Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetInt16Request>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetInt16Request>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetInt16Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetInt16Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetInt16Request() : changetype<Ros1Xarm_msgsSetInt16Request>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetInt16Response; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetInt16Response
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetInt16Response
    {
        const value = new Ros1Xarm_msgsSetInt16Response();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsSetInt16ResponseCodec implements VendorCodec<Ros1Xarm_msgsSetInt16Response>
{
    static readonly codecIdentity: string = "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsSetInt16Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetInt16Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetInt16Response>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetInt16Response>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetInt16Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetInt16Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetInt16Response() : changetype<Ros1Xarm_msgsSetInt16Response>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetLoadRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetLoadRequest
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** @brief Exact native field mass, native scalar float32. */
    mass: f32 = 0;
    /** @brief Exact native field xc, native scalar float32. */
    xc: f32 = 0;
    /** @brief Exact native field yc, native scalar float32. */
    yc: f32 = 0;
    /** @brief Exact native field zc, native scalar float32. */
    zc: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.mass))
                return -22;
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.xc))
                return -22;
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.yc))
                return -22;
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(!isFinite(this.zc))
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
        w.integer(<u64>reinterpret<u32>(this.mass), 4);
        w.integer(<u64>reinterpret<u32>(this.xc), 4);
        w.integer(<u64>reinterpret<u32>(this.yc), 4);
        w.integer(<u64>reinterpret<u32>(this.zc), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetLoadRequest
    {
        const value = new Ros1Xarm_msgsSetLoadRequest();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.mass = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.xc = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.yc = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.zc = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsSetLoadRequestCodec implements VendorCodec<Ros1Xarm_msgsSetLoadRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros1Xarm_msgsSetLoadRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetLoadRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetLoadRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetLoadRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetLoadRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetLoadRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetLoadRequest() : changetype<Ros1Xarm_msgsSetLoadRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetLoadResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetLoadResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetLoadResponse
    {
        const value = new Ros1Xarm_msgsSetLoadResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsSetLoadResponseCodec implements VendorCodec<Ros1Xarm_msgsSetLoadResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsSetLoadResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetLoadResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetLoadResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetLoadResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetLoadResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetLoadResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetLoadResponse() : changetype<Ros1Xarm_msgsSetLoadResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetToolModbusRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetToolModbusRequest
{
    static readonly maxWireBytes: i32 = 262;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 262;
    /** @brief Exact native field send_data, native scalar uint8. */
    send_data: Array < u8 >= new Array<u8>();
    /** @brief Exact native field respond_len, native scalar int16. */
    respond_len: i16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.send_data.length > 256)
                return -22;
            if(4 > 262 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.send_data.length; ++i)
            {
                if(1 > 262 - n)
                    return -90;
                n += 1;
                if(n > 262)
                    return -90;
            }
        }
        {
            if(2 > 262 - n)
                return -90;
            n += 2;
            if(n > 262)
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
        w.u32(<u32>this.send_data.length);
        for(let i = 0; i < this.send_data.length; ++i)
        {
            w.integer(<u64>this.send_data[i], 1);
        }
        w.integer(<u64>this.respond_len, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetToolModbusRequest
    {
        const value = new Ros1Xarm_msgsSetToolModbusRequest();
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.send_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.send_data.push(decoded);
            }
        }
        {
            const decoded = <i16>r.integer(2);
            value.respond_len = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsSetToolModbusRequestCodec implements VendorCodec<Ros1Xarm_msgsSetToolModbusRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a";
    static readonly maxWireBytes: i32 = 262;

    encodeChecked(value: Ros1Xarm_msgsSetToolModbusRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetToolModbusRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetToolModbusRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetToolModbusRequest>();
        if(bytes.length > 262)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetToolModbusRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetToolModbusRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetToolModbusRequest() : changetype<Ros1Xarm_msgsSetToolModbusRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/SetToolModbusResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsSetToolModbusResponse
{
    static readonly maxWireBytes: i32 = 262;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 262;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field respond_data, native scalar uint8. */
    respond_data: Array < u8 >= new Array<u8>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 262 - n)
                return -90;
            n += 2;
            if(n > 262)
                return -90;
        }
        {
            if(this.respond_data.length > 256)
                return -22;
            if(4 > 262 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.respond_data.length; ++i)
            {
                if(1 > 262 - n)
                    return -90;
                n += 1;
                if(n > 262)
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
        w.integer(<u64>this.ret, 2);
        w.u32(<u32>this.respond_data.length);
        for(let i = 0; i < this.respond_data.length; ++i)
        {
            w.integer(<u64>this.respond_data[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsSetToolModbusResponse
    {
        const value = new Ros1Xarm_msgsSetToolModbusResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.respond_data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.respond_data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Xarm_msgsSetToolModbusResponseCodec implements VendorCodec<Ros1Xarm_msgsSetToolModbusResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15";
    static readonly maxWireBytes: i32 = 262;

    encodeChecked(value: Ros1Xarm_msgsSetToolModbusResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsSetToolModbusResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetToolModbusResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetToolModbusResponse>();
        if(bytes.length > 262)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsSetToolModbusResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsSetToolModbusResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetToolModbusResponse() : changetype<Ros1Xarm_msgsSetToolModbusResponse>(out.value);
    }
}

/** @brief Complete original xarm_msgs/TCPOffsetRequest; spellings are published in generation proof. */
export class Ros1Xarm_msgsTCPOffsetRequest
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /** @brief Exact native field x, native scalar float32. */
    x: f32 = 0;
    /** @brief Exact native field y, native scalar float32. */
    y: f32 = 0;
    /** @brief Exact native field z, native scalar float32. */
    z: f32 = 0;
    /** @brief Exact native field roll, native scalar float32. */
    roll: f32 = 0;
    /** @brief Exact native field pitch, native scalar float32. */
    pitch: f32 = 0;
    /** @brief Exact native field yaw, native scalar float32. */
    yaw: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.roll))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.pitch))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.yaw))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
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
        w.integer(<u64>reinterpret<u32>(this.x), 4);
        w.integer(<u64>reinterpret<u32>(this.y), 4);
        w.integer(<u64>reinterpret<u32>(this.z), 4);
        w.integer(<u64>reinterpret<u32>(this.roll), 4);
        w.integer(<u64>reinterpret<u32>(this.pitch), 4);
        w.integer(<u64>reinterpret<u32>(this.yaw), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsTCPOffsetRequest
    {
        const value = new Ros1Xarm_msgsTCPOffsetRequest();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.roll = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.pitch = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.yaw = decoded;
        }
        return value;
    }
}

export class Ros1Xarm_msgsTCPOffsetRequestCodec implements VendorCodec<Ros1Xarm_msgsTCPOffsetRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros1Xarm_msgsTCPOffsetRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsTCPOffsetRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsTCPOffsetRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsTCPOffsetRequest>();
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
        const reader = new Reader(bytes), value = Ros1Xarm_msgsTCPOffsetRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsTCPOffsetRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsTCPOffsetRequest() : changetype<Ros1Xarm_msgsTCPOffsetRequest>(out.value);
    }
}

/** @brief Complete original xarm_msgs/TCPOffsetResponse; spellings are published in generation proof. */
export class Ros1Xarm_msgsTCPOffsetResponse
{
    static readonly maxWireBytes: i32 = 134;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 134;
    /** @brief Exact native field ret, native scalar int16. */
    ret: i16 = 0;
    /** @brief Exact native field message, native scalar string. */
    message: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 134 - n)
                return -90;
            n += 2;
            if(n > 134)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 128)
                return -22;
            if(4 + size > 134 - n)
                return -90;
            n += 4 + size;
            if(n > 134)
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
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Xarm_msgsTCPOffsetResponse
    {
        const value = new Ros1Xarm_msgsTCPOffsetResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
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

export class Ros1Xarm_msgsTCPOffsetResponseCodec implements VendorCodec<Ros1Xarm_msgsTCPOffsetResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773";
    static readonly maxWireBytes: i32 = 134;

    encodeChecked(value: Ros1Xarm_msgsTCPOffsetResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Xarm_msgsTCPOffsetResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsTCPOffsetResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsTCPOffsetResponse>();
        if(bytes.length > 134)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 6)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_msgsTCPOffsetResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Xarm_msgsTCPOffsetResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsTCPOffsetResponse() : changetype<Ros1Xarm_msgsTCPOffsetResponse>(out.value);
    }
}
