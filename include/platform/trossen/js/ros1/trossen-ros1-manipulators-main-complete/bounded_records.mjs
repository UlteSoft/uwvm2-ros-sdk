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

/** @brief Complete ROS1 interbotix_uxarm_joy/ArmJoy codec; maxima are not actual lengths. */
export const Ros1Interbotix_uxarm_joyArmJoyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53",
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
        "EE_YAW_CCW" : 7,
        "EE_YAW_CW" : 8,
        "EE_PITCH_UP" : 9,
        "EE_PITCH_DOWN" : 10,
        "WAIST_CCW" : 11,
        "WAIST_CW" : 12,
        "GRIPPER_OPEN" : 13,
        "GRIPPER_CLOSE" : 14,
        "HOME_POSE" : 15,
        "HOLDUP_POSE" : 16,
        "SPEED_INC" : 17,
        "SPEED_DEC" : 18,
        "SPEED_COARSE" : 19,
        "SPEED_FINE" : 20,
        "GRIPPER_SPEED_INC" : 21,
        "GRIPPER_SPEED_DEC" : 22,
        "MODE_SERVO" : 23,
        "MODE_TEACH" : 24
    }),
    defaultValue() {
        return {
            "ee_x_cmd" : 0,
            "ee_y_cmd" : 0,
            "ee_z_cmd" : 0,
            "ee_yaw_cmd" : 0,
            "ee_pitch_cmd" : 0,
            "waist_cmd" : 0,
            "gripper_cmd" : 0,
            "pose_cmd" : 0,
            "speed_cmd" : 0,
            "speed_toggle_cmd" : 0,
            "gripper_speed_cmd" : 0,
            "mode_cmd" : 0
        };
    },
    validateValue(value) {
        Ros1Interbotix_uxarm_joyArmJoySize(Ros1Interbotix_uxarm_joyArmJoyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Interbotix_uxarm_joyArmJoyCapture(value), n = Ros1Interbotix_uxarm_joyArmJoySize(owned), w = new Writer(n);
        Ros1Interbotix_uxarm_joyArmJoyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Interbotix_uxarm_joyArmJoyRead(r);
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

function Ros1Interbotix_uxarm_joyArmJoySize(value)
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
    integer(value["ee_yaw_cmd"], 1, true);
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
    integer(value["gripper_speed_cmd"], 1, true);
    n = addSize(n, 1);
    integer(value["mode_cmd"], 1, true);
    n = addSize(n, 1);
    if(n > 12)
        bad(90);
    return n;
}

function Ros1Interbotix_uxarm_joyArmJoyWrite(value, w)
{
    w.v.setInt8(w.at, value["ee_x_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_y_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_z_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ee_yaw_cmd"], true);
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
    w.v.setInt8(w.at, value["gripper_speed_cmd"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode_cmd"], true);
    w.at += 1;
}

function Ros1Interbotix_uxarm_joyArmJoyRead(r)
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
        value["ee_yaw_cmd"] = decoded;
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
        value["gripper_speed_cmd"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode_cmd"] = decoded;
    }
    return value;
}

function Ros1Interbotix_uxarm_joyArmJoyCapture(value)
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
        const field = value["ee_yaw_cmd"];
        out["ee_yaw_cmd"] = field;
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
        const field = value["gripper_speed_cmd"];
        out["gripper_speed_cmd"] = field;
    }
    {
        const field = value["mode_cmd"];
        out["mode_cmd"] = field;
    }
    return out;
}
