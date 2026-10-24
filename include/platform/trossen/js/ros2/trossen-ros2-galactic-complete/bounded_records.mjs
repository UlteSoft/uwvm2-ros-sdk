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

/** @brief Complete ROS2 builtin_interfaces/msg/Duration codec; maxima are not actual lengths. */
export const Ros2Builtin_interfacesMsgDurationCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sec" : 0, "nanosec" : 0};
    },
    validateValue(value) {
        Ros2Builtin_interfacesMsgDurationSize(Ros2Builtin_interfacesMsgDurationCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Builtin_interfacesMsgDurationCapture(value), n = Ros2Builtin_interfacesMsgDurationSize(owned), w = new Writer(n);
        Ros2Builtin_interfacesMsgDurationWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Builtin_interfacesMsgDurationRead(r);
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

function Ros2Builtin_interfacesMsgDurationSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sec"], 4, true);
    n = addSize(n, 4);
    integer(value["nanosec"], 4, false);
    n = addSize(n, 4);
    if(value["nanosec"] >= 1000000000)
        bad();
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Builtin_interfacesMsgDurationWrite(value, w)
{
    w.v.setInt32(w.at, value["sec"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["nanosec"], true);
    w.at += 4;
}

function Ros2Builtin_interfacesMsgDurationRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["sec"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["nanosec"] = decoded;
    }
    if(value["nanosec"] >= 1000000000)
        bad();
    return value;
}

function Ros2Builtin_interfacesMsgDurationCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sec"];
        out["sec"] = field;
    }
    {
        const field = value["nanosec"];
        out["nanosec"] = field;
    }
    return out;
}

/** @brief Complete ROS2 builtin_interfaces/msg/Time codec; maxima are not actual lengths. */
export const Ros2Builtin_interfacesMsgTimeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sec" : 0, "nanosec" : 0};
    },
    validateValue(value) {
        Ros2Builtin_interfacesMsgTimeSize(Ros2Builtin_interfacesMsgTimeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Builtin_interfacesMsgTimeCapture(value), n = Ros2Builtin_interfacesMsgTimeSize(owned), w = new Writer(n);
        Ros2Builtin_interfacesMsgTimeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Builtin_interfacesMsgTimeRead(r);
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

function Ros2Builtin_interfacesMsgTimeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sec"], 4, true);
    n = addSize(n, 4);
    integer(value["nanosec"], 4, false);
    n = addSize(n, 4);
    if(value["nanosec"] >= 1000000000)
        bad();
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Builtin_interfacesMsgTimeWrite(value, w)
{
    w.v.setInt32(w.at, value["sec"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["nanosec"], true);
    w.at += 4;
}

function Ros2Builtin_interfacesMsgTimeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["sec"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["nanosec"] = decoded;
    }
    if(value["nanosec"] >= 1000000000)
        bad();
    return value;
}

function Ros2Builtin_interfacesMsgTimeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sec"];
        out["sec"] = field;
    }
    {
        const field = value["nanosec"];
        out["nanosec"] = field;
    }
    return out;
}

/** @brief Complete ROS2 interbotix_xs_msgs/msg/ArmJoy codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsMsgArmJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f",
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
        "GRIPPER_RELEASE" : 13,
        "GRIPPER_GRASP" : 14,
        "HOME_POSE" : 15,
        "SLEEP_POSE" : 16,
        "SPEED_INC" : 17,
        "SPEED_DEC" : 18,
        "SPEED_COARSE" : 19,
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
        Ros2Interbotix_xs_msgsMsgArmJoySize(Ros2Interbotix_xs_msgsMsgArmJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsMsgArmJoyCapture(value), n = Ros2Interbotix_xs_msgsMsgArmJoySize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsMsgArmJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsMsgArmJoyRead(r);
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

function Ros2Interbotix_xs_msgsMsgArmJoySize(value)
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

function Ros2Interbotix_xs_msgsMsgArmJoyWrite(value, w)
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

function Ros2Interbotix_xs_msgsMsgArmJoyRead(r)
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

function Ros2Interbotix_xs_msgsMsgArmJoyCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/msg/HexJoy codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsMsgHexJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d",
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
        "SPEED_COARSE" : 31,
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
        Ros2Interbotix_xs_msgsMsgHexJoySize(Ros2Interbotix_xs_msgsMsgHexJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsMsgHexJoyCapture(value), n = Ros2Interbotix_xs_msgsMsgHexJoySize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsMsgHexJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsMsgHexJoyRead(r);
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

function Ros2Interbotix_xs_msgsMsgHexJoySize(value)
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

function Ros2Interbotix_xs_msgsMsgHexJoyWrite(value, w)
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

function Ros2Interbotix_xs_msgsMsgHexJoyRead(r)
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

function Ros2Interbotix_xs_msgsMsgHexJoyCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/msg/JointGroupCommand codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsMsgJointGroupCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a",
    maxWireBytes : 392,
    minWireBytes : 8,
    cartesianMaxWireBytes : 392n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "cmd" : []};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsMsgJointGroupCommandSize(Ros2Interbotix_xs_msgsMsgJointGroupCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsMsgJointGroupCommandCapture(value), n = Ros2Interbotix_xs_msgsMsgJointGroupCommandSize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsMsgJointGroupCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 392, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsMsgJointGroupCommandRead(r);
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

function Ros2Interbotix_xs_msgsMsgJointGroupCommandSize(value)
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

function Ros2Interbotix_xs_msgsMsgJointGroupCommandWrite(value, w)
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

function Ros2Interbotix_xs_msgsMsgJointGroupCommandRead(r)
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

function Ros2Interbotix_xs_msgsMsgJointGroupCommandCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/msg/JointSingleCommand codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsMsgJointSingleCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "cmd" : 0};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsMsgJointSingleCommandSize(Ros2Interbotix_xs_msgsMsgJointSingleCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsMsgJointSingleCommandCapture(value), n = Ros2Interbotix_xs_msgsMsgJointSingleCommandSize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsMsgJointSingleCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsMsgJointSingleCommandRead(r);
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

function Ros2Interbotix_xs_msgsMsgJointSingleCommandSize(value)
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

function Ros2Interbotix_xs_msgsMsgJointSingleCommandWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setFloat32(w.at, value["cmd"], true);
    w.at += 4;
}

function Ros2Interbotix_xs_msgsMsgJointSingleCommandRead(r)
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

function Ros2Interbotix_xs_msgsMsgJointSingleCommandCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/msg/JointTemps codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsMsgJointTempsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4",
    maxWireBytes : 8712,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8712n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"names" : [], "temps" : []};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsMsgJointTempsSize(Ros2Interbotix_xs_msgsMsgJointTempsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsMsgJointTempsCapture(value), n = Ros2Interbotix_xs_msgsMsgJointTempsSize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsMsgJointTempsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8712, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsMsgJointTempsRead(r);
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

function Ros2Interbotix_xs_msgsMsgJointTempsSize(value)
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

function Ros2Interbotix_xs_msgsMsgJointTempsWrite(value, w)
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

function Ros2Interbotix_xs_msgsMsgJointTempsRead(r)
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

function Ros2Interbotix_xs_msgsMsgJointTempsCapture(value)
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

/** @brief Complete ROS2 std_msgs/msg/Header codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue(), "frame_id" : ""};
    },
    validateValue(value) {
        Ros2Std_msgsMsgHeaderSize(Ros2Std_msgsMsgHeaderCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Std_msgsMsgHeaderCapture(value), n = Ros2Std_msgsMsgHeaderSize(owned), w = new Writer(n);
        Ros2Std_msgsMsgHeaderWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Std_msgsMsgHeaderRead(r);
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

function Ros2Std_msgsMsgHeaderSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["stamp"]));
    n = addSize(n, 4 + textBytes(value["frame_id"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgHeaderWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
    w.text(value["frame_id"], 128);
}

function Ros2Std_msgsMsgHeaderRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamp"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["frame_id"] = decoded;
    }
    return value;
}

function Ros2Std_msgsMsgHeaderCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stamp"];
        out["stamp"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    {
        const field = value["frame_id"];
        out["frame_id"] = field;
    }
    return out;
}

/** @brief Complete ROS2 trajectory_msgs/msg/JointTrajectoryPoint codec; maxima are not actual lengths. */
export const Ros2Trajectory_msgsMsgJointTrajectoryPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1",
    maxWireBytes : 536,
    minWireBytes : 24,
    cartesianMaxWireBytes : 536n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "positions" : [],
            "velocities" : [],
            "accelerations" : [],
            "effort" : [],
            "time_from_start" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Trajectory_msgsMsgJointTrajectoryPointSize(Ros2Trajectory_msgsMsgJointTrajectoryPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Trajectory_msgsMsgJointTrajectoryPointCapture(value), n = Ros2Trajectory_msgsMsgJointTrajectoryPointSize(owned), w = new Writer(n);
        Ros2Trajectory_msgsMsgJointTrajectoryPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 536, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Trajectory_msgsMsgJointTrajectoryPointRead(r);
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

function Ros2Trajectory_msgsMsgJointTrajectoryPointSize(value)
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
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["time_from_start"]));
    if(n > 536)
        bad(90);
    return n;
}

function Ros2Trajectory_msgsMsgJointTrajectoryPointWrite(value, w)
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
    Ros2Builtin_interfacesMsgDurationWrite(value["time_from_start"], w);
}

function Ros2Trajectory_msgsMsgJointTrajectoryPointRead(r)
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
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["time_from_start"] = decoded;
    }
    return value;
}

function Ros2Trajectory_msgsMsgJointTrajectoryPointCapture(value)
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
        out["time_from_start"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 trajectory_msgs/msg/JointTrajectory codec; maxima are not actual lengths. */
export const Ros2Trajectory_msgsMsgJointTrajectoryCodec = Object.freeze({
    codecIdentity : "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7",
    maxWireBytes : 4404,
    minWireBytes : 20,
    cartesianMaxWireBytes : 4404n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "joint_names" : [], "points" : []};
    },
    validateValue(value) {
        Ros2Trajectory_msgsMsgJointTrajectorySize(Ros2Trajectory_msgsMsgJointTrajectoryCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Trajectory_msgsMsgJointTrajectoryCapture(value), n = Ros2Trajectory_msgsMsgJointTrajectorySize(owned), w = new Writer(n);
        Ros2Trajectory_msgsMsgJointTrajectoryWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4404, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Trajectory_msgsMsgJointTrajectoryRead(r);
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

function Ros2Trajectory_msgsMsgJointTrajectorySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
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
        n = addSize(n, Ros2Trajectory_msgsMsgJointTrajectoryPointSize(element));
    }
    if(n > 4404)
        bad(90);
    return n;
}

function Ros2Trajectory_msgsMsgJointTrajectoryWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
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
        Ros2Trajectory_msgsMsgJointTrajectoryPointWrite(element, w);
    }
}

function Ros2Trajectory_msgsMsgJointTrajectoryRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
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
                const decoded = Ros2Trajectory_msgsMsgJointTrajectoryPointRead(r);
                value["points"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Trajectory_msgsMsgJointTrajectoryCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
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
            values[i] = Ros2Trajectory_msgsMsgJointTrajectoryPointCapture(element);
        }
        out["points"] = values;
    }
    return out;
}

/** @brief Complete ROS2 interbotix_xs_msgs/msg/JointTrajectoryCommand codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52",
    maxWireBytes : 4668,
    minWireBytes : 28,
    cartesianMaxWireBytes : 4668n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "traj" : Ros2Trajectory_msgsMsgJointTrajectoryCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandSize(Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandCapture(value), n = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandSize(owned),
              w = new Writer(n);
        Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4668, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandRead(r);
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

function Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["cmd_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, Ros2Trajectory_msgsMsgJointTrajectorySize(value["traj"]));
    if(n > 4668)
        bad(90);
    return n;
}

function Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    Ros2Trajectory_msgsMsgJointTrajectoryWrite(value["traj"], w);
}

function Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandRead(r)
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
        const decoded = Ros2Trajectory_msgsMsgJointTrajectoryRead(r);
        value["traj"] = decoded;
    }
    return value;
}

function Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandCapture(value)
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
        out["traj"] = Ros2Trajectory_msgsMsgJointTrajectoryCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 interbotix_xs_msgs/msg/LocobotJoy codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsMsgLocobotJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633",
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
        "GRIPPER_RELEASE" : 19,
        "GRIPPER_GRASP" : 20,
        "HOME_POSE" : 21,
        "SLEEP_POSE" : 22,
        "SPEED_INC" : 23,
        "SPEED_DEC" : 24,
        "SPEED_COARSE" : 25,
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
        Ros2Interbotix_xs_msgsMsgLocobotJoySize(Ros2Interbotix_xs_msgsMsgLocobotJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsMsgLocobotJoyCapture(value), n = Ros2Interbotix_xs_msgsMsgLocobotJoySize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsMsgLocobotJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 30, 90);
        if(owned.length < 30)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsMsgLocobotJoyRead(r);
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

function Ros2Interbotix_xs_msgsMsgLocobotJoySize(value)
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

function Ros2Interbotix_xs_msgsMsgLocobotJoyWrite(value, w)
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

function Ros2Interbotix_xs_msgsMsgLocobotJoyRead(r)
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

function Ros2Interbotix_xs_msgsMsgLocobotJoyCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/msg/TurretJoy codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsMsgTurretJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f",
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
        "SPEED_COARSE" : 8,
        "SPEED_FINE" : 9
    }),
    defaultValue() {
        return {"pan_cmd" : 0, "tilt_cmd" : 0, "speed_cmd" : 0, "speed_toggle_cmd" : 0};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsMsgTurretJoySize(Ros2Interbotix_xs_msgsMsgTurretJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsMsgTurretJoyCapture(value), n = Ros2Interbotix_xs_msgsMsgTurretJoySize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsMsgTurretJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsMsgTurretJoyRead(r);
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

function Ros2Interbotix_xs_msgsMsgTurretJoySize(value)
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

function Ros2Interbotix_xs_msgsMsgTurretJoyWrite(value, w)
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

function Ros2Interbotix_xs_msgsMsgTurretJoyRead(r)
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

function Ros2Interbotix_xs_msgsMsgTurretJoyCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/MotorGains_Request codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvMotorGains_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f",
    maxWireBytes : 292,
    minWireBytes : 36,
    cartesianMaxWireBytes : 292n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "kp_pos" : 0, "ki_pos" : 0, "kd_pos" : 0, "k1" : 0, "k2" : 0, "kp_vel" : 0, "ki_vel" : 0};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvMotorGains_RequestSize(Ros2Interbotix_xs_msgsSrvMotorGains_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvMotorGains_RequestCapture(value), n = Ros2Interbotix_xs_msgsSrvMotorGains_RequestSize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvMotorGains_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 292, 90);
        if(owned.length < 36)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvMotorGains_RequestRead(r);
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

function Ros2Interbotix_xs_msgsSrvMotorGains_RequestSize(value)
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

function Ros2Interbotix_xs_msgsSrvMotorGains_RequestWrite(value, w)
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

function Ros2Interbotix_xs_msgsSrvMotorGains_RequestRead(r)
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

function Ros2Interbotix_xs_msgsSrvMotorGains_RequestCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/MotorGains_Response codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvMotorGains_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvMotorGains_ResponseSize(Ros2Interbotix_xs_msgsSrvMotorGains_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvMotorGains_ResponseCapture(value), n = Ros2Interbotix_xs_msgsSrvMotorGains_ResponseSize(owned),
              w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvMotorGains_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvMotorGains_ResponseRead(r);
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

function Ros2Interbotix_xs_msgsSrvMotorGains_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Interbotix_xs_msgsSrvMotorGains_ResponseWrite(value, w)
{
}

function Ros2Interbotix_xs_msgsSrvMotorGains_ResponseRead(r)
{
    const value = {};
    return value;
}

function Ros2Interbotix_xs_msgsSrvMotorGains_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 interbotix_xs_msgs/srv/OperatingModes_Request codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvOperatingModes_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15",
    maxWireBytes : 536,
    minWireBytes : 24,
    cartesianMaxWireBytes : 536n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "mode" : "", "profile_type" : "", "profile_velocity" : 0, "profile_acceleration" : 0};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvOperatingModes_RequestSize(Ros2Interbotix_xs_msgsSrvOperatingModes_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvOperatingModes_RequestCapture(value), n = Ros2Interbotix_xs_msgsSrvOperatingModes_RequestSize(owned),
              w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvOperatingModes_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 536, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvOperatingModes_RequestRead(r);
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

function Ros2Interbotix_xs_msgsSrvOperatingModes_RequestSize(value)
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

function Ros2Interbotix_xs_msgsSrvOperatingModes_RequestWrite(value, w)
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

function Ros2Interbotix_xs_msgsSrvOperatingModes_RequestRead(r)
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

function Ros2Interbotix_xs_msgsSrvOperatingModes_RequestCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/OperatingModes_Response codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseSize(Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseCapture(value), n = Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseSize(owned),
              w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseRead(r);
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

function Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseWrite(value, w)
{
}

function Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseRead(r)
{
    const value = {};
    return value;
}

function Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 interbotix_xs_msgs/srv/Reboot_Request codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvReboot_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55",
    maxWireBytes : 266,
    minWireBytes : 10,
    cartesianMaxWireBytes : 266n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "enable" : false, "smart_reboot" : false};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvReboot_RequestSize(Ros2Interbotix_xs_msgsSrvReboot_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvReboot_RequestCapture(value), n = Ros2Interbotix_xs_msgsSrvReboot_RequestSize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvReboot_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 266, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvReboot_RequestRead(r);
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

function Ros2Interbotix_xs_msgsSrvReboot_RequestSize(value)
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

function Ros2Interbotix_xs_msgsSrvReboot_RequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    w.v.setUint8(w.at, value["enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["smart_reboot"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Interbotix_xs_msgsSrvReboot_RequestRead(r)
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

function Ros2Interbotix_xs_msgsSrvReboot_RequestCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/Reboot_Response codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvReboot_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvReboot_ResponseSize(Ros2Interbotix_xs_msgsSrvReboot_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvReboot_ResponseCapture(value), n = Ros2Interbotix_xs_msgsSrvReboot_ResponseSize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvReboot_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvReboot_ResponseRead(r);
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

function Ros2Interbotix_xs_msgsSrvReboot_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Interbotix_xs_msgsSrvReboot_ResponseWrite(value, w)
{
}

function Ros2Interbotix_xs_msgsSrvReboot_ResponseRead(r)
{
    const value = {};
    return value;
}

function Ros2Interbotix_xs_msgsSrvReboot_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 interbotix_xs_msgs/srv/RegisterValues_Request codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvRegisterValues_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd",
    maxWireBytes : 400,
    minWireBytes : 16,
    cartesianMaxWireBytes : 400n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "reg" : "", "value" : 0};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvRegisterValues_RequestSize(Ros2Interbotix_xs_msgsSrvRegisterValues_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvRegisterValues_RequestCapture(value), n = Ros2Interbotix_xs_msgsSrvRegisterValues_RequestSize(owned),
              w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvRegisterValues_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 400, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvRegisterValues_RequestRead(r);
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

function Ros2Interbotix_xs_msgsSrvRegisterValues_RequestSize(value)
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

function Ros2Interbotix_xs_msgsSrvRegisterValues_RequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    w.text(value["reg"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Interbotix_xs_msgsSrvRegisterValues_RequestRead(r)
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

function Ros2Interbotix_xs_msgsSrvRegisterValues_RequestCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/RegisterValues_Response codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"values" : []};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseSize(Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseCapture(value), n = Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseSize(owned),
              w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseRead(r);
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

function Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseSize(value)
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

function Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseRead(r)
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

function Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/RobotInfo_Request codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvRobotInfo_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : ""};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvRobotInfo_RequestSize(Ros2Interbotix_xs_msgsSrvRobotInfo_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvRobotInfo_RequestCapture(value), n = Ros2Interbotix_xs_msgsSrvRobotInfo_RequestSize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvRobotInfo_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvRobotInfo_RequestRead(r);
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

function Ros2Interbotix_xs_msgsSrvRobotInfo_RequestSize(value)
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

function Ros2Interbotix_xs_msgsSrvRobotInfo_RequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
}

function Ros2Interbotix_xs_msgsSrvRobotInfo_RequestRead(r)
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

function Ros2Interbotix_xs_msgsSrvRobotInfo_RequestCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/RobotInfo_Response codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14",
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
        Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseSize(Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseCapture(value), n = Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseSize(owned), w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 18474, 90);
        if(owned.length < 42)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseRead(r);
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

function Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseSize(value)
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

function Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseWrite(value, w)
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

function Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseRead(r)
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

function Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/TorqueEnable_Request codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da",
    maxWireBytes : 265,
    minWireBytes : 9,
    cartesianMaxWireBytes : 265n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"cmd_type" : "", "name" : "", "enable" : false};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestSize(Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestCapture(value), n = Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestSize(owned),
              w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 265, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestRead(r);
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

function Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestSize(value)
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

function Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestWrite(value, w)
{
    w.text(value["cmd_type"], 128);
    w.text(value["name"], 128);
    w.v.setUint8(w.at, value["enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestRead(r)
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

function Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestCapture(value)
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

/** @brief Complete ROS2 interbotix_xs_msgs/srv/TorqueEnable_Response codec; maxima are not actual lengths. */
export const Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseSize(Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseCapture(value), n = Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseSize(owned),
              w = new Writer(n);
        Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseRead(r);
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

function Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseWrite(value, w)
{
}

function Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseRead(r)
{
    const value = {};
    return value;
}

function Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}
