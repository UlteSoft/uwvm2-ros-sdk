// @file bounded_records.mjs
// @brief Full fourier js codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in js. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
/**
 * Generated bounded-v2 canonical codecs. No ROS, filesystem or network imports.
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

/** Complete ROS2 uwvm_fourier_bridge/msg/GroupState codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeMsgGroupStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4",
    maxWireBytes : 1684,
    minWireBytes : 20,
    cartesianMaxWireBytes : 1684n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"group" : "", "position" : [], "velocity" : [], "effort" : [], "motion_state" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeMsgGroupStateSize(Ros2Uwvm_fourier_bridgeMsgGroupStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeMsgGroupStateCapture(value), n = Ros2Uwvm_fourier_bridgeMsgGroupStateSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeMsgGroupStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1684, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeMsgGroupStateRead(r);
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

function Ros2Uwvm_fourier_bridgeMsgGroupStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    if(!Array.isArray(value["position"]) || value["position"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["velocity"]) || value["velocity"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["effort"]) || value["effort"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["effort"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["motion_state"], 4, true);
    n = addSize(n, 4);
    if(n > 1684)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeMsgGroupStateWrite(value, w)
{
    w.text(value["group"], 128);
    w.v.setUint32(w.at, value["position"].length, true);
    w.at += 4;
    for(const element of value["position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["velocity"].length, true);
    w.at += 4;
    for(const element of value["velocity"])
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
    w.v.setInt32(w.at, value["motion_state"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeMsgGroupStateRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["position"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
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
        const decoded = r.v.getInt32(r.take(4), true);
        value["motion_state"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeMsgGroupStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["position"];
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
        out["position"] = values;
    }
    {
        const field = value["velocity"];
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
        out["velocity"] = values;
    }
    {
        const field = value["effort"];
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
        out["effort"] = values;
    }
    {
        const field = value["motion_state"];
        out["motion_state"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/msg/GroupValues codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3",
    maxWireBytes : 648,
    minWireBytes : 8,
    cartesianMaxWireBytes : 648n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"group" : "", "values" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeMsgGroupValuesSize(Ros2Uwvm_fourier_bridgeMsgGroupValuesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeMsgGroupValuesCapture(value), n = Ros2Uwvm_fourier_bridgeMsgGroupValuesSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeMsgGroupValuesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 648, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeMsgGroupValuesRead(r);
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

function Ros2Uwvm_fourier_bridgeMsgGroupValuesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 648)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeMsgGroupValuesWrite(value, w)
{
    w.text(value["group"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Uwvm_fourier_bridgeMsgGroupValuesRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeMsgGroupValuesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["values"];
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
        out["values"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/msg/MotionRecipe codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14",
    maxWireBytes : 1170,
    minWireBytes : 18,
    cartesianMaxWireBytes : 1170n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"move_type" : 0, "group" : "", "position" : [], "has_velocity" : false, "velocity" : [], "expected_velocity" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeMsgMotionRecipeSize(Ros2Uwvm_fourier_bridgeMsgMotionRecipeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeMsgMotionRecipeCapture(value), n = Ros2Uwvm_fourier_bridgeMsgMotionRecipeSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeMsgMotionRecipeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1170, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeMsgMotionRecipeRead(r);
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

function Ros2Uwvm_fourier_bridgeMsgMotionRecipeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["move_type"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    if(!Array.isArray(value["position"]) || value["position"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["has_velocity"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["velocity"]) || value["velocity"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["expected_velocity"], 4, true);
    n = addSize(n, 4);
    if(n > 1170)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeMsgMotionRecipeWrite(value, w)
{
    w.v.setUint8(w.at, value["move_type"], true);
    w.at += 1;
    w.text(value["group"], 128);
    w.v.setUint32(w.at, value["position"].length, true);
    w.at += 4;
    for(const element of value["position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["has_velocity"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint32(w.at, value["velocity"].length, true);
    w.at += 4;
    for(const element of value["velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt32(w.at, value["expected_velocity"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeMsgMotionRecipeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["move_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["position"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["has_velocity"] = decoded !== 0;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["velocity"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["expected_velocity"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeMsgMotionRecipeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["move_type"];
        out["move_type"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["position"];
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
        out["position"] = values;
    }
    {
        const field = value["has_velocity"];
        out["has_velocity"] = field;
    }
    {
        const field = value["velocity"];
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
        out["velocity"] = values;
    }
    {
        const field = value["expected_velocity"];
        out["expected_velocity"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/msg/Status codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeMsgStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e",
    maxWireBytes : 14400,
    minWireBytes : 32,
    cartesianMaxWireBytes : 14400n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "fsm_state" : 0,
            "fsm_name" : "",
            "upper_fsm_state" : 0,
            "upper_fsm_name" : "",
            "velocity_source" : 0,
            "velocity_source_name" : "",
            "stand_pose" : [],
            "groups" : []
        };
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeMsgStatusSize(Ros2Uwvm_fourier_bridgeMsgStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeMsgStatusCapture(value), n = Ros2Uwvm_fourier_bridgeMsgStatusSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeMsgStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 14400, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeMsgStatusRead(r);
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

function Ros2Uwvm_fourier_bridgeMsgStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["fsm_state"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["fsm_name"], 128).length);
    integer(value["upper_fsm_state"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["upper_fsm_name"], 128).length);
    integer(value["velocity_source"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["velocity_source_name"], 128).length);
    if(!Array.isArray(value["stand_pose"]) || value["stand_pose"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["stand_pose"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["groups"]) || value["groups"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["groups"])
    {
        n = addSize(n, Ros2Uwvm_fourier_bridgeMsgGroupStateSize(element));
    }
    if(n > 14400)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeMsgStatusWrite(value, w)
{
    w.v.setInt32(w.at, value["fsm_state"], true);
    w.at += 4;
    w.text(value["fsm_name"], 128);
    w.v.setInt32(w.at, value["upper_fsm_state"], true);
    w.at += 4;
    w.text(value["upper_fsm_name"], 128);
    w.v.setInt32(w.at, value["velocity_source"], true);
    w.at += 4;
    w.text(value["velocity_source_name"], 128);
    w.v.setUint32(w.at, value["stand_pose"].length, true);
    w.at += 4;
    for(const element of value["stand_pose"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["groups"].length, true);
    w.at += 4;
    for(const element of value["groups"])
    {
        Ros2Uwvm_fourier_bridgeMsgGroupStateWrite(element, w);
    }
}

function Ros2Uwvm_fourier_bridgeMsgStatusRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["fsm_state"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["fsm_name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["upper_fsm_state"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["upper_fsm_name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["velocity_source"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["velocity_source_name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["stand_pose"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["stand_pose"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["groups"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupStateRead(r);
                value["groups"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeMsgStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["fsm_state"];
        out["fsm_state"] = field;
    }
    {
        const field = value["fsm_name"];
        out["fsm_name"] = field;
    }
    {
        const field = value["upper_fsm_state"];
        out["upper_fsm_state"] = field;
    }
    {
        const field = value["upper_fsm_name"];
        out["upper_fsm_name"] = field;
    }
    {
        const field = value["velocity_source"];
        out["velocity_source"] = field;
    }
    {
        const field = value["velocity_source_name"];
        out["velocity_source_name"] = field;
    }
    {
        const field = value["stand_pose"];
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
        out["stand_pose"] = values;
    }
    {
        const field = value["groups"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Uwvm_fourier_bridgeMsgGroupStateCapture(element);
        }
        out["groups"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/msg/VelocityCommand codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d",
    maxWireBytes : 40,
    minWireBytes : 40,
    cartesianMaxWireBytes : 40n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "vx" : 0, "vy" : 0, "yaw" : 0, "duration" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeMsgVelocityCommandSize(Ros2Uwvm_fourier_bridgeMsgVelocityCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeMsgVelocityCommandCapture(value), n = Ros2Uwvm_fourier_bridgeMsgVelocityCommandSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeMsgVelocityCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 40, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeMsgVelocityCommandRead(r);
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

function Ros2Uwvm_fourier_bridgeMsgVelocityCommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(typeof value["vx"] !== "number" || !Number.isFinite(value["vx"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["vy"] !== "number" || !Number.isFinite(value["vy"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["yaw"] !== "number" || !Number.isFinite(value["yaw"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["duration"] !== "number" || !Number.isFinite(value["duration"]))
        bad();
    n = addSize(n, 8);
    if(n > 40)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeMsgVelocityCommandWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["vx"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["vy"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["yaw"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["duration"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeMsgVelocityCommandRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vx"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vy"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yaw"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["duration"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeMsgVelocityCommandCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["vx"];
        out["vx"] = field;
    }
    {
        const field = value["vy"];
        out["vy"] = field;
    }
    {
        const field = value["yaw"];
        out["yaw"] = field;
    }
    {
        const field = value["duration"];
        out["duration"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/ExecuteMove_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b",
    maxWireBytes : 9372,
    minWireBytes : 12,
    cartesianMaxWireBytes : 9372n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "moves" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestSize(Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9372, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["moves"]) || value["moves"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["moves"])
    {
        n = addSize(n, Ros2Uwvm_fourier_bridgeMsgMotionRecipeSize(element));
    }
    if(n > 9372)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["moves"].length, true);
    w.at += 4;
    for(const element of value["moves"])
    {
        Ros2Uwvm_fourier_bridgeMsgMotionRecipeWrite(element, w);
    }
}

function Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["moves"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgMotionRecipeRead(r);
                value["moves"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["moves"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Uwvm_fourier_bridgeMsgMotionRecipeCapture(element);
        }
        out["moves"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/ExecuteMove_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseSize(Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetBaseData_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "key" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["key"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetBaseData_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
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
        out["values"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetCartesianState_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "group" : "", "key" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["group"], 128);
    w.text(value["key"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetCartesianState_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
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
        out["values"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetContactData_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "key" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["key"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetContactData_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
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
        out["values"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetFsmName_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetFsmName_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.text(value["value"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetFsmState_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetFsmState_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupMotionState_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "group" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["group"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupMotionState_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCapture(value),
              n = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "group" : "", "key" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["group"], 128);
    w.text(value["key"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
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
        out["values"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupState_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "group" : "", "key" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["group"], 128);
    w.text(value["key"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupState_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
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
        out["values"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetSnapshot_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetSnapshot_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3",
    maxWireBytes : 14536,
    minWireBytes : 40,
    cartesianMaxWireBytes : 14536n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : Ros2Uwvm_fourier_bridgeMsgStatusCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 14536, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    n = addSize(n, Ros2Uwvm_fourier_bridgeMsgStatusSize(value["value"]));
    if(n > 14536)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    Ros2Uwvm_fourier_bridgeMsgStatusWrite(value["value"], w);
}

function Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = Ros2Uwvm_fourier_bridgeMsgStatusRead(r);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = Ros2Uwvm_fourier_bridgeMsgStatusCapture(field);
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetStandPose_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetStandPose_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
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
        out["values"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetUpperFsmName_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetUpperFsmName_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.text(value["value"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetUpperFsmState_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetUpperFsmState_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetVelocitySource_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetVelocitySource_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestSize(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCapture(value),
              n = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseSize(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCapture(value),
              n = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.text(value["value"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetFsmState_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "state" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestSize(Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    integer(value["state"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["state"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["state"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetFsmState_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseSize(Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetGroupCommand_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9",
    maxWireBytes : 15572,
    minWireBytes : 20,
    cartesianMaxWireBytes : 15572n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "position" : [], "velocity" : [], "torque" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestSize(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 15572, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["position"]) || value["position"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["position"])
    {
        n = addSize(n, Ros2Uwvm_fourier_bridgeMsgGroupValuesSize(element));
    }
    if(!Array.isArray(value["velocity"]) || value["velocity"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocity"])
    {
        n = addSize(n, Ros2Uwvm_fourier_bridgeMsgGroupValuesSize(element));
    }
    if(!Array.isArray(value["torque"]) || value["torque"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["torque"])
    {
        n = addSize(n, Ros2Uwvm_fourier_bridgeMsgGroupValuesSize(element));
    }
    if(n > 15572)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["position"].length, true);
    w.at += 4;
    for(const element of value["position"])
    {
        Ros2Uwvm_fourier_bridgeMsgGroupValuesWrite(element, w);
    }
    w.v.setUint32(w.at, value["velocity"].length, true);
    w.at += 4;
    for(const element of value["velocity"])
    {
        Ros2Uwvm_fourier_bridgeMsgGroupValuesWrite(element, w);
    }
    w.v.setUint32(w.at, value["torque"].length, true);
    w.at += 4;
    for(const element of value["torque"])
    {
        Ros2Uwvm_fourier_bridgeMsgGroupValuesWrite(element, w);
    }
}

function Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValuesRead(r);
                value["position"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValuesRead(r);
                value["velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValuesRead(r);
                value["torque"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Uwvm_fourier_bridgeMsgGroupValuesCapture(element);
        }
        out["position"] = values;
    }
    {
        const field = value["velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Uwvm_fourier_bridgeMsgGroupValuesCapture(element);
        }
        out["velocity"] = values;
    }
    {
        const field = value["torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Uwvm_fourier_bridgeMsgGroupValuesCapture(element);
        }
        out["torque"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetGroupCommand_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseSize(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de",
    maxWireBytes : 10384,
    minWireBytes : 16,
    cartesianMaxWireBytes : 10384n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "kp" : [], "kd" : []};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestSize(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 10384, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["kp"]) || value["kp"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["kp"])
    {
        n = addSize(n, Ros2Uwvm_fourier_bridgeMsgGroupValuesSize(element));
    }
    if(!Array.isArray(value["kd"]) || value["kd"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["kd"])
    {
        n = addSize(n, Ros2Uwvm_fourier_bridgeMsgGroupValuesSize(element));
    }
    if(n > 10384)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["kp"].length, true);
    w.at += 4;
    for(const element of value["kp"])
    {
        Ros2Uwvm_fourier_bridgeMsgGroupValuesWrite(element, w);
    }
    w.v.setUint32(w.at, value["kd"].length, true);
    w.at += 4;
    for(const element of value["kd"])
    {
        Ros2Uwvm_fourier_bridgeMsgGroupValuesWrite(element, w);
    }
}

function Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["kp"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValuesRead(r);
                value["kp"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["kd"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValuesRead(r);
                value["kd"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["kp"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Uwvm_fourier_bridgeMsgGroupValuesCapture(element);
        }
        out["kp"] = values;
    }
    {
        const field = value["kd"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Uwvm_fourier_bridgeMsgGroupValuesCapture(element);
        }
        out["kd"] = values;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseSize(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetStandPose_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "delta_z" : 0, "delta_pitch" : 0, "delta_yaw" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestSize(Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(typeof value["delta_z"] !== "number" || !Number.isFinite(value["delta_z"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["delta_pitch"] !== "number" || !Number.isFinite(value["delta_pitch"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["delta_yaw"] !== "number" || !Number.isFinite(value["delta_yaw"]))
        bad();
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["delta_z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["delta_pitch"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["delta_yaw"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["delta_z"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["delta_pitch"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["delta_yaw"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["delta_z"];
        out["delta_z"] = field;
    }
    {
        const field = value["delta_pitch"];
        out["delta_pitch"] = field;
    }
    {
        const field = value["delta_yaw"];
        out["delta_yaw"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetStandPose_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseSize(Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetUpperFsmState_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "state" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestSize(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    integer(value["state"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["state"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["state"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetUpperFsmState_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseSize(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetVelocity_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44",
    maxWireBytes : 40,
    minWireBytes : 40,
    cartesianMaxWireBytes : 40n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "vx" : 0, "vy" : 0, "yaw" : 0, "duration" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestSize(Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 40, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(typeof value["vx"] !== "number" || !Number.isFinite(value["vx"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["vy"] !== "number" || !Number.isFinite(value["vy"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["yaw"] !== "number" || !Number.isFinite(value["yaw"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["duration"] !== "number" || !Number.isFinite(value["duration"]))
        bad();
    n = addSize(n, 8);
    if(n > 40)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["vx"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["vy"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["yaw"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["duration"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vx"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vy"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yaw"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["duration"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["vx"];
        out["vx"] = field;
    }
    {
        const field = value["vy"];
        out["vy"] = field;
    }
    {
        const field = value["yaw"];
        out["yaw"] = field;
    }
    {
        const field = value["duration"];
        out["duration"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetVelocity_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseSize(Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetVelocitySource_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "source" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestSize(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    integer(value["source"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["source"], true);
    w.at += 4;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["source"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["source"];
        out["source"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/SetVelocitySource_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseSize(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCapture(value), n = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202",
    maxWireBytes : 1084,
    minWireBytes : 28,
    cartesianMaxWireBytes : 1084n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "groups" : [], "timeout_seconds" : 0, "poll_seconds" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestSize(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCapture(value),
              n = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1084, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["groups"]) || value["groups"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["groups"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(typeof value["timeout_seconds"] !== "number" || !Number.isFinite(value["timeout_seconds"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["poll_seconds"] !== "number" || !Number.isFinite(value["poll_seconds"]))
        bad();
    n = addSize(n, 8);
    if(n > 1084)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["groups"].length, true);
    w.at += 4;
    for(const element of value["groups"])
    {
        w.text(element, 128);
    }
    w.v.setFloat64(w.at, value["timeout_seconds"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["poll_seconds"], true);
    w.at += 8;
}

function Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["groups"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["groups"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout_seconds"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["poll_seconds"] = decoded;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["groups"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["groups"] = values;
    }
    {
        const field = value["timeout_seconds"];
        out["timeout_seconds"] = field;
    }
    {
        const field = value["poll_seconds"];
        out["poll_seconds"] = field;
    }
    return out;
}

/** Complete ROS2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f",
    maxWireBytes : 137,
    minWireBytes : 9,
    cartesianMaxWireBytes : 137n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "complete" : false};
    },
    validateValue(value) {
        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseSize(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCapture(value),
              n = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseSize(owned), w = new Writer(n);
        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 137, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseRead(r);
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

function Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(typeof value["complete"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 137)
        bad(90);
    return n;
}

function Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint8(w.at, value["complete"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["complete"] = decoded !== 0;
    }
    return value;
}

function Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["complete"];
        out["complete"] = field;
    }
    return out;
}
