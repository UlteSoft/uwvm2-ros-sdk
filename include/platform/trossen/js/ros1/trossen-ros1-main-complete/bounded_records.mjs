/**
 * @brief Generated bounded-v2 canonical codecs. No ROS, filesystem or network imports.
 * Records are ordinary owned values. Decode throws before exposing malformed bytes;
 * encode validates the complete value before allocating its one wire output.
 * 64-bit integers remain BigInt. Strings are strict UTF-8 with no embedded NUL.
 * Owned Service transport is a separate explicit raw12 adapter, not legacy RPC.
 */
const utf8Encoder = new TextEncoder(), utf8Decoder = new TextDecoder("utf-8", {fatal : true, ignoreBOM : true});

export class ControlCodecError extends Error
{
    constructor(code)
    {
        super("invalid original-control canonical value");
        this.code = code;
    }
}

function bad(code = 22)
{
    throw new ControlCodecError(code);
}

const nativeTypedLength = Object.getOwnPropertyDescriptor(Object.getPrototypeOf(Uint8Array.prototype), "length").get, nativeTypedSet = Uint8Array.prototype.set;

function copyRaw(value, bound, code = 22)
{
    if(!(value instanceof Uint8Array))
        bad();
    const n = nativeTypedLength.call(value);
    if(n > bound)
        bad(code);
    const out = new Uint8Array(n);
    nativeTypedSet.call(out, value);
    return out;
}

function addSize(n, m)
{
    if(!Number.isSafeInteger(n) || !Number.isSafeInteger(m) || n < 0 || m < 0 || n > 32768 || m > 32768 - n)
        bad(90);
    return n + m;
}

function textBytes(value, bound)
{
    if(typeof value !== "string" || value.length > bound || value.includes("\0"))
        bad();
    for(let i = 0; i < value.length; ++i)
    {
        const c = value.charCodeAt(i);
        if(c >= 0xd800 && c <= 0xdbff)
        {
            if(++i === value.length)
                bad();
            const d = value.charCodeAt(i);
            if(d < 0xdc00 || d > 0xdfff)
                bad();
        }
        else if(c >= 0xdc00 && c <= 0xdfff)
            bad();
    }
    const b = utf8Encoder.encode(value);
    if(b.length > bound)
        bad();
    return b;
}

function integer(value, width, signed)
{
    if(width === 8)
    {
        if(typeof value !== "bigint" || value < (signed ? -(1n << 63n) : 0n) || value > (signed ? (1n << 63n) - 1n : (1n << 64n) - 1n))
            bad();
    }
    else if(!Number.isInteger(value) || value < (signed ? -(2 ** (width * 8 - 1)) : 0) || value > (signed ? 2 ** (width * 8 - 1) - 1 : 2 ** (width * 8) - 1))
        bad();
}

class Reader
{
    constructor(bytes)
    {
        if(!(bytes instanceof Uint8Array) || bytes.length > 32768)
            bad();
        this.b = bytes;
        this.v = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
        this.at = 0;
    }

    take(n)
    {
        if(!Number.isInteger(n) || n < 0 || n > this.b.length - this.at)
            bad();
        const p = this.at;
        this.at += n;
        return p;
    }

    u32()
    {
        return this.v.getUint32(this.take(4), true);
    }

    text(bound)
    {
        const n = this.u32();
        if(n > bound)
            bad();
        const p = this.take(n);
        let s;
        try
        {
            s = utf8Decoder.decode(this.b.subarray(p, p + n));
        }
        catch
        {
            bad();
        }
        if(s.includes("\0"))
            bad();
        return s;
    }

    raw(bound)
    {
        const n = this.u32();
        if(n > bound)
            bad();
        const p = this.take(n);
        return this.b.slice(p, p + n);
    }
}

class Writer
{
    constructor(size)
    {
        if(size > 32768)
            bad();
        this.b = new Uint8Array(size);
        this.v = new DataView(this.b.buffer);
        this.at = 0;
    }

    text(value, bound)
    {
        const b = textBytes(value, bound);
        this.v.setUint32(this.at, b.length, true);
        this.at += 4;
        this.b.set(b, this.at);
        this.at += b.length;
    }

    raw(value)
    {
        this.v.setUint32(this.at, value.length, true);
        this.at += 4;
        this.b.set(value, this.at);
        this.at += value.length;
    }
}

/** @brief Complete ROS1 interbotix_slate_msgs/SetStringRequest codec; maxima are not actual lengths. */
export const Ros1Interbotix_slate_msgsSetStringRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : ""};
    },
    validateValue(value) {
        Ros1Interbotix_slate_msgsSetStringRequestSize(Ros1Interbotix_slate_msgsSetStringRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_slate_msgsSetStringRequestCapture(value), n = Ros1Interbotix_slate_msgsSetStringRequestSize(owned), w = new Writer(n);
        Ros1Interbotix_slate_msgsSetStringRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_slate_msgsSetStringRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_slate_msgsSetStringRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["data"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Interbotix_slate_msgsSetStringRequestWrite(value, w)
{
    w.text(value["data"], 128);
}

function Ros1Interbotix_slate_msgsSetStringRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Interbotix_slate_msgsSetStringRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_slate_msgs/SetStringResponse codec; maxima are not actual lengths. */
export const Ros1Interbotix_slate_msgsSetStringResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "message" : ""};
    },
    validateValue(value) {
        Ros1Interbotix_slate_msgsSetStringResponseSize(Ros1Interbotix_slate_msgsSetStringResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_slate_msgsSetStringResponseCapture(value), n = Ros1Interbotix_slate_msgsSetStringResponseSize(owned), w = new Writer(n);
        Ros1Interbotix_slate_msgsSetStringResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_slate_msgsSetStringResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_slate_msgsSetStringResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Interbotix_slate_msgsSetStringResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 128);
}

function Ros1Interbotix_slate_msgsSetStringResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Interbotix_slate_msgsSetStringResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/ArmJoy codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsArmJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "EE_X_INC" : 1,
        "EE_X_DEC" : 2,
        "EE_Y_INC" : 3,
        "EE_Y_DEC" : 4,
        "EE_Z_INC" : 5,
        "EE_Z_DEC" : 6,
        "EE_ROLL_CCW" : 7,
        "EE_ROLL_CW" : 8,
        "EE_PITCH_UP" : 9,
        "EE_PITCH_DOWN" : 10,
        "WAIST_CCW" : 11,
        "WAIST_CW" : 12,
        "GRIPPER_OPEN" : 13,
        "GRIPPER_CLOSE" : 14,
        "HOME_POSE" : 15,
        "SLEEP_POSE" : 16,
        "SPEED_INC" : 17,
        "SPEED_DEC" : 18,
        "SPEED_COURSE" : 19,
        "SPEED_FINE" : 20,
        "GRIPPER_PWM_INC" : 21,
        "GRIPPER_PWM_DEC" : 22,
        "TORQUE_ON" : 23,
        "TORQUE_OFF" : 24
    }),
    defaultValue() {
        return {
            "ee_x_cmd" : 0,
            "ee_y_cmd" : 0,
            "ee_z_cmd" : 0,
            "ee_roll_cmd" : 0,
            "ee_pitch_cmd" : 0,
            "waist_cmd" : 0,
            "gripper_cmd" : 0,
            "pose_cmd" : 0,
            "speed_cmd" : 0,
            "speed_toggle_cmd" : 0,
            "gripper_pwm_cmd" : 0,
            "torque_cmd" : 0
        };
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsArmJoySize(Ros1Interbotix_xs_msgsArmJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsArmJoyCapture(value), n = Ros1Interbotix_xs_msgsArmJoySize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsArmJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsArmJoyRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsArmJoySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ee_x_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_y_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_z_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_roll_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_pitch_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["waist_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["gripper_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["pose_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["speed_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["speed_toggle_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["gripper_pwm_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["torque_cmd"], 1, true);
    n = addSize(n, 1);
    if(n > 12)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsArmJoyWrite(value, w)
{
    w.v.setInt8(w.at, value["ee_x_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_y_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_z_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_roll_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_pitch_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["waist_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["gripper_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["pose_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["speed_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["speed_toggle_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["gripper_pwm_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["torque_cmd"], true);
    w.at += 1;
}

function Ros1Interbotix_xs_msgsArmJoyRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_x_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_y_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_z_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_roll_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_pitch_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["waist_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["gripper_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["pose_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_toggle_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["gripper_pwm_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["torque_cmd"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsArmJoyCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ee_x_cmd"];
        out["ee_x_cmd"] = field;
    }
    {
        const field = value["ee_y_cmd"];
        out["ee_y_cmd"] = field;
    }
    {
        const field = value["ee_z_cmd"];
        out["ee_z_cmd"] = field;
    }
    {
        const field = value["ee_roll_cmd"];
        out["ee_roll_cmd"] = field;
    }
    {
        const field = value["ee_pitch_cmd"];
        out["ee_pitch_cmd"] = field;
    }
    {
        const field = value["waist_cmd"];
        out["waist_cmd"] = field;
    }
    {
        const field = value["gripper_cmd"];
        out["gripper_cmd"] = field;
    }
    {
        const field = value["pose_cmd"];
        out["pose_cmd"] = field;
    }
    {
        const field = value["speed_cmd"];
        out["speed_cmd"] = field;
    }
    {
        const field = value["speed_toggle_cmd"];
        out["speed_toggle_cmd"] = field;
    }
    {
        const field = value["gripper_pwm_cmd"];
        out["gripper_pwm_cmd"] = field;
    }
    {
        const field = value["torque_cmd"];
        out["torque_cmd"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/HexJoy codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsHexJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37",
    maxWireBytes : 17,
    minWireBytes : 17,
    cartesianMaxWireBytes : 17n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "WORLD_X_INC" : 1,
        "WORLD_X_DEC" : 2,
        "WORLD_Y_INC" : 3,
        "WORLD_Y_DEC" : 4,
        "WORLD_YAW_CCW" : 5,
        "WORLD_YAW_CW" : 6,
        "PLACE_X_INC" : 7,
        "PLACE_X_DEC" : 8,
        "PLACE_Y_INC" : 9,
        "PLACE_Y_DEC" : 10,
        "PLACE_Z_INC" : 11,
        "PLACE_Z_DEC" : 12,
        "PLACE_ROLL_CCW" : 13,
        "PLACE_ROLL_CW" : 14,
        "PLACE_PITCH_UP" : 15,
        "PLACE_PITCH_DOWN" : 16,
        "MOVE_HEXAPOD" : 17,
        "MOVE_LEG" : 18,
        "HOME_POSE" : 19,
        "SLEEP_POSE" : 20,
        "GAIT_NEXT" : 21,
        "GAIT_PREVIOUS" : 22,
        "LEG_NEXT" : 23,
        "LEG_PREVIOUS" : 24,
        "WIDEN_STANCE" : 25,
        "NARROW_STANCE" : 26,
        "REBOOT_MOTORS" : 27,
        "SET_HOME_POSE" : 28,
        "SPEED_INC" : 29,
        "SPEED_DEC" : 30,
        "SPEED_COURSE" : 31,
        "SPEED_FINE" : 32
    }),
    defaultValue() {
        return {
            "world_x_cmd" : 0,
            "world_y_cmd" : 0,
            "world_yaw_cmd" : 0,
            "place_x_cmd" : 0,
            "place_y_cmd" : 0,
            "place_z_cmd" : 0,
            "place_roll_cmd" : 0,
            "place_pitch_cmd" : 0,
            "pose_cmd" : 0,
            "move_type_cmd" : 0,
            "gait_toggle_cmd" : 0,
            "leg_toggle_cmd" : 0,
            "stance_cmd" : 0,
            "reboot_cmd" : 0,
            "set_home_pose_cmd" : 0,
            "speed_cmd" : 0,
            "speed_toggle_cmd" : 0
        };
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsHexJoySize(Ros1Interbotix_xs_msgsHexJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsHexJoyCapture(value), n = Ros1Interbotix_xs_msgsHexJoySize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsHexJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsHexJoyRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsHexJoySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["world_x_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["world_y_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["world_yaw_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["place_x_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["place_y_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["place_z_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["place_roll_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["place_pitch_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["pose_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["move_type_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["gait_toggle_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["leg_toggle_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["stance_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["reboot_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["set_home_pose_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["speed_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["speed_toggle_cmd"], 1, true);
    n = addSize(n, 1);
    if(n > 17)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsHexJoyWrite(value, w)
{
    w.v.setInt8(w.at, value["world_x_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["world_y_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["world_yaw_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["place_x_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["place_y_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["place_z_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["place_roll_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["place_pitch_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["pose_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["move_type_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["gait_toggle_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["leg_toggle_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["stance_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["reboot_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["set_home_pose_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["speed_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["speed_toggle_cmd"], true);
    w.at += 1;
}

function Ros1Interbotix_xs_msgsHexJoyRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["world_x_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["world_y_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["world_yaw_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["place_x_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["place_y_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["place_z_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["place_roll_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["place_pitch_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["pose_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["move_type_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["gait_toggle_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["leg_toggle_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["stance_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["reboot_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["set_home_pose_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_toggle_cmd"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsHexJoyCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["world_x_cmd"];
        out["world_x_cmd"] = field;
    }
    {
        const field = value["world_y_cmd"];
        out["world_y_cmd"] = field;
    }
    {
        const field = value["world_yaw_cmd"];
        out["world_yaw_cmd"] = field;
    }
    {
        const field = value["place_x_cmd"];
        out["place_x_cmd"] = field;
    }
    {
        const field = value["place_y_cmd"];
        out["place_y_cmd"] = field;
    }
    {
        const field = value["place_z_cmd"];
        out["place_z_cmd"] = field;
    }
    {
        const field = value["place_roll_cmd"];
        out["place_roll_cmd"] = field;
    }
    {
        const field = value["place_pitch_cmd"];
        out["place_pitch_cmd"] = field;
    }
    {
        const field = value["pose_cmd"];
        out["pose_cmd"] = field;
    }
    {
        const field = value["move_type_cmd"];
        out["move_type_cmd"] = field;
    }
    {
        const field = value["gait_toggle_cmd"];
        out["gait_toggle_cmd"] = field;
    }
    {
        const field = value["leg_toggle_cmd"];
        out["leg_toggle_cmd"] = field;
    }
    {
        const field = value["stance_cmd"];
        out["stance_cmd"] = field;
    }
    {
        const field = value["reboot_cmd"];
        out["reboot_cmd"] = field;
    }
    {
        const field = value["set_home_pose_cmd"];
        out["set_home_pose_cmd"] = field;
    }
    {
        const field = value["speed_cmd"];
        out["speed_cmd"] = field;
    }
    {
        const field = value["speed_toggle_cmd"];
        out["speed_toggle_cmd"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/JointGroupCommand codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsJointGroupCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec",
    maxWireBytes : 392,
    minWireBytes : 8,
    cartesianMaxWireBytes : 392n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "cmd" : []};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsJointGroupCommandSize(Ros1Interbotix_xs_msgsJointGroupCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsJointGroupCommandCapture(value), n = Ros1Interbotix_xs_msgsJointGroupCommandSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsJointGroupCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 392, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsJointGroupCommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsJointGroupCommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(!Array.isArray(value["cmd"]) || value["cmd"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["cmd"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 392)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsJointGroupCommandWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setUint32(w.at, value["cmd"].length, true);
    w.at += 4;
    for(const element of value["cmd"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Interbotix_xs_msgsJointGroupCommandRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["cmd"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["cmd"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Interbotix_xs_msgsJointGroupCommandCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["cmd"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["cmd"] = values;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/JointSingleCommand codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsJointSingleCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "cmd" : 0};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsJointSingleCommandSize(Ros1Interbotix_xs_msgsJointSingleCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsJointSingleCommandCapture(value), n = Ros1Interbotix_xs_msgsJointSingleCommandSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsJointSingleCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsJointSingleCommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsJointSingleCommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(typeof value["cmd"] !== "number" || !Number.isFinite(value["cmd"]) || !Number.isFinite(Math.fround(value["cmd"])))
        bad();
    n = addSize(n, 4);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsJointSingleCommandWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setFloat32(w.at, value["cmd"], true);
    w.at += 4;
}

function Ros1Interbotix_xs_msgsJointSingleCommandRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["cmd"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsJointSingleCommandCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["cmd"];
        out["cmd"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/JointTemps codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsJointTempsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511",
    maxWireBytes : 8712,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8712n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"names" : [], "temps" : []};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsJointTempsSize(Ros1Interbotix_xs_msgsJointTempsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsJointTempsCapture(value), n = Ros1Interbotix_xs_msgsJointTempsSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsJointTempsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8712, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsJointTempsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsJointTempsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["names"]) || value["names"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["names"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["temps"]) || value["temps"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["temps"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 8712)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsJointTempsWrite(value, w)
{
    w.v.setUint32(w.at, value["names"].length, true);
    w.at += 4;
    for(const element of value["names"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["temps"].length, true);
    w.at += 4;
    for(const element of value["temps"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Interbotix_xs_msgsJointTempsRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["temps"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["temps"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Interbotix_xs_msgsJointTempsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["names"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["names"] = values;
    }
    {
        const field = value["temps"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["temps"] = values;
    }
    return out;
}

/** @brief Complete ROS1 time codec; maxima are not actual lengths. */
export const Ros1TimeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sec" : 0, "nsec" : 0};
    },
    validateValue(value) {
        Ros1TimeSize(Ros1TimeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1TimeCapture(value), n = Ros1TimeSize(owned), w = new Writer(n);
        Ros1TimeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1TimeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1TimeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sec"], 4, false);
    n = addSize(n, 4);
    integer(value["nsec"], 4, false);
    n = addSize(n, 4);
    if(value["nsec"] >= 1000000000)
        bad();
    if(n > 8)
        bad(90);
    return n;
}

function Ros1TimeWrite(value, w)
{
    w.v.setUint32(w.at, value["sec"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["nsec"], true);
    w.at += 4;
}

function Ros1TimeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["sec"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["nsec"] = decoded;
    }
    if(value["nsec"] >= 1000000000)
        bad();
    return value;
}

function Ros1TimeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sec"];
        out["sec"] = field;
    }
    {
        const field = value["nsec"];
        out["nsec"] = field;
    }
    return out;
}

/** @brief Complete ROS1 std_msgs/Header codec; maxima are not actual lengths. */
export const Ros1Std_msgsHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435",
    maxWireBytes : 144,
    minWireBytes : 16,
    cartesianMaxWireBytes : 144n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"seq" : 0, "stamp" : Ros1TimeCodec.defaultValue(), "frame_id" : ""};
    },
    validateValue(value) {
        Ros1Std_msgsHeaderSize(Ros1Std_msgsHeaderCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsHeaderCapture(value), n = Ros1Std_msgsHeaderSize(owned), w = new Writer(n);
        Ros1Std_msgsHeaderWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 144, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsHeaderRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Std_msgsHeaderSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["seq"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, Ros1TimeSize(value["stamp"]));
    n = addSize(n, 4 + textBytes(value["frame_id"], 128).length);
    if(n > 144)
        bad(90);
    return n;
}

function Ros1Std_msgsHeaderWrite(value, w)
{
    w.v.setUint32(w.at, value["seq"], true);
    w.at += 4;
    Ros1TimeWrite(value["stamp"], w);
    w.text(value["frame_id"], 128);
}

function Ros1Std_msgsHeaderRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["seq"] = decoded;
    }
    {
        const decoded = Ros1TimeRead(r);
        value["stamp"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["frame_id"] = decoded;
    }
    return value;
}

function Ros1Std_msgsHeaderCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["seq"];
        out["seq"] = field;
    }
    {
        const field = value["stamp"];
        out["stamp"] = Ros1TimeCapture(field);
    }
    {
        const field = value["frame_id"];
        out["frame_id"] = field;
    }
    return out;
}

/** @brief Complete ROS1 duration codec; maxima are not actual lengths. */
export const Ros1DurationCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sec" : 0, "nsec" : 0};
    },
    validateValue(value) {
        Ros1DurationSize(Ros1DurationCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1DurationCapture(value), n = Ros1DurationSize(owned), w = new Writer(n);
        Ros1DurationWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1DurationRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1DurationSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sec"], 4, true);
    n = addSize(n, 4);
    integer(value["nsec"], 4, true);
    n = addSize(n, 4);
    if(value["nsec"] < 0 || value["nsec"] >= 1000000000)
        bad();
    if(n > 8)
        bad(90);
    return n;
}

function Ros1DurationWrite(value, w)
{
    w.v.setInt32(w.at, value["sec"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["nsec"], true);
    w.at += 4;
}

function Ros1DurationRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["sec"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["nsec"] = decoded;
    }
    if(value["nsec"] < 0 || value["nsec"] >= 1000000000)
        bad();
    return value;
}

function Ros1DurationCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sec"];
        out["sec"] = field;
    }
    {
        const field = value["nsec"];
        out["nsec"] = field;
    }
    return out;
}

/** @brief Complete ROS1 trajectory_msgs/JointTrajectoryPoint codec; maxima are not actual lengths. */
export const Ros1Trajectory_msgsJointTrajectoryPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81",
    maxWireBytes : 536,
    minWireBytes : 24,
    cartesianMaxWireBytes : 536n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"positions" : [], "velocities" : [], "accelerations" : [], "effort" : [], "time_from_start" : Ros1DurationCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Trajectory_msgsJointTrajectoryPointSize(Ros1Trajectory_msgsJointTrajectoryPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Trajectory_msgsJointTrajectoryPointCapture(value), n = Ros1Trajectory_msgsJointTrajectoryPointSize(owned), w = new Writer(n);
        Ros1Trajectory_msgsJointTrajectoryPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 536, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Trajectory_msgsJointTrajectoryPointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Trajectory_msgsJointTrajectoryPointSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["positions"]) || value["positions"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["positions"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["velocities"]) || value["velocities"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocities"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["accelerations"]) || value["accelerations"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["accelerations"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["effort"]) || value["effort"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["effort"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    n = addSize(n, Ros1DurationSize(value["time_from_start"]));
    if(n > 536)
        bad(90);
    return n;
}

function Ros1Trajectory_msgsJointTrajectoryPointWrite(value, w)
{
    w.v.setUint32(w.at, value["positions"].length, true);
    w.at += 4;
    for(const element of value["positions"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["velocities"].length, true);
    w.at += 4;
    for(const element of value["velocities"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["accelerations"].length, true);
    w.at += 4;
    for(const element of value["accelerations"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["effort"].length, true);
    w.at += 4;
    for(const element of value["effort"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    Ros1DurationWrite(value["time_from_start"], w);
}

function Ros1Trajectory_msgsJointTrajectoryPointRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["positions"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["positions"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["velocities"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["velocities"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["accelerations"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["accelerations"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["effort"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["effort"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1DurationRead(r);
        value["time_from_start"] = decoded;
    }
    return value;
}

function Ros1Trajectory_msgsJointTrajectoryPointCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["positions"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["positions"] = values;
    }
    {
        const field = value["velocities"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["velocities"] = values;
    }
    {
        const field = value["accelerations"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["accelerations"] = values;
    }
    {
        const field = value["effort"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["effort"] = values;
    }
    {
        const field = value["time_from_start"];
        out["time_from_start"] = Ros1DurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 trajectory_msgs/JointTrajectory codec; maxima are not actual lengths. */
export const Ros1Trajectory_msgsJointTrajectoryCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9",
    maxWireBytes : 4408,
    minWireBytes : 24,
    cartesianMaxWireBytes : 4408n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "joint_names" : [], "points" : []};
    },
    validateValue(value) {
        Ros1Trajectory_msgsJointTrajectorySize(Ros1Trajectory_msgsJointTrajectoryCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Trajectory_msgsJointTrajectoryCapture(value), n = Ros1Trajectory_msgsJointTrajectorySize(owned), w = new Writer(n);
        Ros1Trajectory_msgsJointTrajectoryWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4408, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Trajectory_msgsJointTrajectoryRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Trajectory_msgsJointTrajectorySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["points"]) || value["points"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["points"])
    {
        n = addSize(n, Ros1Trajectory_msgsJointTrajectoryPointSize(element));
    }
    if(n > 4408)
        bad(90);
    return n;
}

function Ros1Trajectory_msgsJointTrajectoryWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["points"].length, true);
    w.at += 4;
    for(const element of value["points"])
    {
        Ros1Trajectory_msgsJointTrajectoryPointWrite(element, w);
    }
}

function Ros1Trajectory_msgsJointTrajectoryRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Trajectory_msgsJointTrajectoryPointRead(r);
                value["points"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Trajectory_msgsJointTrajectoryCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["joint_names"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_names"] = values;
    }
    {
        const field = value["points"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Trajectory_msgsJointTrajectoryPointCapture(element);
        }
        out["points"] = values;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/JointTrajectoryCommand codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsJointTrajectoryCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7",
    maxWireBytes : 4672,
    minWireBytes : 32,
    cartesianMaxWireBytes : 4672n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "traj" : Ros1Trajectory_msgsJointTrajectoryCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsJointTrajectoryCommandSize(Ros1Interbotix_xs_msgsJointTrajectoryCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsJointTrajectoryCommandCapture(value), n = Ros1Interbotix_xs_msgsJointTrajectoryCommandSize(owned),
              w = new Writer(n);
        Ros1Interbotix_xs_msgsJointTrajectoryCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4672, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsJointTrajectoryCommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsJointTrajectoryCommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["cmd_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, Ros1Trajectory_msgsJointTrajectorySize(value["traj"]));
    if(n > 4672)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsJointTrajectoryCommandWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    Ros1Trajectory_msgsJointTrajectoryWrite(value["traj"], w);
}

function Ros1Interbotix_xs_msgsJointTrajectoryCommandRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["cmd_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = Ros1Trajectory_msgsJointTrajectoryRead(r);
        value["traj"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsJointTrajectoryCommandCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["cmd_type"];
        out["cmd_type"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["traj"];
        out["traj"] = Ros1Trajectory_msgsJointTrajectoryCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/LocobotJoy codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsLocobotJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613",
    maxWireBytes : 30,
    minWireBytes : 30,
    cartesianMaxWireBytes : 30n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "RESET_ODOM" : 1,
        "PAN_CCW" : 2,
        "PAN_CW" : 3,
        "TILT_UP" : 4,
        "TILT_DOWN" : 5,
        "PAN_TILT_HOME" : 6,
        "EE_X_INC" : 7,
        "EE_X_DEC" : 8,
        "EE_Y_INC" : 9,
        "EE_Y_DEC" : 10,
        "EE_Z_INC" : 11,
        "EE_Z_DEC" : 12,
        "EE_ROLL_CCW" : 13,
        "EE_ROLL_CW" : 14,
        "EE_PITCH_UP" : 15,
        "EE_PITCH_DOWN" : 16,
        "WAIST_CCW" : 17,
        "WAIST_CW" : 18,
        "GRIPPER_OPEN" : 19,
        "GRIPPER_CLOSE" : 20,
        "HOME_POSE" : 21,
        "SLEEP_POSE" : 22,
        "SPEED_INC" : 23,
        "SPEED_DEC" : 24,
        "SPEED_COURSE" : 25,
        "SPEED_FINE" : 26,
        "GRIPPER_PWM_INC" : 27,
        "GRIPPER_PWM_DEC" : 28
    }),
    defaultValue() {
        return {
            "base_x_cmd" : 0,
            "base_theta_cmd" : 0,
            "base_reset_odom_cmd" : 0,
            "pan_cmd" : 0,
            "tilt_cmd" : 0,
            "ee_x_cmd" : 0,
            "ee_y_cmd" : 0,
            "ee_z_cmd" : 0,
            "ee_roll_cmd" : 0,
            "ee_pitch_cmd" : 0,
            "waist_cmd" : 0,
            "gripper_cmd" : 0,
            "pose_cmd" : 0,
            "speed_cmd" : 0,
            "speed_toggle_cmd" : 0,
            "gripper_pwm_cmd" : 0
        };
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsLocobotJoySize(Ros1Interbotix_xs_msgsLocobotJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsLocobotJoyCapture(value), n = Ros1Interbotix_xs_msgsLocobotJoySize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsLocobotJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 30, 90);
        if(owned.length < 30)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsLocobotJoyRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsLocobotJoySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["base_x_cmd"] !== "number" || !Number.isFinite(value["base_x_cmd"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["base_theta_cmd"] !== "number" || !Number.isFinite(value["base_theta_cmd"]))
        bad();
    n = addSize(n, 8);
    integer(value["base_reset_odom_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["pan_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["tilt_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_x_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_y_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_z_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_roll_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["ee_pitch_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["waist_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["gripper_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["pose_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["speed_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["speed_toggle_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["gripper_pwm_cmd"], 1, true);
    n = addSize(n, 1);
    if(n > 30)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsLocobotJoyWrite(value, w)
{
    w.v.setFloat64(w.at, value["base_x_cmd"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["base_theta_cmd"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["base_reset_odom_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["pan_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["tilt_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_x_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_y_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_z_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_roll_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_pitch_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["waist_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["gripper_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["pose_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["speed_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["speed_toggle_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["gripper_pwm_cmd"], true);
    w.at += 1;
}

function Ros1Interbotix_xs_msgsLocobotJoyRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["base_x_cmd"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["base_theta_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["base_reset_odom_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["pan_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["tilt_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_x_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_y_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_z_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_roll_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ee_pitch_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["waist_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["gripper_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["pose_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_toggle_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["gripper_pwm_cmd"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsLocobotJoyCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["base_x_cmd"];
        out["base_x_cmd"] = field;
    }
    {
        const field = value["base_theta_cmd"];
        out["base_theta_cmd"] = field;
    }
    {
        const field = value["base_reset_odom_cmd"];
        out["base_reset_odom_cmd"] = field;
    }
    {
        const field = value["pan_cmd"];
        out["pan_cmd"] = field;
    }
    {
        const field = value["tilt_cmd"];
        out["tilt_cmd"] = field;
    }
    {
        const field = value["ee_x_cmd"];
        out["ee_x_cmd"] = field;
    }
    {
        const field = value["ee_y_cmd"];
        out["ee_y_cmd"] = field;
    }
    {
        const field = value["ee_z_cmd"];
        out["ee_z_cmd"] = field;
    }
    {
        const field = value["ee_roll_cmd"];
        out["ee_roll_cmd"] = field;
    }
    {
        const field = value["ee_pitch_cmd"];
        out["ee_pitch_cmd"] = field;
    }
    {
        const field = value["waist_cmd"];
        out["waist_cmd"] = field;
    }
    {
        const field = value["gripper_cmd"];
        out["gripper_cmd"] = field;
    }
    {
        const field = value["pose_cmd"];
        out["pose_cmd"] = field;
    }
    {
        const field = value["speed_cmd"];
        out["speed_cmd"] = field;
    }
    {
        const field = value["speed_toggle_cmd"];
        out["speed_toggle_cmd"] = field;
    }
    {
        const field = value["gripper_pwm_cmd"];
        out["gripper_pwm_cmd"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/MotorGainsRequest codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsMotorGainsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009",
    maxWireBytes : 292,
    minWireBytes : 36,
    cartesianMaxWireBytes : 292n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "kp_pos" : 0, "ki_pos" : 0, "kd_pos" : 0, "k1" : 0, "k2" : 0, "kp_vel" : 0, "ki_vel" : 0};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsMotorGainsRequestSize(Ros1Interbotix_xs_msgsMotorGainsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsMotorGainsRequestCapture(value), n = Ros1Interbotix_xs_msgsMotorGainsRequestSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsMotorGainsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 292, 90);
        if(owned.length < 36)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsMotorGainsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsMotorGainsRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["cmd_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    integer(value["kp_pos"], 4, true);
    n = addSize(n, 4);
    integer(value["ki_pos"], 4, true);
    n = addSize(n, 4);
    integer(value["kd_pos"], 4, true);
    n = addSize(n, 4);
    integer(value["k1"], 4, true);
    n = addSize(n, 4);
    integer(value["k2"], 4, true);
    n = addSize(n, 4);
    integer(value["kp_vel"], 4, true);
    n = addSize(n, 4);
    integer(value["ki_vel"], 4, true);
    n = addSize(n, 4);
    if(n > 292)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsMotorGainsRequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    w.v.setInt32(w.at, value["kp_pos"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ki_pos"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["kd_pos"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["k1"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["k2"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["kp_vel"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ki_vel"], true);
    w.at += 4;
}

function Ros1Interbotix_xs_msgsMotorGainsRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["cmd_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["kp_pos"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ki_pos"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["kd_pos"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["k1"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["k2"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["kp_vel"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ki_vel"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsMotorGainsRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["cmd_type"];
        out["cmd_type"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["kp_pos"];
        out["kp_pos"] = field;
    }
    {
        const field = value["ki_pos"];
        out["ki_pos"] = field;
    }
    {
        const field = value["kd_pos"];
        out["kd_pos"] = field;
    }
    {
        const field = value["k1"];
        out["k1"] = field;
    }
    {
        const field = value["k2"];
        out["k2"] = field;
    }
    {
        const field = value["kp_vel"];
        out["kp_vel"] = field;
    }
    {
        const field = value["ki_vel"];
        out["ki_vel"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/MotorGainsResponse codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsMotorGainsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsMotorGainsResponseSize(Ros1Interbotix_xs_msgsMotorGainsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsMotorGainsResponseCapture(value), n = Ros1Interbotix_xs_msgsMotorGainsResponseSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsMotorGainsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsMotorGainsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsMotorGainsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsMotorGainsResponseWrite(value, w)
{
}

function Ros1Interbotix_xs_msgsMotorGainsResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Interbotix_xs_msgsMotorGainsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/OperatingModesRequest codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsOperatingModesRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3",
    maxWireBytes : 536,
    minWireBytes : 24,
    cartesianMaxWireBytes : 536n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "mode" : "", "profile_type" : "", "profile_velocity" : 0, "profile_acceleration" : 0};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsOperatingModesRequestSize(Ros1Interbotix_xs_msgsOperatingModesRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsOperatingModesRequestCapture(value), n = Ros1Interbotix_xs_msgsOperatingModesRequestSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsOperatingModesRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 536, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsOperatingModesRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsOperatingModesRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["cmd_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, 4 + textBytes(value["mode"], 128).length);
    n = addSize(n, 4 + textBytes(value["profile_type"], 128).length);
    integer(value["profile_velocity"], 4, true);
    n = addSize(n, 4);
    integer(value["profile_acceleration"], 4, true);
    n = addSize(n, 4);
    if(n > 536)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsOperatingModesRequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    w.text(value["mode"], 128);
    w.text(value["profile_type"], 128);
    w.v.setInt32(w.at, value["profile_velocity"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["profile_acceleration"], true);
    w.at += 4;
}

function Ros1Interbotix_xs_msgsOperatingModesRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["cmd_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["mode"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["profile_type"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["profile_velocity"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["profile_acceleration"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsOperatingModesRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["cmd_type"];
        out["cmd_type"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["profile_type"];
        out["profile_type"] = field;
    }
    {
        const field = value["profile_velocity"];
        out["profile_velocity"] = field;
    }
    {
        const field = value["profile_acceleration"];
        out["profile_acceleration"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/OperatingModesResponse codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsOperatingModesResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsOperatingModesResponseSize(Ros1Interbotix_xs_msgsOperatingModesResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsOperatingModesResponseCapture(value), n = Ros1Interbotix_xs_msgsOperatingModesResponseSize(owned),
              w = new Writer(n);
        Ros1Interbotix_xs_msgsOperatingModesResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsOperatingModesResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsOperatingModesResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsOperatingModesResponseWrite(value, w)
{
}

function Ros1Interbotix_xs_msgsOperatingModesResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Interbotix_xs_msgsOperatingModesResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/RebootRequest codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsRebootRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a",
    maxWireBytes : 266,
    minWireBytes : 10,
    cartesianMaxWireBytes : 266n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "enable" : false, "smart_reboot" : false};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsRebootRequestSize(Ros1Interbotix_xs_msgsRebootRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsRebootRequestCapture(value), n = Ros1Interbotix_xs_msgsRebootRequestSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsRebootRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 266, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsRebootRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsRebootRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["cmd_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(typeof value["enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["smart_reboot"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 266)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsRebootRequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    w.v.setUint8(w.at, value["enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["smart_reboot"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Interbotix_xs_msgsRebootRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["cmd_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["smart_reboot"] = decoded !== 0;
    }
    return value;
}

function Ros1Interbotix_xs_msgsRebootRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["cmd_type"];
        out["cmd_type"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["enable"];
        out["enable"] = field;
    }
    {
        const field = value["smart_reboot"];
        out["smart_reboot"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/RebootResponse codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsRebootResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsRebootResponseSize(Ros1Interbotix_xs_msgsRebootResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsRebootResponseCapture(value), n = Ros1Interbotix_xs_msgsRebootResponseSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsRebootResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsRebootResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsRebootResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsRebootResponseWrite(value, w)
{
}

function Ros1Interbotix_xs_msgsRebootResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Interbotix_xs_msgsRebootResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/RegisterValuesRequest codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsRegisterValuesRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a",
    maxWireBytes : 400,
    minWireBytes : 16,
    cartesianMaxWireBytes : 400n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "reg" : "", "value" : 0};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsRegisterValuesRequestSize(Ros1Interbotix_xs_msgsRegisterValuesRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsRegisterValuesRequestCapture(value), n = Ros1Interbotix_xs_msgsRegisterValuesRequestSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsRegisterValuesRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 400, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsRegisterValuesRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsRegisterValuesRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["cmd_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, 4 + textBytes(value["reg"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 400)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsRegisterValuesRequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    w.text(value["reg"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Interbotix_xs_msgsRegisterValuesRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["cmd_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["reg"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsRegisterValuesRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["cmd_type"];
        out["cmd_type"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["reg"];
        out["reg"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/RegisterValuesResponse codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsRegisterValuesResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"values" : []};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsRegisterValuesResponseSize(Ros1Interbotix_xs_msgsRegisterValuesResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsRegisterValuesResponseCapture(value), n = Ros1Interbotix_xs_msgsRegisterValuesResponseSize(owned),
              w = new Writer(n);
        Ros1Interbotix_xs_msgsRegisterValuesResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsRegisterValuesResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsRegisterValuesResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["values"]) || value["values"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsRegisterValuesResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Interbotix_xs_msgsRegisterValuesResponseRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Interbotix_xs_msgsRegisterValuesResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["values"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["values"] = values;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/RobotInfoRequest codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsRobotInfoRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : ""};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsRobotInfoRequestSize(Ros1Interbotix_xs_msgsRobotInfoRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsRobotInfoRequestCapture(value), n = Ros1Interbotix_xs_msgsRobotInfoRequestSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsRobotInfoRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsRobotInfoRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsRobotInfoRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["cmd_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsRobotInfoRequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
}

function Ros1Interbotix_xs_msgsRobotInfoRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["cmd_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsRobotInfoRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["cmd_type"];
        out["cmd_type"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/RobotInfoResponse codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsRobotInfoResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d",
    maxWireBytes : 18474,
    minWireBytes : 42,
    cartesianMaxWireBytes : 18474n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "mode" : "",
            "profile_type" : "",
            "joint_names" : [],
            "joint_ids" : [],
            "joint_lower_limits" : [],
            "joint_upper_limits" : [],
            "joint_velocity_limits" : [],
            "joint_sleep_positions" : [],
            "joint_state_indices" : [],
            "num_joints" : 0,
            "name" : []
        };
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsRobotInfoResponseSize(Ros1Interbotix_xs_msgsRobotInfoResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsRobotInfoResponseCapture(value), n = Ros1Interbotix_xs_msgsRobotInfoResponseSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsRobotInfoResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 18474, 90);
        if(owned.length < 42)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsRobotInfoResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsRobotInfoResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["mode"], 128).length);
    n = addSize(n, 4 + textBytes(value["profile_type"], 128).length);
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["joint_ids"]) || value["joint_ids"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_ids"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["joint_lower_limits"]) || value["joint_lower_limits"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_lower_limits"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["joint_upper_limits"]) || value["joint_upper_limits"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_upper_limits"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["joint_velocity_limits"]) || value["joint_velocity_limits"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_velocity_limits"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["joint_sleep_positions"]) || value["joint_sleep_positions"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_sleep_positions"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["joint_state_indices"]) || value["joint_state_indices"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_state_indices"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    integer(value["num_joints"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["name"]) || value["name"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["name"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(n > 18474)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsRobotInfoResponseWrite(value, w)
{
    w.text(value["mode"], 128);
    w.text(value["profile_type"], 128);
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["joint_ids"].length, true);
    w.at += 4;
    for(const element of value["joint_ids"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint32(w.at, value["joint_lower_limits"].length, true);
    w.at += 4;
    for(const element of value["joint_lower_limits"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["joint_upper_limits"].length, true);
    w.at += 4;
    for(const element of value["joint_upper_limits"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["joint_velocity_limits"].length, true);
    w.at += 4;
    for(const element of value["joint_velocity_limits"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["joint_sleep_positions"].length, true);
    w.at += 4;
    for(const element of value["joint_sleep_positions"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["joint_state_indices"].length, true);
    w.at += 4;
    for(const element of value["joint_state_indices"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
    w.v.setInt16(w.at, value["num_joints"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["name"].length, true);
    w.at += 4;
    for(const element of value["name"])
    {
        w.text(element, 128);
    }
}

function Ros1Interbotix_xs_msgsRobotInfoResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["mode"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["profile_type"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joint_ids"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["joint_ids"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joint_lower_limits"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_lower_limits"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joint_upper_limits"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_upper_limits"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joint_velocity_limits"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_velocity_limits"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joint_sleep_positions"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_sleep_positions"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joint_state_indices"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["joint_state_indices"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["num_joints"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["name"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Interbotix_xs_msgsRobotInfoResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["profile_type"];
        out["profile_type"] = field;
    }
    {
        const field = value["joint_names"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_names"] = values;
    }
    {
        const field = value["joint_ids"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_ids"] = values;
    }
    {
        const field = value["joint_lower_limits"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_lower_limits"] = values;
    }
    {
        const field = value["joint_upper_limits"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_upper_limits"] = values;
    }
    {
        const field = value["joint_velocity_limits"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_velocity_limits"] = values;
    }
    {
        const field = value["joint_sleep_positions"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_sleep_positions"] = values;
    }
    {
        const field = value["joint_state_indices"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_state_indices"] = values;
    }
    {
        const field = value["num_joints"];
        out["num_joints"] = field;
    }
    {
        const field = value["name"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["name"] = values;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/TorqueEnableRequest codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsTorqueEnableRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a",
    maxWireBytes : 265,
    minWireBytes : 9,
    cartesianMaxWireBytes : 265n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "enable" : false};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsTorqueEnableRequestSize(Ros1Interbotix_xs_msgsTorqueEnableRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsTorqueEnableRequestCapture(value), n = Ros1Interbotix_xs_msgsTorqueEnableRequestSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsTorqueEnableRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 265, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsTorqueEnableRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsTorqueEnableRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["cmd_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(typeof value["enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 265)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsTorqueEnableRequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    w.v.setUint8(w.at, value["enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Interbotix_xs_msgsTorqueEnableRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["cmd_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["enable"] = decoded !== 0;
    }
    return value;
}

function Ros1Interbotix_xs_msgsTorqueEnableRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["cmd_type"];
        out["cmd_type"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["enable"];
        out["enable"] = field;
    }
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/TorqueEnableResponse codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsTorqueEnableResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsTorqueEnableResponseSize(Ros1Interbotix_xs_msgsTorqueEnableResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsTorqueEnableResponseCapture(value), n = Ros1Interbotix_xs_msgsTorqueEnableResponseSize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsTorqueEnableResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsTorqueEnableResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsTorqueEnableResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsTorqueEnableResponseWrite(value, w)
{
}

function Ros1Interbotix_xs_msgsTorqueEnableResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Interbotix_xs_msgsTorqueEnableResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 interbotix_xs_msgs/TurretJoy codec; maxima are not actual lengths. */
export const Ros1Interbotix_xs_msgsTurretJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "PAN_CCW" : 1,
        "PAN_CW" : 2,
        "TILT_UP" : 3,
        "TILT_DOWN" : 4,
        "PAN_TILT_HOME" : 5,
        "SPEED_INC" : 6,
        "SPEED_DEC" : 7,
        "SPEED_COURSE" : 8,
        "SPEED_FINE" : 9
    }),
    defaultValue() {
        return {"pan_cmd" : 0, "tilt_cmd" : 0, "speed_cmd" : 0, "speed_toggle_cmd" : 0};
    },
    validateValue(value) {
        Ros1Interbotix_xs_msgsTurretJoySize(Ros1Interbotix_xs_msgsTurretJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_xs_msgsTurretJoyCapture(value), n = Ros1Interbotix_xs_msgsTurretJoySize(owned), w = new Writer(n);
        Ros1Interbotix_xs_msgsTurretJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_xs_msgsTurretJoyRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Interbotix_xs_msgsTurretJoySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pan_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["tilt_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["speed_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["speed_toggle_cmd"], 1, true);
    n = addSize(n, 1);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Interbotix_xs_msgsTurretJoyWrite(value, w)
{
    w.v.setInt8(w.at, value["pan_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["tilt_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["speed_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["speed_toggle_cmd"], true);
    w.at += 1;
}

function Ros1Interbotix_xs_msgsTurretJoyRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["pan_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["tilt_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_toggle_cmd"] = decoded;
    }
    return value;
}

function Ros1Interbotix_xs_msgsTurretJoyCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pan_cmd"];
        out["pan_cmd"] = field;
    }
    {
        const field = value["tilt_cmd"];
        out["tilt_cmd"] = field;
    }
    {
        const field = value["speed_cmd"];
        out["speed_cmd"] = field;
    }
    {
        const field = value["speed_toggle_cmd"];
        out["speed_toggle_cmd"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/ClearErrRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsClearErrRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsClearErrRequestSize(Ros1Xarm_msgsClearErrRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsClearErrRequestCapture(value), n = Ros1Xarm_msgsClearErrRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsClearErrRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsClearErrRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsClearErrRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsClearErrRequestWrite(value, w)
{
}

function Ros1Xarm_msgsClearErrRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsClearErrRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 xarm_msgs/ClearErrResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsClearErrResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsClearErrResponseSize(Ros1Xarm_msgsClearErrResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsClearErrResponseCapture(value), n = Ros1Xarm_msgsClearErrResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsClearErrResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsClearErrResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsClearErrResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsClearErrResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsClearErrResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsClearErrResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/ConfigToolModbusRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsConfigToolModbusRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"baud_rate" : 0, "timeout_ms" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsConfigToolModbusRequestSize(Ros1Xarm_msgsConfigToolModbusRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsConfigToolModbusRequestCapture(value), n = Ros1Xarm_msgsConfigToolModbusRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsConfigToolModbusRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsConfigToolModbusRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsConfigToolModbusRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["baud_rate"], 4, true);
    n = addSize(n, 4);
    integer(value["timeout_ms"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Xarm_msgsConfigToolModbusRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["baud_rate"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["timeout_ms"], true);
    w.at += 4;
}

function Ros1Xarm_msgsConfigToolModbusRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["baud_rate"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["timeout_ms"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsConfigToolModbusRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["baud_rate"];
        out["baud_rate"] = field;
    }
    {
        const field = value["timeout_ms"];
        out["timeout_ms"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/ConfigToolModbusResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsConfigToolModbusResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"message" : "", "ret" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsConfigToolModbusResponseSize(Ros1Xarm_msgsConfigToolModbusResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsConfigToolModbusResponseCapture(value), n = Ros1Xarm_msgsConfigToolModbusResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsConfigToolModbusResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsConfigToolModbusResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsConfigToolModbusResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsConfigToolModbusResponseWrite(value, w)
{
    w.text(value["message"], 128);
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
}

function Ros1Xarm_msgsConfigToolModbusResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsConfigToolModbusResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GetAnalogIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetAnalogIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"port_num" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetAnalogIORequestSize(Ros1Xarm_msgsGetAnalogIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetAnalogIORequestCapture(value), n = Ros1Xarm_msgsGetAnalogIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetAnalogIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetAnalogIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetAnalogIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["port_num"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetAnalogIORequestWrite(value, w)
{
    w.v.setInt16(w.at, value["port_num"], true);
    w.at += 2;
}

function Ros1Xarm_msgsGetAnalogIORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["port_num"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetAnalogIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["port_num"];
        out["port_num"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GetAnalogIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetAnalogIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968",
    maxWireBytes : 138,
    minWireBytes : 10,
    cartesianMaxWireBytes : 138n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"analog_value" : 0, "ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetAnalogIOResponseSize(Ros1Xarm_msgsGetAnalogIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetAnalogIOResponseCapture(value), n = Ros1Xarm_msgsGetAnalogIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetAnalogIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 138, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetAnalogIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetAnalogIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["analog_value"] !== "number" || !Number.isFinite(value["analog_value"]) || !Number.isFinite(Math.fround(value["analog_value"])))
        bad();
    n = addSize(n, 4);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 138)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetAnalogIOResponseWrite(value, w)
{
    w.v.setFloat32(w.at, value["analog_value"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsGetAnalogIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["analog_value"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetAnalogIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["analog_value"];
        out["analog_value"] = field;
    }
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GetControllerDigitalIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetControllerDigitalIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"io_num" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetControllerDigitalIORequestSize(Ros1Xarm_msgsGetControllerDigitalIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetControllerDigitalIORequestCapture(value), n = Ros1Xarm_msgsGetControllerDigitalIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetControllerDigitalIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetControllerDigitalIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetControllerDigitalIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["io_num"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetControllerDigitalIORequestWrite(value, w)
{
    w.v.setInt16(w.at, value["io_num"], true);
    w.at += 2;
}

function Ros1Xarm_msgsGetControllerDigitalIORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["io_num"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetControllerDigitalIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["io_num"];
        out["io_num"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GetControllerDigitalIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetControllerDigitalIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "value" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetControllerDigitalIOResponseSize(Ros1Xarm_msgsGetControllerDigitalIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetControllerDigitalIOResponseCapture(value), n = Ros1Xarm_msgsGetControllerDigitalIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetControllerDigitalIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetControllerDigitalIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetControllerDigitalIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    integer(value["value"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetControllerDigitalIOResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["value"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsGetControllerDigitalIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetControllerDigitalIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GetDigitalIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetDigitalIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetDigitalIORequestSize(Ros1Xarm_msgsGetDigitalIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetDigitalIORequestCapture(value), n = Ros1Xarm_msgsGetDigitalIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetDigitalIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetDigitalIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetDigitalIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetDigitalIORequestWrite(value, w)
{
}

function Ros1Xarm_msgsGetDigitalIORequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsGetDigitalIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GetDigitalIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetDigitalIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2",
    maxWireBytes : 142,
    minWireBytes : 14,
    cartesianMaxWireBytes : 142n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"digital_1" : 0, "digital_2" : 0, "ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetDigitalIOResponseSize(Ros1Xarm_msgsGetDigitalIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetDigitalIOResponseCapture(value), n = Ros1Xarm_msgsGetDigitalIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetDigitalIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 142, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetDigitalIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetDigitalIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["digital_1"], 4, true);
    n = addSize(n, 4);
    integer(value["digital_2"], 4, true);
    n = addSize(n, 4);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 142)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetDigitalIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["digital_1"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["digital_2"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsGetDigitalIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["digital_1"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["digital_2"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetDigitalIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["digital_1"];
        out["digital_1"] = field;
    }
    {
        const field = value["digital_2"];
        out["digital_2"] = field;
    }
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GetErrRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetErrRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetErrRequestSize(Ros1Xarm_msgsGetErrRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetErrRequestCapture(value), n = Ros1Xarm_msgsGetErrRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetErrRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetErrRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetErrRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetErrRequestWrite(value, w)
{
}

function Ros1Xarm_msgsGetErrRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsGetErrRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GetErrResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetErrResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"err" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetErrResponseSize(Ros1Xarm_msgsGetErrResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetErrResponseCapture(value), n = Ros1Xarm_msgsGetErrResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetErrResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetErrResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetErrResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["err"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetErrResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["err"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsGetErrResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["err"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetErrResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["err"];
        out["err"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GripperConfigRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperConfigRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pulse_vel" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperConfigRequestSize(Ros1Xarm_msgsGripperConfigRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperConfigRequestCapture(value), n = Ros1Xarm_msgsGripperConfigRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperConfigRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperConfigRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperConfigRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["pulse_vel"] !== "number" || !Number.isFinite(value["pulse_vel"]) || !Number.isFinite(Math.fround(value["pulse_vel"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperConfigRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["pulse_vel"], true);
    w.at += 4;
}

function Ros1Xarm_msgsGripperConfigRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pulse_vel"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGripperConfigRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pulse_vel"];
        out["pulse_vel"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GripperConfigResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperConfigResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperConfigResponseSize(Ros1Xarm_msgsGripperConfigResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperConfigResponseCapture(value), n = Ros1Xarm_msgsGripperConfigResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperConfigResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperConfigResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperConfigResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperConfigResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsGripperConfigResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGripperConfigResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GripperMoveRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperMoveRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pulse_pos" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperMoveRequestSize(Ros1Xarm_msgsGripperMoveRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperMoveRequestCapture(value), n = Ros1Xarm_msgsGripperMoveRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperMoveRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperMoveRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperMoveRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["pulse_pos"] !== "number" || !Number.isFinite(value["pulse_pos"]) || !Number.isFinite(Math.fround(value["pulse_pos"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperMoveRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["pulse_pos"], true);
    w.at += 4;
}

function Ros1Xarm_msgsGripperMoveRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pulse_pos"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGripperMoveRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pulse_pos"];
        out["pulse_pos"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GripperMoveResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperMoveResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperMoveResponseSize(Ros1Xarm_msgsGripperMoveResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperMoveResponseCapture(value), n = Ros1Xarm_msgsGripperMoveResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperMoveResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperMoveResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperMoveResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperMoveResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsGripperMoveResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGripperMoveResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GripperStateRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperStateRequestSize(Ros1Xarm_msgsGripperStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperStateRequestCapture(value), n = Ros1Xarm_msgsGripperStateRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperStateRequestWrite(value, w)
{
}

function Ros1Xarm_msgsGripperStateRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsGripperStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 xarm_msgs/GripperStateResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4",
    maxWireBytes : 6,
    minWireBytes : 6,
    cartesianMaxWireBytes : 6n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"curr_pos" : 0, "err_code" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperStateResponseSize(Ros1Xarm_msgsGripperStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperStateResponseCapture(value), n = Ros1Xarm_msgsGripperStateResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 6, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["curr_pos"] !== "number" || !Number.isFinite(value["curr_pos"]) || !Number.isFinite(Math.fround(value["curr_pos"])))
        bad();
    n = addSize(n, 4);
    integer(value["err_code"], 2, true);
    n = addSize(n, 2);
    if(n > 6)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperStateResponseWrite(value, w)
{
    w.v.setFloat32(w.at, value["curr_pos"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["err_code"], true);
    w.at += 2;
}

function Ros1Xarm_msgsGripperStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["curr_pos"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["err_code"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGripperStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["curr_pos"];
        out["curr_pos"] = field;
    }
    {
        const field = value["err_code"];
        out["err_code"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/IOState codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsIOStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"digital_1" : 0, "digital_2" : 0, "analog_1" : 0, "analog_2" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsIOStateSize(Ros1Xarm_msgsIOStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsIOStateCapture(value), n = Ros1Xarm_msgsIOStateSize(owned), w = new Writer(n);
        Ros1Xarm_msgsIOStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsIOStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsIOStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["digital_1"], 4, true);
    n = addSize(n, 4);
    integer(value["digital_2"], 4, true);
    n = addSize(n, 4);
    if(typeof value["analog_1"] !== "number" || !Number.isFinite(value["analog_1"]) || !Number.isFinite(Math.fround(value["analog_1"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["analog_2"] !== "number" || !Number.isFinite(value["analog_2"]) || !Number.isFinite(Math.fround(value["analog_2"])))
        bad();
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Xarm_msgsIOStateWrite(value, w)
{
    w.v.setInt32(w.at, value["digital_1"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["digital_2"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["analog_1"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["analog_2"], true);
    w.at += 4;
}

function Ros1Xarm_msgsIOStateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["digital_1"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["digital_2"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["analog_1"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["analog_2"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsIOStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["digital_1"];
        out["digital_1"] = field;
    }
    {
        const field = value["digital_2"];
        out["digital_2"] = field;
    }
    {
        const field = value["analog_1"];
        out["analog_1"] = field;
    }
    {
        const field = value["analog_2"];
        out["analog_2"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/MoveRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5",
    maxWireBytes : 84,
    minWireBytes : 20,
    cartesianMaxWireBytes : 84n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : [], "mvvelo" : 0, "mvacc" : 0, "mvtime" : 0, "mvradii" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveRequestSize(Ros1Xarm_msgsMoveRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveRequestCapture(value), n = Ros1Xarm_msgsMoveRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 84, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pose"]) || value["pose"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["pose"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["mvvelo"] !== "number" || !Number.isFinite(value["mvvelo"]) || !Number.isFinite(Math.fround(value["mvvelo"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvacc"] !== "number" || !Number.isFinite(value["mvacc"]) || !Number.isFinite(Math.fround(value["mvacc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvtime"] !== "number" || !Number.isFinite(value["mvtime"]) || !Number.isFinite(Math.fround(value["mvtime"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvradii"] !== "number" || !Number.isFinite(value["mvradii"]) || !Number.isFinite(Math.fround(value["mvradii"])))
        bad();
    n = addSize(n, 4);
    if(n > 84)
        bad(90);
    return n;
}

function Ros1Xarm_msgsMoveRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["pose"].length, true);
    w.at += 4;
    for(const element of value["pose"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["mvvelo"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvacc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvtime"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvradii"], true);
    w.at += 4;
}

function Ros1Xarm_msgsMoveRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["pose"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pose"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvvelo"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvacc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvtime"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvradii"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsMoveRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pose"] = values;
    }
    {
        const field = value["mvvelo"];
        out["mvvelo"] = field;
    }
    {
        const field = value["mvacc"];
        out["mvacc"] = field;
    }
    {
        const field = value["mvtime"];
        out["mvtime"] = field;
    }
    {
        const field = value["mvradii"];
        out["mvradii"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/MoveResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveResponseSize(Ros1Xarm_msgsMoveResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveResponseCapture(value), n = Ros1Xarm_msgsMoveResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsMoveResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsMoveResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsMoveResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/RobotMsg codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsRobotMsgCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41",
    maxWireBytes : 130,
    minWireBytes : 66,
    cartesianMaxWireBytes : 130n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "state" : 0,
            "mode" : 0,
            "cmdnum" : 0,
            "mt_brake" : 0,
            "mt_able" : 0,
            "err" : 0,
            "warn" : 0,
            "angle" : [],
            "pose" : Array.from({length : 6}, () => (0)),
            "offset" : Array.from({length : 6}, () => (0))
        };
    },
    validateValue(value) {
        Ros1Xarm_msgsRobotMsgSize(Ros1Xarm_msgsRobotMsgCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsRobotMsgCapture(value), n = Ros1Xarm_msgsRobotMsgSize(owned), w = new Writer(n);
        Ros1Xarm_msgsRobotMsgWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 130, 90);
        if(owned.length < 66)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsRobotMsgRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsRobotMsgSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["state"], 2, true);
    n = addSize(n, 2);
    integer(value["mode"], 2, true);
    n = addSize(n, 2);
    integer(value["cmdnum"], 2, true);
    n = addSize(n, 2);
    integer(value["mt_brake"], 2, true);
    n = addSize(n, 2);
    integer(value["mt_able"], 2, true);
    n = addSize(n, 2);
    integer(value["err"], 2, true);
    n = addSize(n, 2);
    integer(value["warn"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["angle"]) || value["angle"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["angle"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["pose"]) || value["pose"].length !== 6)
        bad();
    for(const element of value["pose"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["offset"]) || value["offset"].length !== 6)
        bad();
    for(const element of value["offset"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 130)
        bad(90);
    return n;
}

function Ros1Xarm_msgsRobotMsgWrite(value, w)
{
    w.v.setInt16(w.at, value["state"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["mode"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["cmdnum"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["mt_brake"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["mt_able"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["err"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["warn"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["angle"].length, true);
    w.at += 4;
    for(const element of value["angle"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["pose"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["offset"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Xarm_msgsRobotMsgRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["state"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["cmdnum"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mt_brake"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mt_able"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["err"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["warn"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["angle"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["angle"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pose"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pose"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["offset"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["offset"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Xarm_msgsRobotMsgCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["cmdnum"];
        out["cmdnum"] = field;
    }
    {
        const field = value["mt_brake"];
        out["mt_brake"] = field;
    }
    {
        const field = value["mt_able"];
        out["mt_able"] = field;
    }
    {
        const field = value["err"];
        out["err"] = field;
    }
    {
        const field = value["warn"];
        out["warn"] = field;
    }
    {
        const field = value["angle"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["angle"] = values;
    }
    {
        const field = value["pose"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pose"] = values;
    }
    {
        const field = value["offset"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["offset"] = values;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetAxisRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetAxisRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0, "data" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetAxisRequestSize(Ros1Xarm_msgsSetAxisRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetAxisRequestCapture(value), n = Ros1Xarm_msgsSetAxisRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetAxisRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetAxisRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetAxisRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 2, true);
    n = addSize(n, 2);
    integer(value["data"], 2, true);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetAxisRequestWrite(value, w)
{
    w.v.setInt16(w.at, value["id"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["data"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetAxisRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetAxisRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetAxisResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetAxisResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetAxisResponseSize(Ros1Xarm_msgsSetAxisResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetAxisResponseCapture(value), n = Ros1Xarm_msgsSetAxisResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetAxisResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetAxisResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetAxisResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetAxisResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsSetAxisResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetAxisResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetDigitalIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetDigitalIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"io_num" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetDigitalIORequestSize(Ros1Xarm_msgsSetDigitalIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetDigitalIORequestCapture(value), n = Ros1Xarm_msgsSetDigitalIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetDigitalIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetDigitalIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetDigitalIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["io_num"], 2, true);
    n = addSize(n, 2);
    integer(value["value"], 2, true);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetDigitalIORequestWrite(value, w)
{
    w.v.setInt16(w.at, value["io_num"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["value"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetDigitalIORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["io_num"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetDigitalIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["io_num"];
        out["io_num"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetDigitalIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetDigitalIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetDigitalIOResponseSize(Ros1Xarm_msgsSetDigitalIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetDigitalIOResponseCapture(value), n = Ros1Xarm_msgsSetDigitalIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetDigitalIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetDigitalIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetDigitalIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetDigitalIOResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsSetDigitalIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetDigitalIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetInt16Request codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetInt16RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetInt16RequestSize(Ros1Xarm_msgsSetInt16RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetInt16RequestCapture(value), n = Ros1Xarm_msgsSetInt16RequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetInt16RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetInt16RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetInt16RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["data"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetInt16RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["data"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetInt16RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetInt16RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetInt16Response codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetInt16ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetInt16ResponseSize(Ros1Xarm_msgsSetInt16ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetInt16ResponseCapture(value), n = Ros1Xarm_msgsSetInt16ResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetInt16ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetInt16ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetInt16ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetInt16ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsSetInt16ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetInt16ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetLoadRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetLoadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mass" : 0, "xc" : 0, "yc" : 0, "zc" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetLoadRequestSize(Ros1Xarm_msgsSetLoadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetLoadRequestCapture(value), n = Ros1Xarm_msgsSetLoadRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetLoadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetLoadRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetLoadRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["mass"] !== "number" || !Number.isFinite(value["mass"]) || !Number.isFinite(Math.fround(value["mass"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["xc"] !== "number" || !Number.isFinite(value["xc"]) || !Number.isFinite(Math.fround(value["xc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["yc"] !== "number" || !Number.isFinite(value["yc"]) || !Number.isFinite(Math.fround(value["yc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["zc"] !== "number" || !Number.isFinite(value["zc"]) || !Number.isFinite(Math.fround(value["zc"])))
        bad();
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetLoadRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["mass"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["xc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["yc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["zc"], true);
    w.at += 4;
}

function Ros1Xarm_msgsSetLoadRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mass"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["xc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["zc"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetLoadRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mass"];
        out["mass"] = field;
    }
    {
        const field = value["xc"];
        out["xc"] = field;
    }
    {
        const field = value["yc"];
        out["yc"] = field;
    }
    {
        const field = value["zc"];
        out["zc"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetLoadResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetLoadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetLoadResponseSize(Ros1Xarm_msgsSetLoadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetLoadResponseCapture(value), n = Ros1Xarm_msgsSetLoadResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetLoadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetLoadResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetLoadResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetLoadResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsSetLoadResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetLoadResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetToolModbusRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetToolModbusRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"send_data" : [], "respond_len" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetToolModbusRequestSize(Ros1Xarm_msgsSetToolModbusRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetToolModbusRequestCapture(value), n = Ros1Xarm_msgsSetToolModbusRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetToolModbusRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetToolModbusRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetToolModbusRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["send_data"]) || value["send_data"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["send_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    integer(value["respond_len"], 2, true);
    n = addSize(n, 2);
    if(n > 262)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetToolModbusRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["send_data"].length, true);
    w.at += 4;
    for(const element of value["send_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setInt16(w.at, value["respond_len"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetToolModbusRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["send_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["send_data"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["respond_len"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetToolModbusRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["send_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 256)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["send_data"] = values;
    }
    {
        const field = value["respond_len"];
        out["respond_len"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/SetToolModbusResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetToolModbusResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "respond_data" : []};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetToolModbusResponseSize(Ros1Xarm_msgsSetToolModbusResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetToolModbusResponseCapture(value), n = Ros1Xarm_msgsSetToolModbusResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetToolModbusResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetToolModbusResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetToolModbusResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["respond_data"]) || value["respond_data"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["respond_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 262)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetToolModbusResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["respond_data"].length, true);
    w.at += 4;
    for(const element of value["respond_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Xarm_msgsSetToolModbusResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["respond_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["respond_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Xarm_msgsSetToolModbusResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["respond_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 256)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["respond_data"] = values;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/TCPOffsetRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsTCPOffsetRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "roll" : 0, "pitch" : 0, "yaw" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsTCPOffsetRequestSize(Ros1Xarm_msgsTCPOffsetRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsTCPOffsetRequestCapture(value), n = Ros1Xarm_msgsTCPOffsetRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsTCPOffsetRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsTCPOffsetRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsTCPOffsetRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]) || !Number.isFinite(Math.fround(value["x"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]) || !Number.isFinite(Math.fround(value["y"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]) || !Number.isFinite(Math.fround(value["z"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["roll"] !== "number" || !Number.isFinite(value["roll"]) || !Number.isFinite(Math.fround(value["roll"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["pitch"] !== "number" || !Number.isFinite(value["pitch"]) || !Number.isFinite(Math.fround(value["pitch"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["yaw"] !== "number" || !Number.isFinite(value["yaw"]) || !Number.isFinite(Math.fround(value["yaw"])))
        bad();
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros1Xarm_msgsTCPOffsetRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["y"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["z"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["roll"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["pitch"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["yaw"], true);
    w.at += 4;
}

function Ros1Xarm_msgsTCPOffsetRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["roll"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pitch"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yaw"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsTCPOffsetRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["roll"];
        out["roll"] = field;
    }
    {
        const field = value["pitch"];
        out["pitch"] = field;
    }
    {
        const field = value["yaw"];
        out["yaw"] = field;
    }
    return out;
}

/** @brief Complete ROS1 xarm_msgs/TCPOffsetResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsTCPOffsetResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773",
    maxWireBytes : 134,
    minWireBytes : 6,
    cartesianMaxWireBytes : 134n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsTCPOffsetResponseSize(Ros1Xarm_msgsTCPOffsetResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsTCPOffsetResponseCapture(value), n = Ros1Xarm_msgsTCPOffsetResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsTCPOffsetResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 134, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsTCPOffsetResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsTCPOffsetResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 134)
        bad(90);
    return n;
}

function Ros1Xarm_msgsTCPOffsetResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 128);
}

function Ros1Xarm_msgsTCPOffsetResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsTCPOffsetResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}
