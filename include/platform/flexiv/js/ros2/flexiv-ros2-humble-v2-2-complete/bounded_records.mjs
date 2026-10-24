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

/** @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Goal codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionErrorRecovery_GoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionErrorRecovery_GoalSize(Ros2Flexiv_msgsActionErrorRecovery_GoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionErrorRecovery_GoalCapture(value), n = Ros2Flexiv_msgsActionErrorRecovery_GoalSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionErrorRecovery_GoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionErrorRecovery_GoalRead(r);
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

function Ros2Flexiv_msgsActionErrorRecovery_GoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionErrorRecovery_GoalWrite(value, w)
{
}

function Ros2Flexiv_msgsActionErrorRecovery_GoalRead(r)
{
    const value = {};
    return value;
}

function Ros2Flexiv_msgsActionErrorRecovery_GoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Result codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionErrorRecovery_ResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc",
    maxWireBytes : 263,
    minWireBytes : 7,
    cartesianMaxWireBytes : 263n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "message" : "", "requires_controller_restart" : false, "recovery_policy" : 0};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionErrorRecovery_ResultSize(Ros2Flexiv_msgsActionErrorRecovery_ResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionErrorRecovery_ResultCapture(value), n = Ros2Flexiv_msgsActionErrorRecovery_ResultSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionErrorRecovery_ResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 263, 90);
        if(owned.length < 7)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionErrorRecovery_ResultRead(r);
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

function Ros2Flexiv_msgsActionErrorRecovery_ResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(typeof value["requires_controller_restart"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["recovery_policy"], 1, false);
    n = addSize(n, 1);
    if(n > 263)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionErrorRecovery_ResultWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 256);
    w.v.setUint8(w.at, value["requires_controller_restart"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["recovery_policy"], true);
    w.at += 1;
}

function Ros2Flexiv_msgsActionErrorRecovery_ResultRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["requires_controller_restart"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["recovery_policy"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsActionErrorRecovery_ResultCapture(value)
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
    {
        const field = value["requires_controller_restart"];
        out["requires_controller_restart"] = field;
    }
    {
        const field = value["recovery_policy"];
        out["recovery_policy"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Feedback codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739",
    maxWireBytes : 265,
    minWireBytes : 9,
    cartesianMaxWireBytes : 265n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "STATE_IDLE" : 0,
        "STATE_CLASSIFY" : 1,
        "STATE_STOP" : 2,
        "STATE_CLEAR_FAULT" : 3,
        "STATE_WAIT_FAULT_CLEARED" : 4,
        "STATE_SERVO_ON" : 5,
        "STATE_WAIT_OPERATIONAL" : 6,
        "STATE_COMPLETE" : 7,
        "STATE_FAILED" : 8
    }),
    defaultValue() {
        return {"recovery_state" : 0, "recovery_state_name" : "", "elapsed_seconds" : 0};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionErrorRecovery_FeedbackSize(Ros2Flexiv_msgsActionErrorRecovery_FeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionErrorRecovery_FeedbackCapture(value), n = Ros2Flexiv_msgsActionErrorRecovery_FeedbackSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionErrorRecovery_FeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 265, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionErrorRecovery_FeedbackRead(r);
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

function Ros2Flexiv_msgsActionErrorRecovery_FeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["recovery_state"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["recovery_state_name"], 256).length);
    if(typeof value["elapsed_seconds"] !== "number" || !Number.isFinite(value["elapsed_seconds"]) || !Number.isFinite(Math.fround(value["elapsed_seconds"])))
        bad();
    n = addSize(n, 4);
    if(n > 265)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionErrorRecovery_FeedbackWrite(value, w)
{
    w.v.setUint8(w.at, value["recovery_state"], true);
    w.at += 1;
    w.text(value["recovery_state_name"], 256);
    w.v.setFloat32(w.at, value["elapsed_seconds"], true);
    w.at += 4;
}

function Ros2Flexiv_msgsActionErrorRecovery_FeedbackRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["recovery_state"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["recovery_state_name"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["elapsed_seconds"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsActionErrorRecovery_FeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["recovery_state"];
        out["recovery_state"] = field;
    }
    {
        const field = value["recovery_state_name"];
        out["recovery_state_name"] = field;
    }
    {
        const field = value["elapsed_seconds"];
        out["elapsed_seconds"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/action/Grasp_Goal codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionGrasp_GoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"force" : 0};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionGrasp_GoalSize(Ros2Flexiv_msgsActionGrasp_GoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionGrasp_GoalCapture(value), n = Ros2Flexiv_msgsActionGrasp_GoalSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionGrasp_GoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionGrasp_GoalRead(r);
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

function Ros2Flexiv_msgsActionGrasp_GoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["force"] !== "number" || !Number.isFinite(value["force"]))
        bad();
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionGrasp_GoalWrite(value, w)
{
    w.v.setFloat64(w.at, value["force"], true);
    w.at += 8;
}

function Ros2Flexiv_msgsActionGrasp_GoalRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsActionGrasp_GoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["force"];
        out["force"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/action/Grasp_Result codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionGrasp_ResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "error" : ""};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionGrasp_ResultSize(Ros2Flexiv_msgsActionGrasp_ResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionGrasp_ResultCapture(value), n = Ros2Flexiv_msgsActionGrasp_ResultSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionGrasp_ResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionGrasp_ResultRead(r);
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

function Ros2Flexiv_msgsActionGrasp_ResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["error"], 256).length);
    if(n > 261)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionGrasp_ResultWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["error"], 256);
}

function Ros2Flexiv_msgsActionGrasp_ResultRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsActionGrasp_ResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/action/Grasp_Feedback codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionGrasp_FeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05",
    maxWireBytes : 17,
    minWireBytes : 17,
    cartesianMaxWireBytes : 17n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"current_width" : 0, "current_force" : 0, "moving" : false};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionGrasp_FeedbackSize(Ros2Flexiv_msgsActionGrasp_FeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionGrasp_FeedbackCapture(value), n = Ros2Flexiv_msgsActionGrasp_FeedbackSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionGrasp_FeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionGrasp_FeedbackRead(r);
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

function Ros2Flexiv_msgsActionGrasp_FeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["current_width"] !== "number" || !Number.isFinite(value["current_width"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["current_force"] !== "number" || !Number.isFinite(value["current_force"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["moving"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 17)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionGrasp_FeedbackWrite(value, w)
{
    w.v.setFloat64(w.at, value["current_width"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["current_force"], true);
    w.at += 8;
    w.v.setUint8(w.at, value["moving"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Flexiv_msgsActionGrasp_FeedbackRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["current_width"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["current_force"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["moving"] = decoded !== 0;
    }
    return value;
}

function Ros2Flexiv_msgsActionGrasp_FeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["current_width"];
        out["current_width"] = field;
    }
    {
        const field = value["current_force"];
        out["current_force"] = field;
    }
    {
        const field = value["moving"];
        out["moving"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/action/Move_Goal codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionMove_GoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"width" : 0, "velocity" : 0, "max_force" : 0};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionMove_GoalSize(Ros2Flexiv_msgsActionMove_GoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionMove_GoalCapture(value), n = Ros2Flexiv_msgsActionMove_GoalSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionMove_GoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionMove_GoalRead(r);
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

function Ros2Flexiv_msgsActionMove_GoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["width"] !== "number" || !Number.isFinite(value["width"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["velocity"] !== "number" || !Number.isFinite(value["velocity"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["max_force"] !== "number" || !Number.isFinite(value["max_force"]))
        bad();
    n = addSize(n, 8);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionMove_GoalWrite(value, w)
{
    w.v.setFloat64(w.at, value["width"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["velocity"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["max_force"], true);
    w.at += 8;
}

function Ros2Flexiv_msgsActionMove_GoalRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["max_force"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsActionMove_GoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["velocity"];
        out["velocity"] = field;
    }
    {
        const field = value["max_force"];
        out["max_force"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/action/Move_Result codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionMove_ResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "error" : ""};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionMove_ResultSize(Ros2Flexiv_msgsActionMove_ResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionMove_ResultCapture(value), n = Ros2Flexiv_msgsActionMove_ResultSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionMove_ResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionMove_ResultRead(r);
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

function Ros2Flexiv_msgsActionMove_ResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["error"], 256).length);
    if(n > 261)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionMove_ResultWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["error"], 256);
}

function Ros2Flexiv_msgsActionMove_ResultRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsActionMove_ResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/action/Move_Feedback codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsActionMove_FeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38",
    maxWireBytes : 17,
    minWireBytes : 17,
    cartesianMaxWireBytes : 17n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"current_width" : 0, "current_force" : 0, "moving" : false};
    },
    validateValue(value) {
        Ros2Flexiv_msgsActionMove_FeedbackSize(Ros2Flexiv_msgsActionMove_FeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsActionMove_FeedbackCapture(value), n = Ros2Flexiv_msgsActionMove_FeedbackSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsActionMove_FeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsActionMove_FeedbackRead(r);
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

function Ros2Flexiv_msgsActionMove_FeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["current_width"] !== "number" || !Number.isFinite(value["current_width"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["current_force"] !== "number" || !Number.isFinite(value["current_force"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["moving"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 17)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsActionMove_FeedbackWrite(value, w)
{
    w.v.setFloat64(w.at, value["current_width"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["current_force"], true);
    w.at += 8;
    w.v.setUint8(w.at, value["moving"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Flexiv_msgsActionMove_FeedbackRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["current_width"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["current_force"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["moving"] = decoded !== 0;
    }
    return value;
}

function Ros2Flexiv_msgsActionMove_FeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["current_width"];
        out["current_width"] = field;
    }
    {
        const field = value["current_force"];
        out["current_force"] = field;
    }
    {
        const field = value["moving"];
        out["moving"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/Digital codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgDigitalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pin" : 0, "state" : false};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgDigitalSize(Ros2Flexiv_msgsMsgDigitalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgDigitalCapture(value), n = Ros2Flexiv_msgsMsgDigitalSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgDigitalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgDigitalRead(r);
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

function Ros2Flexiv_msgsMsgDigitalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pin"], 1, false);
    n = addSize(n, 1);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgDigitalWrite(value, w)
{
    w.v.setUint8(w.at, value["pin"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Flexiv_msgsMsgDigitalRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["pin"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Flexiv_msgsMsgDigitalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pin"];
        out["pin"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/GPIOStates codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgGPIOStatesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"states" : []};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgGPIOStatesSize(Ros2Flexiv_msgsMsgGPIOStatesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgGPIOStatesCapture(value), n = Ros2Flexiv_msgsMsgGPIOStatesSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgGPIOStatesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgGPIOStatesRead(r);
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

function Ros2Flexiv_msgsMsgGPIOStatesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["states"]) || value["states"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["states"])
    {
        n = addSize(n, Ros2Flexiv_msgsMsgDigitalSize(element));
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgGPIOStatesWrite(value, w)
{
    w.v.setUint32(w.at, value["states"].length, true);
    w.at += 4;
    for(const element of value["states"])
    {
        Ros2Flexiv_msgsMsgDigitalWrite(element, w);
    }
}

function Ros2Flexiv_msgsMsgGPIOStatesRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["states"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Flexiv_msgsMsgDigitalRead(r);
                value["states"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Flexiv_msgsMsgGPIOStatesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["states"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Flexiv_msgsMsgDigitalCapture(element);
        }
        out["states"] = values;
    }
    return out;
}

/** @brief Complete ROS2 std_msgs/msg/Header codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
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
        const owned = copyRaw(bytes, 268, 90);
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
    n = addSize(n, 4 + textBytes(value["frame_id"], 256).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgHeaderWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
    w.text(value["frame_id"], 256);
}

function Ros2Std_msgsMsgHeaderRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamp"] = decoded;
    }
    {
        const decoded = r.text(256);
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

/** @brief Complete ROS2 flexiv_msgs/msg/JointImpedance codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgJointImpedanceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a",
    maxWireBytes : 9373,
    minWireBytes : 29,
    cartesianMaxWireBytes : 9373n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "joint_names" : [], "k_q" : [], "z_q" : [], "k_q_nom" : [], "in_effect" : false};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgJointImpedanceSize(Ros2Flexiv_msgsMsgJointImpedanceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgJointImpedanceCapture(value), n = Ros2Flexiv_msgsMsgJointImpedanceSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgJointImpedanceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9373, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgJointImpedanceRead(r);
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

function Ros2Flexiv_msgsMsgJointImpedanceSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["k_q"]) || value["k_q"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["k_q"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["z_q"]) || value["z_q"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["z_q"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["k_q_nom"]) || value["k_q_nom"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["k_q_nom"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["in_effect"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 9373)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgJointImpedanceWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["k_q"].length, true);
    w.at += 4;
    for(const element of value["k_q"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["z_q"].length, true);
    w.at += 4;
    for(const element of value["z_q"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["k_q_nom"].length, true);
    w.at += 4;
    for(const element of value["k_q_nom"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["in_effect"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Flexiv_msgsMsgJointImpedanceRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["k_q"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["k_q"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["z_q"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["z_q"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["k_q_nom"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["k_q_nom"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["in_effect"] = decoded !== 0;
    }
    return value;
}

function Ros2Flexiv_msgsMsgJointImpedanceCapture(value)
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
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        const field = value["k_q"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["k_q"] = values;
    }
    {
        const field = value["z_q"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["z_q"] = values;
    }
    {
        const field = value["k_q_nom"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["k_q_nom"] = values;
    }
    {
        const field = value["in_effect"];
        out["in_effect"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/JointInertiaScale codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgJointInertiaScaleCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f",
    maxWireBytes : 8853,
    minWireBytes : 21,
    cartesianMaxWireBytes : 8853n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "joint_names" : [], "inertia_scales" : [], "in_effect" : false};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgJointInertiaScaleSize(Ros2Flexiv_msgsMsgJointInertiaScaleCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgJointInertiaScaleCapture(value), n = Ros2Flexiv_msgsMsgJointInertiaScaleSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgJointInertiaScaleWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8853, 90);
        if(owned.length < 21)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgJointInertiaScaleRead(r);
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

function Ros2Flexiv_msgsMsgJointInertiaScaleSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["inertia_scales"]) || value["inertia_scales"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["inertia_scales"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["in_effect"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 8853)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgJointInertiaScaleWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["inertia_scales"].length, true);
    w.at += 4;
    for(const element of value["inertia_scales"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["in_effect"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Flexiv_msgsMsgJointInertiaScaleRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["inertia_scales"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["inertia_scales"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["in_effect"] = decoded !== 0;
    }
    return value;
}

function Ros2Flexiv_msgsMsgJointInertiaScaleCapture(value)
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
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        const field = value["inertia_scales"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["inertia_scales"] = values;
    }
    {
        const field = value["in_effect"];
        out["in_effect"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/JointPosVel codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgJointPosVelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca",
    maxWireBytes : 520,
    minWireBytes : 8,
    cartesianMaxWireBytes : 520n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"positions" : [], "velocities" : []};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgJointPosVelSize(Ros2Flexiv_msgsMsgJointPosVelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgJointPosVelCapture(value), n = Ros2Flexiv_msgsMsgJointPosVelSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgJointPosVelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 520, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgJointPosVelRead(r);
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

function Ros2Flexiv_msgsMsgJointPosVelSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["positions"]) || value["positions"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["positions"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["velocities"]) || value["velocities"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocities"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 520)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgJointPosVelWrite(value, w)
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
}

function Ros2Flexiv_msgsMsgJointPosVelRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
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
            if(count > 32)
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
    return value;
}

function Ros2Flexiv_msgsMsgJointPosVelCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["positions"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["velocities"] = values;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/MaxContactTorque codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgMaxContactTorqueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da",
    maxWireBytes : 9113,
    minWireBytes : 25,
    cartesianMaxWireBytes : 9113n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "joint_names" : [], "max_contact_torques" : [], "tau_max" : [], "in_effect" : false};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgMaxContactTorqueSize(Ros2Flexiv_msgsMsgMaxContactTorqueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgMaxContactTorqueCapture(value), n = Ros2Flexiv_msgsMsgMaxContactTorqueSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgMaxContactTorqueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9113, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgMaxContactTorqueRead(r);
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

function Ros2Flexiv_msgsMsgMaxContactTorqueSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["max_contact_torques"]) || value["max_contact_torques"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["max_contact_torques"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau_max"]) || value["tau_max"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["tau_max"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["in_effect"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 9113)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgMaxContactTorqueWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["max_contact_torques"].length, true);
    w.at += 4;
    for(const element of value["max_contact_torques"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["tau_max"].length, true);
    w.at += 4;
    for(const element of value["tau_max"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["in_effect"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Flexiv_msgsMsgMaxContactTorqueRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["max_contact_torques"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["max_contact_torques"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["tau_max"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau_max"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["in_effect"] = decoded !== 0;
    }
    return value;
}

function Ros2Flexiv_msgsMsgMaxContactTorqueCapture(value)
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
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        const field = value["max_contact_torques"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["max_contact_torques"] = values;
    }
    {
        const field = value["tau_max"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau_max"] = values;
    }
    {
        const field = value["in_effect"];
        out["in_effect"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/Mode codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgModeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "MODE_UNKNOWN" : 0,
        "MODE_IDLE" : 1,
        "MODE_RT_JOINT_TORQUE" : 2,
        "MODE_RT_JOINT_IMPEDANCE" : 3,
        "MODE_NRT_JOINT_IMPEDANCE" : 4,
        "MODE_RT_JOINT_POSITION" : 5,
        "MODE_NRT_JOINT_POSITION" : 6,
        "MODE_NRT_PLAN_EXECUTION" : 7,
        "MODE_NRT_PRIMITIVE_EXECUTION" : 8,
        "MODE_RT_CARTESIAN_MOTION_FORCE" : 9,
        "MODE_NRT_CARTESIAN_MOTION_FORCE" : 10,
        "MODE_NRT_SUPER_PRIMITIVE" : 11
    }),
    defaultValue() {
        return {"mode" : 0};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgModeSize(Ros2Flexiv_msgsMsgModeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgModeCapture(value), n = Ros2Flexiv_msgsMsgModeSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgModeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgModeRead(r);
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

function Ros2Flexiv_msgsMsgModeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgModeWrite(value, w)
{
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
}

function Ros2Flexiv_msgsMsgModeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsMsgModeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/RobotEvent codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgRobotEventCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17",
    maxWireBytes : 1053,
    minWireBytes : 29,
    cartesianMaxWireBytes : 1053n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"LEVEL_UNKNOWN" : 0, "LEVEL_INFO" : 1, "LEVEL_WARNING" : 2, "LEVEL_ERROR" : 3, "LEVEL_CRITICAL" : 4}),
    defaultValue() {
        return {
            "level" : 0,
            "id" : 0,
            "description" : "",
            "consequences" : "",
            "probable_causes" : "",
            "recommended_actions" : "",
            "timestamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgRobotEventSize(Ros2Flexiv_msgsMsgRobotEventCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgRobotEventCapture(value), n = Ros2Flexiv_msgsMsgRobotEventSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgRobotEventWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1053, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgRobotEventRead(r);
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

function Ros2Flexiv_msgsMsgRobotEventSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["level"], 1, false);
    n = addSize(n, 1);
    integer(value["id"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["description"], 256).length);
    n = addSize(n, 4 + textBytes(value["consequences"], 256).length);
    n = addSize(n, 4 + textBytes(value["probable_causes"], 256).length);
    n = addSize(n, 4 + textBytes(value["recommended_actions"], 256).length);
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["timestamp"]));
    if(n > 1053)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgRobotEventWrite(value, w)
{
    w.v.setUint8(w.at, value["level"], true);
    w.at += 1;
    w.v.setInt32(w.at, value["id"], true);
    w.at += 4;
    w.text(value["description"], 256);
    w.text(value["consequences"], 256);
    w.text(value["probable_causes"], 256);
    w.text(value["recommended_actions"], 256);
    Ros2Builtin_interfacesMsgTimeWrite(value["timestamp"], w);
}

function Ros2Flexiv_msgsMsgRobotEventRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["level"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["description"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["consequences"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["probable_causes"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["recommended_actions"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["timestamp"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsMsgRobotEventCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["level"];
        out["level"] = field;
    }
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["description"];
        out["description"] = field;
    }
    {
        const field = value["consequences"];
        out["consequences"] = field;
    }
    {
        const field = value["probable_causes"];
        out["probable_causes"] = field;
    }
    {
        const field = value["recommended_actions"];
        out["recommended_actions"] = field;
    }
    {
        const field = value["timestamp"];
        out["timestamp"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/OperationalStatus codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgOperationalStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62",
    maxWireBytes : 17650,
    minWireBytes : 34,
    cartesianMaxWireBytes : 17650n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "STATUS_UNKNOWN" : 0,
        "STATUS_READY" : 1,
        "STATUS_BOOTING" : 2,
        "STATUS_ESTOP_NOT_RELEASED" : 3,
        "STATUS_NOT_SERVO_ON" : 4,
        "STATUS_RELEASING_BRAKE" : 5,
        "STATUS_MINOR_FAULT" : 6,
        "STATUS_CRITICAL_FAULT" : 7,
        "STATUS_IN_REDUCED_STATE" : 8,
        "STATUS_IN_RECOVERY_STATE" : 9,
        "STATUS_IN_MANUAL_MODE" : 10,
        "STATUS_IN_AUTO_MODE" : 11,
        "DRIVER_UNINITIALIZED" : 0,
        "DRIVER_READY" : 1,
        "DRIVER_FAULT" : 2,
        "DRIVER_RECOVERING" : 3,
        "DRIVER_LOCKOUT" : 4,
        "DRIVER_DISCONNECTED" : 5
    }),
    defaultValue() {
        return {
            "header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(),
            "operational_status" : 0,
            "operational_status_name" : "",
            "driver_state" : 0,
            "connected" : false,
            "fault" : false,
            "operational" : false,
            "estop_released" : false,
            "reduced" : false,
            "recovery_state" : false,
            "control_mode" : 0,
            "recovery_policy" : 0,
            "message" : "",
            "recent_events" : []
        };
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgOperationalStatusSize(Ros2Flexiv_msgsMsgOperationalStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgOperationalStatusCapture(value), n = Ros2Flexiv_msgsMsgOperationalStatusSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgOperationalStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17650, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgOperationalStatusRead(r);
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

function Ros2Flexiv_msgsMsgOperationalStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    integer(value["operational_status"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["operational_status_name"], 256).length);
    integer(value["driver_state"], 1, false);
    n = addSize(n, 1);
    if(typeof value["connected"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["fault"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["operational"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["estop_released"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["reduced"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["recovery_state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["control_mode"], 1, true);
    n = addSize(n, 1);
    integer(value["recovery_policy"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["recent_events"]) || value["recent_events"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["recent_events"])
    {
        n = addSize(n, Ros2Flexiv_msgsMsgRobotEventSize(element));
    }
    if(n > 17650)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgOperationalStatusWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setUint8(w.at, value["operational_status"], true);
    w.at += 1;
    w.text(value["operational_status_name"], 256);
    w.v.setUint8(w.at, value["driver_state"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["connected"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["fault"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["operational"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["estop_released"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["reduced"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["recovery_state"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt8(w.at, value["control_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["recovery_policy"], true);
    w.at += 1;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["recent_events"].length, true);
    w.at += 4;
    for(const element of value["recent_events"])
    {
        Ros2Flexiv_msgsMsgRobotEventWrite(element, w);
    }
}

function Ros2Flexiv_msgsMsgOperationalStatusRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["operational_status"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["operational_status_name"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["driver_state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["connected"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["fault"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["operational"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["estop_released"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["reduced"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["recovery_state"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["control_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["recovery_policy"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["recent_events"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Flexiv_msgsMsgRobotEventRead(r);
                value["recent_events"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Flexiv_msgsMsgOperationalStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["operational_status"];
        out["operational_status"] = field;
    }
    {
        const field = value["operational_status_name"];
        out["operational_status_name"] = field;
    }
    {
        const field = value["driver_state"];
        out["driver_state"] = field;
    }
    {
        const field = value["connected"];
        out["connected"] = field;
    }
    {
        const field = value["fault"];
        out["fault"] = field;
    }
    {
        const field = value["operational"];
        out["operational"] = field;
    }
    {
        const field = value["estop_released"];
        out["estop_released"] = field;
    }
    {
        const field = value["reduced"];
        out["reduced"] = field;
    }
    {
        const field = value["recovery_state"];
        out["recovery_state"] = field;
    }
    {
        const field = value["control_mode"];
        out["control_mode"] = field;
    }
    {
        const field = value["recovery_policy"];
        out["recovery_policy"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["recent_events"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Flexiv_msgsMsgRobotEventCapture(element);
        }
        out["recent_events"] = values;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/RecoveryPolicy codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgRecoveryPolicyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"NONE" : 0, "TRANSIENT" : 1, "AUTO_RECOVERABLE" : 2, "WAIT_OPERATOR" : 3, "SAFETY_LOCKOUT" : 4, "CONNECTION_LOST" : 5}),
    defaultValue() {
        return {"recovery_policy" : 0};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgRecoveryPolicySize(Ros2Flexiv_msgsMsgRecoveryPolicyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgRecoveryPolicyCapture(value), n = Ros2Flexiv_msgsMsgRecoveryPolicySize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgRecoveryPolicyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgRecoveryPolicyRead(r);
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

function Ros2Flexiv_msgsMsgRecoveryPolicySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["recovery_policy"], 1, false);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgRecoveryPolicyWrite(value, w)
{
    w.v.setUint8(w.at, value["recovery_policy"], true);
    w.at += 1;
}

function Ros2Flexiv_msgsMsgRecoveryPolicyRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["recovery_policy"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsMsgRecoveryPolicyCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["recovery_policy"];
        out["recovery_policy"] = field;
    }
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/Point codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgPointSize(Ros2Geometry_msgsMsgPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgPointCapture(value), n = Ros2Geometry_msgsMsgPointSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgPointRead(r);
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

function Ros2Geometry_msgsMsgPointSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]))
        bad();
    n = addSize(n, 8);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgPointWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros2Geometry_msgsMsgPointRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgPointCapture(value)
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
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/Quaternion codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgQuaternionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0.0, "y" : 0.0, "z" : 0.0, "w" : 1.0};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgQuaternionSize(Ros2Geometry_msgsMsgQuaternionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgQuaternionCapture(value), n = Ros2Geometry_msgsMsgQuaternionSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgQuaternionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgQuaternionRead(r);
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

function Ros2Geometry_msgsMsgQuaternionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["w"] !== "number" || !Number.isFinite(value["w"]))
        bad();
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgQuaternionWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["w"], true);
    w.at += 8;
}

function Ros2Geometry_msgsMsgQuaternionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["w"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgQuaternionCapture(value)
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
        const field = value["w"];
        out["w"] = field;
    }
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/Pose codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgPoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"position" : Ros2Geometry_msgsMsgPointCodec.defaultValue(), "orientation" : Ros2Geometry_msgsMsgQuaternionCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgPoseSize(Ros2Geometry_msgsMsgPoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgPoseCapture(value), n = Ros2Geometry_msgsMsgPoseSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgPoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgPoseRead(r);
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

function Ros2Geometry_msgsMsgPoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPointSize(value["position"]));
    n = addSize(n, Ros2Geometry_msgsMsgQuaternionSize(value["orientation"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgPoseWrite(value, w)
{
    Ros2Geometry_msgsMsgPointWrite(value["position"], w);
    Ros2Geometry_msgsMsgQuaternionWrite(value["orientation"], w);
}

function Ros2Geometry_msgsMsgPoseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPointRead(r);
        value["position"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgQuaternionRead(r);
        value["orientation"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgPoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["position"];
        out["position"] = Ros2Geometry_msgsMsgPointCapture(field);
    }
    {
        const field = value["orientation"];
        out["orientation"] = Ros2Geometry_msgsMsgQuaternionCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/PoseStamped codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgPoseStampedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad",
    maxWireBytes : 324,
    minWireBytes : 68,
    cartesianMaxWireBytes : 324n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgPoseStampedSize(Ros2Geometry_msgsMsgPoseStampedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgPoseStampedCapture(value), n = Ros2Geometry_msgsMsgPoseStampedSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgPoseStampedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 324, 90);
        if(owned.length < 68)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgPoseStampedRead(r);
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

function Ros2Geometry_msgsMsgPoseStampedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    if(n > 324)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgPoseStampedWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
}

function Ros2Geometry_msgsMsgPoseStampedRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgPoseStampedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/Vector3 codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgVector3Codec = Object.freeze({
    codecIdentity : "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgVector3Size(Ros2Geometry_msgsMsgVector3Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgVector3Capture(value), n = Ros2Geometry_msgsMsgVector3Size(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgVector3Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgVector3Read(r);
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

function Ros2Geometry_msgsMsgVector3Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]))
        bad();
    n = addSize(n, 8);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgVector3Write(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros2Geometry_msgsMsgVector3Read(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgVector3Capture(value)
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
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/Twist codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgTwistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"linear" : Ros2Geometry_msgsMsgVector3Codec.defaultValue(), "angular" : Ros2Geometry_msgsMsgVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgTwistSize(Ros2Geometry_msgsMsgTwistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgTwistCapture(value), n = Ros2Geometry_msgsMsgTwistSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgTwistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgTwistRead(r);
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

function Ros2Geometry_msgsMsgTwistSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["linear"]));
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["angular"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgTwistWrite(value, w)
{
    Ros2Geometry_msgsMsgVector3Write(value["linear"], w);
    Ros2Geometry_msgsMsgVector3Write(value["angular"], w);
}

function Ros2Geometry_msgsMsgTwistRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["linear"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["angular"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgTwistCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["linear"];
        out["linear"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    {
        const field = value["angular"];
        out["angular"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/TwistStamped codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgTwistStampedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308",
    maxWireBytes : 316,
    minWireBytes : 60,
    cartesianMaxWireBytes : 316n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "twist" : Ros2Geometry_msgsMsgTwistCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgTwistStampedSize(Ros2Geometry_msgsMsgTwistStampedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgTwistStampedCapture(value), n = Ros2Geometry_msgsMsgTwistStampedSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgTwistStampedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 316, 90);
        if(owned.length < 60)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgTwistStampedRead(r);
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

function Ros2Geometry_msgsMsgTwistStampedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    n = addSize(n, Ros2Geometry_msgsMsgTwistSize(value["twist"]));
    if(n > 316)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgTwistStampedWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    Ros2Geometry_msgsMsgTwistWrite(value["twist"], w);
}

function Ros2Geometry_msgsMsgTwistStampedRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgTwistRead(r);
        value["twist"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgTwistStampedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["twist"];
        out["twist"] = Ros2Geometry_msgsMsgTwistCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/Wrench codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgWrenchCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"force" : Ros2Geometry_msgsMsgVector3Codec.defaultValue(), "torque" : Ros2Geometry_msgsMsgVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgWrenchSize(Ros2Geometry_msgsMsgWrenchCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgWrenchCapture(value), n = Ros2Geometry_msgsMsgWrenchSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgWrenchWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgWrenchRead(r);
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

function Ros2Geometry_msgsMsgWrenchSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["force"]));
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["torque"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgWrenchWrite(value, w)
{
    Ros2Geometry_msgsMsgVector3Write(value["force"], w);
    Ros2Geometry_msgsMsgVector3Write(value["torque"], w);
}

function Ros2Geometry_msgsMsgWrenchRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["force"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["torque"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgWrenchCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["force"];
        out["force"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    {
        const field = value["torque"];
        out["torque"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/WrenchStamped codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgWrenchStampedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177",
    maxWireBytes : 316,
    minWireBytes : 60,
    cartesianMaxWireBytes : 316n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "wrench" : Ros2Geometry_msgsMsgWrenchCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgWrenchStampedSize(Ros2Geometry_msgsMsgWrenchStampedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgWrenchStampedCapture(value), n = Ros2Geometry_msgsMsgWrenchStampedSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgWrenchStampedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 316, 90);
        if(owned.length < 60)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgWrenchStampedRead(r);
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

function Ros2Geometry_msgsMsgWrenchStampedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchSize(value["wrench"]));
    if(n > 316)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgWrenchStampedWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    Ros2Geometry_msgsMsgWrenchWrite(value["wrench"], w);
}

function Ros2Geometry_msgsMsgWrenchStampedRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchRead(r);
        value["wrench"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgWrenchStampedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["wrench"];
        out["wrench"] = Ros2Geometry_msgsMsgWrenchCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/RobotStates codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgRobotStatesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a",
    maxWireBytes : 5160,
    minWireBytes : 552,
    cartesianMaxWireBytes : 5160n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(),
            "robot_timestamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue(),
            "q" : [],
            "theta" : [],
            "dq" : [],
            "dtheta" : [],
            "tau" : [],
            "tau_dot" : [],
            "tau_ext" : [],
            "tau_interact" : [],
            "temperature" : [],
            "tcp_pose" : Ros2Geometry_msgsMsgPoseStampedCodec.defaultValue(),
            "tcp_twist" : Ros2Geometry_msgsMsgTwistStampedCodec.defaultValue(),
            "flange_pose" : Ros2Geometry_msgsMsgPoseStampedCodec.defaultValue(),
            "raw_ft_sensor" : Ros2Geometry_msgsMsgWrenchStampedCodec.defaultValue(),
            "tcp_wrench_local" : Ros2Geometry_msgsMsgWrenchStampedCodec.defaultValue(),
            "tcp_wrench" : Ros2Geometry_msgsMsgWrenchStampedCodec.defaultValue(),
            "raw_tcp_wrench_local" : Ros2Geometry_msgsMsgWrenchStampedCodec.defaultValue(),
            "raw_tcp_wrench" : Ros2Geometry_msgsMsgWrenchStampedCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgRobotStatesSize(Ros2Flexiv_msgsMsgRobotStatesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgRobotStatesCapture(value), n = Ros2Flexiv_msgsMsgRobotStatesSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgRobotStatesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5160, 90);
        if(owned.length < 552)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgRobotStatesRead(r);
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

function Ros2Flexiv_msgsMsgRobotStatesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["robot_timestamp"]));
    if(!Array.isArray(value["q"]) || value["q"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["q"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["theta"]) || value["theta"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["theta"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["dq"]) || value["dq"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["dq"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["dtheta"]) || value["dtheta"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["dtheta"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau"]) || value["tau"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["tau"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau_dot"]) || value["tau_dot"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["tau_dot"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau_ext"]) || value["tau_ext"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["tau_ext"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau_interact"]) || value["tau_interact"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["tau_interact"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["temperature"]) || value["temperature"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["temperature"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    n = addSize(n, Ros2Geometry_msgsMsgPoseStampedSize(value["tcp_pose"]));
    n = addSize(n, Ros2Geometry_msgsMsgTwistStampedSize(value["tcp_twist"]));
    n = addSize(n, Ros2Geometry_msgsMsgPoseStampedSize(value["flange_pose"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchStampedSize(value["raw_ft_sensor"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchStampedSize(value["tcp_wrench_local"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchStampedSize(value["tcp_wrench"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchStampedSize(value["raw_tcp_wrench_local"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchStampedSize(value["raw_tcp_wrench"]));
    if(n > 5160)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgRobotStatesWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    Ros2Builtin_interfacesMsgTimeWrite(value["robot_timestamp"], w);
    w.v.setUint32(w.at, value["q"].length, true);
    w.at += 4;
    for(const element of value["q"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["theta"].length, true);
    w.at += 4;
    for(const element of value["theta"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["dq"].length, true);
    w.at += 4;
    for(const element of value["dq"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["dtheta"].length, true);
    w.at += 4;
    for(const element of value["dtheta"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["tau"].length, true);
    w.at += 4;
    for(const element of value["tau"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["tau_dot"].length, true);
    w.at += 4;
    for(const element of value["tau_dot"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["tau_ext"].length, true);
    w.at += 4;
    for(const element of value["tau_ext"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["tau_interact"].length, true);
    w.at += 4;
    for(const element of value["tau_interact"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["temperature"].length, true);
    w.at += 4;
    for(const element of value["temperature"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    Ros2Geometry_msgsMsgPoseStampedWrite(value["tcp_pose"], w);
    Ros2Geometry_msgsMsgTwistStampedWrite(value["tcp_twist"], w);
    Ros2Geometry_msgsMsgPoseStampedWrite(value["flange_pose"], w);
    Ros2Geometry_msgsMsgWrenchStampedWrite(value["raw_ft_sensor"], w);
    Ros2Geometry_msgsMsgWrenchStampedWrite(value["tcp_wrench_local"], w);
    Ros2Geometry_msgsMsgWrenchStampedWrite(value["tcp_wrench"], w);
    Ros2Geometry_msgsMsgWrenchStampedWrite(value["raw_tcp_wrench_local"], w);
    Ros2Geometry_msgsMsgWrenchStampedWrite(value["raw_tcp_wrench"], w);
}

function Ros2Flexiv_msgsMsgRobotStatesRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["robot_timestamp"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["q"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["q"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["theta"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["theta"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["dq"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["dq"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["dtheta"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["dtheta"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["tau"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["tau_dot"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau_dot"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["tau_ext"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau_ext"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["tau_interact"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau_interact"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["temperature"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["temperature"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseStampedRead(r);
        value["tcp_pose"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgTwistStampedRead(r);
        value["tcp_twist"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseStampedRead(r);
        value["flange_pose"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchStampedRead(r);
        value["raw_ft_sensor"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchStampedRead(r);
        value["tcp_wrench_local"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchStampedRead(r);
        value["tcp_wrench"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchStampedRead(r);
        value["raw_tcp_wrench_local"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchStampedRead(r);
        value["raw_tcp_wrench"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsMsgRobotStatesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["robot_timestamp"];
        out["robot_timestamp"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    {
        const field = value["q"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["q"] = values;
    }
    {
        const field = value["theta"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["theta"] = values;
    }
    {
        const field = value["dq"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["dq"] = values;
    }
    {
        const field = value["dtheta"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["dtheta"] = values;
    }
    {
        const field = value["tau"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau"] = values;
    }
    {
        const field = value["tau_dot"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau_dot"] = values;
    }
    {
        const field = value["tau_ext"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau_ext"] = values;
    }
    {
        const field = value["tau_interact"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau_interact"] = values;
    }
    {
        const field = value["temperature"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["temperature"] = values;
    }
    {
        const field = value["tcp_pose"];
        out["tcp_pose"] = Ros2Geometry_msgsMsgPoseStampedCapture(field);
    }
    {
        const field = value["tcp_twist"];
        out["tcp_twist"] = Ros2Geometry_msgsMsgTwistStampedCapture(field);
    }
    {
        const field = value["flange_pose"];
        out["flange_pose"] = Ros2Geometry_msgsMsgPoseStampedCapture(field);
    }
    {
        const field = value["raw_ft_sensor"];
        out["raw_ft_sensor"] = Ros2Geometry_msgsMsgWrenchStampedCapture(field);
    }
    {
        const field = value["tcp_wrench_local"];
        out["tcp_wrench_local"] = Ros2Geometry_msgsMsgWrenchStampedCapture(field);
    }
    {
        const field = value["tcp_wrench"];
        out["tcp_wrench"] = Ros2Geometry_msgsMsgWrenchStampedCapture(field);
    }
    {
        const field = value["raw_tcp_wrench_local"];
        out["raw_tcp_wrench_local"] = Ros2Geometry_msgsMsgWrenchStampedCapture(field);
    }
    {
        const field = value["raw_tcp_wrench"];
        out["raw_tcp_wrench"] = Ros2Geometry_msgsMsgWrenchStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/srv/GetOperationalStatus_Request codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Flexiv_msgsSrvGetOperationalStatus_RequestSize(Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCapture(value), n = Ros2Flexiv_msgsSrvGetOperationalStatus_RequestSize(owned),
              w = new Writer(n);
        Ros2Flexiv_msgsSrvGetOperationalStatus_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsSrvGetOperationalStatus_RequestRead(r);
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

function Ros2Flexiv_msgsSrvGetOperationalStatus_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsSrvGetOperationalStatus_RequestWrite(value, w)
{
}

function Ros2Flexiv_msgsSrvGetOperationalStatus_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/srv/GetOperationalStatus_Response codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da",
    maxWireBytes : 17650,
    minWireBytes : 34,
    cartesianMaxWireBytes : 17650n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : Ros2Flexiv_msgsMsgOperationalStatusCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseSize(Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCapture(value), n = Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseSize(owned),
              w = new Writer(n);
        Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17650, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseRead(r);
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

function Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Flexiv_msgsMsgOperationalStatusSize(value["status"]));
    if(n > 17650)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseWrite(value, w)
{
    Ros2Flexiv_msgsMsgOperationalStatusWrite(value["status"], w);
}

function Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Flexiv_msgsMsgOperationalStatusRead(r);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = Ros2Flexiv_msgsMsgOperationalStatusCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/srv/SetJointImpedance_Request codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08",
    maxWireBytes : 8844,
    minWireBytes : 12,
    cartesianMaxWireBytes : 8844n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_names" : [], "k_q" : [], "z_q" : []};
    },
    validateValue(value) {
        Ros2Flexiv_msgsSrvSetJointImpedance_RequestSize(Ros2Flexiv_msgsSrvSetJointImpedance_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsSrvSetJointImpedance_RequestCapture(value), n = Ros2Flexiv_msgsSrvSetJointImpedance_RequestSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsSrvSetJointImpedance_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8844, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsSrvSetJointImpedance_RequestRead(r);
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

function Ros2Flexiv_msgsSrvSetJointImpedance_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["k_q"]) || value["k_q"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["k_q"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["z_q"]) || value["z_q"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["z_q"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 8844)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsSrvSetJointImpedance_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["k_q"].length, true);
    w.at += 4;
    for(const element of value["k_q"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["z_q"].length, true);
    w.at += 4;
    for(const element of value["z_q"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Flexiv_msgsSrvSetJointImpedance_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["k_q"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["k_q"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["z_q"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["z_q"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Flexiv_msgsSrvSetJointImpedance_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_names"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        const field = value["k_q"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["k_q"] = values;
    }
    {
        const field = value["z_q"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["z_q"] = values;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/srv/SetJointImpedance_Response codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96",
    maxWireBytes : 9634,
    minWireBytes : 34,
    cartesianMaxWireBytes : 9634n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "message" : "", "setting" : Ros2Flexiv_msgsMsgJointImpedanceCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Flexiv_msgsSrvSetJointImpedance_ResponseSize(Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCapture(value), n = Ros2Flexiv_msgsSrvSetJointImpedance_ResponseSize(owned),
              w = new Writer(n);
        Ros2Flexiv_msgsSrvSetJointImpedance_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9634, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsSrvSetJointImpedance_ResponseRead(r);
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

function Ros2Flexiv_msgsSrvSetJointImpedance_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    n = addSize(n, Ros2Flexiv_msgsMsgJointImpedanceSize(value["setting"]));
    if(n > 9634)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsSrvSetJointImpedance_ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 256);
    Ros2Flexiv_msgsMsgJointImpedanceWrite(value["setting"], w);
}

function Ros2Flexiv_msgsSrvSetJointImpedance_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = Ros2Flexiv_msgsMsgJointImpedanceRead(r);
        value["setting"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCapture(value)
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
    {
        const field = value["setting"];
        out["setting"] = Ros2Flexiv_msgsMsgJointImpedanceCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/srv/SetJointInertiaScale_Request codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625",
    maxWireBytes : 8584,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8584n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_names" : [], "inertia_scales" : []};
    },
    validateValue(value) {
        Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestSize(Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCapture(value), n = Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestSize(owned),
              w = new Writer(n);
        Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8584, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestRead(r);
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

function Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["inertia_scales"]) || value["inertia_scales"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["inertia_scales"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 8584)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["inertia_scales"].length, true);
    w.at += 4;
    for(const element of value["inertia_scales"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["inertia_scales"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["inertia_scales"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_names"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        const field = value["inertia_scales"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["inertia_scales"] = values;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/srv/SetJointInertiaScale_Response codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931",
    maxWireBytes : 9114,
    minWireBytes : 26,
    cartesianMaxWireBytes : 9114n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "message" : "", "setting" : Ros2Flexiv_msgsMsgJointInertiaScaleCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseSize(Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCapture(value), n = Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseSize(owned),
              w = new Writer(n);
        Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9114, 90);
        if(owned.length < 26)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseRead(r);
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

function Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    n = addSize(n, Ros2Flexiv_msgsMsgJointInertiaScaleSize(value["setting"]));
    if(n > 9114)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 256);
    Ros2Flexiv_msgsMsgJointInertiaScaleWrite(value["setting"], w);
}

function Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = Ros2Flexiv_msgsMsgJointInertiaScaleRead(r);
        value["setting"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCapture(value)
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
    {
        const field = value["setting"];
        out["setting"] = Ros2Flexiv_msgsMsgJointInertiaScaleCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/srv/SetMaxContactTorque_Request codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e",
    maxWireBytes : 8584,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8584n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_names" : [], "max_contact_torques" : []};
    },
    validateValue(value) {
        Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestSize(Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCapture(value), n = Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestSize(owned),
              w = new Writer(n);
        Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8584, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestRead(r);
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

function Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["max_contact_torques"]) || value["max_contact_torques"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["max_contact_torques"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 8584)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["max_contact_torques"].length, true);
    w.at += 4;
    for(const element of value["max_contact_torques"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["max_contact_torques"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["max_contact_torques"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_names"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        const field = value["max_contact_torques"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["max_contact_torques"] = values;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/srv/SetMaxContactTorque_Response codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c",
    maxWireBytes : 9374,
    minWireBytes : 30,
    cartesianMaxWireBytes : 9374n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "message" : "", "setting" : Ros2Flexiv_msgsMsgMaxContactTorqueCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseSize(Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCapture(value), n = Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseSize(owned),
              w = new Writer(n);
        Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9374, 90);
        if(owned.length < 30)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseRead(r);
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

function Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    n = addSize(n, Ros2Flexiv_msgsMsgMaxContactTorqueSize(value["setting"]));
    if(n > 9374)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 256);
    Ros2Flexiv_msgsMsgMaxContactTorqueWrite(value["setting"], w);
}

function Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = Ros2Flexiv_msgsMsgMaxContactTorqueRead(r);
        value["setting"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCapture(value)
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
    {
        const field = value["setting"];
        out["setting"] = Ros2Flexiv_msgsMsgMaxContactTorqueCapture(field);
    }
    return out;
}
