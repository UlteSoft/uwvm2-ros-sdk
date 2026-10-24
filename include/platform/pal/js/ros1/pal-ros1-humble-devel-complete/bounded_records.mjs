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

/** @brief Complete ROS1 geometry_msgs/Vector3 codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsVector3Codec = Object.freeze({
    codecIdentity : "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Geometry_msgsVector3Size(Ros1Geometry_msgsVector3Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsVector3Capture(value), n = Ros1Geometry_msgsVector3Size(owned), w = new Writer(n);
        Ros1Geometry_msgsVector3Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsVector3Read(r);
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

function Ros1Geometry_msgsVector3Size(value)
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

function Ros1Geometry_msgsVector3Write(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros1Geometry_msgsVector3Read(r)
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

function Ros1Geometry_msgsVector3Capture(value)
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

/** @brief Complete ROS1 geometry_msgs/Accel codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsAccelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"linear" : Ros1Geometry_msgsVector3Codec.defaultValue(), "angular" : Ros1Geometry_msgsVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsAccelSize(Ros1Geometry_msgsAccelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsAccelCapture(value), n = Ros1Geometry_msgsAccelSize(owned), w = new Writer(n);
        Ros1Geometry_msgsAccelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsAccelRead(r);
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

function Ros1Geometry_msgsAccelSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["linear"]));
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["angular"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Geometry_msgsAccelWrite(value, w)
{
    Ros1Geometry_msgsVector3Write(value["linear"], w);
    Ros1Geometry_msgsVector3Write(value["angular"], w);
}

function Ros1Geometry_msgsAccelRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["linear"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["angular"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsAccelCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["linear"];
        out["linear"] = Ros1Geometry_msgsVector3Capture(field);
    }
    {
        const field = value["angular"];
        out["angular"] = Ros1Geometry_msgsVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/Point codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Geometry_msgsPointSize(Ros1Geometry_msgsPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPointCapture(value), n = Ros1Geometry_msgsPointSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPointRead(r);
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

function Ros1Geometry_msgsPointSize(value)
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

function Ros1Geometry_msgsPointWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros1Geometry_msgsPointRead(r)
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

function Ros1Geometry_msgsPointCapture(value)
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

/** @brief Complete ROS1 geometry_msgs/Point32 codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPoint32Codec = Object.freeze({
    codecIdentity : "UWVMROS1_ac11d311f1db295f3e53b300246dbb111148097fe50787e812cd1bf627ecc59d",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Geometry_msgsPoint32Size(Ros1Geometry_msgsPoint32Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPoint32Capture(value), n = Ros1Geometry_msgsPoint32Size(owned), w = new Writer(n);
        Ros1Geometry_msgsPoint32Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPoint32Read(r);
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

function Ros1Geometry_msgsPoint32Size(value)
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
    if(n > 12)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPoint32Write(value, w)
{
    w.v.setFloat32(w.at, value["x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["y"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["z"], true);
    w.at += 4;
}

function Ros1Geometry_msgsPoint32Read(r)
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
    return value;
}

function Ros1Geometry_msgsPoint32Capture(value)
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

/** @brief Complete ROS1 geometry_msgs/PointStamped codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPointStampedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4292765fd525ff25fcdf66cba24b1680e01d7a3f036f66a1d5bc21f5db935e90",
    maxWireBytes : 168,
    minWireBytes : 40,
    cartesianMaxWireBytes : 168n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "point" : Ros1Geometry_msgsPointCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsPointStampedSize(Ros1Geometry_msgsPointStampedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPointStampedCapture(value), n = Ros1Geometry_msgsPointStampedSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPointStampedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 168, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPointStampedRead(r);
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

function Ros1Geometry_msgsPointStampedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Geometry_msgsPointSize(value["point"]));
    if(n > 168)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPointStampedWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Geometry_msgsPointWrite(value["point"], w);
}

function Ros1Geometry_msgsPointStampedRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["point"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsPointStampedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["point"];
        out["point"] = Ros1Geometry_msgsPointCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/Quaternion codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsQuaternionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "w" : 0};
    },
    validateValue(value) {
        Ros1Geometry_msgsQuaternionSize(Ros1Geometry_msgsQuaternionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsQuaternionCapture(value), n = Ros1Geometry_msgsQuaternionSize(owned), w = new Writer(n);
        Ros1Geometry_msgsQuaternionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsQuaternionRead(r);
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

function Ros1Geometry_msgsQuaternionSize(value)
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

function Ros1Geometry_msgsQuaternionWrite(value, w)
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

function Ros1Geometry_msgsQuaternionRead(r)
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

function Ros1Geometry_msgsQuaternionCapture(value)
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

/** @brief Complete ROS1 geometry_msgs/Pose codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"position" : Ros1Geometry_msgsPointCodec.defaultValue(), "orientation" : Ros1Geometry_msgsQuaternionCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsPoseSize(Ros1Geometry_msgsPoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPoseCapture(value), n = Ros1Geometry_msgsPoseSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPoseRead(r);
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

function Ros1Geometry_msgsPoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPointSize(value["position"]));
    n = addSize(n, Ros1Geometry_msgsQuaternionSize(value["orientation"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPoseWrite(value, w)
{
    Ros1Geometry_msgsPointWrite(value["position"], w);
    Ros1Geometry_msgsQuaternionWrite(value["orientation"], w);
}

function Ros1Geometry_msgsPoseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["position"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsQuaternionRead(r);
        value["orientation"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsPoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["position"];
        out["position"] = Ros1Geometry_msgsPointCapture(field);
    }
    {
        const field = value["orientation"];
        out["orientation"] = Ros1Geometry_msgsQuaternionCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/Pose2D codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPose2DCodec = Object.freeze({
    codecIdentity : "UWVMROS1_272e907f7422675f272752642d2421c870d46b48b101f1fc6dec5e9ea70b8b0f",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "theta" : 0};
    },
    validateValue(value) {
        Ros1Geometry_msgsPose2DSize(Ros1Geometry_msgsPose2DCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPose2DCapture(value), n = Ros1Geometry_msgsPose2DSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPose2DWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPose2DRead(r);
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

function Ros1Geometry_msgsPose2DSize(value)
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
    if(typeof value["theta"] !== "number" || !Number.isFinite(value["theta"]))
        bad();
    n = addSize(n, 8);
    if(n > 24)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPose2DWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["theta"], true);
    w.at += 8;
}

function Ros1Geometry_msgsPose2DRead(r)
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
        value["theta"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsPose2DCapture(value)
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
        const field = value["theta"];
        out["theta"] = field;
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/PoseArray codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPoseArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc369b2d02464c719f6c9c6eb8f4e328e7623ddd455372cea2085f44bb782900",
    maxWireBytes : 372,
    minWireBytes : 20,
    cartesianMaxWireBytes : 372n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "poses" : []};
    },
    validateValue(value) {
        Ros1Geometry_msgsPoseArraySize(Ros1Geometry_msgsPoseArrayCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPoseArrayCapture(value), n = Ros1Geometry_msgsPoseArraySize(owned), w = new Writer(n);
        Ros1Geometry_msgsPoseArrayWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 372, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPoseArrayRead(r);
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

function Ros1Geometry_msgsPoseArraySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["poses"]) || value["poses"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["poses"])
    {
        n = addSize(n, Ros1Geometry_msgsPoseSize(element));
    }
    if(n > 372)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPoseArrayWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["poses"].length, true);
    w.at += 4;
    for(const element of value["poses"])
    {
        Ros1Geometry_msgsPoseWrite(element, w);
    }
}

function Ros1Geometry_msgsPoseArrayRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["poses"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Geometry_msgsPoseRead(r);
                value["poses"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Geometry_msgsPoseArrayCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["poses"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Geometry_msgsPoseCapture(element);
        }
        out["poses"] = values;
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/PoseStamped codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPoseStampedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95",
    maxWireBytes : 200,
    minWireBytes : 72,
    cartesianMaxWireBytes : 200n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "pose" : Ros1Geometry_msgsPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsPoseStampedSize(Ros1Geometry_msgsPoseStampedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPoseStampedCapture(value), n = Ros1Geometry_msgsPoseStampedSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPoseStampedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 200, 90);
        if(owned.length < 72)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPoseStampedRead(r);
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

function Ros1Geometry_msgsPoseStampedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["pose"]));
    if(n > 200)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPoseStampedWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Geometry_msgsPoseWrite(value["pose"], w);
}

function Ros1Geometry_msgsPoseStampedRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["pose"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsPoseStampedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["pose"];
        out["pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/PoseWithCovariance codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPoseWithCovarianceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf",
    maxWireBytes : 344,
    minWireBytes : 344,
    cartesianMaxWireBytes : 344n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : Ros1Geometry_msgsPoseCodec.defaultValue(), "covariance" : Array.from({length : 36}, () => (0))};
    },
    validateValue(value) {
        Ros1Geometry_msgsPoseWithCovarianceSize(Ros1Geometry_msgsPoseWithCovarianceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPoseWithCovarianceCapture(value), n = Ros1Geometry_msgsPoseWithCovarianceSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPoseWithCovarianceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 344, 90);
        if(owned.length < 344)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPoseWithCovarianceRead(r);
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

function Ros1Geometry_msgsPoseWithCovarianceSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["pose"]));
    if(!Array.isArray(value["covariance"]) || value["covariance"].length !== 36)
        bad();
    for(const element of value["covariance"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 344)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPoseWithCovarianceWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["pose"], w);
    for(const element of value["covariance"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Geometry_msgsPoseWithCovarianceRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["pose"] = decoded;
    }
    {
        {
            const count = 36;
            if(count > 36)
                bad();
            value["covariance"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["covariance"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Geometry_msgsPoseWithCovarianceCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["covariance"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 36)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["covariance"] = values;
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/PoseWithCovarianceStamped codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPoseWithCovarianceStampedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9",
    maxWireBytes : 488,
    minWireBytes : 360,
    cartesianMaxWireBytes : 488n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "pose" : Ros1Geometry_msgsPoseWithCovarianceCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsPoseWithCovarianceStampedSize(Ros1Geometry_msgsPoseWithCovarianceStampedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPoseWithCovarianceStampedCapture(value), n = Ros1Geometry_msgsPoseWithCovarianceStampedSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPoseWithCovarianceStampedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 488, 90);
        if(owned.length < 360)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPoseWithCovarianceStampedRead(r);
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

function Ros1Geometry_msgsPoseWithCovarianceStampedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Geometry_msgsPoseWithCovarianceSize(value["pose"]));
    if(n > 488)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPoseWithCovarianceStampedWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Geometry_msgsPoseWithCovarianceWrite(value["pose"], w);
}

function Ros1Geometry_msgsPoseWithCovarianceStampedRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseWithCovarianceRead(r);
        value["pose"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsPoseWithCovarianceStampedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["pose"];
        out["pose"] = Ros1Geometry_msgsPoseWithCovarianceCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/Transform codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsTransformCodec = Object.freeze({
    codecIdentity : "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"translation" : Ros1Geometry_msgsVector3Codec.defaultValue(), "rotation" : Ros1Geometry_msgsQuaternionCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsTransformSize(Ros1Geometry_msgsTransformCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsTransformCapture(value), n = Ros1Geometry_msgsTransformSize(owned), w = new Writer(n);
        Ros1Geometry_msgsTransformWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsTransformRead(r);
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

function Ros1Geometry_msgsTransformSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["translation"]));
    n = addSize(n, Ros1Geometry_msgsQuaternionSize(value["rotation"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Geometry_msgsTransformWrite(value, w)
{
    Ros1Geometry_msgsVector3Write(value["translation"], w);
    Ros1Geometry_msgsQuaternionWrite(value["rotation"], w);
}

function Ros1Geometry_msgsTransformRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["translation"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsQuaternionRead(r);
        value["rotation"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsTransformCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["translation"];
        out["translation"] = Ros1Geometry_msgsVector3Capture(field);
    }
    {
        const field = value["rotation"];
        out["rotation"] = Ros1Geometry_msgsQuaternionCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/TransformStamped codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsTransformStampedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f4e1d7f868984da7e3717192245f9adf2cc18c76bebaac6357ae2ed30b5b132c",
    maxWireBytes : 332,
    minWireBytes : 76,
    cartesianMaxWireBytes : 332n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "child_frame_id" : "", "transform" : Ros1Geometry_msgsTransformCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsTransformStampedSize(Ros1Geometry_msgsTransformStampedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsTransformStampedCapture(value), n = Ros1Geometry_msgsTransformStampedSize(owned), w = new Writer(n);
        Ros1Geometry_msgsTransformStampedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 332, 90);
        if(owned.length < 76)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsTransformStampedRead(r);
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

function Ros1Geometry_msgsTransformStampedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["child_frame_id"], 128).length);
    n = addSize(n, Ros1Geometry_msgsTransformSize(value["transform"]));
    if(n > 332)
        bad(90);
    return n;
}

function Ros1Geometry_msgsTransformStampedWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.text(value["child_frame_id"], 128);
    Ros1Geometry_msgsTransformWrite(value["transform"], w);
}

function Ros1Geometry_msgsTransformStampedRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["child_frame_id"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsTransformRead(r);
        value["transform"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsTransformStampedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["child_frame_id"];
        out["child_frame_id"] = field;
    }
    {
        const field = value["transform"];
        out["transform"] = Ros1Geometry_msgsTransformCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/Twist codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsTwistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"linear" : Ros1Geometry_msgsVector3Codec.defaultValue(), "angular" : Ros1Geometry_msgsVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsTwistSize(Ros1Geometry_msgsTwistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsTwistCapture(value), n = Ros1Geometry_msgsTwistSize(owned), w = new Writer(n);
        Ros1Geometry_msgsTwistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsTwistRead(r);
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

function Ros1Geometry_msgsTwistSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["linear"]));
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["angular"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Geometry_msgsTwistWrite(value, w)
{
    Ros1Geometry_msgsVector3Write(value["linear"], w);
    Ros1Geometry_msgsVector3Write(value["angular"], w);
}

function Ros1Geometry_msgsTwistRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["linear"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["angular"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsTwistCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["linear"];
        out["linear"] = Ros1Geometry_msgsVector3Capture(field);
    }
    {
        const field = value["angular"];
        out["angular"] = Ros1Geometry_msgsVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/Wrench codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsWrenchCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"force" : Ros1Geometry_msgsVector3Codec.defaultValue(), "torque" : Ros1Geometry_msgsVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsWrenchSize(Ros1Geometry_msgsWrenchCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsWrenchCapture(value), n = Ros1Geometry_msgsWrenchSize(owned), w = new Writer(n);
        Ros1Geometry_msgsWrenchWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsWrenchRead(r);
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

function Ros1Geometry_msgsWrenchSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["force"]));
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["torque"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Geometry_msgsWrenchWrite(value, w)
{
    Ros1Geometry_msgsVector3Write(value["force"], w);
    Ros1Geometry_msgsVector3Write(value["torque"], w);
}

function Ros1Geometry_msgsWrenchRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["force"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["torque"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsWrenchCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["force"];
        out["force"] = Ros1Geometry_msgsVector3Capture(field);
    }
    {
        const field = value["torque"];
        out["torque"] = Ros1Geometry_msgsVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS1 humanoid_nav_msgs/StepTarget codec; maxima are not actual lengths. */
export const Ros1Humanoid_nav_msgsStepTargetCodec = Object.freeze({
    codecIdentity : "UWVMROS1_569ffb799d7e55047bf9191eee9af61296726974e01efa8e3b59be779f25c0e6",
    maxWireBytes : 25,
    minWireBytes : 25,
    cartesianMaxWireBytes : 25n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"right" : 0, "left" : 1}),
    defaultValue() {
        return {"pose" : Ros1Geometry_msgsPose2DCodec.defaultValue(), "leg" : 0};
    },
    validateValue(value) {
        Ros1Humanoid_nav_msgsStepTargetSize(Ros1Humanoid_nav_msgsStepTargetCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Humanoid_nav_msgsStepTargetCapture(value), n = Ros1Humanoid_nav_msgsStepTargetSize(owned), w = new Writer(n);
        Ros1Humanoid_nav_msgsStepTargetWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 25, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros1Humanoid_nav_msgsStepTargetRead(r);
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

function Ros1Humanoid_nav_msgsStepTargetSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPose2DSize(value["pose"]));
    integer(value["leg"], 1, false);
    n = addSize(n, 1);
    if(n > 25)
        bad(90);
    return n;
}

function Ros1Humanoid_nav_msgsStepTargetWrite(value, w)
{
    Ros1Geometry_msgsPose2DWrite(value["pose"], w);
    w.v.setUint8(w.at, value["leg"], true);
    w.at += 1;
}

function Ros1Humanoid_nav_msgsStepTargetRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPose2DRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["leg"] = decoded;
    }
    return value;
}

function Ros1Humanoid_nav_msgsStepTargetCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros1Geometry_msgsPose2DCapture(field);
    }
    {
        const field = value["leg"];
        out["leg"] = field;
    }
    return out;
}

/** @brief Complete ROS1 nav_msgs/MapMetaData codec; maxima are not actual lengths. */
export const Ros1Nav_msgsMapMetaDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec",
    maxWireBytes : 76,
    minWireBytes : 76,
    cartesianMaxWireBytes : 76n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "map_load_time" : Ros1TimeCodec.defaultValue(),
            "resolution" : 0,
            "width" : 0,
            "height" : 0,
            "origin" : Ros1Geometry_msgsPoseCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Nav_msgsMapMetaDataSize(Ros1Nav_msgsMapMetaDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Nav_msgsMapMetaDataCapture(value), n = Ros1Nav_msgsMapMetaDataSize(owned), w = new Writer(n);
        Ros1Nav_msgsMapMetaDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 76, 90);
        if(owned.length < 76)
            bad();
        const r = new Reader(owned), value = Ros1Nav_msgsMapMetaDataRead(r);
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

function Ros1Nav_msgsMapMetaDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1TimeSize(value["map_load_time"]));
    if(typeof value["resolution"] !== "number" || !Number.isFinite(value["resolution"]) || !Number.isFinite(Math.fround(value["resolution"])))
        bad();
    n = addSize(n, 4);
    integer(value["width"], 4, false);
    n = addSize(n, 4);
    integer(value["height"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["origin"]));
    if(n > 76)
        bad(90);
    return n;
}

function Ros1Nav_msgsMapMetaDataWrite(value, w)
{
    Ros1TimeWrite(value["map_load_time"], w);
    w.v.setFloat32(w.at, value["resolution"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["width"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["height"], true);
    w.at += 4;
    Ros1Geometry_msgsPoseWrite(value["origin"], w);
}

function Ros1Nav_msgsMapMetaDataRead(r)
{
    const value = {};
    {
        const decoded = Ros1TimeRead(r);
        value["map_load_time"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["resolution"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["height"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["origin"] = decoded;
    }
    return value;
}

function Ros1Nav_msgsMapMetaDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map_load_time"];
        out["map_load_time"] = Ros1TimeCapture(field);
    }
    {
        const field = value["resolution"];
        out["resolution"] = field;
    }
    {
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["origin"];
        out["origin"] = Ros1Geometry_msgsPoseCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 nav_msgs/OccupancyGrid codec; maxima are not actual lengths. */
export const Ros1Nav_msgsOccupancyGridCodec = Object.freeze({
    codecIdentity : "UWVMROS1_01c46df6fd069eca1664115a5bfaefa2497f0b44b1c0b11b6f293cb56b0c837d",
    maxWireBytes : 480,
    minWireBytes : 96,
    cartesianMaxWireBytes : 480n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "info" : Ros1Nav_msgsMapMetaDataCodec.defaultValue(), "data" : []};
    },
    validateValue(value) {
        Ros1Nav_msgsOccupancyGridSize(Ros1Nav_msgsOccupancyGridCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Nav_msgsOccupancyGridCapture(value), n = Ros1Nav_msgsOccupancyGridSize(owned), w = new Writer(n);
        Ros1Nav_msgsOccupancyGridWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 480, 90);
        if(owned.length < 96)
            bad();
        const r = new Reader(owned), value = Ros1Nav_msgsOccupancyGridRead(r);
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

function Ros1Nav_msgsOccupancyGridSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Nav_msgsMapMetaDataSize(value["info"]));
    if(!Array.isArray(value["data"]) || value["data"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(n > 480)
        bad(90);
    return n;
}

function Ros1Nav_msgsOccupancyGridWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Nav_msgsMapMetaDataWrite(value["info"], w);
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Nav_msgsOccupancyGridRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Nav_msgsMapMetaDataRead(r);
        value["info"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Nav_msgsOccupancyGridCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["info"];
        out["info"] = Ros1Nav_msgsMapMetaDataCapture(field);
    }
    {
        const field = value["data"];
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
        out["data"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/BehaviourArgument codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsBehaviourArgumentCodec = Object.freeze({
    codecIdentity : "UWVMROS1_024bb88cf3b278e19491258b73c01eca83b0ccfd9381e96b9bb5733227bc4bc0",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"key" : "", "value" : ""};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsBehaviourArgumentSize(Ros1Pal_behaviour_msgsBehaviourArgumentCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsBehaviourArgumentCapture(value), n = Ros1Pal_behaviour_msgsBehaviourArgumentSize(owned), w = new Writer(n);
        Ros1Pal_behaviour_msgsBehaviourArgumentWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsBehaviourArgumentRead(r);
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

function Ros1Pal_behaviour_msgsBehaviourArgumentSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsBehaviourArgumentWrite(value, w)
{
    w.text(value["key"], 128);
    w.text(value["value"], 128);
}

function Ros1Pal_behaviour_msgsBehaviourArgumentRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Pal_behaviour_msgsBehaviourArgumentCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["key"];
        out["key"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/BehaviourEventRequest codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsBehaviourEventRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_048535054a3fb576c8101615baffb84809d2e09e6570527a185e54b54460374c",
    maxWireBytes : 1192,
    minWireBytes : 8,
    cartesianMaxWireBytes : 1192n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "arguments" : []};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsBehaviourEventRequestSize(Ros1Pal_behaviour_msgsBehaviourEventRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsBehaviourEventRequestCapture(value), n = Ros1Pal_behaviour_msgsBehaviourEventRequestSize(owned), w = new Writer(n);
        Ros1Pal_behaviour_msgsBehaviourEventRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1192, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsBehaviourEventRequestRead(r);
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

function Ros1Pal_behaviour_msgsBehaviourEventRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(!Array.isArray(value["arguments"]) || value["arguments"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["arguments"])
    {
        n = addSize(n, Ros1Pal_behaviour_msgsBehaviourArgumentSize(element));
    }
    if(n > 1192)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsBehaviourEventRequestWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setUint32(w.at, value["arguments"].length, true);
    w.at += 4;
    for(const element of value["arguments"])
    {
        Ros1Pal_behaviour_msgsBehaviourArgumentWrite(element, w);
    }
}

function Ros1Pal_behaviour_msgsBehaviourEventRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["arguments"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_behaviour_msgsBehaviourArgumentRead(r);
                value["arguments"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_behaviour_msgsBehaviourEventRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["arguments"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_behaviour_msgsBehaviourArgumentCapture(element);
        }
        out["arguments"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/BehaviourEventResponse codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsBehaviourEventResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5d4451abae7cf7d65e7385b4e447df7f991644aa8763758b129e5df6920ba1fd",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"response" : ""};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsBehaviourEventResponseSize(Ros1Pal_behaviour_msgsBehaviourEventResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsBehaviourEventResponseCapture(value), n = Ros1Pal_behaviour_msgsBehaviourEventResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_behaviour_msgsBehaviourEventResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsBehaviourEventResponseRead(r);
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

function Ros1Pal_behaviour_msgsBehaviourEventResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["response"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsBehaviourEventResponseWrite(value, w)
{
    w.text(value["response"], 128);
}

function Ros1Pal_behaviour_msgsBehaviourEventResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["response"] = decoded;
    }
    return value;
}

function Ros1Pal_behaviour_msgsBehaviourEventResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["response"];
        out["response"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/BehaviourTaskGoal codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsBehaviourTaskGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_298df310a5cc1085df5355d10a2ecd627415e85f1399f52eaba19a3e16f2389f",
    maxWireBytes : 1192,
    minWireBytes : 8,
    cartesianMaxWireBytes : 1192n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"taskName" : "", "arguments" : []};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsBehaviourTaskGoalSize(Ros1Pal_behaviour_msgsBehaviourTaskGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsBehaviourTaskGoalCapture(value), n = Ros1Pal_behaviour_msgsBehaviourTaskGoalSize(owned), w = new Writer(n);
        Ros1Pal_behaviour_msgsBehaviourTaskGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1192, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsBehaviourTaskGoalRead(r);
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

function Ros1Pal_behaviour_msgsBehaviourTaskGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["taskName"], 128).length);
    if(!Array.isArray(value["arguments"]) || value["arguments"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["arguments"])
    {
        n = addSize(n, Ros1Pal_behaviour_msgsBehaviourArgumentSize(element));
    }
    if(n > 1192)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsBehaviourTaskGoalWrite(value, w)
{
    w.text(value["taskName"], 128);
    w.v.setUint32(w.at, value["arguments"].length, true);
    w.at += 4;
    for(const element of value["arguments"])
    {
        Ros1Pal_behaviour_msgsBehaviourArgumentWrite(element, w);
    }
}

function Ros1Pal_behaviour_msgsBehaviourTaskGoalRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["taskName"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["arguments"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_behaviour_msgsBehaviourArgumentRead(r);
                value["arguments"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_behaviour_msgsBehaviourTaskGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["taskName"];
        out["taskName"] = field;
    }
    {
        const field = value["arguments"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_behaviour_msgsBehaviourArgumentCapture(element);
        }
        out["arguments"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/BehaviourTaskResult codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsBehaviourTaskResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e18dbdb679b8d00ba9ba5f72201ccf93eec866891009b3639f0892c64da18491",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsBehaviourTaskResultSize(Ros1Pal_behaviour_msgsBehaviourTaskResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsBehaviourTaskResultCapture(value), n = Ros1Pal_behaviour_msgsBehaviourTaskResultSize(owned), w = new Writer(n);
        Ros1Pal_behaviour_msgsBehaviourTaskResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsBehaviourTaskResultRead(r);
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

function Ros1Pal_behaviour_msgsBehaviourTaskResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsBehaviourTaskResultWrite(value, w)
{
}

function Ros1Pal_behaviour_msgsBehaviourTaskResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_behaviour_msgsBehaviourTaskResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/BehaviourTaskFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4270594f10120216110afd3b219cec42018a71cc751bf09a379e608ce99b1752",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsBehaviourTaskFeedbackSize(Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCapture(value), n = Ros1Pal_behaviour_msgsBehaviourTaskFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_behaviour_msgsBehaviourTaskFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsBehaviourTaskFeedbackRead(r);
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

function Ros1Pal_behaviour_msgsBehaviourTaskFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsBehaviourTaskFeedbackWrite(value, w)
{
}

function Ros1Pal_behaviour_msgsBehaviourTaskFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/PresentationGoal codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsPresentationGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f63991747249e4417a36723dcfe3620fb3efc20784b6a60334f46b3476c76b96",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"presentationFile" : ""};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsPresentationGoalSize(Ros1Pal_behaviour_msgsPresentationGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsPresentationGoalCapture(value), n = Ros1Pal_behaviour_msgsPresentationGoalSize(owned), w = new Writer(n);
        Ros1Pal_behaviour_msgsPresentationGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsPresentationGoalRead(r);
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

function Ros1Pal_behaviour_msgsPresentationGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["presentationFile"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsPresentationGoalWrite(value, w)
{
    w.text(value["presentationFile"], 128);
}

function Ros1Pal_behaviour_msgsPresentationGoalRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["presentationFile"] = decoded;
    }
    return value;
}

function Ros1Pal_behaviour_msgsPresentationGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["presentationFile"];
        out["presentationFile"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/PresentationResult codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsPresentationResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_416d43dac88c97f0b25fb206e5529d660fbadb5c8bf98c78190616eaae7c8c41",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsPresentationResultSize(Ros1Pal_behaviour_msgsPresentationResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsPresentationResultCapture(value), n = Ros1Pal_behaviour_msgsPresentationResultSize(owned), w = new Writer(n);
        Ros1Pal_behaviour_msgsPresentationResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsPresentationResultRead(r);
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

function Ros1Pal_behaviour_msgsPresentationResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsPresentationResultWrite(value, w)
{
}

function Ros1Pal_behaviour_msgsPresentationResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_behaviour_msgsPresentationResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_behaviour_msgs/PresentationFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_behaviour_msgsPresentationFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a80db9d9290af9c76e0d611c42e60939bcfc26897ba56efb2cefd5df072f5970",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_behaviour_msgsPresentationFeedbackSize(Ros1Pal_behaviour_msgsPresentationFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_behaviour_msgsPresentationFeedbackCapture(value), n = Ros1Pal_behaviour_msgsPresentationFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_behaviour_msgsPresentationFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_behaviour_msgsPresentationFeedbackRead(r);
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

function Ros1Pal_behaviour_msgsPresentationFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_behaviour_msgsPresentationFeedbackWrite(value, w)
{
}

function Ros1Pal_behaviour_msgsPresentationFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_behaviour_msgsPresentationFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/DisableGoal codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsDisableGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7b506fba552b6058cfbd7275e45a82399b686d73dc891bfee6dc506a02f1db3a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"duration" : 0};
    },
    validateValue(value) {
        Ros1Pal_common_msgsDisableGoalSize(Ros1Pal_common_msgsDisableGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsDisableGoalCapture(value), n = Ros1Pal_common_msgsDisableGoalSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsDisableGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsDisableGoalRead(r);
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

function Ros1Pal_common_msgsDisableGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["duration"] !== "number" || !Number.isFinite(value["duration"]) || !Number.isFinite(Math.fround(value["duration"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsDisableGoalWrite(value, w)
{
    w.v.setFloat32(w.at, value["duration"], true);
    w.at += 4;
}

function Ros1Pal_common_msgsDisableGoalRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["duration"] = decoded;
    }
    return value;
}

function Ros1Pal_common_msgsDisableGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["duration"];
        out["duration"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/DisableResult codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsDisableResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e16cdbd4052e095ead5edfda8c339d94483de63d5442139e0c8b0c5300a2056f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_common_msgsDisableResultSize(Ros1Pal_common_msgsDisableResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsDisableResultCapture(value), n = Ros1Pal_common_msgsDisableResultSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsDisableResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsDisableResultRead(r);
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

function Ros1Pal_common_msgsDisableResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsDisableResultWrite(value, w)
{
}

function Ros1Pal_common_msgsDisableResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_common_msgsDisableResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/DisableFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsDisableFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_892e1dc5726b25276dfd880aff5c9741922b938048d8fc044662fd6f11939555",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_common_msgsDisableFeedbackSize(Ros1Pal_common_msgsDisableFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsDisableFeedbackCapture(value), n = Ros1Pal_common_msgsDisableFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsDisableFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsDisableFeedbackRead(r);
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

function Ros1Pal_common_msgsDisableFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsDisableFeedbackWrite(value, w)
{
}

function Ros1Pal_common_msgsDisableFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_common_msgsDisableFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/EmptyGoal codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsEmptyGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b2e8505fe9480002666ccc1bc6ed3e250f521f1e0fb2165336de288f0798c7ce",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_common_msgsEmptyGoalSize(Ros1Pal_common_msgsEmptyGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsEmptyGoalCapture(value), n = Ros1Pal_common_msgsEmptyGoalSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsEmptyGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsEmptyGoalRead(r);
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

function Ros1Pal_common_msgsEmptyGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsEmptyGoalWrite(value, w)
{
}

function Ros1Pal_common_msgsEmptyGoalRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_common_msgsEmptyGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/EmptyResult codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsEmptyResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7e831f6ff8bda7d3ff2a477bb867ce2b965d82e60c8c089a68a030be1c56202a",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_common_msgsEmptyResultSize(Ros1Pal_common_msgsEmptyResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsEmptyResultCapture(value), n = Ros1Pal_common_msgsEmptyResultSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsEmptyResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsEmptyResultRead(r);
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

function Ros1Pal_common_msgsEmptyResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsEmptyResultWrite(value, w)
{
}

function Ros1Pal_common_msgsEmptyResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_common_msgsEmptyResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/EmptyFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsEmptyFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e37b746163e601913c21f82128415e9493467848b1203b0744a4f7697125160",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_common_msgsEmptyFeedbackSize(Ros1Pal_common_msgsEmptyFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsEmptyFeedbackCapture(value), n = Ros1Pal_common_msgsEmptyFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsEmptyFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsEmptyFeedbackRead(r);
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

function Ros1Pal_common_msgsEmptyFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsEmptyFeedbackWrite(value, w)
{
}

function Ros1Pal_common_msgsEmptyFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_common_msgsEmptyFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/GetStringRequest codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsGetStringRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5da980a34f4dc0c571eccf18e9b5ba9e3f600ec33066d5632e5eed6a57432975",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_common_msgsGetStringRequestSize(Ros1Pal_common_msgsGetStringRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsGetStringRequestCapture(value), n = Ros1Pal_common_msgsGetStringRequestSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsGetStringRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsGetStringRequestRead(r);
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

function Ros1Pal_common_msgsGetStringRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsGetStringRequestWrite(value, w)
{
}

function Ros1Pal_common_msgsGetStringRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_common_msgsGetStringRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/GetStringResponse codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsGetStringResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_92faf0451e15a3363daed687078ea103a59e98135e888ad54f8dd9d282443a59",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : "", "success" : false};
    },
    validateValue(value) {
        Ros1Pal_common_msgsGetStringResponseSize(Ros1Pal_common_msgsGetStringResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsGetStringResponseCapture(value), n = Ros1Pal_common_msgsGetStringResponseSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsGetStringResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsGetStringResponseRead(r);
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

function Ros1Pal_common_msgsGetStringResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["data"], 128).length);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsGetStringResponseWrite(value, w)
{
    w.text(value["data"], 128);
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_common_msgsGetStringResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["data"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_common_msgsGetStringResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        out["data"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/JointCurrent codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsJointCurrentCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5c8818c8e15e17e0696cd7301896246ea43e5309f24e8d00e3254283199a5b39",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joints" : "", "current_limit" : 0};
    },
    validateValue(value) {
        Ros1Pal_common_msgsJointCurrentSize(Ros1Pal_common_msgsJointCurrentCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsJointCurrentCapture(value), n = Ros1Pal_common_msgsJointCurrentSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsJointCurrentWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsJointCurrentRead(r);
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

function Ros1Pal_common_msgsJointCurrentSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["joints"], 128).length);
    if(typeof value["current_limit"] !== "number" || !Number.isFinite(value["current_limit"]) || !Number.isFinite(Math.fround(value["current_limit"])))
        bad();
    n = addSize(n, 4);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsJointCurrentWrite(value, w)
{
    w.text(value["joints"], 128);
    w.v.setFloat32(w.at, value["current_limit"], true);
    w.at += 4;
}

function Ros1Pal_common_msgsJointCurrentRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["joints"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["current_limit"] = decoded;
    }
    return value;
}

function Ros1Pal_common_msgsJointCurrentCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joints"];
        out["joints"] = field;
    }
    {
        const field = value["current_limit"];
        out["current_limit"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_common_msgs/SetStringRequest codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsSetStringRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1266d5e50f2f3ada01139b7cf49daf4dd6a9a358edf26519c6b85bd2b9c675b3",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : ""};
    },
    validateValue(value) {
        Ros1Pal_common_msgsSetStringRequestSize(Ros1Pal_common_msgsSetStringRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsSetStringRequestCapture(value), n = Ros1Pal_common_msgsSetStringRequestSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsSetStringRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsSetStringRequestRead(r);
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

function Ros1Pal_common_msgsSetStringRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["data"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsSetStringRequestWrite(value, w)
{
    w.text(value["data"], 128);
}

function Ros1Pal_common_msgsSetStringRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Pal_common_msgsSetStringRequestCapture(value)
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

/** @brief Complete ROS1 pal_common_msgs/SetStringResponse codec; maxima are not actual lengths. */
export const Ros1Pal_common_msgsSetStringResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_77c77473e16b6242e69e1674bf3c1faf66169bb858144992be3f6cfd712bd370",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Pal_common_msgsSetStringResponseSize(Ros1Pal_common_msgsSetStringResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_common_msgsSetStringResponseCapture(value), n = Ros1Pal_common_msgsSetStringResponseSize(owned), w = new Writer(n);
        Ros1Pal_common_msgsSetStringResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_common_msgsSetStringResponseRead(r);
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

function Ros1Pal_common_msgsSetStringResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_common_msgsSetStringResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_common_msgsSetStringResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_common_msgsSetStringResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/ActuatorCurrentLimit codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsActuatorCurrentLimitCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe",
    maxWireBytes : 2248,
    minWireBytes : 8,
    cartesianMaxWireBytes : 2248n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"actuator_names" : [], "current_limits" : []};
    },
    validateValue(value) {
        Ros1Pal_control_msgsActuatorCurrentLimitSize(Ros1Pal_control_msgsActuatorCurrentLimitCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsActuatorCurrentLimitCapture(value), n = Ros1Pal_control_msgsActuatorCurrentLimitSize(owned), w = new Writer(n);
        Ros1Pal_control_msgsActuatorCurrentLimitWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2248, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsActuatorCurrentLimitRead(r);
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

function Ros1Pal_control_msgsActuatorCurrentLimitSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["actuator_names"]) || value["actuator_names"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["actuator_names"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["current_limits"]) || value["current_limits"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["current_limits"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 2248)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsActuatorCurrentLimitWrite(value, w)
{
    w.v.setUint32(w.at, value["actuator_names"].length, true);
    w.at += 4;
    for(const element of value["actuator_names"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["current_limits"].length, true);
    w.at += 4;
    for(const element of value["current_limits"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Pal_control_msgsActuatorCurrentLimitRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["actuator_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["actuator_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["current_limits"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["current_limits"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_control_msgsActuatorCurrentLimitCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["actuator_names"];
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
        out["actuator_names"] = values;
    }
    {
        const field = value["current_limits"];
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
        out["current_limits"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/CurrentLimitRequest codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsCurrentLimitRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b029cf04f0b1c9db6817fbd10f193d7402afbc84853aed53dc62646e56d030b5",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"actuator_name" : "", "current_limit" : 0};
    },
    validateValue(value) {
        Ros1Pal_control_msgsCurrentLimitRequestSize(Ros1Pal_control_msgsCurrentLimitRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsCurrentLimitRequestCapture(value), n = Ros1Pal_control_msgsCurrentLimitRequestSize(owned), w = new Writer(n);
        Ros1Pal_control_msgsCurrentLimitRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsCurrentLimitRequestRead(r);
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

function Ros1Pal_control_msgsCurrentLimitRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["actuator_name"], 128).length);
    if(typeof value["current_limit"] !== "number" || !Number.isFinite(value["current_limit"]))
        bad();
    n = addSize(n, 8);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsCurrentLimitRequestWrite(value, w)
{
    w.text(value["actuator_name"], 128);
    w.v.setFloat64(w.at, value["current_limit"], true);
    w.at += 8;
}

function Ros1Pal_control_msgsCurrentLimitRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["actuator_name"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["current_limit"] = decoded;
    }
    return value;
}

function Ros1Pal_control_msgsCurrentLimitRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["actuator_name"];
        out["actuator_name"] = field;
    }
    {
        const field = value["current_limit"];
        out["current_limit"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/CurrentLimitResponse codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsCurrentLimitResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e3b16641e9b7be7b3cb0cf7198a63b41ebd0b38eb7dc6b7bd9263650279b0c37",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : ""};
    },
    validateValue(value) {
        Ros1Pal_control_msgsCurrentLimitResponseSize(Ros1Pal_control_msgsCurrentLimitResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsCurrentLimitResponseCapture(value), n = Ros1Pal_control_msgsCurrentLimitResponseSize(owned), w = new Writer(n);
        Ros1Pal_control_msgsCurrentLimitResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsCurrentLimitResponseRead(r);
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

function Ros1Pal_control_msgsCurrentLimitResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["status"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsCurrentLimitResponseWrite(value, w)
{
    w.text(value["status"], 128);
}

function Ros1Pal_control_msgsCurrentLimitResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Pal_control_msgsCurrentLimitResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/MotionManagerGoal codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsMotionManagerGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d2191004950c3f14c8fd71cc2c59cbe39eb76a3c521327293e7355f88e8d2383",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"filename" : "", "plan" : false, "checkSafety" : false, "repeat" : false, "priority" : 0, "queueTimeout" : 0};
    },
    validateValue(value) {
        Ros1Pal_control_msgsMotionManagerGoalSize(Ros1Pal_control_msgsMotionManagerGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsMotionManagerGoalCapture(value), n = Ros1Pal_control_msgsMotionManagerGoalSize(owned), w = new Writer(n);
        Ros1Pal_control_msgsMotionManagerGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsMotionManagerGoalRead(r);
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

function Ros1Pal_control_msgsMotionManagerGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["filename"], 128).length);
    if(typeof value["plan"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["checkSafety"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["repeat"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["priority"], 1, false);
    n = addSize(n, 1);
    integer(value["queueTimeout"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsMotionManagerGoalWrite(value, w)
{
    w.text(value["filename"], 128);
    w.v.setUint8(w.at, value["plan"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["checkSafety"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["repeat"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["priority"], true);
    w.at += 1;
    w.v.setInt32(w.at, value["queueTimeout"], true);
    w.at += 4;
}

function Ros1Pal_control_msgsMotionManagerGoalRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["filename"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["plan"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["checkSafety"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["repeat"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["priority"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["queueTimeout"] = decoded;
    }
    return value;
}

function Ros1Pal_control_msgsMotionManagerGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["filename"];
        out["filename"] = field;
    }
    {
        const field = value["plan"];
        out["plan"] = field;
    }
    {
        const field = value["checkSafety"];
        out["checkSafety"] = field;
    }
    {
        const field = value["repeat"];
        out["repeat"] = field;
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    {
        const field = value["queueTimeout"];
        out["queueTimeout"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/MotionManagerResult codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsMotionManagerResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8c9a1d39fe8d1a23621b871bb0752196123c9eab96c31055c384d0056da3165c",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"message" : ""};
    },
    validateValue(value) {
        Ros1Pal_control_msgsMotionManagerResultSize(Ros1Pal_control_msgsMotionManagerResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsMotionManagerResultCapture(value), n = Ros1Pal_control_msgsMotionManagerResultSize(owned), w = new Writer(n);
        Ros1Pal_control_msgsMotionManagerResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsMotionManagerResultRead(r);
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

function Ros1Pal_control_msgsMotionManagerResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsMotionManagerResultWrite(value, w)
{
    w.text(value["message"], 128);
}

function Ros1Pal_control_msgsMotionManagerResultRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Pal_control_msgsMotionManagerResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/MotionManagerFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsMotionManagerFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_90343a2a84a0db6a4730b7c9cb437ba55e9dd30c10b662db6dabe561ecf48009",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_control_msgsMotionManagerFeedbackSize(Ros1Pal_control_msgsMotionManagerFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsMotionManagerFeedbackCapture(value), n = Ros1Pal_control_msgsMotionManagerFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_control_msgsMotionManagerFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsMotionManagerFeedbackRead(r);
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

function Ros1Pal_control_msgsMotionManagerFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsMotionManagerFeedbackWrite(value, w)
{
}

function Ros1Pal_control_msgsMotionManagerFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_control_msgsMotionManagerFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
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

/** @brief Complete ROS1 pal_control_msgs/OperationalSpaceGoal codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsOperationalSpaceGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c2a633eaaae880b4becdac4e48068d798b121a63ed50339ae5f8eb455416c752",
    maxWireBytes : 306,
    minWireBytes : 178,
    cartesianMaxWireBytes : 306n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "has_vel" : false,
            "has_accel" : false,
            "duration" : Ros1DurationCodec.defaultValue(),
            "pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "velocity" : Ros1Geometry_msgsTwistCodec.defaultValue(),
            "acceleration" : Ros1Geometry_msgsAccelCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_control_msgsOperationalSpaceGoalSize(Ros1Pal_control_msgsOperationalSpaceGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsOperationalSpaceGoalCapture(value), n = Ros1Pal_control_msgsOperationalSpaceGoalSize(owned), w = new Writer(n);
        Ros1Pal_control_msgsOperationalSpaceGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 306, 90);
        if(owned.length < 178)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsOperationalSpaceGoalRead(r);
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

function Ros1Pal_control_msgsOperationalSpaceGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(typeof value["has_vel"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["has_accel"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, Ros1DurationSize(value["duration"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["pose"]));
    n = addSize(n, Ros1Geometry_msgsTwistSize(value["velocity"]));
    n = addSize(n, Ros1Geometry_msgsAccelSize(value["acceleration"]));
    if(n > 306)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsOperationalSpaceGoalWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint8(w.at, value["has_vel"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["has_accel"] ? 1 : 0, true);
    w.at += 1;
    Ros1DurationWrite(value["duration"], w);
    Ros1Geometry_msgsPoseWrite(value["pose"], w);
    Ros1Geometry_msgsTwistWrite(value["velocity"], w);
    Ros1Geometry_msgsAccelWrite(value["acceleration"], w);
}

function Ros1Pal_control_msgsOperationalSpaceGoalRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["has_vel"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["has_accel"] = decoded !== 0;
    }
    {
        const decoded = Ros1DurationRead(r);
        value["duration"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsTwistRead(r);
        value["velocity"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsAccelRead(r);
        value["acceleration"] = decoded;
    }
    return value;
}

function Ros1Pal_control_msgsOperationalSpaceGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["has_vel"];
        out["has_vel"] = field;
    }
    {
        const field = value["has_accel"];
        out["has_accel"] = field;
    }
    {
        const field = value["duration"];
        out["duration"] = Ros1DurationCapture(field);
    }
    {
        const field = value["pose"];
        out["pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["velocity"];
        out["velocity"] = Ros1Geometry_msgsTwistCapture(field);
    }
    {
        const field = value["acceleration"];
        out["acceleration"] = Ros1Geometry_msgsAccelCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/RigidBodyTrajectoryPoint codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsRigidBodyTrajectoryPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_25a24ab0d2eea5acbd4f1e0e0ba45262aa18750fcfb7cd6e57361ac782006d8f",
    maxWireBytes : 160,
    minWireBytes : 160,
    cartesianMaxWireBytes : 160n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "duration" : Ros1DurationCodec.defaultValue(),
            "pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "velocity" : Ros1Geometry_msgsTwistCodec.defaultValue(),
            "acceleration" : Ros1Geometry_msgsAccelCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_control_msgsRigidBodyTrajectoryPointSize(Ros1Pal_control_msgsRigidBodyTrajectoryPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsRigidBodyTrajectoryPointCapture(value), n = Ros1Pal_control_msgsRigidBodyTrajectoryPointSize(owned),
              w = new Writer(n);
        Ros1Pal_control_msgsRigidBodyTrajectoryPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 160, 90);
        if(owned.length < 160)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsRigidBodyTrajectoryPointRead(r);
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

function Ros1Pal_control_msgsRigidBodyTrajectoryPointSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1DurationSize(value["duration"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["pose"]));
    n = addSize(n, Ros1Geometry_msgsTwistSize(value["velocity"]));
    n = addSize(n, Ros1Geometry_msgsAccelSize(value["acceleration"]));
    if(n > 160)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsRigidBodyTrajectoryPointWrite(value, w)
{
    Ros1DurationWrite(value["duration"], w);
    Ros1Geometry_msgsPoseWrite(value["pose"], w);
    Ros1Geometry_msgsTwistWrite(value["velocity"], w);
    Ros1Geometry_msgsAccelWrite(value["acceleration"], w);
}

function Ros1Pal_control_msgsRigidBodyTrajectoryPointRead(r)
{
    const value = {};
    {
        const decoded = Ros1DurationRead(r);
        value["duration"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsTwistRead(r);
        value["velocity"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsAccelRead(r);
        value["acceleration"] = decoded;
    }
    return value;
}

function Ros1Pal_control_msgsRigidBodyTrajectoryPointCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["duration"];
        out["duration"] = Ros1DurationCapture(field);
    }
    {
        const field = value["pose"];
        out["pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["velocity"];
        out["velocity"] = Ros1Geometry_msgsTwistCapture(field);
    }
    {
        const field = value["acceleration"];
        out["acceleration"] = Ros1Geometry_msgsAccelCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/RigidBodyTrajectoryGoal codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsRigidBodyTrajectoryGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03623f36fd48567680ea44e05f1e8fceb65f85bbbbfc9c76e19005deb2b2f599",
    maxWireBytes : 789,
    minWireBytes : 21,
    cartesianMaxWireBytes : 789n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "interpolation_type" : 0, "trajectory" : []};
    },
    validateValue(value) {
        Ros1Pal_control_msgsRigidBodyTrajectoryGoalSize(Ros1Pal_control_msgsRigidBodyTrajectoryGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsRigidBodyTrajectoryGoalCapture(value), n = Ros1Pal_control_msgsRigidBodyTrajectoryGoalSize(owned), w = new Writer(n);
        Ros1Pal_control_msgsRigidBodyTrajectoryGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 789, 90);
        if(owned.length < 21)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsRigidBodyTrajectoryGoalRead(r);
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

function Ros1Pal_control_msgsRigidBodyTrajectoryGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    integer(value["interpolation_type"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["trajectory"]) || value["trajectory"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["trajectory"])
    {
        n = addSize(n, Ros1Pal_control_msgsRigidBodyTrajectoryPointSize(element));
    }
    if(n > 789)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsRigidBodyTrajectoryGoalWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setInt8(w.at, value["interpolation_type"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["trajectory"].length, true);
    w.at += 4;
    for(const element of value["trajectory"])
    {
        Ros1Pal_control_msgsRigidBodyTrajectoryPointWrite(element, w);
    }
}

function Ros1Pal_control_msgsRigidBodyTrajectoryGoalRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["interpolation_type"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["trajectory"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_control_msgsRigidBodyTrajectoryPointRead(r);
                value["trajectory"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_control_msgsRigidBodyTrajectoryGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["interpolation_type"];
        out["interpolation_type"] = field;
    }
    {
        const field = value["trajectory"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_control_msgsRigidBodyTrajectoryPointCapture(element);
        }
        out["trajectory"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/RigidBodyTrajectoryResult codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsRigidBodyTrajectoryResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f2a255f550c28c0d817ada4d3a0419b4d44347d0d9050821395a65ae6431f9f",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"message" : ""};
    },
    validateValue(value) {
        Ros1Pal_control_msgsRigidBodyTrajectoryResultSize(Ros1Pal_control_msgsRigidBodyTrajectoryResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsRigidBodyTrajectoryResultCapture(value), n = Ros1Pal_control_msgsRigidBodyTrajectoryResultSize(owned),
              w = new Writer(n);
        Ros1Pal_control_msgsRigidBodyTrajectoryResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsRigidBodyTrajectoryResultRead(r);
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

function Ros1Pal_control_msgsRigidBodyTrajectoryResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsRigidBodyTrajectoryResultWrite(value, w)
{
    w.text(value["message"], 128);
}

function Ros1Pal_control_msgsRigidBodyTrajectoryResultRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Pal_control_msgsRigidBodyTrajectoryResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_control_msgs/RigidBodyTrajectoryFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2ea6f2ce67dcc51782fa6db213b7a9e0c758b608961efc1e0783c8f14dbabd96",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackSize(Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCapture(value), n = Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackSize(owned),
              w = new Writer(n);
        Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackRead(r);
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

function Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackWrite(value, w)
{
}

function Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 sensor_msgs/Image codec; maxima are not actual lengths. */
export const Ros1Sensor_msgsImageCodec = Object.freeze({
    codecIdentity : "UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce",
    maxWireBytes : 4389,
    minWireBytes : 37,
    cartesianMaxWireBytes : 4389n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "height" : 0, "width" : 0, "encoding" : "", "is_bigendian" : 0, "step" : 0, "data" : []};
    },
    validateValue(value) {
        Ros1Sensor_msgsImageSize(Ros1Sensor_msgsImageCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Sensor_msgsImageCapture(value), n = Ros1Sensor_msgsImageSize(owned), w = new Writer(n);
        Ros1Sensor_msgsImageWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4389, 90);
        if(owned.length < 37)
            bad();
        const r = new Reader(owned), value = Ros1Sensor_msgsImageRead(r);
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

function Ros1Sensor_msgsImageSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    integer(value["height"], 4, false);
    n = addSize(n, 4);
    integer(value["width"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["encoding"], 128).length);
    integer(value["is_bigendian"], 1, false);
    n = addSize(n, 1);
    integer(value["step"], 4, false);
    n = addSize(n, 4);
    if(!Array.isArray(value["data"]) || value["data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4389)
        bad(90);
    return n;
}

function Ros1Sensor_msgsImageWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["height"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["width"], true);
    w.at += 4;
    w.text(value["encoding"], 128);
    w.v.setUint8(w.at, value["is_bigendian"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["step"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Sensor_msgsImageRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["height"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["width"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["encoding"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["is_bigendian"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["step"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Sensor_msgsImageCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["encoding"];
        out["encoding"] = field;
    }
    {
        const field = value["is_bigendian"];
        out["is_bigendian"] = field;
    }
    {
        const field = value["step"];
        out["step"] = field;
    }
    {
        const field = value["data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4096)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["data"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/AddTexturedObjectRequest codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsAddTexturedObjectRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0462d396de70e5db24dbbe0dab8c326f81120356b4d632fd3b56b433d89f616d",
    maxWireBytes : 4521,
    minWireBytes : 41,
    cartesianMaxWireBytes : 4521n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"img" : Ros1Sensor_msgsImageCodec.defaultValue(), "fullPathFileName" : ""};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsAddTexturedObjectRequestSize(Ros1Pal_detection_msgsAddTexturedObjectRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsAddTexturedObjectRequestCapture(value), n = Ros1Pal_detection_msgsAddTexturedObjectRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsAddTexturedObjectRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4521, 90);
        if(owned.length < 41)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsAddTexturedObjectRequestRead(r);
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

function Ros1Pal_detection_msgsAddTexturedObjectRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Sensor_msgsImageSize(value["img"]));
    n = addSize(n, 4 + textBytes(value["fullPathFileName"], 128).length);
    if(n > 4521)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsAddTexturedObjectRequestWrite(value, w)
{
    Ros1Sensor_msgsImageWrite(value["img"], w);
    w.text(value["fullPathFileName"], 128);
}

function Ros1Pal_detection_msgsAddTexturedObjectRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Sensor_msgsImageRead(r);
        value["img"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["fullPathFileName"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsAddTexturedObjectRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["img"];
        out["img"] = Ros1Sensor_msgsImageCapture(field);
    }
    {
        const field = value["fullPathFileName"];
        out["fullPathFileName"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/AddTexturedObjectResponse codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsAddTexturedObjectResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6eb1d5f37f64d4f141251e607533ebf037973dc704dbcf3e06d4fb8d2c86ee1d",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : false};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsAddTexturedObjectResponseSize(Ros1Pal_detection_msgsAddTexturedObjectResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsAddTexturedObjectResponseCapture(value), n = Ros1Pal_detection_msgsAddTexturedObjectResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsAddTexturedObjectResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsAddTexturedObjectResponseRead(r);
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

function Ros1Pal_detection_msgsAddTexturedObjectResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["result"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsAddTexturedObjectResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["result"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_detection_msgsAddTexturedObjectResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["result"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_detection_msgsAddTexturedObjectResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["result"];
        out["result"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/ChangeObjectRecognizerModelRequest codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d8071195e710803f51bfd07d74bd9450c5ce1ca21b464414ad806695692e0342",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"model_name" : "", "reset_desired_classes_param" : false};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestSize(Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCapture(value),
              n = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestRead(r);
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

function Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["model_name"], 128).length);
    if(typeof value["reset_desired_classes_param"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestWrite(value, w)
{
    w.text(value["model_name"], 128);
    w.v.setUint8(w.at, value["reset_desired_classes_param"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["model_name"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["reset_desired_classes_param"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["model_name"];
        out["model_name"] = field;
    }
    {
        const field = value["reset_desired_classes_param"];
        out["reset_desired_classes_param"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/ChangeObjectRecognizerModelResponse codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd5c9ca75201a47ae2eb04ec69ecea7762257b946bb2777a2c7224b51515775d",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : false};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseSize(Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCapture(value),
              n = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseRead(r);
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

function Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["status"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["status"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["status"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/Detection2d codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsDetection2dCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4f0e64fd7996b772586fce060823565b53147a7b29456c8a3b5f8fa48e81663e",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0n, "y" : 0n, "width" : 0n, "height" : 0n};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsDetection2dSize(Ros1Pal_detection_msgsDetection2dCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsDetection2dCapture(value), n = Ros1Pal_detection_msgsDetection2dSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsDetection2dWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsDetection2dRead(r);
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

function Ros1Pal_detection_msgsDetection2dSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 8, true);
    n = addSize(n, 8);
    integer(value["y"], 8, true);
    n = addSize(n, 8);
    integer(value["width"], 8, true);
    n = addSize(n, 8);
    integer(value["height"], 8, true);
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsDetection2dWrite(value, w)
{
    w.v.setBigInt64(w.at, value["x"], true);
    w.at += 8;
    w.v.setBigInt64(w.at, value["y"], true);
    w.at += 8;
    w.v.setBigInt64(w.at, value["width"], true);
    w.at += 8;
    w.v.setBigInt64(w.at, value["height"], true);
    w.at += 8;
}

function Ros1Pal_detection_msgsDetection2dRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["height"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsDetection2dCapture(value)
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
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/Detections2d codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsDetections2dCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0b21e2e5d47b2e4e46f46506940a84b3df0acef77d7e3c66716bc9cc7b0b8e04",
    maxWireBytes : 608,
    minWireBytes : 96,
    cartesianMaxWireBytes : 608n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "detections" : [], "camera_pose" : Ros1Geometry_msgsTransformStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsDetections2dSize(Ros1Pal_detection_msgsDetections2dCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsDetections2dCapture(value), n = Ros1Pal_detection_msgsDetections2dSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsDetections2dWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 608, 90);
        if(owned.length < 96)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsDetections2dRead(r);
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

function Ros1Pal_detection_msgsDetections2dSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["detections"]) || value["detections"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["detections"])
    {
        n = addSize(n, Ros1Pal_detection_msgsDetection2dSize(element));
    }
    n = addSize(n, Ros1Geometry_msgsTransformStampedSize(value["camera_pose"]));
    if(n > 608)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsDetections2dWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["detections"].length, true);
    w.at += 4;
    for(const element of value["detections"])
    {
        Ros1Pal_detection_msgsDetection2dWrite(element, w);
    }
    Ros1Geometry_msgsTransformStampedWrite(value["camera_pose"], w);
}

function Ros1Pal_detection_msgsDetections2dRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["detections"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_detection_msgsDetection2dRead(r);
                value["detections"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Geometry_msgsTransformStampedRead(r);
        value["camera_pose"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsDetections2dCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["detections"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_detection_msgsDetection2dCapture(element);
        }
        out["detections"] = values;
    }
    {
        const field = value["camera_pose"];
        out["camera_pose"] = Ros1Geometry_msgsTransformStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/FaceDetection codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsFaceDetectionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_792fe21dbe06a6a47493a66571ff9b324dba17447855965b2e4f3e79cd302395",
    maxWireBytes : 481,
    minWireBytes : 97,
    cartesianMaxWireBytes : 481n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "EXPRESSION_NEUTRAL" : "neutral",
        "EXPRESSION_SMILE" : "smile",
        "EXPRESSION_RAISED_BROWS" : "raised brows",
        "EXPRESSION_EYES_AWAY" : "eyes away",
        "EXPRESSION_SQUINTING" : "squinting",
        "EXPRESSION_FROWNING" : "frowning"
    }),
    defaultValue() {
        return {
            "x" : 0,
            "y" : 0,
            "width" : 0,
            "height" : 0,
            "eyesLocated" : false,
            "leftEyeX" : 0,
            "leftEyeY" : 0,
            "rightEyeX" : 0,
            "rightEyeY" : 0,
            "position" : Ros1Geometry_msgsPoint32Codec.defaultValue(),
            "name" : "",
            "confidence" : 0,
            "gender" : "",
            "genderConfidence" : 0,
            "expression" : "",
            "expression_confidence" : 0,
            "emotion_anger_confidence" : 0,
            "emotion_disgust_confidence" : 0,
            "emotion_fear_confidence" : 0,
            "emotion_happiness_confidence" : 0,
            "emotion_neutral_confidence" : 0,
            "emotion_sadness_confidence" : 0,
            "emotion_surprise_confidence" : 0
        };
    },
    validateValue(value) {
        Ros1Pal_detection_msgsFaceDetectionSize(Ros1Pal_detection_msgsFaceDetectionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsFaceDetectionCapture(value), n = Ros1Pal_detection_msgsFaceDetectionSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsFaceDetectionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 481, 90);
        if(owned.length < 97)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsFaceDetectionRead(r);
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

function Ros1Pal_detection_msgsFaceDetectionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["width"], 4, true);
    n = addSize(n, 4);
    integer(value["height"], 4, true);
    n = addSize(n, 4);
    if(typeof value["eyesLocated"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["leftEyeX"], 4, true);
    n = addSize(n, 4);
    integer(value["leftEyeY"], 4, true);
    n = addSize(n, 4);
    integer(value["rightEyeX"], 4, true);
    n = addSize(n, 4);
    integer(value["rightEyeY"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, Ros1Geometry_msgsPoint32Size(value["position"]));
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(typeof value["confidence"] !== "number" || !Number.isFinite(value["confidence"]) || !Number.isFinite(Math.fround(value["confidence"])))
        bad();
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["gender"], 128).length);
    if(typeof value["genderConfidence"] !== "number" || !Number.isFinite(value["genderConfidence"]) || !Number.isFinite(Math.fround(value["genderConfidence"])))
        bad();
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["expression"], 128).length);
    if(typeof value["expression_confidence"] !== "number" || !Number.isFinite(value["expression_confidence"]) ||
       !Number.isFinite(Math.fround(value["expression_confidence"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["emotion_anger_confidence"] !== "number" || !Number.isFinite(value["emotion_anger_confidence"]) ||
       !Number.isFinite(Math.fround(value["emotion_anger_confidence"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["emotion_disgust_confidence"] !== "number" || !Number.isFinite(value["emotion_disgust_confidence"]) ||
       !Number.isFinite(Math.fround(value["emotion_disgust_confidence"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["emotion_fear_confidence"] !== "number" || !Number.isFinite(value["emotion_fear_confidence"]) ||
       !Number.isFinite(Math.fround(value["emotion_fear_confidence"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["emotion_happiness_confidence"] !== "number" || !Number.isFinite(value["emotion_happiness_confidence"]) ||
       !Number.isFinite(Math.fround(value["emotion_happiness_confidence"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["emotion_neutral_confidence"] !== "number" || !Number.isFinite(value["emotion_neutral_confidence"]) ||
       !Number.isFinite(Math.fround(value["emotion_neutral_confidence"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["emotion_sadness_confidence"] !== "number" || !Number.isFinite(value["emotion_sadness_confidence"]) ||
       !Number.isFinite(Math.fround(value["emotion_sadness_confidence"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["emotion_surprise_confidence"] !== "number" || !Number.isFinite(value["emotion_surprise_confidence"]) ||
       !Number.isFinite(Math.fround(value["emotion_surprise_confidence"])))
        bad();
    n = addSize(n, 4);
    if(n > 481)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsFaceDetectionWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["width"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["height"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["eyesLocated"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt32(w.at, value["leftEyeX"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["leftEyeY"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rightEyeX"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rightEyeY"], true);
    w.at += 4;
    Ros1Geometry_msgsPoint32Write(value["position"], w);
    w.text(value["name"], 128);
    w.v.setFloat32(w.at, value["confidence"], true);
    w.at += 4;
    w.text(value["gender"], 128);
    w.v.setFloat32(w.at, value["genderConfidence"], true);
    w.at += 4;
    w.text(value["expression"], 128);
    w.v.setFloat32(w.at, value["expression_confidence"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["emotion_anger_confidence"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["emotion_disgust_confidence"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["emotion_fear_confidence"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["emotion_happiness_confidence"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["emotion_neutral_confidence"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["emotion_sadness_confidence"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["emotion_surprise_confidence"], true);
    w.at += 4;
}

function Ros1Pal_detection_msgsFaceDetectionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["height"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["eyesLocated"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["leftEyeX"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["leftEyeY"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rightEyeX"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rightEyeY"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoint32Read(r);
        value["position"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["confidence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["gender"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["genderConfidence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["expression"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["expression_confidence"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["emotion_anger_confidence"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["emotion_disgust_confidence"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["emotion_fear_confidence"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["emotion_happiness_confidence"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["emotion_neutral_confidence"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["emotion_sadness_confidence"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["emotion_surprise_confidence"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsFaceDetectionCapture(value)
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
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["eyesLocated"];
        out["eyesLocated"] = field;
    }
    {
        const field = value["leftEyeX"];
        out["leftEyeX"] = field;
    }
    {
        const field = value["leftEyeY"];
        out["leftEyeY"] = field;
    }
    {
        const field = value["rightEyeX"];
        out["rightEyeX"] = field;
    }
    {
        const field = value["rightEyeY"];
        out["rightEyeY"] = field;
    }
    {
        const field = value["position"];
        out["position"] = Ros1Geometry_msgsPoint32Capture(field);
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["confidence"];
        out["confidence"] = field;
    }
    {
        const field = value["gender"];
        out["gender"] = field;
    }
    {
        const field = value["genderConfidence"];
        out["genderConfidence"] = field;
    }
    {
        const field = value["expression"];
        out["expression"] = field;
    }
    {
        const field = value["expression_confidence"];
        out["expression_confidence"] = field;
    }
    {
        const field = value["emotion_anger_confidence"];
        out["emotion_anger_confidence"] = field;
    }
    {
        const field = value["emotion_disgust_confidence"];
        out["emotion_disgust_confidence"] = field;
    }
    {
        const field = value["emotion_fear_confidence"];
        out["emotion_fear_confidence"] = field;
    }
    {
        const field = value["emotion_happiness_confidence"];
        out["emotion_happiness_confidence"] = field;
    }
    {
        const field = value["emotion_neutral_confidence"];
        out["emotion_neutral_confidence"] = field;
    }
    {
        const field = value["emotion_sadness_confidence"];
        out["emotion_sadness_confidence"] = field;
    }
    {
        const field = value["emotion_surprise_confidence"];
        out["emotion_surprise_confidence"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/FaceDetections codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsFaceDetectionsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ee4b1061b4a4d0bd25f5f2ae4725248e53c82181ab685036cc246100f6019a4b",
    maxWireBytes : 2404,
    minWireBytes : 96,
    cartesianMaxWireBytes : 2404n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "faces" : [], "camera_pose" : Ros1Geometry_msgsTransformStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsFaceDetectionsSize(Ros1Pal_detection_msgsFaceDetectionsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsFaceDetectionsCapture(value), n = Ros1Pal_detection_msgsFaceDetectionsSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsFaceDetectionsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2404, 90);
        if(owned.length < 96)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsFaceDetectionsRead(r);
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

function Ros1Pal_detection_msgsFaceDetectionsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["faces"]) || value["faces"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["faces"])
    {
        n = addSize(n, Ros1Pal_detection_msgsFaceDetectionSize(element));
    }
    n = addSize(n, Ros1Geometry_msgsTransformStampedSize(value["camera_pose"]));
    if(n > 2404)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsFaceDetectionsWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["faces"].length, true);
    w.at += 4;
    for(const element of value["faces"])
    {
        Ros1Pal_detection_msgsFaceDetectionWrite(element, w);
    }
    Ros1Geometry_msgsTransformStampedWrite(value["camera_pose"], w);
}

function Ros1Pal_detection_msgsFaceDetectionsRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["faces"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_detection_msgsFaceDetectionRead(r);
                value["faces"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Geometry_msgsTransformStampedRead(r);
        value["camera_pose"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsFaceDetectionsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["faces"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_detection_msgsFaceDetectionCapture(element);
        }
        out["faces"] = values;
    }
    {
        const field = value["camera_pose"];
        out["camera_pose"] = Ros1Geometry_msgsTransformStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 sensor_msgs/RegionOfInterest codec; maxima are not actual lengths. */
export const Ros1Sensor_msgsRegionOfInterestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86",
    maxWireBytes : 17,
    minWireBytes : 17,
    cartesianMaxWireBytes : 17n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x_offset" : 0, "y_offset" : 0, "height" : 0, "width" : 0, "do_rectify" : false};
    },
    validateValue(value) {
        Ros1Sensor_msgsRegionOfInterestSize(Ros1Sensor_msgsRegionOfInterestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Sensor_msgsRegionOfInterestCapture(value), n = Ros1Sensor_msgsRegionOfInterestSize(owned), w = new Writer(n);
        Ros1Sensor_msgsRegionOfInterestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros1Sensor_msgsRegionOfInterestRead(r);
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

function Ros1Sensor_msgsRegionOfInterestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x_offset"], 4, false);
    n = addSize(n, 4);
    integer(value["y_offset"], 4, false);
    n = addSize(n, 4);
    integer(value["height"], 4, false);
    n = addSize(n, 4);
    integer(value["width"], 4, false);
    n = addSize(n, 4);
    if(typeof value["do_rectify"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 17)
        bad(90);
    return n;
}

function Ros1Sensor_msgsRegionOfInterestWrite(value, w)
{
    w.v.setUint32(w.at, value["x_offset"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["y_offset"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["height"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["width"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["do_rectify"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Sensor_msgsRegionOfInterestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["x_offset"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["y_offset"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["height"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["do_rectify"] = decoded !== 0;
    }
    return value;
}

function Ros1Sensor_msgsRegionOfInterestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x_offset"];
        out["x_offset"] = field;
    }
    {
        const field = value["y_offset"];
        out["y_offset"] = field;
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["do_rectify"];
        out["do_rectify"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/FaceThermalDetections codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsFaceThermalDetectionsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_056b2da5537a5a7a7cb428e134dc11c22e271780146febf7af837a516fb9b07d",
    maxWireBytes : 216,
    minWireBytes : 20,
    cartesianMaxWireBytes : 216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "faces" : []};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsFaceThermalDetectionsSize(Ros1Pal_detection_msgsFaceThermalDetectionsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsFaceThermalDetectionsCapture(value), n = Ros1Pal_detection_msgsFaceThermalDetectionsSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsFaceThermalDetectionsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 216, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsFaceThermalDetectionsRead(r);
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

function Ros1Pal_detection_msgsFaceThermalDetectionsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["faces"]) || value["faces"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["faces"])
    {
        n = addSize(n, Ros1Sensor_msgsRegionOfInterestSize(element));
    }
    if(n > 216)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsFaceThermalDetectionsWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["faces"].length, true);
    w.at += 4;
    for(const element of value["faces"])
    {
        Ros1Sensor_msgsRegionOfInterestWrite(element, w);
    }
}

function Ros1Pal_detection_msgsFaceThermalDetectionsRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["faces"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Sensor_msgsRegionOfInterestRead(r);
                value["faces"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_detection_msgsFaceThermalDetectionsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["faces"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Sensor_msgsRegionOfInterestCapture(element);
        }
        out["faces"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/Gesture codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsGestureCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d9a3e3adffc40a24a70a967fa616ee81a8d21eb08d7656830e0915cd0945ac38",
    maxWireBytes : 300,
    minWireBytes : 44,
    cartesianMaxWireBytes : 300n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "gestureId" : "", "position3D" : Ros1Geometry_msgsPointCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsGestureSize(Ros1Pal_detection_msgsGestureCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsGestureCapture(value), n = Ros1Pal_detection_msgsGestureSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsGestureWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 300, 90);
        if(owned.length < 44)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsGestureRead(r);
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

function Ros1Pal_detection_msgsGestureSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["gestureId"], 128).length);
    n = addSize(n, Ros1Geometry_msgsPointSize(value["position3D"]));
    if(n > 300)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsGestureWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.text(value["gestureId"], 128);
    Ros1Geometry_msgsPointWrite(value["position3D"], w);
}

function Ros1Pal_detection_msgsGestureRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["gestureId"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["position3D"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsGestureCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["gestureId"];
        out["gestureId"] = field;
    }
    {
        const field = value["position3D"];
        out["position3D"] = Ros1Geometry_msgsPointCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/LegDetections codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsLegDetectionsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eaaabdd63d786de0b4bf51199a211f86024e9f835ede77f9bcf92dc77f67ac1d",
    maxWireBytes : 576,
    minWireBytes : 96,
    cartesianMaxWireBytes : 576n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "position3D" : [], "laser_pose" : Ros1Geometry_msgsTransformStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsLegDetectionsSize(Ros1Pal_detection_msgsLegDetectionsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsLegDetectionsCapture(value), n = Ros1Pal_detection_msgsLegDetectionsSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsLegDetectionsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 576, 90);
        if(owned.length < 96)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsLegDetectionsRead(r);
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

function Ros1Pal_detection_msgsLegDetectionsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["position3D"]) || value["position3D"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["position3D"])
    {
        n = addSize(n, Ros1Geometry_msgsPointSize(element));
    }
    n = addSize(n, Ros1Geometry_msgsTransformStampedSize(value["laser_pose"]));
    if(n > 576)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsLegDetectionsWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["position3D"].length, true);
    w.at += 4;
    for(const element of value["position3D"])
    {
        Ros1Geometry_msgsPointWrite(element, w);
    }
    Ros1Geometry_msgsTransformStampedWrite(value["laser_pose"], w);
}

function Ros1Pal_detection_msgsLegDetectionsRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["position3D"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Geometry_msgsPointRead(r);
                value["position3D"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Geometry_msgsTransformStampedRead(r);
        value["laser_pose"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsLegDetectionsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["position3D"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Geometry_msgsPointCapture(element);
        }
        out["position3D"] = values;
    }
    {
        const field = value["laser_pose"];
        out["laser_pose"] = Ros1Geometry_msgsTransformStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/Obstacle codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsObstacleCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661",
    maxWireBytes : 72,
    minWireBytes : 72,
    cartesianMaxWireBytes : 72n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "id" : 0n,
            "position" : Ros1Geometry_msgsPointCodec.defaultValue(),
            "position_covariance" : Array.from({length : 4}, () => (0)),
            "width" : 0,
            "height" : 0
        };
    },
    validateValue(value) {
        Ros1Pal_detection_msgsObstacleSize(Ros1Pal_detection_msgsObstacleCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsObstacleCapture(value), n = Ros1Pal_detection_msgsObstacleSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsObstacleWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 72, 90);
        if(owned.length < 72)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsObstacleRead(r);
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

function Ros1Pal_detection_msgsObstacleSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 8, true);
    n = addSize(n, 8);
    n = addSize(n, Ros1Geometry_msgsPointSize(value["position"]));
    if(!Array.isArray(value["position_covariance"]) || value["position_covariance"].length !== 4)
        bad();
    for(const element of value["position_covariance"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["width"] !== "number" || !Number.isFinite(value["width"]) || !Number.isFinite(Math.fround(value["width"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["height"] !== "number" || !Number.isFinite(value["height"]) || !Number.isFinite(Math.fround(value["height"])))
        bad();
    n = addSize(n, 4);
    if(n > 72)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsObstacleWrite(value, w)
{
    w.v.setBigInt64(w.at, value["id"], true);
    w.at += 8;
    Ros1Geometry_msgsPointWrite(value["position"], w);
    for(const element of value["position_covariance"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat32(w.at, value["width"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["height"], true);
    w.at += 4;
}

function Ros1Pal_detection_msgsObstacleRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["id"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["position"] = decoded;
    }
    {
        {
            const count = 4;
            if(count > 4)
                bad();
            value["position_covariance"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["position_covariance"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["height"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsObstacleCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["position"];
        out["position"] = Ros1Geometry_msgsPointCapture(field);
    }
    {
        const field = value["position_covariance"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["position_covariance"] = values;
    }
    {
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/Obstacles codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsObstaclesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4dba9077149d1e00d54b01031f5de9ef885904c00e2ec10b262302fccb86fe7e",
    maxWireBytes : 436,
    minWireBytes : 20,
    cartesianMaxWireBytes : 436n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "obstacles" : []};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsObstaclesSize(Ros1Pal_detection_msgsObstaclesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsObstaclesCapture(value), n = Ros1Pal_detection_msgsObstaclesSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsObstaclesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 436, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsObstaclesRead(r);
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

function Ros1Pal_detection_msgsObstaclesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["obstacles"]) || value["obstacles"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["obstacles"])
    {
        n = addSize(n, Ros1Pal_detection_msgsObstacleSize(element));
    }
    if(n > 436)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsObstaclesWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["obstacles"].length, true);
    w.at += 4;
    for(const element of value["obstacles"])
    {
        Ros1Pal_detection_msgsObstacleWrite(element, w);
    }
}

function Ros1Pal_detection_msgsObstaclesRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["obstacles"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_detection_msgsObstacleRead(r);
                value["obstacles"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_detection_msgsObstaclesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["obstacles"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_detection_msgsObstacleCapture(element);
        }
        out["obstacles"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/PersonDetection codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsPersonDetectionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853",
    maxWireBytes : 1257,
    minWireBytes : 265,
    cartesianMaxWireBytes : 1257n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "full_body" : Ros1Pal_detection_msgsDetection2dCodec.defaultValue(),
            "face" : Ros1Pal_detection_msgsFaceDetectionCodec.defaultValue(),
            "legs" : Ros1Pal_detection_msgsLegDetectionsCodec.defaultValue(),
            "position3D" : Ros1Geometry_msgsPointStampedCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_detection_msgsPersonDetectionSize(Ros1Pal_detection_msgsPersonDetectionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsPersonDetectionCapture(value), n = Ros1Pal_detection_msgsPersonDetectionSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsPersonDetectionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1257, 90);
        if(owned.length < 265)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsPersonDetectionRead(r);
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

function Ros1Pal_detection_msgsPersonDetectionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_detection_msgsDetection2dSize(value["full_body"]));
    n = addSize(n, Ros1Pal_detection_msgsFaceDetectionSize(value["face"]));
    n = addSize(n, Ros1Pal_detection_msgsLegDetectionsSize(value["legs"]));
    n = addSize(n, Ros1Geometry_msgsPointStampedSize(value["position3D"]));
    if(n > 1257)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsPersonDetectionWrite(value, w)
{
    Ros1Pal_detection_msgsDetection2dWrite(value["full_body"], w);
    Ros1Pal_detection_msgsFaceDetectionWrite(value["face"], w);
    Ros1Pal_detection_msgsLegDetectionsWrite(value["legs"], w);
    Ros1Geometry_msgsPointStampedWrite(value["position3D"], w);
}

function Ros1Pal_detection_msgsPersonDetectionRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_detection_msgsDetection2dRead(r);
        value["full_body"] = decoded;
    }
    {
        const decoded = Ros1Pal_detection_msgsFaceDetectionRead(r);
        value["face"] = decoded;
    }
    {
        const decoded = Ros1Pal_detection_msgsLegDetectionsRead(r);
        value["legs"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointStampedRead(r);
        value["position3D"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsPersonDetectionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["full_body"];
        out["full_body"] = Ros1Pal_detection_msgsDetection2dCapture(field);
    }
    {
        const field = value["face"];
        out["face"] = Ros1Pal_detection_msgsFaceDetectionCapture(field);
    }
    {
        const field = value["legs"];
        out["legs"] = Ros1Pal_detection_msgsLegDetectionsCapture(field);
    }
    {
        const field = value["position3D"];
        out["position3D"] = Ros1Geometry_msgsPointStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/PersonDetections codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsPersonDetectionsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91",
    maxWireBytes : 5508,
    minWireBytes : 96,
    cartesianMaxWireBytes : 5508n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "persons" : [], "camera_pose" : Ros1Geometry_msgsTransformStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsPersonDetectionsSize(Ros1Pal_detection_msgsPersonDetectionsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsPersonDetectionsCapture(value), n = Ros1Pal_detection_msgsPersonDetectionsSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsPersonDetectionsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5508, 90);
        if(owned.length < 96)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsPersonDetectionsRead(r);
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

function Ros1Pal_detection_msgsPersonDetectionsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["persons"]) || value["persons"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["persons"])
    {
        n = addSize(n, Ros1Pal_detection_msgsPersonDetectionSize(element));
    }
    n = addSize(n, Ros1Geometry_msgsTransformStampedSize(value["camera_pose"]));
    if(n > 5508)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsPersonDetectionsWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["persons"].length, true);
    w.at += 4;
    for(const element of value["persons"])
    {
        Ros1Pal_detection_msgsPersonDetectionWrite(element, w);
    }
    Ros1Geometry_msgsTransformStampedWrite(value["camera_pose"], w);
}

function Ros1Pal_detection_msgsPersonDetectionsRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["persons"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_detection_msgsPersonDetectionRead(r);
                value["persons"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Geometry_msgsTransformStampedRead(r);
        value["camera_pose"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsPersonDetectionsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["persons"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_detection_msgsPersonDetectionCapture(element);
        }
        out["persons"] = values;
    }
    {
        const field = value["camera_pose"];
        out["camera_pose"] = Ros1Geometry_msgsTransformStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 sensor_msgs/CompressedImage codec; maxima are not actual lengths. */
export const Ros1Sensor_msgsCompressedImageCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c72a32a46b8b10037ccaa32f7c5d403f908eed838df86faf2c7d36344cea958d",
    maxWireBytes : 4376,
    minWireBytes : 24,
    cartesianMaxWireBytes : 4376n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "format" : "", "data" : []};
    },
    validateValue(value) {
        Ros1Sensor_msgsCompressedImageSize(Ros1Sensor_msgsCompressedImageCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Sensor_msgsCompressedImageCapture(value), n = Ros1Sensor_msgsCompressedImageSize(owned), w = new Writer(n);
        Ros1Sensor_msgsCompressedImageWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4376, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Sensor_msgsCompressedImageRead(r);
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

function Ros1Sensor_msgsCompressedImageSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["format"], 128).length);
    if(!Array.isArray(value["data"]) || value["data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4376)
        bad(90);
    return n;
}

function Ros1Sensor_msgsCompressedImageWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.text(value["format"], 128);
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Sensor_msgsCompressedImageRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["format"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Sensor_msgsCompressedImageCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["format"];
        out["format"] = field;
    }
    {
        const field = value["data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4096)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["data"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RecognizeObjectsGoal codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRecognizeObjectsGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9d87bc6c703c50a0b900a7d4bdcefeda5363c5b2f9affe4e9466a3b4f6dfc585",
    maxWireBytes : 4376,
    minWireBytes : 24,
    cartesianMaxWireBytes : 4376n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"input_image" : Ros1Sensor_msgsCompressedImageCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRecognizeObjectsGoalSize(Ros1Pal_detection_msgsRecognizeObjectsGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRecognizeObjectsGoalCapture(value), n = Ros1Pal_detection_msgsRecognizeObjectsGoalSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsRecognizeObjectsGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4376, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRecognizeObjectsGoalRead(r);
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

function Ros1Pal_detection_msgsRecognizeObjectsGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Sensor_msgsCompressedImageSize(value["input_image"]));
    if(n > 4376)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRecognizeObjectsGoalWrite(value, w)
{
    Ros1Sensor_msgsCompressedImageWrite(value["input_image"], w);
}

function Ros1Pal_detection_msgsRecognizeObjectsGoalRead(r)
{
    const value = {};
    {
        const decoded = Ros1Sensor_msgsCompressedImageRead(r);
        value["input_image"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsRecognizeObjectsGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["input_image"];
        out["input_image"] = Ros1Sensor_msgsCompressedImageCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RecognizedObject codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRecognizedObjectCodec = Object.freeze({
    codecIdentity : "UWVMROS1_36cc36b8ff12ed25b3feadadc7e58a76c1e9c57aaa68b2a295c341c5075203fd",
    maxWireBytes : 153,
    minWireBytes : 25,
    cartesianMaxWireBytes : 153n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"object_class" : "", "confidence" : 0, "bounding_box" : Ros1Sensor_msgsRegionOfInterestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRecognizedObjectSize(Ros1Pal_detection_msgsRecognizedObjectCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRecognizedObjectCapture(value), n = Ros1Pal_detection_msgsRecognizedObjectSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsRecognizedObjectWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 153, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRecognizedObjectRead(r);
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

function Ros1Pal_detection_msgsRecognizedObjectSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["object_class"], 128).length);
    if(typeof value["confidence"] !== "number" || !Number.isFinite(value["confidence"]) || !Number.isFinite(Math.fround(value["confidence"])))
        bad();
    n = addSize(n, 4);
    n = addSize(n, Ros1Sensor_msgsRegionOfInterestSize(value["bounding_box"]));
    if(n > 153)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRecognizedObjectWrite(value, w)
{
    w.text(value["object_class"], 128);
    w.v.setFloat32(w.at, value["confidence"], true);
    w.at += 4;
    Ros1Sensor_msgsRegionOfInterestWrite(value["bounding_box"], w);
}

function Ros1Pal_detection_msgsRecognizedObjectRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["object_class"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["confidence"] = decoded;
    }
    {
        const decoded = Ros1Sensor_msgsRegionOfInterestRead(r);
        value["bounding_box"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsRecognizedObjectCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["object_class"];
        out["object_class"] = field;
    }
    {
        const field = value["confidence"];
        out["confidence"] = field;
    }
    {
        const field = value["bounding_box"];
        out["bounding_box"] = Ros1Sensor_msgsRegionOfInterestCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RecognizedObjectArray codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRecognizedObjectArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8d781116572e1ba9b5cc79b9d4ae844c64e3ef56a274da3de56cc2400baa51e0",
    maxWireBytes : 760,
    minWireBytes : 20,
    cartesianMaxWireBytes : 760n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "objects" : []};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRecognizedObjectArraySize(Ros1Pal_detection_msgsRecognizedObjectArrayCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRecognizedObjectArrayCapture(value), n = Ros1Pal_detection_msgsRecognizedObjectArraySize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsRecognizedObjectArrayWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 760, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRecognizedObjectArrayRead(r);
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

function Ros1Pal_detection_msgsRecognizedObjectArraySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["objects"]) || value["objects"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["objects"])
    {
        n = addSize(n, Ros1Pal_detection_msgsRecognizedObjectSize(element));
    }
    if(n > 760)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRecognizedObjectArrayWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["objects"].length, true);
    w.at += 4;
    for(const element of value["objects"])
    {
        Ros1Pal_detection_msgsRecognizedObjectWrite(element, w);
    }
}

function Ros1Pal_detection_msgsRecognizedObjectArrayRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["objects"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_detection_msgsRecognizedObjectRead(r);
                value["objects"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_detection_msgsRecognizedObjectArrayCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["objects"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_detection_msgsRecognizedObjectCapture(element);
        }
        out["objects"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RecognizeObjectsResult codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRecognizeObjectsResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da",
    maxWireBytes : 5138,
    minWireBytes : 46,
    cartesianMaxWireBytes : 5138n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "image" : Ros1Sensor_msgsCompressedImageCodec.defaultValue(),
            "num_detections" : 0,
            "recognized_objects" : Ros1Pal_detection_msgsRecognizedObjectArrayCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRecognizeObjectsResultSize(Ros1Pal_detection_msgsRecognizeObjectsResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRecognizeObjectsResultCapture(value), n = Ros1Pal_detection_msgsRecognizeObjectsResultSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsRecognizeObjectsResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5138, 90);
        if(owned.length < 46)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRecognizeObjectsResultRead(r);
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

function Ros1Pal_detection_msgsRecognizeObjectsResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Sensor_msgsCompressedImageSize(value["image"]));
    integer(value["num_detections"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, Ros1Pal_detection_msgsRecognizedObjectArraySize(value["recognized_objects"]));
    if(n > 5138)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRecognizeObjectsResultWrite(value, w)
{
    Ros1Sensor_msgsCompressedImageWrite(value["image"], w);
    w.v.setInt16(w.at, value["num_detections"], true);
    w.at += 2;
    Ros1Pal_detection_msgsRecognizedObjectArrayWrite(value["recognized_objects"], w);
}

function Ros1Pal_detection_msgsRecognizeObjectsResultRead(r)
{
    const value = {};
    {
        const decoded = Ros1Sensor_msgsCompressedImageRead(r);
        value["image"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["num_detections"] = decoded;
    }
    {
        const decoded = Ros1Pal_detection_msgsRecognizedObjectArrayRead(r);
        value["recognized_objects"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsRecognizeObjectsResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["image"];
        out["image"] = Ros1Sensor_msgsCompressedImageCapture(field);
    }
    {
        const field = value["num_detections"];
        out["num_detections"] = field;
    }
    {
        const field = value["recognized_objects"];
        out["recognized_objects"] = Ros1Pal_detection_msgsRecognizedObjectArrayCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RecognizeObjectsFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRecognizeObjectsFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c18fdb9db683f1ae2a17cc0a7cdc2bcc3ca060ef0c05cacb4defc35af0829f94",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRecognizeObjectsFeedbackSize(Ros1Pal_detection_msgsRecognizeObjectsFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRecognizeObjectsFeedbackCapture(value), n = Ros1Pal_detection_msgsRecognizeObjectsFeedbackSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsRecognizeObjectsFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRecognizeObjectsFeedbackRead(r);
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

function Ros1Pal_detection_msgsRecognizeObjectsFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRecognizeObjectsFeedbackWrite(value, w)
{
}

function Ros1Pal_detection_msgsRecognizeObjectsFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_detection_msgsRecognizeObjectsFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RecognizedActions codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRecognizedActionsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33",
    maxWireBytes : 2524,
    minWireBytes : 28,
    cartesianMaxWireBytes : 2524n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "action_name" : [], "u" : [], "v" : []};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRecognizedActionsSize(Ros1Pal_detection_msgsRecognizedActionsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRecognizedActionsCapture(value), n = Ros1Pal_detection_msgsRecognizedActionsSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsRecognizedActionsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2524, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRecognizedActionsRead(r);
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

function Ros1Pal_detection_msgsRecognizedActionsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["action_name"]) || value["action_name"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["action_name"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["u"]) || value["u"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["u"])
    {
        integer(element, 8, true);
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["v"]) || value["v"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["v"])
    {
        integer(element, 8, true);
        n = addSize(n, 8);
    }
    if(n > 2524)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRecognizedActionsWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["action_name"].length, true);
    w.at += 4;
    for(const element of value["action_name"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["u"].length, true);
    w.at += 4;
    for(const element of value["u"])
    {
        w.v.setBigInt64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["v"].length, true);
    w.at += 4;
    for(const element of value["v"])
    {
        w.v.setBigInt64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Pal_detection_msgsRecognizedActionsRead(r)
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
            value["action_name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["action_name"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["u"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getBigInt64(r.take(8), true);
                value["u"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["v"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getBigInt64(r.take(8), true);
                value["v"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_detection_msgsRecognizedActionsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["action_name"];
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
        out["action_name"] = values;
    }
    {
        const field = value["u"];
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
        out["u"] = values;
    }
    {
        const field = value["v"];
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
        out["v"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RecognizerRequest codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRecognizerRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0d3ff43e5e851b33f710c9477383884c1db45971e4959df5892abff59fe29f55",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"enabled" : false, "minConfidence" : 0};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRecognizerRequestSize(Ros1Pal_detection_msgsRecognizerRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRecognizerRequestCapture(value), n = Ros1Pal_detection_msgsRecognizerRequestSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsRecognizerRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRecognizerRequestRead(r);
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

function Ros1Pal_detection_msgsRecognizerRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["enabled"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["minConfidence"] !== "number" || !Number.isFinite(value["minConfidence"]) || !Number.isFinite(Math.fround(value["minConfidence"])))
        bad();
    n = addSize(n, 4);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRecognizerRequestWrite(value, w)
{
    w.v.setUint8(w.at, value["enabled"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["minConfidence"], true);
    w.at += 4;
}

function Ros1Pal_detection_msgsRecognizerRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["enabled"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["minConfidence"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsRecognizerRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["enabled"];
        out["enabled"] = field;
    }
    {
        const field = value["minConfidence"];
        out["minConfidence"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RecognizerResponse codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRecognizerResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_604e61f18d602f79b4e5a4145530ded34ac47d7a0ed97185c31457cef365935a",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRecognizerResponseSize(Ros1Pal_detection_msgsRecognizerResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRecognizerResponseCapture(value), n = Ros1Pal_detection_msgsRecognizerResponseSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsRecognizerResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRecognizerResponseRead(r);
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

function Ros1Pal_detection_msgsRecognizerResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRecognizerResponseWrite(value, w)
{
}

function Ros1Pal_detection_msgsRecognizerResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_detection_msgsRecognizerResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/RotatedDetection2d codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsRotatedDetection2dCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f22137d0171356fffb61ee8f668d07f90deadad0f900a2aa83ee0edfde0e52d",
    maxWireBytes : 408,
    minWireBytes : 24,
    cartesianMaxWireBytes : 408n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "x" : [], "y" : []};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsRotatedDetection2dSize(Ros1Pal_detection_msgsRotatedDetection2dCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsRotatedDetection2dCapture(value), n = Ros1Pal_detection_msgsRotatedDetection2dSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsRotatedDetection2dWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 408, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsRotatedDetection2dRead(r);
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

function Ros1Pal_detection_msgsRotatedDetection2dSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["x"]) || value["x"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["x"])
    {
        integer(element, 8, true);
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["y"]) || value["y"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["y"])
    {
        integer(element, 8, true);
        n = addSize(n, 8);
    }
    if(n > 408)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsRotatedDetection2dWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["x"].length, true);
    w.at += 4;
    for(const element of value["x"])
    {
        w.v.setBigInt64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["y"].length, true);
    w.at += 4;
    for(const element of value["y"])
    {
        w.v.setBigInt64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Pal_detection_msgsRotatedDetection2dRead(r)
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
            value["x"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getBigInt64(r.take(8), true);
                value["x"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["y"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getBigInt64(r.take(8), true);
                value["y"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_detection_msgsRotatedDetection2dCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["x"];
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
        out["x"] = values;
    }
    {
        const field = value["y"];
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
        out["y"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/SelectTexturedObjectRequest codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsSelectTexturedObjectRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_866b10e9fcb4e51c9aa5f5a9b7c9c36cbef544fd685f3cfd77de8a3b759e1004",
    maxWireBytes : 148,
    minWireBytes : 20,
    cartesianMaxWireBytes : 148n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"imageFullPathFileName" : "", "width" : 0, "height" : 0};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsSelectTexturedObjectRequestSize(Ros1Pal_detection_msgsSelectTexturedObjectRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsSelectTexturedObjectRequestCapture(value), n = Ros1Pal_detection_msgsSelectTexturedObjectRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsSelectTexturedObjectRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 148, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsSelectTexturedObjectRequestRead(r);
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

function Ros1Pal_detection_msgsSelectTexturedObjectRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["imageFullPathFileName"], 128).length);
    if(typeof value["width"] !== "number" || !Number.isFinite(value["width"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["height"] !== "number" || !Number.isFinite(value["height"]))
        bad();
    n = addSize(n, 8);
    if(n > 148)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsSelectTexturedObjectRequestWrite(value, w)
{
    w.text(value["imageFullPathFileName"], 128);
    w.v.setFloat64(w.at, value["width"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["height"], true);
    w.at += 8;
}

function Ros1Pal_detection_msgsSelectTexturedObjectRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["imageFullPathFileName"] = decoded;
    }
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
        value["height"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsSelectTexturedObjectRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["imageFullPathFileName"];
        out["imageFullPathFileName"] = field;
    }
    {
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/SelectTexturedObjectResponse codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsSelectTexturedObjectResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_98857d1de78a0b8014ea0dfd0597f41b908869229b1ef9d815a983571180db22",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : false};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsSelectTexturedObjectResponseSize(Ros1Pal_detection_msgsSelectTexturedObjectResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsSelectTexturedObjectResponseCapture(value), n = Ros1Pal_detection_msgsSelectTexturedObjectResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsSelectTexturedObjectResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsSelectTexturedObjectResponseRead(r);
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

function Ros1Pal_detection_msgsSelectTexturedObjectResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["result"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsSelectTexturedObjectResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["result"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_detection_msgsSelectTexturedObjectResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["result"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_detection_msgsSelectTexturedObjectResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["result"];
        out["result"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/SetDatabaseRequest codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsSetDatabaseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa4b3a519fcae8b8ac43d6e764203d720939a001c7f572e43e03c2f64904308b",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"databaseName" : "", "purgeAll" : false};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsSetDatabaseRequestSize(Ros1Pal_detection_msgsSetDatabaseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsSetDatabaseRequestCapture(value), n = Ros1Pal_detection_msgsSetDatabaseRequestSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsSetDatabaseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsSetDatabaseRequestRead(r);
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

function Ros1Pal_detection_msgsSetDatabaseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["databaseName"], 128).length);
    if(typeof value["purgeAll"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsSetDatabaseRequestWrite(value, w)
{
    w.text(value["databaseName"], 128);
    w.v.setUint8(w.at, value["purgeAll"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_detection_msgsSetDatabaseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["databaseName"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["purgeAll"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_detection_msgsSetDatabaseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["databaseName"];
        out["databaseName"] = field;
    }
    {
        const field = value["purgeAll"];
        out["purgeAll"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/SetDatabaseResponse codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsSetDatabaseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_31307d8d81296f69a5bb7dbd54bc10aea47a41b1d1458b6d5451d53bdc2f9b46",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsSetDatabaseResponseSize(Ros1Pal_detection_msgsSetDatabaseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsSetDatabaseResponseCapture(value), n = Ros1Pal_detection_msgsSetDatabaseResponseSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsSetDatabaseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsSetDatabaseResponseRead(r);
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

function Ros1Pal_detection_msgsSetDatabaseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsSetDatabaseResponseWrite(value, w)
{
}

function Ros1Pal_detection_msgsSetDatabaseResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_detection_msgsSetDatabaseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/StartEnrollmentRequest codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsStartEnrollmentRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d1175a40ec4050b7d53f0929d9fb9ca6d33155c6df2295082e159db96e2fa7d8",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : ""};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsStartEnrollmentRequestSize(Ros1Pal_detection_msgsStartEnrollmentRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsStartEnrollmentRequestCapture(value), n = Ros1Pal_detection_msgsStartEnrollmentRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsStartEnrollmentRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsStartEnrollmentRequestRead(r);
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

function Ros1Pal_detection_msgsStartEnrollmentRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsStartEnrollmentRequestWrite(value, w)
{
    w.text(value["name"], 128);
}

function Ros1Pal_detection_msgsStartEnrollmentRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsStartEnrollmentRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/StartEnrollmentResponse codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsStartEnrollmentResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7d24b04c596d75db09309a7244e275e5980344aaf020f91a44bef100927d5b62",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : false};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsStartEnrollmentResponseSize(Ros1Pal_detection_msgsStartEnrollmentResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsStartEnrollmentResponseCapture(value), n = Ros1Pal_detection_msgsStartEnrollmentResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsStartEnrollmentResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsStartEnrollmentResponseRead(r);
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

function Ros1Pal_detection_msgsStartEnrollmentResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["result"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsStartEnrollmentResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["result"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_detection_msgsStartEnrollmentResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["result"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_detection_msgsStartEnrollmentResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["result"];
        out["result"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/StopEnrollmentRequest codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsStopEnrollmentRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_627511d9388c67421ccbd8f1928ec5a7e87ad1cc19f0e6b69b4be089ea69d3df",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsStopEnrollmentRequestSize(Ros1Pal_detection_msgsStopEnrollmentRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsStopEnrollmentRequestCapture(value), n = Ros1Pal_detection_msgsStopEnrollmentRequestSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsStopEnrollmentRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsStopEnrollmentRequestRead(r);
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

function Ros1Pal_detection_msgsStopEnrollmentRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsStopEnrollmentRequestWrite(value, w)
{
}

function Ros1Pal_detection_msgsStopEnrollmentRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_detection_msgsStopEnrollmentRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/StopEnrollmentResponse codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsStopEnrollmentResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_30384a8e564b227756bc3e778edf7d0a0b60440baf8e966352600b15b1a9a1aa",
    maxWireBytes : 137,
    minWireBytes : 9,
    cartesianMaxWireBytes : 137n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"enrollment_ok" : false, "numFacesEnrolled" : 0, "error_msg" : ""};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsStopEnrollmentResponseSize(Ros1Pal_detection_msgsStopEnrollmentResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsStopEnrollmentResponseCapture(value), n = Ros1Pal_detection_msgsStopEnrollmentResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsStopEnrollmentResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 137, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsStopEnrollmentResponseRead(r);
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

function Ros1Pal_detection_msgsStopEnrollmentResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["enrollment_ok"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["numFacesEnrolled"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error_msg"], 128).length);
    if(n > 137)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsStopEnrollmentResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["enrollment_ok"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt32(w.at, value["numFacesEnrolled"], true);
    w.at += 4;
    w.text(value["error_msg"], 128);
}

function Ros1Pal_detection_msgsStopEnrollmentResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["enrollment_ok"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["numFacesEnrolled"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error_msg"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsStopEnrollmentResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["enrollment_ok"];
        out["enrollment_ok"] = field;
    }
    {
        const field = value["numFacesEnrolled"];
        out["numFacesEnrolled"] = field;
    }
    {
        const field = value["error_msg"];
        out["error_msg"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/TexturedObjectDetection codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsTexturedObjectDetectionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4a13d12a14db4a3f8883d2bd66317d4b50bd2246fde7de5cdc966d4d35cff204",
    maxWireBytes : 4928,
    minWireBytes : 64,
    cartesianMaxWireBytes : 4928n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "img" : Ros1Sensor_msgsCompressedImageCodec.defaultValue(),
            "roi" : Ros1Pal_detection_msgsRotatedDetection2dCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_detection_msgsTexturedObjectDetectionSize(Ros1Pal_detection_msgsTexturedObjectDetectionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsTexturedObjectDetectionCapture(value), n = Ros1Pal_detection_msgsTexturedObjectDetectionSize(owned),
              w = new Writer(n);
        Ros1Pal_detection_msgsTexturedObjectDetectionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4928, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsTexturedObjectDetectionRead(r);
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

function Ros1Pal_detection_msgsTexturedObjectDetectionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Sensor_msgsCompressedImageSize(value["img"]));
    n = addSize(n, Ros1Pal_detection_msgsRotatedDetection2dSize(value["roi"]));
    if(n > 4928)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsTexturedObjectDetectionWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Sensor_msgsCompressedImageWrite(value["img"], w);
    Ros1Pal_detection_msgsRotatedDetection2dWrite(value["roi"], w);
}

function Ros1Pal_detection_msgsTexturedObjectDetectionRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Sensor_msgsCompressedImageRead(r);
        value["img"] = decoded;
    }
    {
        const decoded = Ros1Pal_detection_msgsRotatedDetection2dRead(r);
        value["roi"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsTexturedObjectDetectionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["img"];
        out["img"] = Ros1Sensor_msgsCompressedImageCapture(field);
    }
    {
        const field = value["roi"];
        out["roi"] = Ros1Pal_detection_msgsRotatedDetection2dCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_detection_msgs/WaveDetection codec; maxima are not actual lengths. */
export const Ros1Pal_detection_msgsWaveDetectionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9c121f0ad95f8e28a13b1b7b80c32f0cea55b737edccf63fe92908ed806db52e",
    maxWireBytes : 147,
    minWireBytes : 19,
    cartesianMaxWireBytes : 147n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "wave" : false, "u" : 0, "v" : 0};
    },
    validateValue(value) {
        Ros1Pal_detection_msgsWaveDetectionSize(Ros1Pal_detection_msgsWaveDetectionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_detection_msgsWaveDetectionCapture(value), n = Ros1Pal_detection_msgsWaveDetectionSize(owned), w = new Writer(n);
        Ros1Pal_detection_msgsWaveDetectionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 147, 90);
        if(owned.length < 19)
            bad();
        const r = new Reader(owned), value = Ros1Pal_detection_msgsWaveDetectionRead(r);
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

function Ros1Pal_detection_msgsWaveDetectionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(typeof value["wave"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["u"], 1, true);
    n = addSize(n, 1);
    integer(value["v"], 1, true);
    n = addSize(n, 1);
    if(n > 147)
        bad(90);
    return n;
}

function Ros1Pal_detection_msgsWaveDetectionWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint8(w.at, value["wave"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt8(w.at, value["u"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["v"], true);
    w.at += 1;
}

function Ros1Pal_detection_msgsWaveDetectionRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wave"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["u"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["v"] = decoded;
    }
    return value;
}

function Ros1Pal_detection_msgsWaveDetectionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["wave"];
        out["wave"] = field;
    }
    {
        const field = value["u"];
        out["u"] = field;
    }
    {
        const field = value["v"];
        out["v"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRActivation codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRActivationCodec = Object.freeze({
    codecIdentity : "UWVMROS1_30f9e3f26cd145518ec1957bab9ca45f4cbe4ac25f82c8853ad1997bad1fdda7",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"ACTIVATE" : 1, "DEACTIVATE" : 2, "PAUSE" : 3, "RESUME" : 4, "CALIBRATE" : 5}),
    defaultValue() {
        return {"action" : 0};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRActivationSize(Ros1Pal_interaction_msgsASRActivationCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRActivationCapture(value), n = Ros1Pal_interaction_msgsASRActivationSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRActivationWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRActivationRead(r);
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

function Ros1Pal_interaction_msgsASRActivationSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["action"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRActivationWrite(value, w)
{
    w.v.setInt8(w.at, value["action"], true);
    w.at += 1;
}

function Ros1Pal_interaction_msgsASRActivationRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["action"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRActivationCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["action"];
        out["action"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/actiontag codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsActiontagCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bd76d0c6a24ccccf66c8723e96bdb0bacf4b9f89fd569482dbb05b8c3a0e7a08",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"key" : "", "value" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsActiontagSize(Ros1Pal_interaction_msgsActiontagCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsActiontagCapture(value), n = Ros1Pal_interaction_msgsActiontagSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsActiontagWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsActiontagRead(r);
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

function Ros1Pal_interaction_msgsActiontagSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsActiontagWrite(value, w)
{
    w.text(value["key"], 128);
    w.text(value["value"], 128);
}

function Ros1Pal_interaction_msgsActiontagRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsActiontagCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["key"];
        out["key"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/asrresult codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsAsrresultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b259acfd1ed092ec360582155843297af7f18152debe9cfae0573c695f271058",
    maxWireBytes : 1209,
    minWireBytes : 25,
    cartesianMaxWireBytes : 1209n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"CONFIDENCE_UNDEFINED" : -1, "CONFIDENCE_POOR" : 1, "CONFIDENCE_LOW" : 2, "CONFIDENCE_GOOD" : 3, "CONFIDENCE_MAX" : 4}),
    defaultValue() {
        return {"text" : "", "confidence" : 0, "start" : Ros1TimeCodec.defaultValue(), "end" : Ros1TimeCodec.defaultValue(), "tags" : []};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsAsrresultSize(Ros1Pal_interaction_msgsAsrresultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsAsrresultCapture(value), n = Ros1Pal_interaction_msgsAsrresultSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsAsrresultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1209, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsAsrresultRead(r);
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

function Ros1Pal_interaction_msgsAsrresultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["text"], 128).length);
    integer(value["confidence"], 1, true);
    n = addSize(n, 1);
    n = addSize(n, Ros1TimeSize(value["start"]));
    n = addSize(n, Ros1TimeSize(value["end"]));
    if(!Array.isArray(value["tags"]) || value["tags"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["tags"])
    {
        n = addSize(n, Ros1Pal_interaction_msgsActiontagSize(element));
    }
    if(n > 1209)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsAsrresultWrite(value, w)
{
    w.text(value["text"], 128);
    w.v.setInt8(w.at, value["confidence"], true);
    w.at += 1;
    Ros1TimeWrite(value["start"], w);
    Ros1TimeWrite(value["end"], w);
    w.v.setUint32(w.at, value["tags"].length, true);
    w.at += 4;
    for(const element of value["tags"])
    {
        Ros1Pal_interaction_msgsActiontagWrite(element, w);
    }
}

function Ros1Pal_interaction_msgsAsrresultRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["text"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["confidence"] = decoded;
    }
    {
        const decoded = Ros1TimeRead(r);
        value["start"] = decoded;
    }
    {
        const decoded = Ros1TimeRead(r);
        value["end"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["tags"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_interaction_msgsActiontagRead(r);
                value["tags"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_interaction_msgsAsrresultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = field;
    }
    {
        const field = value["confidence"];
        out["confidence"] = field;
    }
    {
        const field = value["start"];
        out["start"] = Ros1TimeCapture(field);
    }
    {
        const field = value["end"];
        out["end"] = Ros1TimeCapture(field);
    }
    {
        const field = value["tags"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_interaction_msgsActiontagCapture(element);
        }
        out["tags"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASREvent codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASREventCodec = Object.freeze({
    codecIdentity : "UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926",
    maxWireBytes : 1212,
    minWireBytes : 28,
    cartesianMaxWireBytes : 1212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "EVENT_UNDEFINED" : -1,
        "EVENT_LISTEN_STATE" : 1,
        "EVENT_RECOGNIZED_UTT" : 2,
        "EVENT_ASR_ACTIVATION" : 3,
        "EVENT_FAILED_DECODING" : 4,
        "LISTEN_UNDEFINED" : 20,
        "LISTEN_CALIBRATION" : 21,
        "LISTEN_WAITING_FOR_SPEECH" : 22,
        "LISTEN_SPEECH_DETECTED" : 23,
        "LISTEN_END_OF_SPEECH" : 24
    }),
    defaultValue() {
        return {"event_id" : 0, "listen_state" : 0, "recognized_utterance" : Ros1Pal_interaction_msgsAsrresultCodec.defaultValue(), "active" : false};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASREventSize(Ros1Pal_interaction_msgsASREventCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASREventCapture(value), n = Ros1Pal_interaction_msgsASREventSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASREventWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1212, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASREventRead(r);
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

function Ros1Pal_interaction_msgsASREventSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["event_id"], 1, true);
    n = addSize(n, 1);
    integer(value["listen_state"], 1, true);
    n = addSize(n, 1);
    n = addSize(n, Ros1Pal_interaction_msgsAsrresultSize(value["recognized_utterance"]));
    if(typeof value["active"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1212)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASREventWrite(value, w)
{
    w.v.setInt8(w.at, value["event_id"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["listen_state"], true);
    w.at += 1;
    Ros1Pal_interaction_msgsAsrresultWrite(value["recognized_utterance"], w);
    w.v.setUint8(w.at, value["active"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_interaction_msgsASREventRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["event_id"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["listen_state"] = decoded;
    }
    {
        const decoded = Ros1Pal_interaction_msgsAsrresultRead(r);
        value["recognized_utterance"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["active"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_interaction_msgsASREventCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["event_id"];
        out["event_id"] = field;
    }
    {
        const field = value["listen_state"];
        out["listen_state"] = field;
    }
    {
        const field = value["recognized_utterance"];
        out["recognized_utterance"] = Ros1Pal_interaction_msgsAsrresultCapture(field);
    }
    {
        const field = value["active"];
        out["active"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRFileGoal codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRFileGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9ccba4b3d861d0e759312bec211e5f198eb11bd3838088906a7cba85ab56dd35",
    maxWireBytes : 396,
    minWireBytes : 12,
    cartesianMaxWireBytes : 396n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"file" : "", "lang_id" : "", "grammar" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRFileGoalSize(Ros1Pal_interaction_msgsASRFileGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRFileGoalCapture(value), n = Ros1Pal_interaction_msgsASRFileGoalSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRFileGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 396, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRFileGoalRead(r);
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

function Ros1Pal_interaction_msgsASRFileGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["file"], 128).length);
    n = addSize(n, 4 + textBytes(value["lang_id"], 128).length);
    n = addSize(n, 4 + textBytes(value["grammar"], 128).length);
    if(n > 396)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRFileGoalWrite(value, w)
{
    w.text(value["file"], 128);
    w.text(value["lang_id"], 128);
    w.text(value["grammar"], 128);
}

function Ros1Pal_interaction_msgsASRFileGoalRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["file"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["lang_id"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["grammar"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRFileGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["file"];
        out["file"] = field;
    }
    {
        const field = value["lang_id"];
        out["lang_id"] = field;
    }
    {
        const field = value["grammar"];
        out["grammar"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRFileResult codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRFileResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8fef2b5f288de2136bf3d58eca596fcb8d41c43e0eb428d5fac61cc0dfdc9db2",
    maxWireBytes : 5104,
    minWireBytes : 12,
    cartesianMaxWireBytes : 5104n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"file" : "", "msg" : "", "recognised_utterances" : []};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRFileResultSize(Ros1Pal_interaction_msgsASRFileResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRFileResultCapture(value), n = Ros1Pal_interaction_msgsASRFileResultSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRFileResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5104, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRFileResultRead(r);
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

function Ros1Pal_interaction_msgsASRFileResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["file"], 128).length);
    n = addSize(n, 4 + textBytes(value["msg"], 128).length);
    if(!Array.isArray(value["recognised_utterances"]) || value["recognised_utterances"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["recognised_utterances"])
    {
        n = addSize(n, Ros1Pal_interaction_msgsAsrresultSize(element));
    }
    if(n > 5104)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRFileResultWrite(value, w)
{
    w.text(value["file"], 128);
    w.text(value["msg"], 128);
    w.v.setUint32(w.at, value["recognised_utterances"].length, true);
    w.at += 4;
    for(const element of value["recognised_utterances"])
    {
        Ros1Pal_interaction_msgsAsrresultWrite(element, w);
    }
}

function Ros1Pal_interaction_msgsASRFileResultRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["file"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["msg"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["recognised_utterances"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_interaction_msgsAsrresultRead(r);
                value["recognised_utterances"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_interaction_msgsASRFileResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["file"];
        out["file"] = field;
    }
    {
        const field = value["msg"];
        out["msg"] = field;
    }
    {
        const field = value["recognised_utterances"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_interaction_msgsAsrresultCapture(element);
        }
        out["recognised_utterances"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRFileFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRFileFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c5a53add76fa297f74af24e0ecb0d3dc68b3ce85eaecdff21a26a7441e2ad9c3",
    maxWireBytes : 1209,
    minWireBytes : 25,
    cartesianMaxWireBytes : 1209n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"recognised_utterance" : Ros1Pal_interaction_msgsAsrresultCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRFileFeedbackSize(Ros1Pal_interaction_msgsASRFileFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRFileFeedbackCapture(value), n = Ros1Pal_interaction_msgsASRFileFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRFileFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1209, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRFileFeedbackRead(r);
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

function Ros1Pal_interaction_msgsASRFileFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsAsrresultSize(value["recognised_utterance"]));
    if(n > 1209)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRFileFeedbackWrite(value, w)
{
    Ros1Pal_interaction_msgsAsrresultWrite(value["recognised_utterance"], w);
}

function Ros1Pal_interaction_msgsASRFileFeedbackRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsAsrresultRead(r);
        value["recognised_utterance"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRFileFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["recognised_utterance"];
        out["recognised_utterance"] = Ros1Pal_interaction_msgsAsrresultCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRLangModelMngmt codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRLangModelMngmtCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9ef368d2c72d86f541952fd520429be4998fd28e46c32da1d60edc1cd63c3b09",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"ENABLE" : 1, "DISABLE" : 2, "LOAD" : 3, "UNLOAD" : 4}),
    defaultValue() {
        return {"action" : 0, "modelName" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRLangModelMngmtSize(Ros1Pal_interaction_msgsASRLangModelMngmtCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRLangModelMngmtCapture(value), n = Ros1Pal_interaction_msgsASRLangModelMngmtSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRLangModelMngmtWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRLangModelMngmtRead(r);
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

function Ros1Pal_interaction_msgsASRLangModelMngmtSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["action"], 1, true);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["modelName"], 128).length);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRLangModelMngmtWrite(value, w)
{
    w.v.setInt8(w.at, value["action"], true);
    w.at += 1;
    w.text(value["modelName"], 128);
}

function Ros1Pal_interaction_msgsASRLangModelMngmtRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["action"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["modelName"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRLangModelMngmtCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["action"];
        out["action"] = field;
    }
    {
        const field = value["modelName"];
        out["modelName"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRLanguage codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRLanguageCodec = Object.freeze({
    codecIdentity : "UWVMROS1_227aee498814954d3800e631b8dce3a5fd3d22dc5437ec24b03b5f8cc48000eb",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"language" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRLanguageSize(Ros1Pal_interaction_msgsASRLanguageCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRLanguageCapture(value), n = Ros1Pal_interaction_msgsASRLanguageSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRLanguageWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRLanguageRead(r);
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

function Ros1Pal_interaction_msgsASRLanguageSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["language"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRLanguageWrite(value, w)
{
    w.text(value["language"], 128);
}

function Ros1Pal_interaction_msgsASRLanguageRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["language"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRLanguageCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["language"];
        out["language"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRSrvRequest codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRSrvRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170",
    maxWireBytes : 526,
    minWireBytes : 14,
    cartesianMaxWireBytes : 526n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"ACTIVATION" : 1, "GRAMMAR" : 2, "LANGUAGE" : 3, "STATUS" : 4, "KWSPOTTING" : 5}),
    defaultValue() {
        return {
            "requests" : [],
            "activation" : Ros1Pal_interaction_msgsASRActivationCodec.defaultValue(),
            "model" : Ros1Pal_interaction_msgsASRLangModelMngmtCodec.defaultValue(),
            "lang" : Ros1Pal_interaction_msgsASRLanguageCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRSrvRequestSize(Ros1Pal_interaction_msgsASRSrvRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRSrvRequestCapture(value), n = Ros1Pal_interaction_msgsASRSrvRequestSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRSrvRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 526, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRSrvRequestRead(r);
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

function Ros1Pal_interaction_msgsASRSrvRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["requests"]) || value["requests"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["requests"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    n = addSize(n, Ros1Pal_interaction_msgsASRActivationSize(value["activation"]));
    n = addSize(n, Ros1Pal_interaction_msgsASRLangModelMngmtSize(value["model"]));
    n = addSize(n, Ros1Pal_interaction_msgsASRLanguageSize(value["lang"]));
    if(n > 526)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRSrvRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["requests"].length, true);
    w.at += 4;
    for(const element of value["requests"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    Ros1Pal_interaction_msgsASRActivationWrite(value["activation"], w);
    Ros1Pal_interaction_msgsASRLangModelMngmtWrite(value["model"], w);
    Ros1Pal_interaction_msgsASRLanguageWrite(value["lang"], w);
}

function Ros1Pal_interaction_msgsASRSrvRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["requests"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["requests"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Pal_interaction_msgsASRActivationRead(r);
        value["activation"] = decoded;
    }
    {
        const decoded = Ros1Pal_interaction_msgsASRLangModelMngmtRead(r);
        value["model"] = decoded;
    }
    {
        const decoded = Ros1Pal_interaction_msgsASRLanguageRead(r);
        value["lang"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRSrvRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["requests"];
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
        out["requests"] = values;
    }
    {
        const field = value["activation"];
        out["activation"] = Ros1Pal_interaction_msgsASRActivationCapture(field);
    }
    {
        const field = value["model"];
        out["model"] = Ros1Pal_interaction_msgsASRLangModelMngmtCapture(field);
    }
    {
        const field = value["lang"];
        out["lang"] = Ros1Pal_interaction_msgsASRLanguageCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRServiceRequest codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRServiceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c78e78d5d88eb264ecc15c534da9e28e04bc6e3bb33685e24b9cf695aee73715",
    maxWireBytes : 526,
    minWireBytes : 14,
    cartesianMaxWireBytes : 526n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros1Pal_interaction_msgsASRSrvRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRServiceRequestSize(Ros1Pal_interaction_msgsASRServiceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRServiceRequestCapture(value), n = Ros1Pal_interaction_msgsASRServiceRequestSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRServiceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 526, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRServiceRequestRead(r);
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

function Ros1Pal_interaction_msgsASRServiceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsASRSrvRequestSize(value["request"]));
    if(n > 526)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRServiceRequestWrite(value, w)
{
    Ros1Pal_interaction_msgsASRSrvRequestWrite(value["request"], w);
}

function Ros1Pal_interaction_msgsASRServiceRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsASRSrvRequestRead(r);
        value["request"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRServiceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros1Pal_interaction_msgsASRSrvRequestCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/AudioDeviceDescription codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsAudioDeviceDescriptionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857",
    maxWireBytes : 141,
    minWireBytes : 13,
    cartesianMaxWireBytes : 141n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"SIGNED" : 0, "UNSIGNED" : 1}),
    defaultValue() {
        return {"device_name" : "", "sample_rate" : 0, "sample_size" : 0, "format" : 0, "buffer_size" : 0, "number_of_channels" : 0};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsAudioDeviceDescriptionSize(Ros1Pal_interaction_msgsAudioDeviceDescriptionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsAudioDeviceDescriptionCapture(value), n = Ros1Pal_interaction_msgsAudioDeviceDescriptionSize(owned),
              w = new Writer(n);
        Ros1Pal_interaction_msgsAudioDeviceDescriptionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 141, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsAudioDeviceDescriptionRead(r);
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

function Ros1Pal_interaction_msgsAudioDeviceDescriptionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["device_name"], 128).length);
    integer(value["sample_rate"], 4, false);
    n = addSize(n, 4);
    integer(value["sample_size"], 1, true);
    n = addSize(n, 1);
    integer(value["format"], 1, true);
    n = addSize(n, 1);
    integer(value["buffer_size"], 2, false);
    n = addSize(n, 2);
    integer(value["number_of_channels"], 1, true);
    n = addSize(n, 1);
    if(n > 141)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsAudioDeviceDescriptionWrite(value, w)
{
    w.text(value["device_name"], 128);
    w.v.setUint32(w.at, value["sample_rate"], true);
    w.at += 4;
    w.v.setInt8(w.at, value["sample_size"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["format"], true);
    w.at += 1;
    w.v.setUint16(w.at, value["buffer_size"], true);
    w.at += 2;
    w.v.setInt8(w.at, value["number_of_channels"], true);
    w.at += 1;
}

function Ros1Pal_interaction_msgsAudioDeviceDescriptionRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["device_name"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["sample_rate"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["sample_size"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["format"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["buffer_size"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["number_of_channels"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsAudioDeviceDescriptionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["device_name"];
        out["device_name"] = field;
    }
    {
        const field = value["sample_rate"];
        out["sample_rate"] = field;
    }
    {
        const field = value["sample_size"];
        out["sample_size"] = field;
    }
    {
        const field = value["format"];
        out["format"] = field;
    }
    {
        const field = value["buffer_size"];
        out["buffer_size"] = field;
    }
    {
        const field = value["number_of_channels"];
        out["number_of_channels"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRStatus codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0469173f91448cb5069e27cab54cfd117d9a22d757e8a8303ac5cb1c53e7e985",
    maxWireBytes : 538,
    minWireBytes : 26,
    cartesianMaxWireBytes : 538n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "active" : false,
            "language" : "",
            "enabled_grammar" : "",
            "acoustic_env" : "",
            "device" : Ros1Pal_interaction_msgsAudioDeviceDescriptionCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRStatusSize(Ros1Pal_interaction_msgsASRStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRStatusCapture(value), n = Ros1Pal_interaction_msgsASRStatusSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 538, 90);
        if(owned.length < 26)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRStatusRead(r);
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

function Ros1Pal_interaction_msgsASRStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["active"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["language"], 128).length);
    n = addSize(n, 4 + textBytes(value["enabled_grammar"], 128).length);
    n = addSize(n, 4 + textBytes(value["acoustic_env"], 128).length);
    n = addSize(n, Ros1Pal_interaction_msgsAudioDeviceDescriptionSize(value["device"]));
    if(n > 538)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRStatusWrite(value, w)
{
    w.v.setUint8(w.at, value["active"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["language"], 128);
    w.text(value["enabled_grammar"], 128);
    w.text(value["acoustic_env"], 128);
    Ros1Pal_interaction_msgsAudioDeviceDescriptionWrite(value["device"], w);
}

function Ros1Pal_interaction_msgsASRStatusRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["active"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["language"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["enabled_grammar"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["acoustic_env"] = decoded;
    }
    {
        const decoded = Ros1Pal_interaction_msgsAudioDeviceDescriptionRead(r);
        value["device"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["active"];
        out["active"] = field;
    }
    {
        const field = value["language"];
        out["language"] = field;
    }
    {
        const field = value["enabled_grammar"];
        out["enabled_grammar"] = field;
    }
    {
        const field = value["acoustic_env"];
        out["acoustic_env"] = field;
    }
    {
        const field = value["device"];
        out["device"] = Ros1Pal_interaction_msgsAudioDeviceDescriptionCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRSrvResponse codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRSrvResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0d47bec71896b9a6090ee0e99c5dad16272306b7b266a99e3da0db334e24d3a",
    maxWireBytes : 802,
    minWireBytes : 34,
    cartesianMaxWireBytes : 802n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : Ros1Pal_interaction_msgsASRStatusCodec.defaultValue(), "error_msg" : "", "warn_msg" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRSrvResponseSize(Ros1Pal_interaction_msgsASRSrvResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRSrvResponseCapture(value), n = Ros1Pal_interaction_msgsASRSrvResponseSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRSrvResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 802, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRSrvResponseRead(r);
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

function Ros1Pal_interaction_msgsASRSrvResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsASRStatusSize(value["status"]));
    n = addSize(n, 4 + textBytes(value["error_msg"], 128).length);
    n = addSize(n, 4 + textBytes(value["warn_msg"], 128).length);
    if(n > 802)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRSrvResponseWrite(value, w)
{
    Ros1Pal_interaction_msgsASRStatusWrite(value["status"], w);
    w.text(value["error_msg"], 128);
    w.text(value["warn_msg"], 128);
}

function Ros1Pal_interaction_msgsASRSrvResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsASRStatusRead(r);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error_msg"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["warn_msg"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRSrvResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = Ros1Pal_interaction_msgsASRStatusCapture(field);
    }
    {
        const field = value["error_msg"];
        out["error_msg"] = field;
    }
    {
        const field = value["warn_msg"];
        out["warn_msg"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/ASRServiceResponse codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsASRServiceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bfa0a5701b04c4f637febfb3c24d5f49ebd690b82089ec88e21d7dca40028680",
    maxWireBytes : 802,
    minWireBytes : 34,
    cartesianMaxWireBytes : 802n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"response" : Ros1Pal_interaction_msgsASRSrvResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsASRServiceResponseSize(Ros1Pal_interaction_msgsASRServiceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsASRServiceResponseCapture(value), n = Ros1Pal_interaction_msgsASRServiceResponseSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsASRServiceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 802, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsASRServiceResponseRead(r);
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

function Ros1Pal_interaction_msgsASRServiceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsASRSrvResponseSize(value["response"]));
    if(n > 802)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsASRServiceResponseWrite(value, w)
{
    Ros1Pal_interaction_msgsASRSrvResponseWrite(value["response"], w);
}

function Ros1Pal_interaction_msgsASRServiceResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsASRSrvResponseRead(r);
        value["response"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsASRServiceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["response"];
        out["response"] = Ros1Pal_interaction_msgsASRSrvResponseCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/AudioPlayGoal codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsAudioPlayGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1c2b6894e5b00f204c3d36af18802e5b54e2950b2ef22d3294460f3e7bd84e30",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"file" : "", "priority" : 0};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsAudioPlayGoalSize(Ros1Pal_interaction_msgsAudioPlayGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsAudioPlayGoalCapture(value), n = Ros1Pal_interaction_msgsAudioPlayGoalSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsAudioPlayGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsAudioPlayGoalRead(r);
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

function Ros1Pal_interaction_msgsAudioPlayGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["file"], 128).length);
    integer(value["priority"], 1, false);
    n = addSize(n, 1);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsAudioPlayGoalWrite(value, w)
{
    w.text(value["file"], 128);
    w.v.setUint8(w.at, value["priority"], true);
    w.at += 1;
}

function Ros1Pal_interaction_msgsAudioPlayGoalRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["file"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["priority"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsAudioPlayGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["file"];
        out["file"] = field;
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/AudioPlayResult codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsAudioPlayResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_46d6efb4dbf5cca76894398daf8b70e0f6577f624e90dc088beeca147a4f91fe",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsAudioPlayResultSize(Ros1Pal_interaction_msgsAudioPlayResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsAudioPlayResultCapture(value), n = Ros1Pal_interaction_msgsAudioPlayResultSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsAudioPlayResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsAudioPlayResultRead(r);
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

function Ros1Pal_interaction_msgsAudioPlayResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsAudioPlayResultWrite(value, w)
{
}

function Ros1Pal_interaction_msgsAudioPlayResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_interaction_msgsAudioPlayResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/AudioPlayFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsAudioPlayFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8715716200235ab9076d7f152ef277236349ffb02f01b16ba5f10ede343729bd",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsAudioPlayFeedbackSize(Ros1Pal_interaction_msgsAudioPlayFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsAudioPlayFeedbackCapture(value), n = Ros1Pal_interaction_msgsAudioPlayFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsAudioPlayFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsAudioPlayFeedbackRead(r);
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

function Ros1Pal_interaction_msgsAudioPlayFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsAudioPlayFeedbackWrite(value, w)
{
}

function Ros1Pal_interaction_msgsAudioPlayFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_interaction_msgsAudioPlayFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/AudioPlayerState codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsAudioPlayerStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_01549954e3ca3bfb4dd7e5c82e8697d0a480d16757826cc4708266794ec85675",
    maxWireBytes : 277,
    minWireBytes : 21,
    cartesianMaxWireBytes : 277n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "isPlaying" : false, "msg" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsAudioPlayerStateSize(Ros1Pal_interaction_msgsAudioPlayerStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsAudioPlayerStateCapture(value), n = Ros1Pal_interaction_msgsAudioPlayerStateSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsAudioPlayerStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 277, 90);
        if(owned.length < 21)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsAudioPlayerStateRead(r);
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

function Ros1Pal_interaction_msgsAudioPlayerStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(typeof value["isPlaying"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["msg"], 128).length);
    if(n > 277)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsAudioPlayerStateWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint8(w.at, value["isPlaying"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["msg"], 128);
}

function Ros1Pal_interaction_msgsAudioPlayerStateRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["isPlaying"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["msg"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsAudioPlayerStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["isPlaying"];
        out["isPlaying"] = field;
    }
    {
        const field = value["msg"];
        out["msg"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/DirectionOfArrival codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsDirectionOfArrivalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1569630ee3abd3caad9a14797d6381b68e764f0c00266d2de5c450f002c8f5fd",
    maxWireBytes : 144,
    minWireBytes : 16,
    cartesianMaxWireBytes : 144n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"doa" : 0, "prob" : 0, "power" : 0, "metadoa" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsDirectionOfArrivalSize(Ros1Pal_interaction_msgsDirectionOfArrivalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsDirectionOfArrivalCapture(value), n = Ros1Pal_interaction_msgsDirectionOfArrivalSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsDirectionOfArrivalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 144, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsDirectionOfArrivalRead(r);
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

function Ros1Pal_interaction_msgsDirectionOfArrivalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["doa"] !== "number" || !Number.isFinite(value["doa"]) || !Number.isFinite(Math.fround(value["doa"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["prob"] !== "number" || !Number.isFinite(value["prob"]) || !Number.isFinite(Math.fround(value["prob"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["power"] !== "number" || !Number.isFinite(value["power"]) || !Number.isFinite(Math.fround(value["power"])))
        bad();
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["metadoa"], 128).length);
    if(n > 144)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsDirectionOfArrivalWrite(value, w)
{
    w.v.setFloat32(w.at, value["doa"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["prob"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["power"], true);
    w.at += 4;
    w.text(value["metadoa"], 128);
}

function Ros1Pal_interaction_msgsDirectionOfArrivalRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["doa"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["prob"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["power"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["metadoa"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsDirectionOfArrivalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["doa"];
        out["doa"] = field;
    }
    {
        const field = value["prob"];
        out["prob"] = field;
    }
    {
        const field = value["power"];
        out["power"] = field;
    }
    {
        const field = value["metadoa"];
        out["metadoa"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/EnablingSoundLocalisation codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsEnablingSoundLocalisationCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8df033349e2f5d7072336e535fc87c1ff6148ed15bc36cc952a99d133a69d495",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"enable" : false};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsEnablingSoundLocalisationSize(Ros1Pal_interaction_msgsEnablingSoundLocalisationCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsEnablingSoundLocalisationCapture(value), n = Ros1Pal_interaction_msgsEnablingSoundLocalisationSize(owned),
              w = new Writer(n);
        Ros1Pal_interaction_msgsEnablingSoundLocalisationWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsEnablingSoundLocalisationRead(r);
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

function Ros1Pal_interaction_msgsEnablingSoundLocalisationSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsEnablingSoundLocalisationWrite(value, w)
{
    w.v.setUint8(w.at, value["enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_interaction_msgsEnablingSoundLocalisationRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["enable"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_interaction_msgsEnablingSoundLocalisationCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["enable"];
        out["enable"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/I18nArgument codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsI18nArgumentCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2ca48fd9d8f6dc4a1bc9b69c33c407ea1d6c400f22ceff31f784f161f41f27fb",
    maxWireBytes : 396,
    minWireBytes : 12,
    cartesianMaxWireBytes : 396n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"section" : "", "key" : "", "expanded" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsI18nArgumentSize(Ros1Pal_interaction_msgsI18nArgumentCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsI18nArgumentCapture(value), n = Ros1Pal_interaction_msgsI18nArgumentSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsI18nArgumentWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 396, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsI18nArgumentRead(r);
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

function Ros1Pal_interaction_msgsI18nArgumentSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["section"], 128).length);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    n = addSize(n, 4 + textBytes(value["expanded"], 128).length);
    if(n > 396)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsI18nArgumentWrite(value, w)
{
    w.text(value["section"], 128);
    w.text(value["key"], 128);
    w.text(value["expanded"], 128);
}

function Ros1Pal_interaction_msgsI18nArgumentRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["section"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["expanded"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsI18nArgumentCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["section"];
        out["section"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    {
        const field = value["expanded"];
        out["expanded"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/I18nText codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsI18nTextCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b3e1cb48129a6ed9cad7f0b543c770aa8b7b0362d00e71185bb6b5ad8c38816c",
    maxWireBytes : 1984,
    minWireBytes : 16,
    cartesianMaxWireBytes : 1984n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"section" : "", "key" : "", "lang_id" : "", "arguments" : []};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsI18nTextSize(Ros1Pal_interaction_msgsI18nTextCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsI18nTextCapture(value), n = Ros1Pal_interaction_msgsI18nTextSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsI18nTextWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1984, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsI18nTextRead(r);
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

function Ros1Pal_interaction_msgsI18nTextSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["section"], 128).length);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    n = addSize(n, 4 + textBytes(value["lang_id"], 128).length);
    if(!Array.isArray(value["arguments"]) || value["arguments"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["arguments"])
    {
        n = addSize(n, Ros1Pal_interaction_msgsI18nArgumentSize(element));
    }
    if(n > 1984)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsI18nTextWrite(value, w)
{
    w.text(value["section"], 128);
    w.text(value["key"], 128);
    w.text(value["lang_id"], 128);
    w.v.setUint32(w.at, value["arguments"].length, true);
    w.at += 4;
    for(const element of value["arguments"])
    {
        Ros1Pal_interaction_msgsI18nArgumentWrite(element, w);
    }
}

function Ros1Pal_interaction_msgsI18nTextRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["section"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["lang_id"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["arguments"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_interaction_msgsI18nArgumentRead(r);
                value["arguments"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_interaction_msgsI18nTextCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["section"];
        out["section"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    {
        const field = value["lang_id"];
        out["lang_id"] = field;
    }
    {
        const field = value["arguments"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_interaction_msgsI18nArgumentCapture(element);
        }
        out["arguments"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/TtsText codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsTtsTextCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0bf14fabb5b62c5341e606b8ac9f6abaf74a85033a10e9a8f1e5b8bdfe178a87",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"text" : "", "lang_id" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsTtsTextSize(Ros1Pal_interaction_msgsTtsTextCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsTtsTextCapture(value), n = Ros1Pal_interaction_msgsTtsTextSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsTtsTextWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsTtsTextRead(r);
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

function Ros1Pal_interaction_msgsTtsTextSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["text"], 128).length);
    n = addSize(n, 4 + textBytes(value["lang_id"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsTtsTextWrite(value, w)
{
    w.text(value["text"], 128);
    w.text(value["lang_id"], 128);
}

function Ros1Pal_interaction_msgsTtsTextRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["text"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["lang_id"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsTtsTextCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = field;
    }
    {
        const field = value["lang_id"];
        out["lang_id"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/GetSpeechDurationRequest codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsGetSpeechDurationRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0926f4515183e6c9fd4cd5b20c6aa53014ba7dbd4e64113c9b6c514123ba7dc5",
    maxWireBytes : 2248,
    minWireBytes : 24,
    cartesianMaxWireBytes : 2248n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"text" : Ros1Pal_interaction_msgsI18nTextCodec.defaultValue(), "rawtext" : Ros1Pal_interaction_msgsTtsTextCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsGetSpeechDurationRequestSize(Ros1Pal_interaction_msgsGetSpeechDurationRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsGetSpeechDurationRequestCapture(value), n = Ros1Pal_interaction_msgsGetSpeechDurationRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_interaction_msgsGetSpeechDurationRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2248, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsGetSpeechDurationRequestRead(r);
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

function Ros1Pal_interaction_msgsGetSpeechDurationRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsI18nTextSize(value["text"]));
    n = addSize(n, Ros1Pal_interaction_msgsTtsTextSize(value["rawtext"]));
    if(n > 2248)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsGetSpeechDurationRequestWrite(value, w)
{
    Ros1Pal_interaction_msgsI18nTextWrite(value["text"], w);
    Ros1Pal_interaction_msgsTtsTextWrite(value["rawtext"], w);
}

function Ros1Pal_interaction_msgsGetSpeechDurationRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsI18nTextRead(r);
        value["text"] = decoded;
    }
    {
        const decoded = Ros1Pal_interaction_msgsTtsTextRead(r);
        value["rawtext"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsGetSpeechDurationRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = Ros1Pal_interaction_msgsI18nTextCapture(field);
    }
    {
        const field = value["rawtext"];
        out["rawtext"] = Ros1Pal_interaction_msgsTtsTextCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/GetSpeechDurationResponse codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsGetSpeechDurationResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578",
    maxWireBytes : 2249,
    minWireBytes : 9,
    cartesianMaxWireBytes : 2249n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ok" : false, "words" : [], "word_durations" : []};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsGetSpeechDurationResponseSize(Ros1Pal_interaction_msgsGetSpeechDurationResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsGetSpeechDurationResponseCapture(value), n = Ros1Pal_interaction_msgsGetSpeechDurationResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_interaction_msgsGetSpeechDurationResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2249, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsGetSpeechDurationResponseRead(r);
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

function Ros1Pal_interaction_msgsGetSpeechDurationResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["ok"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["words"]) || value["words"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["words"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["word_durations"]) || value["word_durations"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["word_durations"])
    {
        n = addSize(n, Ros1DurationSize(element));
    }
    if(n > 2249)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsGetSpeechDurationResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["ok"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint32(w.at, value["words"].length, true);
    w.at += 4;
    for(const element of value["words"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["word_durations"].length, true);
    w.at += 4;
    for(const element of value["word_durations"])
    {
        Ros1DurationWrite(element, w);
    }
}

function Ros1Pal_interaction_msgsGetSpeechDurationResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["ok"] = decoded !== 0;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["words"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["words"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["word_durations"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1DurationRead(r);
                value["word_durations"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_interaction_msgsGetSpeechDurationResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ok"];
        out["ok"] = field;
    }
    {
        const field = value["words"];
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
        out["words"] = values;
    }
    {
        const field = value["word_durations"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1DurationCapture(element);
        }
        out["word_durations"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/InputArgument codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsInputArgumentCodec = Object.freeze({
    codecIdentity : "UWVMROS1_96c3c0967199a746bf47ffd146123f31ec2f1949b7f3a343cad3825b8b1e8dd0",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"key" : "", "value" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsInputArgumentSize(Ros1Pal_interaction_msgsInputArgumentCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsInputArgumentCapture(value), n = Ros1Pal_interaction_msgsInputArgumentSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsInputArgumentWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsInputArgumentRead(r);
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

function Ros1Pal_interaction_msgsInputArgumentSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsInputArgumentWrite(value, w)
{
    w.text(value["key"], 128);
    w.text(value["value"], 128);
}

function Ros1Pal_interaction_msgsInputArgumentRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsInputArgumentCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["key"];
        out["key"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/Input codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsInputCodec = Object.freeze({
    codecIdentity : "UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307",
    maxWireBytes : 1192,
    minWireBytes : 8,
    cartesianMaxWireBytes : 1192n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "INPUT_ACCEPT" : "INPUT_ACCEPT",
        "INPUT_REJECT" : "INPUT_REJECT",
        "INPUT_CANCEL" : "INPUT_CANCEL",
        "OK" : "ok",
        "YES" : "yes",
        "NO" : "no",
        "CANCEL" : "cancel",
        "ABORT" : "abort"
    }),
    defaultValue() {
        return {"action" : "", "args" : []};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsInputSize(Ros1Pal_interaction_msgsInputCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsInputCapture(value), n = Ros1Pal_interaction_msgsInputSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsInputWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1192, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsInputRead(r);
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

function Ros1Pal_interaction_msgsInputSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["action"], 128).length);
    if(!Array.isArray(value["args"]) || value["args"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["args"])
    {
        n = addSize(n, Ros1Pal_interaction_msgsInputArgumentSize(element));
    }
    if(n > 1192)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsInputWrite(value, w)
{
    w.text(value["action"], 128);
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        Ros1Pal_interaction_msgsInputArgumentWrite(element, w);
    }
}

function Ros1Pal_interaction_msgsInputRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["action"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["args"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_interaction_msgsInputArgumentRead(r);
                value["args"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_interaction_msgsInputCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["action"];
        out["action"] = field;
    }
    {
        const field = value["args"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_interaction_msgsInputArgumentCapture(element);
        }
        out["args"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/SoundGoal codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsSoundGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_07b9c59deb5669b601a4e02708bd14d16a19263edde6f8fef3a4781724a4f3db",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"text" : "", "lang_id" : "", "wait_before_speaking" : Ros1DurationCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsSoundGoalSize(Ros1Pal_interaction_msgsSoundGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsSoundGoalCapture(value), n = Ros1Pal_interaction_msgsSoundGoalSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsSoundGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsSoundGoalRead(r);
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

function Ros1Pal_interaction_msgsSoundGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["text"], 128).length);
    n = addSize(n, 4 + textBytes(value["lang_id"], 128).length);
    n = addSize(n, Ros1DurationSize(value["wait_before_speaking"]));
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsSoundGoalWrite(value, w)
{
    w.text(value["text"], 128);
    w.text(value["lang_id"], 128);
    Ros1DurationWrite(value["wait_before_speaking"], w);
}

function Ros1Pal_interaction_msgsSoundGoalRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["text"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["lang_id"] = decoded;
    }
    {
        const decoded = Ros1DurationRead(r);
        value["wait_before_speaking"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsSoundGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = field;
    }
    {
        const field = value["lang_id"];
        out["lang_id"] = field;
    }
    {
        const field = value["wait_before_speaking"];
        out["wait_before_speaking"] = Ros1DurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/SoundResult codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsSoundResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_53c3ab50649a2ffe113e4ae246aa05736090d42f5a0158f2878292319ee89a86",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"text" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsSoundResultSize(Ros1Pal_interaction_msgsSoundResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsSoundResultCapture(value), n = Ros1Pal_interaction_msgsSoundResultSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsSoundResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsSoundResultRead(r);
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

function Ros1Pal_interaction_msgsSoundResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["text"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsSoundResultWrite(value, w)
{
    w.text(value["text"], 128);
}

function Ros1Pal_interaction_msgsSoundResultRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["text"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsSoundResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/SoundFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsSoundFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e9a77075706815852fbf5684df54d9d655925f7fecc7caa407d9076adc645d7d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsSoundFeedbackSize(Ros1Pal_interaction_msgsSoundFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsSoundFeedbackCapture(value), n = Ros1Pal_interaction_msgsSoundFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsSoundFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsSoundFeedbackRead(r);
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

function Ros1Pal_interaction_msgsSoundFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsSoundFeedbackWrite(value, w)
{
}

function Ros1Pal_interaction_msgsSoundFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_interaction_msgsSoundFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/SoundLocalisationServiceRequest codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e7505ba44b9dc511311f5609c1618a1214362063600b32e2057dbe9cc2d32feb",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"enabling" : Ros1Pal_interaction_msgsEnablingSoundLocalisationCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsSoundLocalisationServiceRequestSize(Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCapture(value),
              n = Ros1Pal_interaction_msgsSoundLocalisationServiceRequestSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsSoundLocalisationServiceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsSoundLocalisationServiceRequestRead(r);
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

function Ros1Pal_interaction_msgsSoundLocalisationServiceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsEnablingSoundLocalisationSize(value["enabling"]));
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsSoundLocalisationServiceRequestWrite(value, w)
{
    Ros1Pal_interaction_msgsEnablingSoundLocalisationWrite(value["enabling"], w);
}

function Ros1Pal_interaction_msgsSoundLocalisationServiceRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsEnablingSoundLocalisationRead(r);
        value["enabling"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["enabling"];
        out["enabling"] = Ros1Pal_interaction_msgsEnablingSoundLocalisationCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/SoundLocalisationServiceResponse codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_205fe5e2195345e29bac8477e95059862a44b476a359d808551427941c64ad6e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsSoundLocalisationServiceResponseSize(Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCapture(value),
              n = Ros1Pal_interaction_msgsSoundLocalisationServiceResponseSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsSoundLocalisationServiceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsSoundLocalisationServiceResponseRead(r);
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

function Ros1Pal_interaction_msgsSoundLocalisationServiceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsSoundLocalisationServiceResponseWrite(value, w)
{
}

function Ros1Pal_interaction_msgsSoundLocalisationServiceResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/TTSstate codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsTTSstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b9269838ab729ac39efc69c373314419ace1b43a2bf47176c822671aba9d9987",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"isSpeaking" : false, "text" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsTTSstateSize(Ros1Pal_interaction_msgsTTSstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsTTSstateCapture(value), n = Ros1Pal_interaction_msgsTTSstateSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsTTSstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsTTSstateRead(r);
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

function Ros1Pal_interaction_msgsTTSstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["isSpeaking"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["text"], 128).length);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsTTSstateWrite(value, w)
{
    w.v.setUint8(w.at, value["isSpeaking"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["text"], 128);
}

function Ros1Pal_interaction_msgsTTSstateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["isSpeaking"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["text"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsTTSstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["isSpeaking"];
        out["isSpeaking"] = field;
    }
    {
        const field = value["text"];
        out["text"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/TtsGoal codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsTtsGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d128a99394120e1688e4feb9906b033af53982dbf12040604502aeb8f59304c7",
    maxWireBytes : 2388,
    minWireBytes : 36,
    cartesianMaxWireBytes : 2388n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "text" : Ros1Pal_interaction_msgsI18nTextCodec.defaultValue(),
            "rawtext" : Ros1Pal_interaction_msgsTtsTextCodec.defaultValue(),
            "speakerName" : "",
            "wait_before_speaking" : 0
        };
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsTtsGoalSize(Ros1Pal_interaction_msgsTtsGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsTtsGoalCapture(value), n = Ros1Pal_interaction_msgsTtsGoalSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsTtsGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2388, 90);
        if(owned.length < 36)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsTtsGoalRead(r);
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

function Ros1Pal_interaction_msgsTtsGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsI18nTextSize(value["text"]));
    n = addSize(n, Ros1Pal_interaction_msgsTtsTextSize(value["rawtext"]));
    n = addSize(n, 4 + textBytes(value["speakerName"], 128).length);
    if(typeof value["wait_before_speaking"] !== "number" || !Number.isFinite(value["wait_before_speaking"]))
        bad();
    n = addSize(n, 8);
    if(n > 2388)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsTtsGoalWrite(value, w)
{
    Ros1Pal_interaction_msgsI18nTextWrite(value["text"], w);
    Ros1Pal_interaction_msgsTtsTextWrite(value["rawtext"], w);
    w.text(value["speakerName"], 128);
    w.v.setFloat64(w.at, value["wait_before_speaking"], true);
    w.at += 8;
}

function Ros1Pal_interaction_msgsTtsGoalRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsI18nTextRead(r);
        value["text"] = decoded;
    }
    {
        const decoded = Ros1Pal_interaction_msgsTtsTextRead(r);
        value["rawtext"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["speakerName"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["wait_before_speaking"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsTtsGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = Ros1Pal_interaction_msgsI18nTextCapture(field);
    }
    {
        const field = value["rawtext"];
        out["rawtext"] = Ros1Pal_interaction_msgsTtsTextCapture(field);
    }
    {
        const field = value["speakerName"];
        out["speakerName"] = field;
    }
    {
        const field = value["wait_before_speaking"];
        out["wait_before_speaking"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/TtsResult codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsTtsResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_74f6eebecfd7e0e50e48ca3393fc0f9e9e24baec834bf39cb30455e9f0d9cf56",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"text" : "", "msg" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsTtsResultSize(Ros1Pal_interaction_msgsTtsResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsTtsResultCapture(value), n = Ros1Pal_interaction_msgsTtsResultSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsTtsResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsTtsResultRead(r);
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

function Ros1Pal_interaction_msgsTtsResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["text"], 128).length);
    n = addSize(n, 4 + textBytes(value["msg"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsTtsResultWrite(value, w)
{
    w.text(value["text"], 128);
    w.text(value["msg"], 128);
}

function Ros1Pal_interaction_msgsTtsResultRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["text"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["msg"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsTtsResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = field;
    }
    {
        const field = value["msg"];
        out["msg"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/TtsMark codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsTtsMarkCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4f92d66f3ec5bc7645da4cb0dabce2d662ebffe13a67c999c5cf3d771f11fc95",
    maxWireBytes : 4364,
    minWireBytes : 12,
    cartesianMaxWireBytes : 4364n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : "", "keys" : [], "value" : []};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsTtsMarkSize(Ros1Pal_interaction_msgsTtsMarkCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsTtsMarkCapture(value), n = Ros1Pal_interaction_msgsTtsMarkSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsTtsMarkWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4364, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsTtsMarkRead(r);
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

function Ros1Pal_interaction_msgsTtsMarkSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["id"], 128).length);
    if(!Array.isArray(value["keys"]) || value["keys"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["keys"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["value"]) || value["value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["value"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(n > 4364)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsTtsMarkWrite(value, w)
{
    w.text(value["id"], 128);
    w.v.setUint32(w.at, value["keys"].length, true);
    w.at += 4;
    for(const element of value["keys"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["value"].length, true);
    w.at += 4;
    for(const element of value["value"])
    {
        w.text(element, 128);
    }
}

function Ros1Pal_interaction_msgsTtsMarkRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["id"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["keys"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["keys"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_interaction_msgsTtsMarkCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["keys"];
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
        out["keys"] = values;
    }
    {
        const field = value["value"];
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
        out["value"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/TtsFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsTtsFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894",
    maxWireBytes : 4770,
    minWireBytes : 34,
    cartesianMaxWireBytes : 4770n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "TTS_EVENT_INITIALIZATION" : 1,
        "TTS_EVENT_SHUTDOWN" : 2,
        "TTS_EVENT_SYNCHRONIZATION" : 4,
        "TTS_EVENT_FINISHED_PLAYING_UTTERANCE" : 8,
        "TTS_EVENT_MARK" : 16,
        "TTS_EVENT_STARTED_PLAYING_WORD" : 32,
        "TTS_EVENT_FINISHED_PLAYING_PHRASE" : 64,
        "TTS_EVENT_FINISHED_PLAYING_SENTENCE" : 128,
        "TTS_EVENT_VISEME" : 256
    }),
    defaultValue() {
        return {
            "event_type" : 0,
            "timestamp" : Ros1TimeCodec.defaultValue(),
            "text_said" : "",
            "next_word" : "",
            "viseme_id" : "",
            "marks" : Ros1Pal_interaction_msgsTtsMarkCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsTtsFeedbackSize(Ros1Pal_interaction_msgsTtsFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsTtsFeedbackCapture(value), n = Ros1Pal_interaction_msgsTtsFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsTtsFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4770, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsTtsFeedbackRead(r);
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

function Ros1Pal_interaction_msgsTtsFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["event_type"], 2, false);
    n = addSize(n, 2);
    n = addSize(n, Ros1TimeSize(value["timestamp"]));
    n = addSize(n, 4 + textBytes(value["text_said"], 128).length);
    n = addSize(n, 4 + textBytes(value["next_word"], 128).length);
    n = addSize(n, 4 + textBytes(value["viseme_id"], 128).length);
    n = addSize(n, Ros1Pal_interaction_msgsTtsMarkSize(value["marks"]));
    if(n > 4770)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsTtsFeedbackWrite(value, w)
{
    w.v.setUint16(w.at, value["event_type"], true);
    w.at += 2;
    Ros1TimeWrite(value["timestamp"], w);
    w.text(value["text_said"], 128);
    w.text(value["next_word"], 128);
    w.text(value["viseme_id"], 128);
    Ros1Pal_interaction_msgsTtsMarkWrite(value["marks"], w);
}

function Ros1Pal_interaction_msgsTtsFeedbackRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["event_type"] = decoded;
    }
    {
        const decoded = Ros1TimeRead(r);
        value["timestamp"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["text_said"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["next_word"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["viseme_id"] = decoded;
    }
    {
        const decoded = Ros1Pal_interaction_msgsTtsMarkRead(r);
        value["marks"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsTtsFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["event_type"];
        out["event_type"] = field;
    }
    {
        const field = value["timestamp"];
        out["timestamp"] = Ros1TimeCapture(field);
    }
    {
        const field = value["text_said"];
        out["text_said"] = field;
    }
    {
        const field = value["next_word"];
        out["next_word"] = field;
    }
    {
        const field = value["viseme_id"];
        out["viseme_id"] = field;
    }
    {
        const field = value["marks"];
        out["marks"] = Ros1Pal_interaction_msgsTtsMarkCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/VoiceActivity codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsVoiceActivityCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c33952dbed35f2e6e08dd4dd8b7adf5c71a52106e2b274b988ec3218648b42a7",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"isSpeech" : false};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsVoiceActivitySize(Ros1Pal_interaction_msgsVoiceActivityCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsVoiceActivityCapture(value), n = Ros1Pal_interaction_msgsVoiceActivitySize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsVoiceActivityWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsVoiceActivityRead(r);
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

function Ros1Pal_interaction_msgsVoiceActivitySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["isSpeech"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsVoiceActivityWrite(value, w)
{
    w.v.setUint8(w.at, value["isSpeech"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_interaction_msgsVoiceActivityRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["isSpeech"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_interaction_msgsVoiceActivityCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["isSpeech"];
        out["isSpeech"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/WebGuiEvent codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsWebGuiEventCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fb8030a4cb371da5dae852d62b28d8e7b03c3d37f0f6390c904ef3dc84084e23",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "arg" : ""};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsWebGuiEventSize(Ros1Pal_interaction_msgsWebGuiEventCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsWebGuiEventCapture(value), n = Ros1Pal_interaction_msgsWebGuiEventSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsWebGuiEventWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsWebGuiEventRead(r);
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

function Ros1Pal_interaction_msgsWebGuiEventSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, 4 + textBytes(value["arg"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsWebGuiEventWrite(value, w)
{
    w.text(value["name"], 128);
    w.text(value["arg"], 128);
}

function Ros1Pal_interaction_msgsWebGuiEventRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["arg"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsWebGuiEventCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["arg"];
        out["arg"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/asrupdate codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsAsrupdateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_34584358ab6faa36c96fbbe2de2bef7cba7ae6eb5879cd6b676a1826fb154fda",
    maxWireBytes : 529,
    minWireBytes : 17,
    cartesianMaxWireBytes : 529n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"language" : "", "enable_grammar" : "", "disable_grammar" : "", "acousticenv" : "", "active" : false};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsAsrupdateSize(Ros1Pal_interaction_msgsAsrupdateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsAsrupdateCapture(value), n = Ros1Pal_interaction_msgsAsrupdateSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsAsrupdateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 529, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsAsrupdateRead(r);
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

function Ros1Pal_interaction_msgsAsrupdateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["language"], 128).length);
    n = addSize(n, 4 + textBytes(value["enable_grammar"], 128).length);
    n = addSize(n, 4 + textBytes(value["disable_grammar"], 128).length);
    n = addSize(n, 4 + textBytes(value["acousticenv"], 128).length);
    if(typeof value["active"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 529)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsAsrupdateWrite(value, w)
{
    w.text(value["language"], 128);
    w.text(value["enable_grammar"], 128);
    w.text(value["disable_grammar"], 128);
    w.text(value["acousticenv"], 128);
    w.v.setUint8(w.at, value["active"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_interaction_msgsAsrupdateRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["language"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["enable_grammar"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["disable_grammar"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["acousticenv"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["active"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_interaction_msgsAsrupdateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["language"];
        out["language"] = field;
    }
    {
        const field = value["enable_grammar"];
        out["enable_grammar"] = field;
    }
    {
        const field = value["disable_grammar"];
        out["disable_grammar"] = field;
    }
    {
        const field = value["acousticenv"];
        out["acousticenv"] = field;
    }
    {
        const field = value["active"];
        out["active"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/audiosignal codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsAudiosignalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"channel0" : [], "channel1" : []};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsAudiosignalSize(Ros1Pal_interaction_msgsAudiosignalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsAudiosignalCapture(value), n = Ros1Pal_interaction_msgsAudiosignalSize(owned), w = new Writer(n);
        Ros1Pal_interaction_msgsAudiosignalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsAudiosignalRead(r);
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

function Ros1Pal_interaction_msgsAudiosignalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["channel0"]) || value["channel0"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["channel0"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["channel1"]) || value["channel1"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["channel1"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsAudiosignalWrite(value, w)
{
    w.v.setUint32(w.at, value["channel0"].length, true);
    w.at += 4;
    for(const element of value["channel0"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["channel1"].length, true);
    w.at += 4;
    for(const element of value["channel1"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Pal_interaction_msgsAudiosignalRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["channel0"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["channel0"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["channel1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["channel1"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_interaction_msgsAudiosignalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["channel0"];
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
        out["channel0"] = values;
    }
    {
        const field = value["channel1"];
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
        out["channel1"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/recognizerServiceRequest codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsRecognizerServiceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_369151b882d849a0ab75110068aedd9eac22d87afe7b5bc13af87a6f78588edc",
    maxWireBytes : 529,
    minWireBytes : 17,
    cartesianMaxWireBytes : 529n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"asrupdate" : Ros1Pal_interaction_msgsAsrupdateCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsRecognizerServiceRequestSize(Ros1Pal_interaction_msgsRecognizerServiceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsRecognizerServiceRequestCapture(value), n = Ros1Pal_interaction_msgsRecognizerServiceRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_interaction_msgsRecognizerServiceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 529, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsRecognizerServiceRequestRead(r);
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

function Ros1Pal_interaction_msgsRecognizerServiceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsAsrupdateSize(value["asrupdate"]));
    if(n > 529)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsRecognizerServiceRequestWrite(value, w)
{
    Ros1Pal_interaction_msgsAsrupdateWrite(value["asrupdate"], w);
}

function Ros1Pal_interaction_msgsRecognizerServiceRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsAsrupdateRead(r);
        value["asrupdate"] = decoded;
    }
    return value;
}

function Ros1Pal_interaction_msgsRecognizerServiceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["asrupdate"];
        out["asrupdate"] = Ros1Pal_interaction_msgsAsrupdateCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_interaction_msgs/recognizerServiceResponse codec; maxima are not actual lengths. */
export const Ros1Pal_interaction_msgsRecognizerServiceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3598ef995f13f4377e0e4eff270a9e277c3c94018f60aeb944119ce9f5b25813",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_interaction_msgsRecognizerServiceResponseSize(Ros1Pal_interaction_msgsRecognizerServiceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_interaction_msgsRecognizerServiceResponseCapture(value), n = Ros1Pal_interaction_msgsRecognizerServiceResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_interaction_msgsRecognizerServiceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_interaction_msgsRecognizerServiceResponseRead(r);
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

function Ros1Pal_interaction_msgsRecognizerServiceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_interaction_msgsRecognizerServiceResponseWrite(value, w)
{
}

function Ros1Pal_interaction_msgsRecognizerServiceResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_interaction_msgsRecognizerServiceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_motion_model_msgs/GetMotionMapRequest codec; maxima are not actual lengths. */
export const Ros1Pal_motion_model_msgsGetMotionMapRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4bfce8e9cc79e30ec211aa18bafb432fa0d3ff4fa18569a1c0ef178fe2729e97",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_motion_model_msgsGetMotionMapRequestSize(Ros1Pal_motion_model_msgsGetMotionMapRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_motion_model_msgsGetMotionMapRequestCapture(value), n = Ros1Pal_motion_model_msgsGetMotionMapRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_motion_model_msgsGetMotionMapRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_motion_model_msgsGetMotionMapRequestRead(r);
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

function Ros1Pal_motion_model_msgsGetMotionMapRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_motion_model_msgsGetMotionMapRequestWrite(value, w)
{
}

function Ros1Pal_motion_model_msgsGetMotionMapRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_motion_model_msgsGetMotionMapRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_motion_model_msgs/MotionModel codec; maxima are not actual lengths. */
export const Ros1Pal_motion_model_msgsMotionModelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3d44b889a1c70d5e84107202bccf2143c8dd559a2cd5499d0c7319568469c1ea",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "heading_mean" : 0,
            "heading_std_dev" : 0,
            "linear_speed_mean" : 0,
            "linear_speed_std_dev" : 0,
            "angular_speed_mean" : 0,
            "angular_speed_std_dev" : 0
        };
    },
    validateValue(value) {
        Ros1Pal_motion_model_msgsMotionModelSize(Ros1Pal_motion_model_msgsMotionModelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_motion_model_msgsMotionModelCapture(value), n = Ros1Pal_motion_model_msgsMotionModelSize(owned), w = new Writer(n);
        Ros1Pal_motion_model_msgsMotionModelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Pal_motion_model_msgsMotionModelRead(r);
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

function Ros1Pal_motion_model_msgsMotionModelSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["heading_mean"] !== "number" || !Number.isFinite(value["heading_mean"]) || !Number.isFinite(Math.fround(value["heading_mean"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["heading_std_dev"] !== "number" || !Number.isFinite(value["heading_std_dev"]) || !Number.isFinite(Math.fround(value["heading_std_dev"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["linear_speed_mean"] !== "number" || !Number.isFinite(value["linear_speed_mean"]) ||
       !Number.isFinite(Math.fround(value["linear_speed_mean"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["linear_speed_std_dev"] !== "number" || !Number.isFinite(value["linear_speed_std_dev"]) ||
       !Number.isFinite(Math.fround(value["linear_speed_std_dev"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["angular_speed_mean"] !== "number" || !Number.isFinite(value["angular_speed_mean"]) ||
       !Number.isFinite(Math.fround(value["angular_speed_mean"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["angular_speed_std_dev"] !== "number" || !Number.isFinite(value["angular_speed_std_dev"]) ||
       !Number.isFinite(Math.fround(value["angular_speed_std_dev"])))
        bad();
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros1Pal_motion_model_msgsMotionModelWrite(value, w)
{
    w.v.setFloat32(w.at, value["heading_mean"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["heading_std_dev"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["linear_speed_mean"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["linear_speed_std_dev"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["angular_speed_mean"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["angular_speed_std_dev"], true);
    w.at += 4;
}

function Ros1Pal_motion_model_msgsMotionModelRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["heading_mean"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["heading_std_dev"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["linear_speed_mean"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["linear_speed_std_dev"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["angular_speed_mean"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["angular_speed_std_dev"] = decoded;
    }
    return value;
}

function Ros1Pal_motion_model_msgsMotionModelCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["heading_mean"];
        out["heading_mean"] = field;
    }
    {
        const field = value["heading_std_dev"];
        out["heading_std_dev"] = field;
    }
    {
        const field = value["linear_speed_mean"];
        out["linear_speed_mean"] = field;
    }
    {
        const field = value["linear_speed_std_dev"];
        out["linear_speed_std_dev"] = field;
    }
    {
        const field = value["angular_speed_mean"];
        out["angular_speed_mean"] = field;
    }
    {
        const field = value["angular_speed_std_dev"];
        out["angular_speed_std_dev"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_motion_model_msgs/MotionModelList codec; maxima are not actual lengths. */
export const Ros1Pal_motion_model_msgsMotionModelListCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f85f87d53cc9ae6392347e9d2cc41d306260335b4568e671890ebdd43a27a294",
    maxWireBytes : 100,
    minWireBytes : 4,
    cartesianMaxWireBytes : 100n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"models" : []};
    },
    validateValue(value) {
        Ros1Pal_motion_model_msgsMotionModelListSize(Ros1Pal_motion_model_msgsMotionModelListCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_motion_model_msgsMotionModelListCapture(value), n = Ros1Pal_motion_model_msgsMotionModelListSize(owned), w = new Writer(n);
        Ros1Pal_motion_model_msgsMotionModelListWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 100, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_motion_model_msgsMotionModelListRead(r);
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

function Ros1Pal_motion_model_msgsMotionModelListSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["models"]) || value["models"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["models"])
    {
        n = addSize(n, Ros1Pal_motion_model_msgsMotionModelSize(element));
    }
    if(n > 100)
        bad(90);
    return n;
}

function Ros1Pal_motion_model_msgsMotionModelListWrite(value, w)
{
    w.v.setUint32(w.at, value["models"].length, true);
    w.at += 4;
    for(const element of value["models"])
    {
        Ros1Pal_motion_model_msgsMotionModelWrite(element, w);
    }
}

function Ros1Pal_motion_model_msgsMotionModelListRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["models"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_motion_model_msgsMotionModelRead(r);
                value["models"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_motion_model_msgsMotionModelListCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["models"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_motion_model_msgsMotionModelCapture(element);
        }
        out["models"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_motion_model_msgs/MotionModelMap codec; maxima are not actual lengths. */
export const Ros1Pal_motion_model_msgsMotionModelMapCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6f1702acedc40207e16d9a06d68581fb055ac1b42135efdbbbd1477eff42b289",
    maxWireBytes : 624,
    minWireBytes : 96,
    cartesianMaxWireBytes : 624n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "info" : Ros1Nav_msgsMapMetaDataCodec.defaultValue(), "data" : []};
    },
    validateValue(value) {
        Ros1Pal_motion_model_msgsMotionModelMapSize(Ros1Pal_motion_model_msgsMotionModelMapCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_motion_model_msgsMotionModelMapCapture(value), n = Ros1Pal_motion_model_msgsMotionModelMapSize(owned), w = new Writer(n);
        Ros1Pal_motion_model_msgsMotionModelMapWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 624, 90);
        if(owned.length < 96)
            bad();
        const r = new Reader(owned), value = Ros1Pal_motion_model_msgsMotionModelMapRead(r);
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

function Ros1Pal_motion_model_msgsMotionModelMapSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Nav_msgsMapMetaDataSize(value["info"]));
    if(!Array.isArray(value["data"]) || value["data"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        n = addSize(n, Ros1Pal_motion_model_msgsMotionModelListSize(element));
    }
    if(n > 624)
        bad(90);
    return n;
}

function Ros1Pal_motion_model_msgsMotionModelMapWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Nav_msgsMapMetaDataWrite(value["info"], w);
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        Ros1Pal_motion_model_msgsMotionModelListWrite(element, w);
    }
}

function Ros1Pal_motion_model_msgsMotionModelMapRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Nav_msgsMapMetaDataRead(r);
        value["info"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_motion_model_msgsMotionModelListRead(r);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_motion_model_msgsMotionModelMapCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["info"];
        out["info"] = Ros1Nav_msgsMapMetaDataCapture(field);
    }
    {
        const field = value["data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_motion_model_msgsMotionModelListCapture(element);
        }
        out["data"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_motion_model_msgs/GetMotionMapResponse codec; maxima are not actual lengths. */
export const Ros1Pal_motion_model_msgsGetMotionMapResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b031c17ef990e784eeeb7fbf270b482207c5de43323a9cbf37306ac07b159440",
    maxWireBytes : 624,
    minWireBytes : 96,
    cartesianMaxWireBytes : 624n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"map" : Ros1Pal_motion_model_msgsMotionModelMapCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_motion_model_msgsGetMotionMapResponseSize(Ros1Pal_motion_model_msgsGetMotionMapResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_motion_model_msgsGetMotionMapResponseCapture(value), n = Ros1Pal_motion_model_msgsGetMotionMapResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_motion_model_msgsGetMotionMapResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 624, 90);
        if(owned.length < 96)
            bad();
        const r = new Reader(owned), value = Ros1Pal_motion_model_msgsGetMotionMapResponseRead(r);
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

function Ros1Pal_motion_model_msgsGetMotionMapResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_motion_model_msgsMotionModelMapSize(value["map"]));
    if(n > 624)
        bad(90);
    return n;
}

function Ros1Pal_motion_model_msgsGetMotionMapResponseWrite(value, w)
{
    Ros1Pal_motion_model_msgsMotionModelMapWrite(value["map"], w);
}

function Ros1Pal_motion_model_msgsGetMotionMapResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_motion_model_msgsMotionModelMapRead(r);
        value["map"] = decoded;
    }
    return value;
}

function Ros1Pal_motion_model_msgsGetMotionMapResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map"];
        out["map"] = Ros1Pal_motion_model_msgsMotionModelMapCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_multirobot_msgs/WifiServiceDetection codec; maxima are not actual lengths. */
export const Ros1Pal_multirobot_msgsWifiServiceDetectionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1f9a244c4e98ec5f4eb60bd008a62b94a91a6982b56273510c3019b95f1b5741",
    maxWireBytes : 278,
    minWireBytes : 22,
    cartesianMaxWireBytes : 278n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "id" : "", "signal" : 0};
    },
    validateValue(value) {
        Ros1Pal_multirobot_msgsWifiServiceDetectionSize(Ros1Pal_multirobot_msgsWifiServiceDetectionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_multirobot_msgsWifiServiceDetectionCapture(value), n = Ros1Pal_multirobot_msgsWifiServiceDetectionSize(owned), w = new Writer(n);
        Ros1Pal_multirobot_msgsWifiServiceDetectionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 278, 90);
        if(owned.length < 22)
            bad();
        const r = new Reader(owned), value = Ros1Pal_multirobot_msgsWifiServiceDetectionRead(r);
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

function Ros1Pal_multirobot_msgsWifiServiceDetectionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["id"], 128).length);
    integer(value["signal"], 2, true);
    n = addSize(n, 2);
    if(n > 278)
        bad(90);
    return n;
}

function Ros1Pal_multirobot_msgsWifiServiceDetectionWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.text(value["id"], 128);
    w.v.setInt16(w.at, value["signal"], true);
    w.at += 2;
}

function Ros1Pal_multirobot_msgsWifiServiceDetectionRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["signal"] = decoded;
    }
    return value;
}

function Ros1Pal_multirobot_msgsWifiServiceDetectionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["signal"];
        out["signal"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/AcknowledgmentRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsAcknowledgmentRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0249fb5130ed44b9127f0cb73472fc4366de614fcc3be68ed3e7bf2a4636cae5",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"input" : ""};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsAcknowledgmentRequestSize(Ros1Pal_navigation_msgsAcknowledgmentRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsAcknowledgmentRequestCapture(value), n = Ros1Pal_navigation_msgsAcknowledgmentRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsAcknowledgmentRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsAcknowledgmentRequestRead(r);
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

function Ros1Pal_navigation_msgsAcknowledgmentRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["input"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsAcknowledgmentRequestWrite(value, w)
{
    w.text(value["input"], 128);
}

function Ros1Pal_navigation_msgsAcknowledgmentRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["input"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsAcknowledgmentRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["input"];
        out["input"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/AcknowledgmentResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsAcknowledgmentResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cbc0f207907bc8de9f5c04bbf13c54ce81e72797ffadd0fea44980d1aa2658ae",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"output" : false, "error" : ""};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsAcknowledgmentResponseSize(Ros1Pal_navigation_msgsAcknowledgmentResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsAcknowledgmentResponseCapture(value), n = Ros1Pal_navigation_msgsAcknowledgmentResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsAcknowledgmentResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsAcknowledgmentResponseRead(r);
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

function Ros1Pal_navigation_msgsAcknowledgmentResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["output"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsAcknowledgmentResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["output"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["error"], 128);
}

function Ros1Pal_navigation_msgsAcknowledgmentResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["output"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsAcknowledgmentResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["output"];
        out["output"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** @brief Complete ROS1 std_msgs/String codec; maxima are not actual lengths. */
export const Ros1Std_msgsStringCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8a71a2d5957414e5a34318653c6314c005aab13980a35fa331401a4acd4442dc",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : ""};
    },
    validateValue(value) {
        Ros1Std_msgsStringSize(Ros1Std_msgsStringCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsStringCapture(value), n = Ros1Std_msgsStringSize(owned), w = new Writer(n);
        Ros1Std_msgsStringWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsStringRead(r);
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

function Ros1Std_msgsStringSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["data"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Std_msgsStringWrite(value, w)
{
    w.text(value["data"], 128);
}

function Ros1Std_msgsStringRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Std_msgsStringCapture(value)
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

/** @brief Complete ROS1 pal_navigation_msgs/AvailableMaps codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsAvailableMapsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3ac5ca4dc811d8082ad915e4f81eca379f2165a639dc113bb078f9952ed7322d",
    maxWireBytes : 532,
    minWireBytes : 4,
    cartesianMaxWireBytes : 532n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"map_names" : []};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsAvailableMapsSize(Ros1Pal_navigation_msgsAvailableMapsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsAvailableMapsCapture(value), n = Ros1Pal_navigation_msgsAvailableMapsSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsAvailableMapsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 532, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsAvailableMapsRead(r);
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

function Ros1Pal_navigation_msgsAvailableMapsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["map_names"]) || value["map_names"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["map_names"])
    {
        n = addSize(n, Ros1Std_msgsStringSize(element));
    }
    if(n > 532)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsAvailableMapsWrite(value, w)
{
    w.v.setUint32(w.at, value["map_names"].length, true);
    w.at += 4;
    for(const element of value["map_names"])
    {
        Ros1Std_msgsStringWrite(element, w);
    }
}

function Ros1Pal_navigation_msgsAvailableMapsRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["map_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsStringRead(r);
                value["map_names"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_navigation_msgsAvailableMapsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map_names"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsStringCapture(element);
        }
        out["map_names"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ChangeBuildingRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsChangeBuildingRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6144b47179187bf53c27112461762b29e9af1841704a53981e0b633d798c094c",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"building_name" : "", "floor_name" : ""};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsChangeBuildingRequestSize(Ros1Pal_navigation_msgsChangeBuildingRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsChangeBuildingRequestCapture(value), n = Ros1Pal_navigation_msgsChangeBuildingRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsChangeBuildingRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsChangeBuildingRequestRead(r);
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

function Ros1Pal_navigation_msgsChangeBuildingRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["building_name"], 128).length);
    n = addSize(n, 4 + textBytes(value["floor_name"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsChangeBuildingRequestWrite(value, w)
{
    w.text(value["building_name"], 128);
    w.text(value["floor_name"], 128);
}

function Ros1Pal_navigation_msgsChangeBuildingRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["building_name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["floor_name"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsChangeBuildingRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["building_name"];
        out["building_name"] = field;
    }
    {
        const field = value["floor_name"];
        out["floor_name"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ChangeBuildingResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsChangeBuildingResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_561da528ec2a5cc779e660da2d9218d3b64339cf0a7c3a889aabb5d8aa63e640",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsChangeBuildingResponseSize(Ros1Pal_navigation_msgsChangeBuildingResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsChangeBuildingResponseCapture(value), n = Ros1Pal_navigation_msgsChangeBuildingResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsChangeBuildingResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsChangeBuildingResponseRead(r);
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

function Ros1Pal_navigation_msgsChangeBuildingResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsChangeBuildingResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsChangeBuildingResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_navigation_msgsChangeBuildingResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ChangeMapRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsChangeMapRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5b418e8170efc2707f0667474c75034109e36b29e3d00f0b6ae1410a59beb4bf",
    maxWireBytes : 480,
    minWireBytes : 96,
    cartesianMaxWireBytes : 480n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"map" : Ros1Nav_msgsOccupancyGridCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsChangeMapRequestSize(Ros1Pal_navigation_msgsChangeMapRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsChangeMapRequestCapture(value), n = Ros1Pal_navigation_msgsChangeMapRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsChangeMapRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 480, 90);
        if(owned.length < 96)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsChangeMapRequestRead(r);
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

function Ros1Pal_navigation_msgsChangeMapRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Nav_msgsOccupancyGridSize(value["map"]));
    if(n > 480)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsChangeMapRequestWrite(value, w)
{
    Ros1Nav_msgsOccupancyGridWrite(value["map"], w);
}

function Ros1Pal_navigation_msgsChangeMapRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Nav_msgsOccupancyGridRead(r);
        value["map"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsChangeMapRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map"];
        out["map"] = Ros1Nav_msgsOccupancyGridCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ChangeMapResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsChangeMapResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29d8c048afd7b6e76c7045decd5d8af1d994db75f4af2c2e663d95c3579077f5",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsChangeMapResponseSize(Ros1Pal_navigation_msgsChangeMapResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsChangeMapResponseCapture(value), n = Ros1Pal_navigation_msgsChangeMapResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsChangeMapResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsChangeMapResponseRead(r);
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

function Ros1Pal_navigation_msgsChangeMapResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsChangeMapResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsChangeMapResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_navigation_msgsChangeMapResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ChangeSyncMapRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsChangeSyncMapRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d289a4940286f55bfade22fc3c87a511067e1f1ec078d8735acf455469846de5",
    maxWireBytes : 2728,
    minWireBytes : 104,
    cartesianMaxWireBytes : 2728n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"map" : Ros1Nav_msgsOccupancyGridCodec.defaultValue(), "map_name" : "", "sources" : []};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsChangeSyncMapRequestSize(Ros1Pal_navigation_msgsChangeSyncMapRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsChangeSyncMapRequestCapture(value), n = Ros1Pal_navigation_msgsChangeSyncMapRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsChangeSyncMapRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2728, 90);
        if(owned.length < 104)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsChangeSyncMapRequestRead(r);
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

function Ros1Pal_navigation_msgsChangeSyncMapRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Nav_msgsOccupancyGridSize(value["map"]));
    n = addSize(n, 4 + textBytes(value["map_name"], 128).length);
    if(!Array.isArray(value["sources"]) || value["sources"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["sources"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(n > 2728)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsChangeSyncMapRequestWrite(value, w)
{
    Ros1Nav_msgsOccupancyGridWrite(value["map"], w);
    w.text(value["map_name"], 128);
    w.v.setUint32(w.at, value["sources"].length, true);
    w.at += 4;
    for(const element of value["sources"])
    {
        w.text(element, 128);
    }
}

function Ros1Pal_navigation_msgsChangeSyncMapRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Nav_msgsOccupancyGridRead(r);
        value["map"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["map_name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["sources"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["sources"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_navigation_msgsChangeSyncMapRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map"];
        out["map"] = Ros1Nav_msgsOccupancyGridCapture(field);
    }
    {
        const field = value["map_name"];
        out["map_name"] = field;
    }
    {
        const field = value["sources"];
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
        out["sources"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ChangeSyncMapResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsChangeSyncMapResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d10c4bb1230e579ed4b24537211cdfd6d7d155a7297681a14af9a5d9a3f2ab80",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsChangeSyncMapResponseSize(Ros1Pal_navigation_msgsChangeSyncMapResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsChangeSyncMapResponseCapture(value), n = Ros1Pal_navigation_msgsChangeSyncMapResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsChangeSyncMapResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsChangeSyncMapResponseRead(r);
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

function Ros1Pal_navigation_msgsChangeSyncMapResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsChangeSyncMapResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsChangeSyncMapResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_navigation_msgsChangeSyncMapResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/DisableEmergencyRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsDisableEmergencyRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_70dbc31ae4309c03fa21a0247c16598ca1a9056243963854e9e17a4648cc599c",
    maxWireBytes : 9,
    minWireBytes : 9,
    cartesianMaxWireBytes : 9n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"second" : 0, "useLEDs" : false};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsDisableEmergencyRequestSize(Ros1Pal_navigation_msgsDisableEmergencyRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsDisableEmergencyRequestCapture(value), n = Ros1Pal_navigation_msgsDisableEmergencyRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsDisableEmergencyRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsDisableEmergencyRequestRead(r);
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

function Ros1Pal_navigation_msgsDisableEmergencyRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["second"] !== "number" || !Number.isFinite(value["second"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["useLEDs"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 9)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsDisableEmergencyRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["second"], true);
    w.at += 8;
    w.v.setUint8(w.at, value["useLEDs"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsDisableEmergencyRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["second"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["useLEDs"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_navigation_msgsDisableEmergencyRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["second"];
        out["second"] = field;
    }
    {
        const field = value["useLEDs"];
        out["useLEDs"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/DisableEmergencyResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsDisableEmergencyResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c5b7fa73ccceb51e2a6fa950f690a65f91f046644b75f878964d322d9b6573a4",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsDisableEmergencyResponseSize(Ros1Pal_navigation_msgsDisableEmergencyResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsDisableEmergencyResponseCapture(value), n = Ros1Pal_navigation_msgsDisableEmergencyResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsDisableEmergencyResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsDisableEmergencyResponseRead(r);
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

function Ros1Pal_navigation_msgsDisableEmergencyResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsDisableEmergencyResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsDisableEmergencyResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_navigation_msgsDisableEmergencyResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/Emergency codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsEmergencyCodec = Object.freeze({
    codecIdentity : "UWVMROS1_00339764ab9f5d7e90ce08b5675434a1113e38b31e9f94166a6c8b994b02d635",
    maxWireBytes : 535,
    minWireBytes : 7,
    cartesianMaxWireBytes : 535n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : false, "forward" : false, "backward" : false, "msgs" : []};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsEmergencySize(Ros1Pal_navigation_msgsEmergencyCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsEmergencyCapture(value), n = Ros1Pal_navigation_msgsEmergencySize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsEmergencyWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 535, 90);
        if(owned.length < 7)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsEmergencyRead(r);
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

function Ros1Pal_navigation_msgsEmergencySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["data"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["forward"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["backward"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["msgs"]) || value["msgs"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["msgs"])
    {
        n = addSize(n, Ros1Std_msgsStringSize(element));
    }
    if(n > 535)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsEmergencyWrite(value, w)
{
    w.v.setUint8(w.at, value["data"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["forward"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["backward"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint32(w.at, value["msgs"].length, true);
    w.at += 4;
    for(const element of value["msgs"])
    {
        Ros1Std_msgsStringWrite(element, w);
    }
}

function Ros1Pal_navigation_msgsEmergencyRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["data"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["forward"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["backward"] = decoded !== 0;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["msgs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsStringRead(r);
                value["msgs"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_navigation_msgsEmergencyCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        out["data"] = field;
    }
    {
        const field = value["forward"];
        out["forward"] = field;
    }
    {
        const field = value["backward"];
        out["backward"] = field;
    }
    {
        const field = value["msgs"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsStringCapture(element);
        }
        out["msgs"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/EulerAngles codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsEulerAnglesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc1bd6ac99235a0d92e3f458be257dcd81c88763822f7e9c5b3f034a76691d0f",
    maxWireBytes : 157,
    minWireBytes : 29,
    cartesianMaxWireBytes : 157n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : "", "angles_in_degrees" : false, "ai" : 0, "aj" : 0, "ak" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsEulerAnglesSize(Ros1Pal_navigation_msgsEulerAnglesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsEulerAnglesCapture(value), n = Ros1Pal_navigation_msgsEulerAnglesSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsEulerAnglesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 157, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsEulerAnglesRead(r);
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

function Ros1Pal_navigation_msgsEulerAnglesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["sequence"], 128).length);
    if(typeof value["angles_in_degrees"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["ai"] !== "number" || !Number.isFinite(value["ai"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["aj"] !== "number" || !Number.isFinite(value["aj"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["ak"] !== "number" || !Number.isFinite(value["ak"]))
        bad();
    n = addSize(n, 8);
    if(n > 157)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsEulerAnglesWrite(value, w)
{
    w.text(value["sequence"], 128);
    w.v.setUint8(w.at, value["angles_in_degrees"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["ai"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["aj"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["ak"], true);
    w.at += 8;
}

function Ros1Pal_navigation_msgsEulerAnglesRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["angles_in_degrees"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["ai"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["aj"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["ak"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsEulerAnglesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["angles_in_degrees"];
        out["angles_in_degrees"] = field;
    }
    {
        const field = value["ai"];
        out["ai"] = field;
    }
    {
        const field = value["aj"];
        out["aj"] = field;
    }
    {
        const field = value["ak"];
        out["ak"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/EulerAnglesStamped codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsEulerAnglesStampedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_595448173da01bddbdba145a6bd1e6269a37b12ac4a7fdc26ca5cb5083452462",
    maxWireBytes : 301,
    minWireBytes : 45,
    cartesianMaxWireBytes : 301n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "angles" : Ros1Pal_navigation_msgsEulerAnglesCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsEulerAnglesStampedSize(Ros1Pal_navigation_msgsEulerAnglesStampedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsEulerAnglesStampedCapture(value), n = Ros1Pal_navigation_msgsEulerAnglesStampedSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsEulerAnglesStampedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 301, 90);
        if(owned.length < 45)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsEulerAnglesStampedRead(r);
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

function Ros1Pal_navigation_msgsEulerAnglesStampedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Pal_navigation_msgsEulerAnglesSize(value["angles"]));
    if(n > 301)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsEulerAnglesStampedWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Pal_navigation_msgsEulerAnglesWrite(value["angles"], w);
}

function Ros1Pal_navigation_msgsEulerAnglesStampedRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Pal_navigation_msgsEulerAnglesRead(r);
        value["angles"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsEulerAnglesStampedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["angles"];
        out["angles"] = Ros1Pal_navigation_msgsEulerAnglesCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ExecuteParkingGoal codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsExecuteParkingGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5bc772cbbc3a5f90165c84a9f5d81d961a789e78bbbf2fe19706d76be3e3dfae",
    maxWireBytes : 281,
    minWireBytes : 25,
    cartesianMaxWireBytes : 281n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"source_frame" : "", "target_frame" : "", "backwards" : false, "max_lin_vel" : 0, "max_rot_vel" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsExecuteParkingGoalSize(Ros1Pal_navigation_msgsExecuteParkingGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsExecuteParkingGoalCapture(value), n = Ros1Pal_navigation_msgsExecuteParkingGoalSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsExecuteParkingGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 281, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsExecuteParkingGoalRead(r);
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

function Ros1Pal_navigation_msgsExecuteParkingGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["source_frame"], 128).length);
    n = addSize(n, 4 + textBytes(value["target_frame"], 128).length);
    if(typeof value["backwards"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["max_lin_vel"] !== "number" || !Number.isFinite(value["max_lin_vel"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["max_rot_vel"] !== "number" || !Number.isFinite(value["max_rot_vel"]))
        bad();
    n = addSize(n, 8);
    if(n > 281)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsExecuteParkingGoalWrite(value, w)
{
    w.text(value["source_frame"], 128);
    w.text(value["target_frame"], 128);
    w.v.setUint8(w.at, value["backwards"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["max_lin_vel"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["max_rot_vel"], true);
    w.at += 8;
}

function Ros1Pal_navigation_msgsExecuteParkingGoalRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["source_frame"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["target_frame"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["backwards"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["max_lin_vel"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["max_rot_vel"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsExecuteParkingGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["source_frame"];
        out["source_frame"] = field;
    }
    {
        const field = value["target_frame"];
        out["target_frame"] = field;
    }
    {
        const field = value["backwards"];
        out["backwards"] = field;
    }
    {
        const field = value["max_lin_vel"];
        out["max_lin_vel"] = field;
    }
    {
        const field = value["max_rot_vel"];
        out["max_rot_vel"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ExecuteParkingResult codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsExecuteParkingResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_51f06f36f320cad8e090e602ad2b390141b364fc4d13ea92a2cbf1cfb784f1ca",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsExecuteParkingResultSize(Ros1Pal_navigation_msgsExecuteParkingResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsExecuteParkingResultCapture(value), n = Ros1Pal_navigation_msgsExecuteParkingResultSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsExecuteParkingResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsExecuteParkingResultRead(r);
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

function Ros1Pal_navigation_msgsExecuteParkingResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsExecuteParkingResultWrite(value, w)
{
}

function Ros1Pal_navigation_msgsExecuteParkingResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsExecuteParkingResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ExecuteParkingFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsExecuteParkingFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_54fd7db88b179345d32957a36858d4dc1be0e3d1bdbee1ae2051cb69feabd842",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsExecuteParkingFeedbackSize(Ros1Pal_navigation_msgsExecuteParkingFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsExecuteParkingFeedbackCapture(value), n = Ros1Pal_navigation_msgsExecuteParkingFeedbackSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsExecuteParkingFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsExecuteParkingFeedbackRead(r);
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

function Ros1Pal_navigation_msgsExecuteParkingFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsExecuteParkingFeedbackWrite(value, w)
{
}

function Ros1Pal_navigation_msgsExecuteParkingFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsExecuteParkingFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/FinalApproachPoseRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsFinalApproachPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_52d199aa79bb76f00cff19792aefd0414fe7319a5f2e4f6c74f88ff7d3810f16",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : Ros1Geometry_msgsPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsFinalApproachPoseRequestSize(Ros1Pal_navigation_msgsFinalApproachPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsFinalApproachPoseRequestCapture(value), n = Ros1Pal_navigation_msgsFinalApproachPoseRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsFinalApproachPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsFinalApproachPoseRequestRead(r);
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

function Ros1Pal_navigation_msgsFinalApproachPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["pose"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsFinalApproachPoseRequestWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["pose"], w);
}

function Ros1Pal_navigation_msgsFinalApproachPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["pose"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsFinalApproachPoseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 std_msgs/Bool codec; maxima are not actual lengths. */
export const Ros1Std_msgsBoolCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cbbbbbf2df23f98389500cbf265f45ca9210c3495622a1fd122c1b8b76ce7d33",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : false};
    },
    validateValue(value) {
        Ros1Std_msgsBoolSize(Ros1Std_msgsBoolCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsBoolCapture(value), n = Ros1Std_msgsBoolSize(owned), w = new Writer(n);
        Ros1Std_msgsBoolWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsBoolRead(r);
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

function Ros1Std_msgsBoolSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["data"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Std_msgsBoolWrite(value, w)
{
    w.v.setUint8(w.at, value["data"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Std_msgsBoolRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["data"] = decoded !== 0;
    }
    return value;
}

function Ros1Std_msgsBoolCapture(value)
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

/** @brief Complete ROS1 pal_navigation_msgs/FinalApproachPoseResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsFinalApproachPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0fdbf02ad6c5cd8352a6b66994bd075acfe88027276b560edb8f0f37ba1bf09",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"done" : Ros1Std_msgsBoolCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsFinalApproachPoseResponseSize(Ros1Pal_navigation_msgsFinalApproachPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsFinalApproachPoseResponseCapture(value), n = Ros1Pal_navigation_msgsFinalApproachPoseResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsFinalApproachPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsFinalApproachPoseResponseRead(r);
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

function Ros1Pal_navigation_msgsFinalApproachPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsBoolSize(value["done"]));
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsFinalApproachPoseResponseWrite(value, w)
{
    Ros1Std_msgsBoolWrite(value["done"], w);
}

function Ros1Pal_navigation_msgsFinalApproachPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsBoolRead(r);
        value["done"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsFinalApproachPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["done"];
        out["done"] = Ros1Std_msgsBoolCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GetMapConfigurationRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGetMapConfigurationRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4bfa959fc39c0b51bfa7b9874ff219c2ec1ec59462aa46bf3e504571bda6937e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGetMapConfigurationRequestSize(Ros1Pal_navigation_msgsGetMapConfigurationRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGetMapConfigurationRequestCapture(value), n = Ros1Pal_navigation_msgsGetMapConfigurationRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsGetMapConfigurationRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGetMapConfigurationRequestRead(r);
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

function Ros1Pal_navigation_msgsGetMapConfigurationRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGetMapConfigurationRequestWrite(value, w)
{
}

function Ros1Pal_navigation_msgsGetMapConfigurationRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsGetMapConfigurationRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 std_msgs/Float32 codec; maxima are not actual lengths. */
export const Ros1Std_msgsFloat32Codec = Object.freeze({
    codecIdentity : "UWVMROS1_d19ba548217238df8898fc387f092102779ef51eb3dfece19928caf0025b40b9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : 0};
    },
    validateValue(value) {
        Ros1Std_msgsFloat32Size(Ros1Std_msgsFloat32Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsFloat32Capture(value), n = Ros1Std_msgsFloat32Size(owned), w = new Writer(n);
        Ros1Std_msgsFloat32Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsFloat32Read(r);
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

function Ros1Std_msgsFloat32Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["data"] !== "number" || !Number.isFinite(value["data"]) || !Number.isFinite(Math.fround(value["data"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Std_msgsFloat32Write(value, w)
{
    w.v.setFloat32(w.at, value["data"], true);
    w.at += 4;
}

function Ros1Std_msgsFloat32Read(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["data"] = decoded;
    }
    return value;
}

function Ros1Std_msgsFloat32Capture(value)
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

/** @brief Complete ROS1 pal_navigation_msgs/Highways codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsHighwaysCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f3717c2a5b4e42173901f70af63a28b4dd00e24adf686212a01ff442379f1c43",
    maxWireBytes : 237,
    minWireBytes : 13,
    cartesianMaxWireBytes : 237n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "points" : [],
            "directional" : Ros1Std_msgsBoolCodec.defaultValue(),
            "line_width" : Ros1Std_msgsFloat32Codec.defaultValue(),
            "name" : Ros1Std_msgsStringCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsHighwaysSize(Ros1Pal_navigation_msgsHighwaysCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsHighwaysCapture(value), n = Ros1Pal_navigation_msgsHighwaysSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsHighwaysWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 237, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsHighwaysRead(r);
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

function Ros1Pal_navigation_msgsHighwaysSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["points"]) || value["points"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["points"])
    {
        n = addSize(n, Ros1Geometry_msgsPointSize(element));
    }
    n = addSize(n, Ros1Std_msgsBoolSize(value["directional"]));
    n = addSize(n, Ros1Std_msgsFloat32Size(value["line_width"]));
    n = addSize(n, Ros1Std_msgsStringSize(value["name"]));
    if(n > 237)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsHighwaysWrite(value, w)
{
    w.v.setUint32(w.at, value["points"].length, true);
    w.at += 4;
    for(const element of value["points"])
    {
        Ros1Geometry_msgsPointWrite(element, w);
    }
    Ros1Std_msgsBoolWrite(value["directional"], w);
    Ros1Std_msgsFloat32Write(value["line_width"], w);
    Ros1Std_msgsStringWrite(value["name"], w);
}

function Ros1Pal_navigation_msgsHighwaysRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Geometry_msgsPointRead(r);
                value["points"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Std_msgsBoolRead(r);
        value["directional"] = decoded;
    }
    {
        const decoded = Ros1Std_msgsFloat32Read(r);
        value["line_width"] = decoded;
    }
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsHighwaysCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
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
            values[i] = Ros1Geometry_msgsPointCapture(element);
        }
        out["points"] = values;
    }
    {
        const field = value["directional"];
        out["directional"] = Ros1Std_msgsBoolCapture(field);
    }
    {
        const field = value["line_width"];
        out["line_width"] = Ros1Std_msgsFloat32Capture(field);
    }
    {
        const field = value["name"];
        out["name"] = Ros1Std_msgsStringCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 sensor_msgs/ChannelFloat32 codec; maxima are not actual lengths. */
export const Ros1Sensor_msgsChannelFloat32Codec = Object.freeze({
    codecIdentity : "UWVMROS1_a164e6a7d124c3c1d5cc165f622c492079b7b31686d4bcff3f8dc45b20a0213b",
    maxWireBytes : 200,
    minWireBytes : 8,
    cartesianMaxWireBytes : 200n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "values" : []};
    },
    validateValue(value) {
        Ros1Sensor_msgsChannelFloat32Size(Ros1Sensor_msgsChannelFloat32Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Sensor_msgsChannelFloat32Capture(value), n = Ros1Sensor_msgsChannelFloat32Size(owned), w = new Writer(n);
        Ros1Sensor_msgsChannelFloat32Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 200, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Sensor_msgsChannelFloat32Read(r);
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

function Ros1Sensor_msgsChannelFloat32Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 200)
        bad(90);
    return n;
}

function Ros1Sensor_msgsChannelFloat32Write(value, w)
{
    w.text(value["name"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Sensor_msgsChannelFloat32Read(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Sensor_msgsChannelFloat32Capture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
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

/** @brief Complete ROS1 sensor_msgs/PointCloud codec; maxima are not actual lengths. */
export const Ros1Sensor_msgsPointCloudCodec = Object.freeze({
    codecIdentity : "UWVMROS1_714f5812773665cb9e8cfb03b86e3926eaae188eed2d96cd775c20a9c42a3fce",
    maxWireBytes : 1000,
    minWireBytes : 24,
    cartesianMaxWireBytes : 1000n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "points" : [], "channels" : []};
    },
    validateValue(value) {
        Ros1Sensor_msgsPointCloudSize(Ros1Sensor_msgsPointCloudCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Sensor_msgsPointCloudCapture(value), n = Ros1Sensor_msgsPointCloudSize(owned), w = new Writer(n);
        Ros1Sensor_msgsPointCloudWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1000, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Sensor_msgsPointCloudRead(r);
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

function Ros1Sensor_msgsPointCloudSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["points"]) || value["points"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["points"])
    {
        n = addSize(n, Ros1Geometry_msgsPoint32Size(element));
    }
    if(!Array.isArray(value["channels"]) || value["channels"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["channels"])
    {
        n = addSize(n, Ros1Sensor_msgsChannelFloat32Size(element));
    }
    if(n > 1000)
        bad(90);
    return n;
}

function Ros1Sensor_msgsPointCloudWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["points"].length, true);
    w.at += 4;
    for(const element of value["points"])
    {
        Ros1Geometry_msgsPoint32Write(element, w);
    }
    w.v.setUint32(w.at, value["channels"].length, true);
    w.at += 4;
    for(const element of value["channels"])
    {
        Ros1Sensor_msgsChannelFloat32Write(element, w);
    }
}

function Ros1Sensor_msgsPointCloudRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Geometry_msgsPoint32Read(r);
                value["points"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["channels"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Sensor_msgsChannelFloat32Read(r);
                value["channels"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Sensor_msgsPointCloudCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
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
            values[i] = Ros1Geometry_msgsPoint32Capture(element);
        }
        out["points"] = values;
    }
    {
        const field = value["channels"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Sensor_msgsChannelFloat32Capture(element);
        }
        out["channels"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/POI codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsPOICodec = Object.freeze({
    codecIdentity : "UWVMROS1_3750170dda28a05b81a5c1255fb3e88adc6105bef955601cccb82a6639e796a4",
    maxWireBytes : 1664,
    minWireBytes : 32,
    cartesianMaxWireBytes : 1664n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"points" : Ros1Sensor_msgsPointCloudCodec.defaultValue(), "ids" : [], "map_id" : Ros1Std_msgsStringCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsPOISize(Ros1Pal_navigation_msgsPOICapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsPOICapture(value), n = Ros1Pal_navigation_msgsPOISize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsPOIWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1664, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsPOIRead(r);
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

function Ros1Pal_navigation_msgsPOISize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Sensor_msgsPointCloudSize(value["points"]));
    if(!Array.isArray(value["ids"]) || value["ids"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["ids"])
    {
        n = addSize(n, Ros1Std_msgsStringSize(element));
    }
    n = addSize(n, Ros1Std_msgsStringSize(value["map_id"]));
    if(n > 1664)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsPOIWrite(value, w)
{
    Ros1Sensor_msgsPointCloudWrite(value["points"], w);
    w.v.setUint32(w.at, value["ids"].length, true);
    w.at += 4;
    for(const element of value["ids"])
    {
        Ros1Std_msgsStringWrite(element, w);
    }
    Ros1Std_msgsStringWrite(value["map_id"], w);
}

function Ros1Pal_navigation_msgsPOIRead(r)
{
    const value = {};
    {
        const decoded = Ros1Sensor_msgsPointCloudRead(r);
        value["points"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["ids"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsStringRead(r);
                value["ids"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["map_id"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsPOICapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["points"];
        out["points"] = Ros1Sensor_msgsPointCloudCapture(field);
    }
    {
        const field = value["ids"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsStringCapture(element);
        }
        out["ids"] = values;
    }
    {
        const field = value["map_id"];
        out["map_id"] = Ros1Std_msgsStringCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/POIGroup codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsPOIGroupCodec = Object.freeze({
    codecIdentity : "UWVMROS1_82b1a1a03ae086b33692ee39850fe1d5df11a3ed3f74cf32204a9851a55b0abf",
    maxWireBytes : 664,
    minWireBytes : 8,
    cartesianMaxWireBytes : 664n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"group_name" : Ros1Std_msgsStringCodec.defaultValue(), "poi_names" : []};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsPOIGroupSize(Ros1Pal_navigation_msgsPOIGroupCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsPOIGroupCapture(value), n = Ros1Pal_navigation_msgsPOIGroupSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsPOIGroupWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 664, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsPOIGroupRead(r);
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

function Ros1Pal_navigation_msgsPOIGroupSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsStringSize(value["group_name"]));
    if(!Array.isArray(value["poi_names"]) || value["poi_names"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["poi_names"])
    {
        n = addSize(n, Ros1Std_msgsStringSize(element));
    }
    if(n > 664)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsPOIGroupWrite(value, w)
{
    Ros1Std_msgsStringWrite(value["group_name"], w);
    w.v.setUint32(w.at, value["poi_names"].length, true);
    w.at += 4;
    for(const element of value["poi_names"])
    {
        Ros1Std_msgsStringWrite(element, w);
    }
}

function Ros1Pal_navigation_msgsPOIGroupRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["group_name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["poi_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsStringRead(r);
                value["poi_names"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_navigation_msgsPOIGroupCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["group_name"];
        out["group_name"] = Ros1Std_msgsStringCapture(field);
    }
    {
        const field = value["poi_names"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsStringCapture(element);
        }
        out["poi_names"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/VisualLocDB codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsVisualLocDBCodec = Object.freeze({
    codecIdentity : "UWVMROS1_644cacceb6580e474906170240e511dca1427355428ac346eb5ba2a74eceb063",
    maxWireBytes : 780,
    minWireBytes : 12,
    cartesianMaxWireBytes : 780n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"documents" : [], "tree" : [], "weights" : []};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsVisualLocDBSize(Ros1Pal_navigation_msgsVisualLocDBCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsVisualLocDBCapture(value), n = Ros1Pal_navigation_msgsVisualLocDBSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsVisualLocDBWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 780, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsVisualLocDBRead(r);
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

function Ros1Pal_navigation_msgsVisualLocDBSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["documents"]) || value["documents"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["documents"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["tree"]) || value["tree"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["tree"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["weights"]) || value["weights"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["weights"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 780)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsVisualLocDBWrite(value, w)
{
    w.v.setUint32(w.at, value["documents"].length, true);
    w.at += 4;
    for(const element of value["documents"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint32(w.at, value["tree"].length, true);
    w.at += 4;
    for(const element of value["tree"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint32(w.at, value["weights"].length, true);
    w.at += 4;
    for(const element of value["weights"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Pal_navigation_msgsVisualLocDBRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["documents"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["documents"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["tree"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["tree"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["weights"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["weights"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_navigation_msgsVisualLocDBCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["documents"];
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
        out["documents"] = values;
    }
    {
        const field = value["tree"];
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
        out["tree"] = values;
    }
    {
        const field = value["weights"];
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
        out["weights"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/NiceMapTransformation codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsNiceMapTransformationCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0c52375fd069a4fc6f5d93c7652ddaba7e9e0002e40e5d0db64aa77e355d0ef0",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "rotYawRad" : 0, "scale" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsNiceMapTransformationSize(Ros1Pal_navigation_msgsNiceMapTransformationCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsNiceMapTransformationCapture(value), n = Ros1Pal_navigation_msgsNiceMapTransformationSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsNiceMapTransformationWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsNiceMapTransformationRead(r);
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

function Ros1Pal_navigation_msgsNiceMapTransformationSize(value)
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
    if(typeof value["rotYawRad"] !== "number" || !Number.isFinite(value["rotYawRad"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["scale"] !== "number" || !Number.isFinite(value["scale"]))
        bad();
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsNiceMapTransformationWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rotYawRad"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["scale"], true);
    w.at += 8;
}

function Ros1Pal_navigation_msgsNiceMapTransformationRead(r)
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
        value["rotYawRad"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["scale"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsNiceMapTransformationCapture(value)
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
        const field = value["rotYawRad"];
        out["rotYawRad"] = field;
    }
    {
        const field = value["scale"];
        out["scale"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/MapConfiguration codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsMapConfigurationCodec = Object.freeze({
    codecIdentity : "UWVMROS1_807b6436f6e7ee13b63cfadc9de5fd38ca3fedd2d0e902c3c7558c1d7b606255",
    maxWireBytes : 15953,
    minWireBytes : 317,
    cartesianMaxWireBytes : 15953n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "numberOfSubMaps" : 0,
            "highways" : [],
            "pois" : Ros1Pal_navigation_msgsPOICodec.defaultValue(),
            "vo" : Ros1Pal_navigation_msgsPOICodec.defaultValue(),
            "zoi" : Ros1Pal_navigation_msgsPOICodec.defaultValue(),
            "ramps" : Ros1Pal_navigation_msgsPOICodec.defaultValue(),
            "poigroups" : [],
            "visualLocDb" : Ros1Pal_navigation_msgsVisualLocDBCodec.defaultValue(),
            "navigation_map" : Ros1Nav_msgsOccupancyGridCodec.defaultValue(),
            "user_map" : Ros1Sensor_msgsImageCodec.defaultValue(),
            "transform" : Ros1Pal_navigation_msgsNiceMapTransformationCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsMapConfigurationSize(Ros1Pal_navigation_msgsMapConfigurationCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsMapConfigurationCapture(value), n = Ros1Pal_navigation_msgsMapConfigurationSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsMapConfigurationWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 15953, 90);
        if(owned.length < 317)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsMapConfigurationRead(r);
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

function Ros1Pal_navigation_msgsMapConfigurationSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["numberOfSubMaps"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["highways"]) || value["highways"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["highways"])
    {
        n = addSize(n, Ros1Pal_navigation_msgsHighwaysSize(element));
    }
    n = addSize(n, Ros1Pal_navigation_msgsPOISize(value["pois"]));
    n = addSize(n, Ros1Pal_navigation_msgsPOISize(value["vo"]));
    n = addSize(n, Ros1Pal_navigation_msgsPOISize(value["zoi"]));
    n = addSize(n, Ros1Pal_navigation_msgsPOISize(value["ramps"]));
    if(!Array.isArray(value["poigroups"]) || value["poigroups"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["poigroups"])
    {
        n = addSize(n, Ros1Pal_navigation_msgsPOIGroupSize(element));
    }
    n = addSize(n, Ros1Pal_navigation_msgsVisualLocDBSize(value["visualLocDb"]));
    n = addSize(n, Ros1Nav_msgsOccupancyGridSize(value["navigation_map"]));
    n = addSize(n, Ros1Sensor_msgsImageSize(value["user_map"]));
    n = addSize(n, Ros1Pal_navigation_msgsNiceMapTransformationSize(value["transform"]));
    if(n > 15953)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsMapConfigurationWrite(value, w)
{
    w.v.setInt32(w.at, value["numberOfSubMaps"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["highways"].length, true);
    w.at += 4;
    for(const element of value["highways"])
    {
        Ros1Pal_navigation_msgsHighwaysWrite(element, w);
    }
    Ros1Pal_navigation_msgsPOIWrite(value["pois"], w);
    Ros1Pal_navigation_msgsPOIWrite(value["vo"], w);
    Ros1Pal_navigation_msgsPOIWrite(value["zoi"], w);
    Ros1Pal_navigation_msgsPOIWrite(value["ramps"], w);
    w.v.setUint32(w.at, value["poigroups"].length, true);
    w.at += 4;
    for(const element of value["poigroups"])
    {
        Ros1Pal_navigation_msgsPOIGroupWrite(element, w);
    }
    Ros1Pal_navigation_msgsVisualLocDBWrite(value["visualLocDb"], w);
    Ros1Nav_msgsOccupancyGridWrite(value["navigation_map"], w);
    Ros1Sensor_msgsImageWrite(value["user_map"], w);
    Ros1Pal_navigation_msgsNiceMapTransformationWrite(value["transform"], w);
}

function Ros1Pal_navigation_msgsMapConfigurationRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["numberOfSubMaps"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["highways"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_navigation_msgsHighwaysRead(r);
                value["highways"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Pal_navigation_msgsPOIRead(r);
        value["pois"] = decoded;
    }
    {
        const decoded = Ros1Pal_navigation_msgsPOIRead(r);
        value["vo"] = decoded;
    }
    {
        const decoded = Ros1Pal_navigation_msgsPOIRead(r);
        value["zoi"] = decoded;
    }
    {
        const decoded = Ros1Pal_navigation_msgsPOIRead(r);
        value["ramps"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["poigroups"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_navigation_msgsPOIGroupRead(r);
                value["poigroups"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Pal_navigation_msgsVisualLocDBRead(r);
        value["visualLocDb"] = decoded;
    }
    {
        const decoded = Ros1Nav_msgsOccupancyGridRead(r);
        value["navigation_map"] = decoded;
    }
    {
        const decoded = Ros1Sensor_msgsImageRead(r);
        value["user_map"] = decoded;
    }
    {
        const decoded = Ros1Pal_navigation_msgsNiceMapTransformationRead(r);
        value["transform"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsMapConfigurationCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["numberOfSubMaps"];
        out["numberOfSubMaps"] = field;
    }
    {
        const field = value["highways"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_navigation_msgsHighwaysCapture(element);
        }
        out["highways"] = values;
    }
    {
        const field = value["pois"];
        out["pois"] = Ros1Pal_navigation_msgsPOICapture(field);
    }
    {
        const field = value["vo"];
        out["vo"] = Ros1Pal_navigation_msgsPOICapture(field);
    }
    {
        const field = value["zoi"];
        out["zoi"] = Ros1Pal_navigation_msgsPOICapture(field);
    }
    {
        const field = value["ramps"];
        out["ramps"] = Ros1Pal_navigation_msgsPOICapture(field);
    }
    {
        const field = value["poigroups"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_navigation_msgsPOIGroupCapture(element);
        }
        out["poigroups"] = values;
    }
    {
        const field = value["visualLocDb"];
        out["visualLocDb"] = Ros1Pal_navigation_msgsVisualLocDBCapture(field);
    }
    {
        const field = value["navigation_map"];
        out["navigation_map"] = Ros1Nav_msgsOccupancyGridCapture(field);
    }
    {
        const field = value["user_map"];
        out["user_map"] = Ros1Sensor_msgsImageCapture(field);
    }
    {
        const field = value["transform"];
        out["transform"] = Ros1Pal_navigation_msgsNiceMapTransformationCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GetMapConfigurationResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGetMapConfigurationResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_89a83992447a75bd8c210766b00ca09e0235d872716f57c6e438490c762cd60d",
    maxWireBytes : 15953,
    minWireBytes : 317,
    cartesianMaxWireBytes : 15953n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"map_config" : Ros1Pal_navigation_msgsMapConfigurationCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGetMapConfigurationResponseSize(Ros1Pal_navigation_msgsGetMapConfigurationResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGetMapConfigurationResponseCapture(value), n = Ros1Pal_navigation_msgsGetMapConfigurationResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsGetMapConfigurationResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 15953, 90);
        if(owned.length < 317)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGetMapConfigurationResponseRead(r);
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

function Ros1Pal_navigation_msgsGetMapConfigurationResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_navigation_msgsMapConfigurationSize(value["map_config"]));
    if(n > 15953)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGetMapConfigurationResponseWrite(value, w)
{
    Ros1Pal_navigation_msgsMapConfigurationWrite(value["map_config"], w);
}

function Ros1Pal_navigation_msgsGetMapConfigurationResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_navigation_msgsMapConfigurationRead(r);
        value["map_config"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsGetMapConfigurationResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map_config"];
        out["map_config"] = Ros1Pal_navigation_msgsMapConfigurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GetNodesRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGetNodesRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dee03ae04981d1dc0c0b9e7af3a8379f8409e50a790c3be71894d97edb00c4e2",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGetNodesRequestSize(Ros1Pal_navigation_msgsGetNodesRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGetNodesRequestCapture(value), n = Ros1Pal_navigation_msgsGetNodesRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGetNodesRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGetNodesRequestRead(r);
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

function Ros1Pal_navigation_msgsGetNodesRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGetNodesRequestWrite(value, w)
{
}

function Ros1Pal_navigation_msgsGetNodesRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsGetNodesRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GetNodesResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGetNodesResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_415815a998e9ab87b1e40663082bddb4c8d19ac64b9165bb4e70feeaedd110a3",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"node" : 0, "totPOI" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGetNodesResponseSize(Ros1Pal_navigation_msgsGetNodesResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGetNodesResponseCapture(value), n = Ros1Pal_navigation_msgsGetNodesResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGetNodesResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGetNodesResponseRead(r);
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

function Ros1Pal_navigation_msgsGetNodesResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["node"], 1, true);
    n = addSize(n, 1);
    integer(value["totPOI"], 1, true);
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGetNodesResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["node"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["totPOI"], true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsGetNodesResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["node"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["totPOI"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsGetNodesResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["node"];
        out["node"] = field;
    }
    {
        const field = value["totPOI"];
        out["totPOI"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GetPOIRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGetPOIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4405875fa858b2faaabaca085a3f16846b311ed7866c36b583887c827ad54cc6",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGetPOIRequestSize(Ros1Pal_navigation_msgsGetPOIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGetPOIRequestCapture(value), n = Ros1Pal_navigation_msgsGetPOIRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGetPOIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGetPOIRequestRead(r);
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

function Ros1Pal_navigation_msgsGetPOIRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGetPOIRequestWrite(value, w)
{
}

function Ros1Pal_navigation_msgsGetPOIRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsGetPOIRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GetPOIResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGetPOIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9d7a0f291c648928f13eeb120c69ce685be71ef4de559684d7b4a758dd74dfe3",
    maxWireBytes : 1664,
    minWireBytes : 32,
    cartesianMaxWireBytes : 1664n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"poi" : Ros1Pal_navigation_msgsPOICodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGetPOIResponseSize(Ros1Pal_navigation_msgsGetPOIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGetPOIResponseCapture(value), n = Ros1Pal_navigation_msgsGetPOIResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGetPOIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1664, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGetPOIResponseRead(r);
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

function Ros1Pal_navigation_msgsGetPOIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_navigation_msgsPOISize(value["poi"]));
    if(n > 1664)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGetPOIResponseWrite(value, w)
{
    Ros1Pal_navigation_msgsPOIWrite(value["poi"], w);
}

function Ros1Pal_navigation_msgsGetPOIResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_navigation_msgsPOIRead(r);
        value["poi"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsGetPOIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["poi"];
        out["poi"] = Ros1Pal_navigation_msgsPOICapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GetSubMapRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGetSubMapRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_93c60279a243153baa7ab19b93ae27fabfdfff99e28e961c782f7498550ca377",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGetSubMapRequestSize(Ros1Pal_navigation_msgsGetSubMapRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGetSubMapRequestCapture(value), n = Ros1Pal_navigation_msgsGetSubMapRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGetSubMapRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGetSubMapRequestRead(r);
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

function Ros1Pal_navigation_msgsGetSubMapRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGetSubMapRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsGetSubMapRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsGetSubMapRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GetSubMapResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGetSubMapResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e89187a2b88f7eca611483f7dd8db9b09bad5da07cf65e350b1b1e7dbab6768",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGetSubMapResponseSize(Ros1Pal_navigation_msgsGetSubMapResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGetSubMapResponseCapture(value), n = Ros1Pal_navigation_msgsGetSubMapResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGetSubMapResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGetSubMapResponseRead(r);
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

function Ros1Pal_navigation_msgsGetSubMapResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGetSubMapResponseWrite(value, w)
{
}

function Ros1Pal_navigation_msgsGetSubMapResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsGetSubMapResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GoToGoal codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGoToGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_26ff6f3220dee058063f4d81ed396c7d152b56b735878ed3ce2929eeeebb24d1",
    maxWireBytes : 200,
    minWireBytes : 72,
    cartesianMaxWireBytes : 200n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target_pose" : Ros1Geometry_msgsPoseStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGoToGoalSize(Ros1Pal_navigation_msgsGoToGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGoToGoalCapture(value), n = Ros1Pal_navigation_msgsGoToGoalSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGoToGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 200, 90);
        if(owned.length < 72)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGoToGoalRead(r);
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

function Ros1Pal_navigation_msgsGoToGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseStampedSize(value["target_pose"]));
    if(n > 200)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGoToGoalWrite(value, w)
{
    Ros1Geometry_msgsPoseStampedWrite(value["target_pose"], w);
}

function Ros1Pal_navigation_msgsGoToGoalRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseStampedRead(r);
        value["target_pose"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsGoToGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target_pose"];
        out["target_pose"] = Ros1Geometry_msgsPoseStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GoToResult codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGoToResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_89a3eb05425f5a9b3e7a514cc44ffcc0c2492cf0247d51c3fe4b5c1635d09ef1",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGoToResultSize(Ros1Pal_navigation_msgsGoToResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGoToResultCapture(value), n = Ros1Pal_navigation_msgsGoToResultSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGoToResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGoToResultRead(r);
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

function Ros1Pal_navigation_msgsGoToResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGoToResultWrite(value, w)
{
}

function Ros1Pal_navigation_msgsGoToResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsGoToResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GoToFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGoToFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1ae5791a0a5d958bb57df7596658f1ce3cc369b832229fc407d2205f7076847b",
    maxWireBytes : 200,
    minWireBytes : 72,
    cartesianMaxWireBytes : 200n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"base_position" : Ros1Geometry_msgsPoseStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGoToFeedbackSize(Ros1Pal_navigation_msgsGoToFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGoToFeedbackCapture(value), n = Ros1Pal_navigation_msgsGoToFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGoToFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 200, 90);
        if(owned.length < 72)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGoToFeedbackRead(r);
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

function Ros1Pal_navigation_msgsGoToFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseStampedSize(value["base_position"]));
    if(n > 200)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGoToFeedbackWrite(value, w)
{
    Ros1Geometry_msgsPoseStampedWrite(value["base_position"], w);
}

function Ros1Pal_navigation_msgsGoToFeedbackRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseStampedRead(r);
        value["base_position"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsGoToFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["base_position"];
        out["base_position"] = Ros1Geometry_msgsPoseStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GoToPOIGoal codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGoToPOIGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_76b73385b6183f03926456ae38d666a53db772bc4f9dfbb1060cf7955154f043",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"poi" : Ros1Std_msgsStringCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGoToPOIGoalSize(Ros1Pal_navigation_msgsGoToPOIGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGoToPOIGoalCapture(value), n = Ros1Pal_navigation_msgsGoToPOIGoalSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGoToPOIGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGoToPOIGoalRead(r);
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

function Ros1Pal_navigation_msgsGoToPOIGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsStringSize(value["poi"]));
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGoToPOIGoalWrite(value, w)
{
    Ros1Std_msgsStringWrite(value["poi"], w);
}

function Ros1Pal_navigation_msgsGoToPOIGoalRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["poi"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsGoToPOIGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["poi"];
        out["poi"] = Ros1Std_msgsStringCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GoToPOIResult codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGoToPOIResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0378eb6adc3b300e5f7bb037789cfab4a986c333bfcb45d191e26f74867ef807",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGoToPOIResultSize(Ros1Pal_navigation_msgsGoToPOIResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGoToPOIResultCapture(value), n = Ros1Pal_navigation_msgsGoToPOIResultSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGoToPOIResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGoToPOIResultRead(r);
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

function Ros1Pal_navigation_msgsGoToPOIResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGoToPOIResultWrite(value, w)
{
}

function Ros1Pal_navigation_msgsGoToPOIResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsGoToPOIResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/GoToPOIFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsGoToPOIFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_78d8367fcd91cdb4d50ab664251531390a75e7042506bf60f048a3ddffe746d6",
    maxWireBytes : 200,
    minWireBytes : 72,
    cartesianMaxWireBytes : 200n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"base_position" : Ros1Geometry_msgsPoseStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsGoToPOIFeedbackSize(Ros1Pal_navigation_msgsGoToPOIFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsGoToPOIFeedbackCapture(value), n = Ros1Pal_navigation_msgsGoToPOIFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsGoToPOIFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 200, 90);
        if(owned.length < 72)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsGoToPOIFeedbackRead(r);
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

function Ros1Pal_navigation_msgsGoToPOIFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseStampedSize(value["base_position"]));
    if(n > 200)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsGoToPOIFeedbackWrite(value, w)
{
    Ros1Geometry_msgsPoseStampedWrite(value["base_position"], w);
}

function Ros1Pal_navigation_msgsGoToPOIFeedbackRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseStampedRead(r);
        value["base_position"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsGoToPOIFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["base_position"];
        out["base_position"] = Ros1Geometry_msgsPoseStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/JoyPriorityGoal codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsJoyPriorityGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d3276e0ecfb362f00a38258d939d052108742f0b7546303a86ea6cf51aa5d7d1",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsJoyPriorityGoalSize(Ros1Pal_navigation_msgsJoyPriorityGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsJoyPriorityGoalCapture(value), n = Ros1Pal_navigation_msgsJoyPriorityGoalSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsJoyPriorityGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsJoyPriorityGoalRead(r);
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

function Ros1Pal_navigation_msgsJoyPriorityGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsJoyPriorityGoalWrite(value, w)
{
}

function Ros1Pal_navigation_msgsJoyPriorityGoalRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsJoyPriorityGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/JoyPriorityResult codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsJoyPriorityResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_877ee5214e72b1c83d9d1335fe7684bb5688b6f6b84c073168b4f0594fa6b20d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsJoyPriorityResultSize(Ros1Pal_navigation_msgsJoyPriorityResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsJoyPriorityResultCapture(value), n = Ros1Pal_navigation_msgsJoyPriorityResultSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsJoyPriorityResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsJoyPriorityResultRead(r);
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

function Ros1Pal_navigation_msgsJoyPriorityResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsJoyPriorityResultWrite(value, w)
{
}

function Ros1Pal_navigation_msgsJoyPriorityResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsJoyPriorityResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/JoyPriorityFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsJoyPriorityFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_46000d5acaf6e01c153895486f7d8f5b19dd8d7df068459ad51cd767e8a979e7",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsJoyPriorityFeedbackSize(Ros1Pal_navigation_msgsJoyPriorityFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsJoyPriorityFeedbackCapture(value), n = Ros1Pal_navigation_msgsJoyPriorityFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsJoyPriorityFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsJoyPriorityFeedbackRead(r);
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

function Ros1Pal_navigation_msgsJoyPriorityFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsJoyPriorityFeedbackWrite(value, w)
{
}

function Ros1Pal_navigation_msgsJoyPriorityFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsJoyPriorityFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/JoyTurboGoal codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsJoyTurboGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3a7c13c9dd95b66aa331ca3e9324fed749a2ca0c310f4d00ef8a77afd03cd3a5",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsJoyTurboGoalSize(Ros1Pal_navigation_msgsJoyTurboGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsJoyTurboGoalCapture(value), n = Ros1Pal_navigation_msgsJoyTurboGoalSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsJoyTurboGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsJoyTurboGoalRead(r);
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

function Ros1Pal_navigation_msgsJoyTurboGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsJoyTurboGoalWrite(value, w)
{
}

function Ros1Pal_navigation_msgsJoyTurboGoalRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsJoyTurboGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/JoyTurboResult codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsJoyTurboResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3cafcac3a4a1e9f17e9be6827f3c6888c21c7aa0f644a17b097301346f1fc97d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsJoyTurboResultSize(Ros1Pal_navigation_msgsJoyTurboResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsJoyTurboResultCapture(value), n = Ros1Pal_navigation_msgsJoyTurboResultSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsJoyTurboResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsJoyTurboResultRead(r);
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

function Ros1Pal_navigation_msgsJoyTurboResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsJoyTurboResultWrite(value, w)
{
}

function Ros1Pal_navigation_msgsJoyTurboResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsJoyTurboResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/JoyTurboFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsJoyTurboFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8028ff57865bec806da57ae6bf19e7928af52b969fe0c6662474f39eb27fbb8e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsJoyTurboFeedbackSize(Ros1Pal_navigation_msgsJoyTurboFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsJoyTurboFeedbackCapture(value), n = Ros1Pal_navigation_msgsJoyTurboFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsJoyTurboFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsJoyTurboFeedbackRead(r);
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

function Ros1Pal_navigation_msgsJoyTurboFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsJoyTurboFeedbackWrite(value, w)
{
}

function Ros1Pal_navigation_msgsJoyTurboFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsJoyTurboFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/LaserImage codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsLaserImageCodec = Object.freeze({
    codecIdentity : "UWVMROS1_94e3d294205016ea87f46b5cf6bbc1bb7644f24f900ce1f9cbb4bac6004b66f2",
    maxWireBytes : 4556,
    minWireBytes : 76,
    cartesianMaxWireBytes : 4556n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "origin" : Ros1Geometry_msgsPointCodec.defaultValue(),
            "image" : Ros1Sensor_msgsCompressedImageCodec.defaultValue(),
            "height" : 0,
            "width" : 0,
            "resolution" : 0
        };
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsLaserImageSize(Ros1Pal_navigation_msgsLaserImageCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsLaserImageCapture(value), n = Ros1Pal_navigation_msgsLaserImageSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsLaserImageWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4556, 90);
        if(owned.length < 76)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsLaserImageRead(r);
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

function Ros1Pal_navigation_msgsLaserImageSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Geometry_msgsPointSize(value["origin"]));
    n = addSize(n, Ros1Sensor_msgsCompressedImageSize(value["image"]));
    if(typeof value["height"] !== "number" || !Number.isFinite(value["height"]) || !Number.isFinite(Math.fround(value["height"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["width"] !== "number" || !Number.isFinite(value["width"]) || !Number.isFinite(Math.fround(value["width"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["resolution"] !== "number" || !Number.isFinite(value["resolution"]) || !Number.isFinite(Math.fround(value["resolution"])))
        bad();
    n = addSize(n, 4);
    if(n > 4556)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsLaserImageWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Geometry_msgsPointWrite(value["origin"], w);
    Ros1Sensor_msgsCompressedImageWrite(value["image"], w);
    w.v.setFloat32(w.at, value["height"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["width"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["resolution"], true);
    w.at += 4;
}

function Ros1Pal_navigation_msgsLaserImageRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["origin"] = decoded;
    }
    {
        const decoded = Ros1Sensor_msgsCompressedImageRead(r);
        value["image"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["height"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["resolution"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsLaserImageCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["origin"];
        out["origin"] = Ros1Geometry_msgsPointCapture(field);
    }
    {
        const field = value["image"];
        out["image"] = Ros1Sensor_msgsCompressedImageCapture(field);
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["resolution"];
        out["resolution"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ListMapsRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsListMapsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5705dfe7ff7affbbcc0469694234dba068652b4e2bf1409ab85cf07ee1fd2385",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsListMapsRequestSize(Ros1Pal_navigation_msgsListMapsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsListMapsRequestCapture(value), n = Ros1Pal_navigation_msgsListMapsRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsListMapsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsListMapsRequestRead(r);
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

function Ros1Pal_navigation_msgsListMapsRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsListMapsRequestWrite(value, w)
{
}

function Ros1Pal_navigation_msgsListMapsRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsListMapsRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ListMapsResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsListMapsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_348a760b57b0c823d35a49efb65bdf8e11d1bcab3aaf218f51781de9fc5d8033",
    maxWireBytes : 2117,
    minWireBytes : 5,
    cartesianMaxWireBytes : 2117n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "maps" : []};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsListMapsResponseSize(Ros1Pal_navigation_msgsListMapsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsListMapsResponseCapture(value), n = Ros1Pal_navigation_msgsListMapsResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsListMapsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2117, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsListMapsResponseRead(r);
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

function Ros1Pal_navigation_msgsListMapsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["maps"]) || value["maps"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["maps"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(n > 2117)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsListMapsResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint32(w.at, value["maps"].length, true);
    w.at += 4;
    for(const element of value["maps"])
    {
        w.text(element, 128);
    }
}

function Ros1Pal_navigation_msgsListMapsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["maps"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["maps"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_navigation_msgsListMapsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["maps"];
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
        out["maps"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/NavigationStatus codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsNavigationStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_64ae750f64cce12a3e2c6379380c208ee9afab146582280af4b6e445a2ccb105",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : Ros1Std_msgsStringCodec.defaultValue(), "msg" : Ros1Std_msgsStringCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsNavigationStatusSize(Ros1Pal_navigation_msgsNavigationStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsNavigationStatusCapture(value), n = Ros1Pal_navigation_msgsNavigationStatusSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsNavigationStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsNavigationStatusRead(r);
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

function Ros1Pal_navigation_msgsNavigationStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsStringSize(value["status"]));
    n = addSize(n, Ros1Std_msgsStringSize(value["msg"]));
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsNavigationStatusWrite(value, w)
{
    Ros1Std_msgsStringWrite(value["status"], w);
    Ros1Std_msgsStringWrite(value["msg"], w);
}

function Ros1Pal_navigation_msgsNavigationStatusRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["status"] = decoded;
    }
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["msg"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsNavigationStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = Ros1Std_msgsStringCapture(field);
    }
    {
        const field = value["msg"];
        out["msg"] = Ros1Std_msgsStringCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/PolarReading codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsPolarReadingCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8fda83158c3186185b077be3457af2c77bb69a9efc6fedde6b2e0d2bfb902fd2",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"angle" : 0, "distance" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsPolarReadingSize(Ros1Pal_navigation_msgsPolarReadingCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsPolarReadingCapture(value), n = Ros1Pal_navigation_msgsPolarReadingSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsPolarReadingWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsPolarReadingRead(r);
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

function Ros1Pal_navigation_msgsPolarReadingSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["angle"] !== "number" || !Number.isFinite(value["angle"]) || !Number.isFinite(Math.fround(value["angle"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["distance"] !== "number" || !Number.isFinite(value["distance"]) || !Number.isFinite(Math.fround(value["distance"])))
        bad();
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsPolarReadingWrite(value, w)
{
    w.v.setFloat32(w.at, value["angle"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["distance"], true);
    w.at += 4;
}

function Ros1Pal_navigation_msgsPolarReadingRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["angle"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["distance"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsPolarReadingCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["angle"];
        out["angle"] = field;
    }
    {
        const field = value["distance"];
        out["distance"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/PolarReadingScan codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsPolarReadingScanCodec = Object.freeze({
    codecIdentity : "UWVMROS1_80d29afd1790fc33923dd1233f118dce0189db42194aac17d6059873ead24245",
    maxWireBytes : 180,
    minWireBytes : 20,
    cartesianMaxWireBytes : 180n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "readings" : []};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsPolarReadingScanSize(Ros1Pal_navigation_msgsPolarReadingScanCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsPolarReadingScanCapture(value), n = Ros1Pal_navigation_msgsPolarReadingScanSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsPolarReadingScanWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 180, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsPolarReadingScanRead(r);
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

function Ros1Pal_navigation_msgsPolarReadingScanSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["readings"]) || value["readings"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["readings"])
    {
        n = addSize(n, Ros1Pal_navigation_msgsPolarReadingSize(element));
    }
    if(n > 180)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsPolarReadingScanWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["readings"].length, true);
    w.at += 4;
    for(const element of value["readings"])
    {
        Ros1Pal_navigation_msgsPolarReadingWrite(element, w);
    }
}

function Ros1Pal_navigation_msgsPolarReadingScanRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["readings"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_navigation_msgsPolarReadingRead(r);
                value["readings"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_navigation_msgsPolarReadingScanCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["readings"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_navigation_msgsPolarReadingCapture(element);
        }
        out["readings"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/RenameMapRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsRenameMapRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a0c1e30166e0a09c94ab0192d8f0b34954eb795eb34f2636110dee13a1539852",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"current_map_name" : "", "new_map_name" : ""};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsRenameMapRequestSize(Ros1Pal_navigation_msgsRenameMapRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsRenameMapRequestCapture(value), n = Ros1Pal_navigation_msgsRenameMapRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsRenameMapRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsRenameMapRequestRead(r);
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

function Ros1Pal_navigation_msgsRenameMapRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["current_map_name"], 128).length);
    n = addSize(n, 4 + textBytes(value["new_map_name"], 128).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsRenameMapRequestWrite(value, w)
{
    w.text(value["current_map_name"], 128);
    w.text(value["new_map_name"], 128);
}

function Ros1Pal_navigation_msgsRenameMapRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["current_map_name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["new_map_name"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsRenameMapRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["current_map_name"];
        out["current_map_name"] = field;
    }
    {
        const field = value["new_map_name"];
        out["new_map_name"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/RenameMapResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsRenameMapResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a2e4bcfbd5b7b7476b7dad1a51fa19f749806fefe395a55834a38e831b51807",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "message" : ""};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsRenameMapResponseSize(Ros1Pal_navigation_msgsRenameMapResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsRenameMapResponseCapture(value), n = Ros1Pal_navigation_msgsRenameMapResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsRenameMapResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsRenameMapResponseRead(r);
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

function Ros1Pal_navigation_msgsRenameMapResponseSize(value)
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

function Ros1Pal_navigation_msgsRenameMapResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 128);
}

function Ros1Pal_navigation_msgsRenameMapResponseRead(r)
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

function Ros1Pal_navigation_msgsRenameMapResponseCapture(value)
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

/** @brief Complete ROS1 pal_navigation_msgs/SafetyZoneRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSafetyZoneRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c7bfca2804a0307c6666f800ecaacccc5daf70a315407b097799b2ea2ce8d53f",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "NO_SENSORS" : 0,
        "ALL_SENSORS" : 127,
        "FRONT_SONARS" : 1,
        "LEFT_SONARS" : 2,
        "RIGHT_SONARS" : 4,
        "BACK_SONARS" : 8,
        "TORSO_SONARS" : 16,
        "ONLY_SONARS" : 31,
        "BASE_LASER" : 32,
        "TORSO_LASER" : 64,
        "ONLY_LASERS" : 96
    }),
    defaultValue() {
        return {"distance" : 0, "leftAngleRad" : 0, "rightAngleRad" : 0, "sensorMask" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSafetyZoneRequestSize(Ros1Pal_navigation_msgsSafetyZoneRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSafetyZoneRequestCapture(value), n = Ros1Pal_navigation_msgsSafetyZoneRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsSafetyZoneRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSafetyZoneRequestRead(r);
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

function Ros1Pal_navigation_msgsSafetyZoneRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["distance"] !== "number" || !Number.isFinite(value["distance"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["leftAngleRad"] !== "number" || !Number.isFinite(value["leftAngleRad"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rightAngleRad"] !== "number" || !Number.isFinite(value["rightAngleRad"]))
        bad();
    n = addSize(n, 8);
    integer(value["sensorMask"], 4, false);
    n = addSize(n, 4);
    if(n > 28)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSafetyZoneRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["distance"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["leftAngleRad"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rightAngleRad"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["sensorMask"], true);
    w.at += 4;
}

function Ros1Pal_navigation_msgsSafetyZoneRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["distance"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["leftAngleRad"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rightAngleRad"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["sensorMask"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsSafetyZoneRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["distance"];
        out["distance"] = field;
    }
    {
        const field = value["leftAngleRad"];
        out["leftAngleRad"] = field;
    }
    {
        const field = value["rightAngleRad"];
        out["rightAngleRad"] = field;
    }
    {
        const field = value["sensorMask"];
        out["sensorMask"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SafetyZoneResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSafetyZoneResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_237e4207a82e5b1a1caccdf5a010cef018d1bcebff8c00a550d11bb5f729d122",
    maxWireBytes : 34,
    minWireBytes : 34,
    cartesianMaxWireBytes : 34n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"leftSafe" : false, "leftMinDist" : 0, "leftMinDistAngleRad" : 0, "rightSafe" : false, "rightMinDist" : 0, "rightMinDistAngleRad" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSafetyZoneResponseSize(Ros1Pal_navigation_msgsSafetyZoneResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSafetyZoneResponseCapture(value), n = Ros1Pal_navigation_msgsSafetyZoneResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsSafetyZoneResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 34, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSafetyZoneResponseRead(r);
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

function Ros1Pal_navigation_msgsSafetyZoneResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["leftSafe"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["leftMinDist"] !== "number" || !Number.isFinite(value["leftMinDist"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["leftMinDistAngleRad"] !== "number" || !Number.isFinite(value["leftMinDistAngleRad"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rightSafe"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["rightMinDist"] !== "number" || !Number.isFinite(value["rightMinDist"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rightMinDistAngleRad"] !== "number" || !Number.isFinite(value["rightMinDistAngleRad"]))
        bad();
    n = addSize(n, 8);
    if(n > 34)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSafetyZoneResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["leftSafe"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["leftMinDist"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["leftMinDistAngleRad"], true);
    w.at += 8;
    w.v.setUint8(w.at, value["rightSafe"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["rightMinDist"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rightMinDistAngleRad"], true);
    w.at += 8;
}

function Ros1Pal_navigation_msgsSafetyZoneResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["leftSafe"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["leftMinDist"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["leftMinDistAngleRad"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["rightSafe"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rightMinDist"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rightMinDistAngleRad"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsSafetyZoneResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["leftSafe"];
        out["leftSafe"] = field;
    }
    {
        const field = value["leftMinDist"];
        out["leftMinDist"] = field;
    }
    {
        const field = value["leftMinDistAngleRad"];
        out["leftMinDistAngleRad"] = field;
    }
    {
        const field = value["rightSafe"];
        out["rightSafe"] = field;
    }
    {
        const field = value["rightMinDist"];
        out["rightMinDist"] = field;
    }
    {
        const field = value["rightMinDistAngleRad"];
        out["rightMinDistAngleRad"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SaveMapRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSaveMapRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a5ff7c9bf1f8f2117dda21a7ac565fc743a6753a0de329ea601754bfed7fb07d",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"directory" : ""};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSaveMapRequestSize(Ros1Pal_navigation_msgsSaveMapRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSaveMapRequestCapture(value), n = Ros1Pal_navigation_msgsSaveMapRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsSaveMapRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSaveMapRequestRead(r);
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

function Ros1Pal_navigation_msgsSaveMapRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["directory"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSaveMapRequestWrite(value, w)
{
    w.text(value["directory"], 128);
}

function Ros1Pal_navigation_msgsSaveMapRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["directory"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsSaveMapRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["directory"];
        out["directory"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SaveMapResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSaveMapResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_afc5ee8548a56c73711b0f2057a399d88b02485b96b9ef7c2c4deec48ddcb064",
    maxWireBytes : 397,
    minWireBytes : 13,
    cartesianMaxWireBytes : 397n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "name" : "", "full_path" : "", "message" : ""};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSaveMapResponseSize(Ros1Pal_navigation_msgsSaveMapResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSaveMapResponseCapture(value), n = Ros1Pal_navigation_msgsSaveMapResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsSaveMapResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 397, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSaveMapResponseRead(r);
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

function Ros1Pal_navigation_msgsSaveMapResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, 4 + textBytes(value["full_path"], 128).length);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 397)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSaveMapResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["name"], 128);
    w.text(value["full_path"], 128);
    w.text(value["message"], 128);
}

function Ros1Pal_navigation_msgsSaveMapResponseRead(r)
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
        value["name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["full_path"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsSaveMapResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["full_path"];
        out["full_path"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/ServiceStatus codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsServiceStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c08ab79758b14d1722aaaf425096153a299db64bf4efa8f154d08f20b0d68622",
    maxWireBytes : 146,
    minWireBytes : 18,
    cartesianMaxWireBytes : 146n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"serviceName" : "", "is_running" : false, "update_frequency" : 0, "latest_run_time" : Ros1TimeCodec.defaultValue(), "status" : false};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsServiceStatusSize(Ros1Pal_navigation_msgsServiceStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsServiceStatusCapture(value), n = Ros1Pal_navigation_msgsServiceStatusSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsServiceStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 146, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsServiceStatusRead(r);
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

function Ros1Pal_navigation_msgsServiceStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["serviceName"], 128).length);
    if(typeof value["is_running"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["update_frequency"] !== "number" || !Number.isFinite(value["update_frequency"]) || !Number.isFinite(Math.fround(value["update_frequency"])))
        bad();
    n = addSize(n, 4);
    n = addSize(n, Ros1TimeSize(value["latest_run_time"]));
    if(typeof value["status"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 146)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsServiceStatusWrite(value, w)
{
    w.text(value["serviceName"], 128);
    w.v.setUint8(w.at, value["is_running"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["update_frequency"], true);
    w.at += 4;
    Ros1TimeWrite(value["latest_run_time"], w);
    w.v.setUint8(w.at, value["status"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsServiceStatusRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["serviceName"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_running"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["update_frequency"] = decoded;
    }
    {
        const decoded = Ros1TimeRead(r);
        value["latest_run_time"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["status"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_navigation_msgsServiceStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["serviceName"];
        out["serviceName"] = field;
    }
    {
        const field = value["is_running"];
        out["is_running"] = field;
    }
    {
        const field = value["update_frequency"];
        out["update_frequency"] = field;
    }
    {
        const field = value["latest_run_time"];
        out["latest_run_time"] = Ros1TimeCapture(field);
    }
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SetMapConfigurationRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSetMapConfigurationRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f8205ddf6c3a59445ee1a9868259a07e4b5d2d88e3e722259410016317b88cd8",
    maxWireBytes : 15953,
    minWireBytes : 317,
    cartesianMaxWireBytes : 15953n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"map_config" : Ros1Pal_navigation_msgsMapConfigurationCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSetMapConfigurationRequestSize(Ros1Pal_navigation_msgsSetMapConfigurationRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSetMapConfigurationRequestCapture(value), n = Ros1Pal_navigation_msgsSetMapConfigurationRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsSetMapConfigurationRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 15953, 90);
        if(owned.length < 317)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSetMapConfigurationRequestRead(r);
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

function Ros1Pal_navigation_msgsSetMapConfigurationRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_navigation_msgsMapConfigurationSize(value["map_config"]));
    if(n > 15953)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSetMapConfigurationRequestWrite(value, w)
{
    Ros1Pal_navigation_msgsMapConfigurationWrite(value["map_config"], w);
}

function Ros1Pal_navigation_msgsSetMapConfigurationRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_navigation_msgsMapConfigurationRead(r);
        value["map_config"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsSetMapConfigurationRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map_config"];
        out["map_config"] = Ros1Pal_navigation_msgsMapConfigurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SetMapConfigurationResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSetMapConfigurationResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ef256f903c5860e7f8eb52e644184d325614940a29b96beb716381d1a066f701",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSetMapConfigurationResponseSize(Ros1Pal_navigation_msgsSetMapConfigurationResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSetMapConfigurationResponseCapture(value), n = Ros1Pal_navigation_msgsSetMapConfigurationResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsSetMapConfigurationResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSetMapConfigurationResponseRead(r);
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

function Ros1Pal_navigation_msgsSetMapConfigurationResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSetMapConfigurationResponseWrite(value, w)
{
}

function Ros1Pal_navigation_msgsSetMapConfigurationResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsSetMapConfigurationResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SetPOIRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSetPOIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ca248b399762c27d6bf941c2600ead52f026f9b5a1fde3987d6050b2626c582e",
    maxWireBytes : 1664,
    minWireBytes : 32,
    cartesianMaxWireBytes : 1664n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"poi" : Ros1Pal_navigation_msgsPOICodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSetPOIRequestSize(Ros1Pal_navigation_msgsSetPOIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSetPOIRequestCapture(value), n = Ros1Pal_navigation_msgsSetPOIRequestSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsSetPOIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1664, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSetPOIRequestRead(r);
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

function Ros1Pal_navigation_msgsSetPOIRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_navigation_msgsPOISize(value["poi"]));
    if(n > 1664)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSetPOIRequestWrite(value, w)
{
    Ros1Pal_navigation_msgsPOIWrite(value["poi"], w);
}

function Ros1Pal_navigation_msgsSetPOIRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_navigation_msgsPOIRead(r);
        value["poi"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsSetPOIRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["poi"];
        out["poi"] = Ros1Pal_navigation_msgsPOICapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SetPOIResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSetPOIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a273017f817a15e0936b8eba139ca9797c2f550b7b5926a9275416dce3dfbfd1",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSetPOIResponseSize(Ros1Pal_navigation_msgsSetPOIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSetPOIResponseCapture(value), n = Ros1Pal_navigation_msgsSetPOIResponseSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsSetPOIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSetPOIResponseRead(r);
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

function Ros1Pal_navigation_msgsSetPOIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSetPOIResponseWrite(value, w)
{
}

function Ros1Pal_navigation_msgsSetPOIResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsSetPOIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SetSubMapFloorRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSetSubMapFloorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4bade8d2022442add78465f9e7aa302fd650256c6e4fefedadc46f6ea3f19536",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "floor" : 0};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSetSubMapFloorRequestSize(Ros1Pal_navigation_msgsSetSubMapFloorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSetSubMapFloorRequestCapture(value), n = Ros1Pal_navigation_msgsSetSubMapFloorRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsSetSubMapFloorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSetSubMapFloorRequestRead(r);
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

function Ros1Pal_navigation_msgsSetSubMapFloorRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    integer(value["floor"], 1, true);
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSetSubMapFloorRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["floor"], true);
    w.at += 1;
}

function Ros1Pal_navigation_msgsSetSubMapFloorRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["floor"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsSetSubMapFloorRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["floor"];
        out["floor"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/SetSubMapFloorResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsSetSubMapFloorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_67d24dd2353c6ee7113822da8a23e15a5a465c6f692ef40d8ca8486b5fccc1ac",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsSetSubMapFloorResponseSize(Ros1Pal_navigation_msgsSetSubMapFloorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsSetSubMapFloorResponseCapture(value), n = Ros1Pal_navigation_msgsSetSubMapFloorResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsSetSubMapFloorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsSetSubMapFloorResponseRead(r);
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

function Ros1Pal_navigation_msgsSetSubMapFloorResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsSetSubMapFloorResponseWrite(value, w)
{
}

function Ros1Pal_navigation_msgsSetSubMapFloorResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsSetSubMapFloorResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/TabletPOI codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsTabletPOICodec = Object.freeze({
    codecIdentity : "UWVMROS1_0f632e29a4a78c036cf5ccb39ae26a0f64a7642d727698c06f2d879de9241ae0",
    maxWireBytes : 764,
    minWireBytes : 12,
    cartesianMaxWireBytes : 764n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"POIs" : [], "IDs" : [], "map_id" : Ros1Std_msgsStringCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsTabletPOISize(Ros1Pal_navigation_msgsTabletPOICapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsTabletPOICapture(value), n = Ros1Pal_navigation_msgsTabletPOISize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsTabletPOIWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 764, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsTabletPOIRead(r);
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

function Ros1Pal_navigation_msgsTabletPOISize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["POIs"]) || value["POIs"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["POIs"])
    {
        n = addSize(n, Ros1Geometry_msgsPointSize(element));
    }
    if(!Array.isArray(value["IDs"]) || value["IDs"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["IDs"])
    {
        n = addSize(n, Ros1Std_msgsStringSize(element));
    }
    n = addSize(n, Ros1Std_msgsStringSize(value["map_id"]));
    if(n > 764)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsTabletPOIWrite(value, w)
{
    w.v.setUint32(w.at, value["POIs"].length, true);
    w.at += 4;
    for(const element of value["POIs"])
    {
        Ros1Geometry_msgsPointWrite(element, w);
    }
    w.v.setUint32(w.at, value["IDs"].length, true);
    w.at += 4;
    for(const element of value["IDs"])
    {
        Ros1Std_msgsStringWrite(element, w);
    }
    Ros1Std_msgsStringWrite(value["map_id"], w);
}

function Ros1Pal_navigation_msgsTabletPOIRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["POIs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Geometry_msgsPointRead(r);
                value["POIs"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["IDs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsStringRead(r);
                value["IDs"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["map_id"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsTabletPOICapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["POIs"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Geometry_msgsPointCapture(element);
        }
        out["POIs"] = values;
    }
    {
        const field = value["IDs"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsStringCapture(element);
        }
        out["IDs"] = values;
    }
    {
        const field = value["map_id"];
        out["map_id"] = Ros1Std_msgsStringCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/VisualLocRecognizeRequest codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsVisualLocRecognizeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7a4a33e9269b79d338bc44c15c0e9ffab87d8fe9c132fddd487df5b9248600e4",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsVisualLocRecognizeRequestSize(Ros1Pal_navigation_msgsVisualLocRecognizeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsVisualLocRecognizeRequestCapture(value), n = Ros1Pal_navigation_msgsVisualLocRecognizeRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsVisualLocRecognizeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsVisualLocRecognizeRequestRead(r);
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

function Ros1Pal_navigation_msgsVisualLocRecognizeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsVisualLocRecognizeRequestWrite(value, w)
{
}

function Ros1Pal_navigation_msgsVisualLocRecognizeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsVisualLocRecognizeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/VisualLocRecognizeResponse codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsVisualLocRecognizeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_306e234599c2ff8a294a8e078a4f6c43dbf8fba8d368fca5a6016826b098be89",
    maxWireBytes : 497,
    minWireBytes : 369,
    cartesianMaxWireBytes : 497n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "confidence" : 0, "estimatedPose" : Ros1Geometry_msgsPoseWithCovarianceStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsVisualLocRecognizeResponseSize(Ros1Pal_navigation_msgsVisualLocRecognizeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsVisualLocRecognizeResponseCapture(value), n = Ros1Pal_navigation_msgsVisualLocRecognizeResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsVisualLocRecognizeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 497, 90);
        if(owned.length < 369)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsVisualLocRecognizeResponseRead(r);
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

function Ros1Pal_navigation_msgsVisualLocRecognizeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["confidence"] !== "number" || !Number.isFinite(value["confidence"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, Ros1Geometry_msgsPoseWithCovarianceStampedSize(value["estimatedPose"]));
    if(n > 497)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsVisualLocRecognizeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["confidence"], true);
    w.at += 8;
    Ros1Geometry_msgsPoseWithCovarianceStampedWrite(value["estimatedPose"], w);
}

function Ros1Pal_navigation_msgsVisualLocRecognizeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["confidence"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseWithCovarianceStampedRead(r);
        value["estimatedPose"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsVisualLocRecognizeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["confidence"];
        out["confidence"] = field;
    }
    {
        const field = value["estimatedPose"];
        out["estimatedPose"] = Ros1Geometry_msgsPoseWithCovarianceStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/VisualTrainingGoal codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsVisualTrainingGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ea430253b6b7cd7fd82e0e3cbc0c40cb6d4835444a09587d90f1b698dd53ade4",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"ACTION_TRAIN" : 0}),
    defaultValue() {
        return {"action" : 0, "database_path" : ""};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsVisualTrainingGoalSize(Ros1Pal_navigation_msgsVisualTrainingGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsVisualTrainingGoalCapture(value), n = Ros1Pal_navigation_msgsVisualTrainingGoalSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsVisualTrainingGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsVisualTrainingGoalRead(r);
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

function Ros1Pal_navigation_msgsVisualTrainingGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["action"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["database_path"], 128).length);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsVisualTrainingGoalWrite(value, w)
{
    w.v.setUint8(w.at, value["action"], true);
    w.at += 1;
    w.text(value["database_path"], 128);
}

function Ros1Pal_navigation_msgsVisualTrainingGoalRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["action"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["database_path"] = decoded;
    }
    return value;
}

function Ros1Pal_navigation_msgsVisualTrainingGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["action"];
        out["action"] = field;
    }
    {
        const field = value["database_path"];
        out["database_path"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/VisualTrainingResult codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsVisualTrainingResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3a1c9623f4ec7e02ecf7a33978d54c95b9c3a42f4cb5004e11f062774175c387",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsVisualTrainingResultSize(Ros1Pal_navigation_msgsVisualTrainingResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsVisualTrainingResultCapture(value), n = Ros1Pal_navigation_msgsVisualTrainingResultSize(owned), w = new Writer(n);
        Ros1Pal_navigation_msgsVisualTrainingResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsVisualTrainingResultRead(r);
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

function Ros1Pal_navigation_msgsVisualTrainingResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsVisualTrainingResultWrite(value, w)
{
}

function Ros1Pal_navigation_msgsVisualTrainingResultRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsVisualTrainingResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_navigation_msgs/VisualTrainingFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_navigation_msgsVisualTrainingFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_39409b2914607480bd3fb1f3ec5162c11ab8b8e773e23f7730693c2461deaab3",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_navigation_msgsVisualTrainingFeedbackSize(Ros1Pal_navigation_msgsVisualTrainingFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_navigation_msgsVisualTrainingFeedbackCapture(value), n = Ros1Pal_navigation_msgsVisualTrainingFeedbackSize(owned),
              w = new Writer(n);
        Ros1Pal_navigation_msgsVisualTrainingFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_navigation_msgsVisualTrainingFeedbackRead(r);
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

function Ros1Pal_navigation_msgsVisualTrainingFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_navigation_msgsVisualTrainingFeedbackWrite(value, w)
{
}

function Ros1Pal_navigation_msgsVisualTrainingFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_navigation_msgsVisualTrainingFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_simulation_msgs/ExternalWrench codec; maxima are not actual lengths. */
export const Ros1Pal_simulation_msgsExternalWrenchCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b85249fbffa7b83dd13e2f42d71c5a4136743e892760cf0eb65bbaf3dfd0824c",
    maxWireBytes : 356,
    minWireBytes : 100,
    cartesianMaxWireBytes : 356n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "link_name" : "",
            "wrench" : Ros1Geometry_msgsWrenchCodec.defaultValue(),
            "application_point" : Ros1Geometry_msgsPointCodec.defaultValue(),
            "duration" : Ros1DurationCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_simulation_msgsExternalWrenchSize(Ros1Pal_simulation_msgsExternalWrenchCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_simulation_msgsExternalWrenchCapture(value), n = Ros1Pal_simulation_msgsExternalWrenchSize(owned), w = new Writer(n);
        Ros1Pal_simulation_msgsExternalWrenchWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 356, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros1Pal_simulation_msgsExternalWrenchRead(r);
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

function Ros1Pal_simulation_msgsExternalWrenchSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["link_name"], 128).length);
    n = addSize(n, Ros1Geometry_msgsWrenchSize(value["wrench"]));
    n = addSize(n, Ros1Geometry_msgsPointSize(value["application_point"]));
    n = addSize(n, Ros1DurationSize(value["duration"]));
    if(n > 356)
        bad(90);
    return n;
}

function Ros1Pal_simulation_msgsExternalWrenchWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.text(value["link_name"], 128);
    Ros1Geometry_msgsWrenchWrite(value["wrench"], w);
    Ros1Geometry_msgsPointWrite(value["application_point"], w);
    Ros1DurationWrite(value["duration"], w);
}

function Ros1Pal_simulation_msgsExternalWrenchRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["link_name"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsWrenchRead(r);
        value["wrench"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["application_point"] = decoded;
    }
    {
        const decoded = Ros1DurationRead(r);
        value["duration"] = decoded;
    }
    return value;
}

function Ros1Pal_simulation_msgsExternalWrenchCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["link_name"];
        out["link_name"] = field;
    }
    {
        const field = value["wrench"];
        out["wrench"] = Ros1Geometry_msgsWrenchCapture(field);
    }
    {
        const field = value["application_point"];
        out["application_point"] = Ros1Geometry_msgsPointCapture(field);
    }
    {
        const field = value["duration"];
        out["duration"] = Ros1DurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_tablet_msgs/FunctionalityStatus codec; maxima are not actual lengths. */
export const Ros1Pal_tablet_msgsFunctionalityStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce7e4fc9d13688058739c422c63a6af44d883b54b3efde8aed4e3272f8b0de35",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"errMessage" : Ros1Std_msgsStringCodec.defaultValue(), "errStatus" : Ros1Std_msgsBoolCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_tablet_msgsFunctionalityStatusSize(Ros1Pal_tablet_msgsFunctionalityStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_tablet_msgsFunctionalityStatusCapture(value), n = Ros1Pal_tablet_msgsFunctionalityStatusSize(owned), w = new Writer(n);
        Ros1Pal_tablet_msgsFunctionalityStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_tablet_msgsFunctionalityStatusRead(r);
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

function Ros1Pal_tablet_msgsFunctionalityStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsStringSize(value["errMessage"]));
    n = addSize(n, Ros1Std_msgsBoolSize(value["errStatus"]));
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_tablet_msgsFunctionalityStatusWrite(value, w)
{
    Ros1Std_msgsStringWrite(value["errMessage"], w);
    Ros1Std_msgsBoolWrite(value["errStatus"], w);
}

function Ros1Pal_tablet_msgsFunctionalityStatusRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["errMessage"] = decoded;
    }
    {
        const decoded = Ros1Std_msgsBoolRead(r);
        value["errStatus"] = decoded;
    }
    return value;
}

function Ros1Pal_tablet_msgsFunctionalityStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["errMessage"];
        out["errMessage"] = Ros1Std_msgsStringCapture(field);
    }
    {
        const field = value["errStatus"];
        out["errStatus"] = Ros1Std_msgsBoolCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_tablet_msgs/RobotStatus codec; maxima are not actual lengths. */
export const Ros1Pal_tablet_msgsRobotStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b01e5783832f7b816d0dca678bca11f49554304116bf9a8fccc9b36b18b4478d",
    maxWireBytes : 536,
    minWireBytes : 4,
    cartesianMaxWireBytes : 536n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"messages" : []};
    },
    validateValue(value) {
        Ros1Pal_tablet_msgsRobotStatusSize(Ros1Pal_tablet_msgsRobotStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_tablet_msgsRobotStatusCapture(value), n = Ros1Pal_tablet_msgsRobotStatusSize(owned), w = new Writer(n);
        Ros1Pal_tablet_msgsRobotStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 536, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_tablet_msgsRobotStatusRead(r);
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

function Ros1Pal_tablet_msgsRobotStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["messages"]) || value["messages"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["messages"])
    {
        n = addSize(n, Ros1Pal_tablet_msgsFunctionalityStatusSize(element));
    }
    if(n > 536)
        bad(90);
    return n;
}

function Ros1Pal_tablet_msgsRobotStatusWrite(value, w)
{
    w.v.setUint32(w.at, value["messages"].length, true);
    w.at += 4;
    for(const element of value["messages"])
    {
        Ros1Pal_tablet_msgsFunctionalityStatusWrite(element, w);
    }
}

function Ros1Pal_tablet_msgsRobotStatusRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["messages"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_tablet_msgsFunctionalityStatusRead(r);
                value["messages"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_tablet_msgsRobotStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["messages"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_tablet_msgsFunctionalityStatusCapture(element);
        }
        out["messages"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_video_recording_msgs/StartRecordingRequest codec; maxima are not actual lengths. */
export const Ros1Pal_video_recording_msgsStartRecordingRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_214a2bd3c382b4bd7dbb15d1b694e6d385bd9b2656944068177bd0408a16d914",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_video_recording_msgsStartRecordingRequestSize(Ros1Pal_video_recording_msgsStartRecordingRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_video_recording_msgsStartRecordingRequestCapture(value), n = Ros1Pal_video_recording_msgsStartRecordingRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_video_recording_msgsStartRecordingRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_video_recording_msgsStartRecordingRequestRead(r);
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

function Ros1Pal_video_recording_msgsStartRecordingRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_video_recording_msgsStartRecordingRequestWrite(value, w)
{
}

function Ros1Pal_video_recording_msgsStartRecordingRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_video_recording_msgsStartRecordingRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_video_recording_msgs/StartRecordingResponse codec; maxima are not actual lengths. */
export const Ros1Pal_video_recording_msgsStartRecordingResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03b8bcd879b02864300b8a90d721958a4335f53bd17abbd29178471de736d9b6",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_video_recording_msgsStartRecordingResponseSize(Ros1Pal_video_recording_msgsStartRecordingResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_video_recording_msgsStartRecordingResponseCapture(value), n = Ros1Pal_video_recording_msgsStartRecordingResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_video_recording_msgsStartRecordingResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_video_recording_msgsStartRecordingResponseRead(r);
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

function Ros1Pal_video_recording_msgsStartRecordingResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_video_recording_msgsStartRecordingResponseWrite(value, w)
{
}

function Ros1Pal_video_recording_msgsStartRecordingResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_video_recording_msgsStartRecordingResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_video_recording_msgs/StopRecordingRequest codec; maxima are not actual lengths. */
export const Ros1Pal_video_recording_msgsStopRecordingRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2fe53f84621ac67f592d86f028c2d5be67f4fee13663b82a9b128d50a8a1c4f5",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_video_recording_msgsStopRecordingRequestSize(Ros1Pal_video_recording_msgsStopRecordingRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_video_recording_msgsStopRecordingRequestCapture(value), n = Ros1Pal_video_recording_msgsStopRecordingRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_video_recording_msgsStopRecordingRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_video_recording_msgsStopRecordingRequestRead(r);
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

function Ros1Pal_video_recording_msgsStopRecordingRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_video_recording_msgsStopRecordingRequestWrite(value, w)
{
}

function Ros1Pal_video_recording_msgsStopRecordingRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_video_recording_msgsStopRecordingRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_video_recording_msgs/StopRecordingResponse codec; maxima are not actual lengths. */
export const Ros1Pal_video_recording_msgsStopRecordingResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e7555737246a82dcf9203313b8bfc43c808fa1d8a405c4159bf3b837545b7c2",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_video_recording_msgsStopRecordingResponseSize(Ros1Pal_video_recording_msgsStopRecordingResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_video_recording_msgsStopRecordingResponseCapture(value), n = Ros1Pal_video_recording_msgsStopRecordingResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_video_recording_msgsStopRecordingResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_video_recording_msgsStopRecordingResponseRead(r);
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

function Ros1Pal_video_recording_msgsStopRecordingResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_video_recording_msgsStopRecordingResponseWrite(value, w)
{
}

function Ros1Pal_video_recording_msgsStopRecordingResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_video_recording_msgsStopRecordingResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/DetectedObject codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsDetectedObjectCodec = Object.freeze({
    codecIdentity : "UWVMROS1_49ddd55b2f5fc8053980d77760c563c563113d1dafc899b0b5d619f98ab7ad25",
    maxWireBytes : 168,
    minWireBytes : 40,
    cartesianMaxWireBytes : 168n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "position3D" : Ros1Geometry_msgsPointCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsDetectedObjectSize(Ros1Pal_vision_msgsDetectedObjectCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsDetectedObjectCapture(value), n = Ros1Pal_vision_msgsDetectedObjectSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsDetectedObjectWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 168, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsDetectedObjectRead(r);
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

function Ros1Pal_vision_msgsDetectedObjectSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Geometry_msgsPointSize(value["position3D"]));
    if(n > 168)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsDetectedObjectWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Geometry_msgsPointWrite(value["position3D"], w);
}

function Ros1Pal_vision_msgsDetectedObjectRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["position3D"] = decoded;
    }
    return value;
}

function Ros1Pal_vision_msgsDetectedObjectCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["position3D"];
        out["position3D"] = Ros1Geometry_msgsPointCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 std_msgs/ColorRGBA codec; maxima are not actual lengths. */
export const Ros1Std_msgsColorRGBACodec = Object.freeze({
    codecIdentity : "UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0, "g" : 0, "b" : 0, "a" : 0};
    },
    validateValue(value) {
        Ros1Std_msgsColorRGBASize(Ros1Std_msgsColorRGBACapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsColorRGBACapture(value), n = Ros1Std_msgsColorRGBASize(owned), w = new Writer(n);
        Ros1Std_msgsColorRGBAWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsColorRGBARead(r);
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

function Ros1Std_msgsColorRGBASize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["r"] !== "number" || !Number.isFinite(value["r"]) || !Number.isFinite(Math.fround(value["r"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["g"] !== "number" || !Number.isFinite(value["g"]) || !Number.isFinite(Math.fround(value["g"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]) || !Number.isFinite(Math.fround(value["b"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]) || !Number.isFinite(Math.fround(value["a"])))
        bad();
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Std_msgsColorRGBAWrite(value, w)
{
    w.v.setFloat32(w.at, value["r"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["g"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["b"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["a"], true);
    w.at += 4;
}

function Ros1Std_msgsColorRGBARead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["r"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["g"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    return value;
}

function Ros1Std_msgsColorRGBACapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["r"];
        out["r"] = field;
    }
    {
        const field = value["g"];
        out["g"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["a"];
        out["a"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/Rectangle codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsRectangleCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa96c9ba0ef62b6f620e1200ffde47ce33ae8d41e444c39ae65e6aa3b27954c4",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0n, "y" : 0n, "width" : 0n, "height" : 0n};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsRectangleSize(Ros1Pal_vision_msgsRectangleCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsRectangleCapture(value), n = Ros1Pal_vision_msgsRectangleSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsRectangleWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsRectangleRead(r);
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

function Ros1Pal_vision_msgsRectangleSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 8, true);
    n = addSize(n, 8);
    integer(value["y"], 8, true);
    n = addSize(n, 8);
    integer(value["width"], 8, true);
    n = addSize(n, 8);
    integer(value["height"], 8, true);
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsRectangleWrite(value, w)
{
    w.v.setBigInt64(w.at, value["x"], true);
    w.at += 8;
    w.v.setBigInt64(w.at, value["y"], true);
    w.at += 8;
    w.v.setBigInt64(w.at, value["width"], true);
    w.at += 8;
    w.v.setBigInt64(w.at, value["height"], true);
    w.at += 8;
}

function Ros1Pal_vision_msgsRectangleRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["height"] = decoded;
    }
    return value;
}

function Ros1Pal_vision_msgsRectangleCapture(value)
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
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/DetectedPerson codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsDetectedPersonCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce1f7b8789e0928dc98ba3819be067f6bb077a9144f475f5c50a849be781c82e",
    maxWireBytes : 264,
    minWireBytes : 136,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "objectId" : 0n,
            "boxColour" : Ros1Std_msgsColorRGBACodec.defaultValue(),
            "confidence" : 0,
            "position3D" : Ros1Geometry_msgsPointCodec.defaultValue(),
            "box" : Ros1Pal_vision_msgsRectangleCodec.defaultValue(),
            "faceBox" : Ros1Pal_vision_msgsRectangleCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_vision_msgsDetectedPersonSize(Ros1Pal_vision_msgsDetectedPersonCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsDetectedPersonCapture(value), n = Ros1Pal_vision_msgsDetectedPersonSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsDetectedPersonWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 136)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsDetectedPersonRead(r);
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

function Ros1Pal_vision_msgsDetectedPersonSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    integer(value["objectId"], 8, true);
    n = addSize(n, 8);
    n = addSize(n, Ros1Std_msgsColorRGBASize(value["boxColour"]));
    if(typeof value["confidence"] !== "number" || !Number.isFinite(value["confidence"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, Ros1Geometry_msgsPointSize(value["position3D"]));
    n = addSize(n, Ros1Pal_vision_msgsRectangleSize(value["box"]));
    n = addSize(n, Ros1Pal_vision_msgsRectangleSize(value["faceBox"]));
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsDetectedPersonWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setBigInt64(w.at, value["objectId"], true);
    w.at += 8;
    Ros1Std_msgsColorRGBAWrite(value["boxColour"], w);
    w.v.setFloat64(w.at, value["confidence"], true);
    w.at += 8;
    Ros1Geometry_msgsPointWrite(value["position3D"], w);
    Ros1Pal_vision_msgsRectangleWrite(value["box"], w);
    Ros1Pal_vision_msgsRectangleWrite(value["faceBox"], w);
}

function Ros1Pal_vision_msgsDetectedPersonRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["objectId"] = decoded;
    }
    {
        const decoded = Ros1Std_msgsColorRGBARead(r);
        value["boxColour"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["confidence"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["position3D"] = decoded;
    }
    {
        const decoded = Ros1Pal_vision_msgsRectangleRead(r);
        value["box"] = decoded;
    }
    {
        const decoded = Ros1Pal_vision_msgsRectangleRead(r);
        value["faceBox"] = decoded;
    }
    return value;
}

function Ros1Pal_vision_msgsDetectedPersonCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["objectId"];
        out["objectId"] = field;
    }
    {
        const field = value["boxColour"];
        out["boxColour"] = Ros1Std_msgsColorRGBACapture(field);
    }
    {
        const field = value["confidence"];
        out["confidence"] = field;
    }
    {
        const field = value["position3D"];
        out["position3D"] = Ros1Geometry_msgsPointCapture(field);
    }
    {
        const field = value["box"];
        out["box"] = Ros1Pal_vision_msgsRectangleCapture(field);
    }
    {
        const field = value["faceBox"];
        out["faceBox"] = Ros1Pal_vision_msgsRectangleCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceDetection codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceDetectionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_57943eb9a19b9558fc5e7390bfbb3f7ab271cfb5ab7892bc1442a43c8d3217d5",
    maxWireBytes : 124,
    minWireBytes : 60,
    cartesianMaxWireBytes : 124n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"position3D" : Ros1Geometry_msgsPointCodec.defaultValue(), "imageBoundingBox" : Ros1Pal_vision_msgsRectangleCodec.defaultValue(), "hog" : []};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceDetectionSize(Ros1Pal_vision_msgsFaceDetectionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceDetectionCapture(value), n = Ros1Pal_vision_msgsFaceDetectionSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFaceDetectionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 124, 90);
        if(owned.length < 60)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceDetectionRead(r);
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

function Ros1Pal_vision_msgsFaceDetectionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPointSize(value["position3D"]));
    n = addSize(n, Ros1Pal_vision_msgsRectangleSize(value["imageBoundingBox"]));
    if(!Array.isArray(value["hog"]) || value["hog"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["hog"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 124)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceDetectionWrite(value, w)
{
    Ros1Geometry_msgsPointWrite(value["position3D"], w);
    Ros1Pal_vision_msgsRectangleWrite(value["imageBoundingBox"], w);
    w.v.setUint32(w.at, value["hog"].length, true);
    w.at += 4;
    for(const element of value["hog"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Pal_vision_msgsFaceDetectionRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["position3D"] = decoded;
    }
    {
        const decoded = Ros1Pal_vision_msgsRectangleRead(r);
        value["imageBoundingBox"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["hog"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["hog"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_vision_msgsFaceDetectionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["position3D"];
        out["position3D"] = Ros1Geometry_msgsPointCapture(field);
    }
    {
        const field = value["imageBoundingBox"];
        out["imageBoundingBox"] = Ros1Pal_vision_msgsRectangleCapture(field);
    }
    {
        const field = value["hog"];
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
        out["hog"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceDetections codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceDetectionsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc135c2c93419e99b87edabfe3a72e744e574ec703e77919736ae90f069417a0",
    maxWireBytes : 648,
    minWireBytes : 24,
    cartesianMaxWireBytes : 648n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "imgID" : 0, "faces" : []};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceDetectionsSize(Ros1Pal_vision_msgsFaceDetectionsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceDetectionsCapture(value), n = Ros1Pal_vision_msgsFaceDetectionsSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFaceDetectionsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 648, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceDetectionsRead(r);
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

function Ros1Pal_vision_msgsFaceDetectionsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    integer(value["imgID"], 4, false);
    n = addSize(n, 4);
    if(!Array.isArray(value["faces"]) || value["faces"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["faces"])
    {
        n = addSize(n, Ros1Pal_vision_msgsFaceDetectionSize(element));
    }
    if(n > 648)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceDetectionsWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["imgID"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["faces"].length, true);
    w.at += 4;
    for(const element of value["faces"])
    {
        Ros1Pal_vision_msgsFaceDetectionWrite(element, w);
    }
}

function Ros1Pal_vision_msgsFaceDetectionsRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["imgID"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["faces"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_vision_msgsFaceDetectionRead(r);
                value["faces"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_vision_msgsFaceDetectionsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["imgID"];
        out["imgID"] = field;
    }
    {
        const field = value["faces"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_vision_msgsFaceDetectionCapture(element);
        }
        out["faces"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceRecognitionGoal codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceRecognitionGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bcf0281ebf646f90ea48d50971aedcd174eec9bdf8cb45ca66c6e4aa672cda4b",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"order_id" : 0, "order_argument" : ""};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceRecognitionGoalSize(Ros1Pal_vision_msgsFaceRecognitionGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceRecognitionGoalCapture(value), n = Ros1Pal_vision_msgsFaceRecognitionGoalSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFaceRecognitionGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceRecognitionGoalRead(r);
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

function Ros1Pal_vision_msgsFaceRecognitionGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["order_id"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["order_argument"], 128).length);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceRecognitionGoalWrite(value, w)
{
    w.v.setUint8(w.at, value["order_id"], true);
    w.at += 1;
    w.text(value["order_argument"], 128);
}

function Ros1Pal_vision_msgsFaceRecognitionGoalRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["order_id"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["order_argument"] = decoded;
    }
    return value;
}

function Ros1Pal_vision_msgsFaceRecognitionGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["order_id"];
        out["order_id"] = field;
    }
    {
        const field = value["order_argument"];
        out["order_argument"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceRecognitionResult codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceRecognitionResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47287112c67933fc592f58a910627ff0ddc35f2cf8f38437399ef1ed94e4d36e",
    maxWireBytes : 2185,
    minWireBytes : 9,
    cartesianMaxWireBytes : 2185n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"order_id" : 0, "names" : [], "confidence" : []};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceRecognitionResultSize(Ros1Pal_vision_msgsFaceRecognitionResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceRecognitionResultCapture(value), n = Ros1Pal_vision_msgsFaceRecognitionResultSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFaceRecognitionResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2185, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceRecognitionResultRead(r);
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

function Ros1Pal_vision_msgsFaceRecognitionResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["order_id"], 1, false);
    n = addSize(n, 1);
    if(!Array.isArray(value["names"]) || value["names"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["names"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["confidence"]) || value["confidence"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["confidence"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 2185)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceRecognitionResultWrite(value, w)
{
    w.v.setUint8(w.at, value["order_id"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["names"].length, true);
    w.at += 4;
    for(const element of value["names"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["confidence"].length, true);
    w.at += 4;
    for(const element of value["confidence"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Pal_vision_msgsFaceRecognitionResultRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["order_id"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
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
            if(count > 16)
                bad();
            value["confidence"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["confidence"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_vision_msgsFaceRecognitionResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["order_id"];
        out["order_id"] = field;
    }
    {
        const field = value["names"];
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
        out["names"] = values;
    }
    {
        const field = value["confidence"];
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
        out["confidence"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceRecognitionFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceRecognitionFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_42cb3618f562e3083ca7069e0f41233a9584cd00b9a3d2cb791d5956735dbfd7",
    maxWireBytes : 2185,
    minWireBytes : 9,
    cartesianMaxWireBytes : 2185n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"order_id" : 0, "names" : [], "confidence" : []};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceRecognitionFeedbackSize(Ros1Pal_vision_msgsFaceRecognitionFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceRecognitionFeedbackCapture(value), n = Ros1Pal_vision_msgsFaceRecognitionFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFaceRecognitionFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2185, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceRecognitionFeedbackRead(r);
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

function Ros1Pal_vision_msgsFaceRecognitionFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["order_id"], 1, false);
    n = addSize(n, 1);
    if(!Array.isArray(value["names"]) || value["names"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["names"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(!Array.isArray(value["confidence"]) || value["confidence"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["confidence"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 2185)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceRecognitionFeedbackWrite(value, w)
{
    w.v.setUint8(w.at, value["order_id"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["names"].length, true);
    w.at += 4;
    for(const element of value["names"])
    {
        w.text(element, 128);
    }
    w.v.setUint32(w.at, value["confidence"].length, true);
    w.at += 4;
    for(const element of value["confidence"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Pal_vision_msgsFaceRecognitionFeedbackRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["order_id"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
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
            if(count > 16)
                bad();
            value["confidence"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["confidence"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_vision_msgsFaceRecognitionFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["order_id"];
        out["order_id"] = field;
    }
    {
        const field = value["names"];
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
        out["names"] = values;
    }
    {
        const field = value["confidence"];
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
        out["confidence"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceTrackingStartRequest codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceTrackingStartRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e41bf1927b5c764ff89ca9d9049719e35c96c1689ba4bb930d1e90480a13647c",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceTrackingStartRequestSize(Ros1Pal_vision_msgsFaceTrackingStartRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceTrackingStartRequestCapture(value), n = Ros1Pal_vision_msgsFaceTrackingStartRequestSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFaceTrackingStartRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceTrackingStartRequestRead(r);
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

function Ros1Pal_vision_msgsFaceTrackingStartRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceTrackingStartRequestWrite(value, w)
{
}

function Ros1Pal_vision_msgsFaceTrackingStartRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_vision_msgsFaceTrackingStartRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceTrackingStartResponse codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceTrackingStartResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_51e6335ecfe5827f0bae5e5610b5dec443373b1233942b40387958b1b47ba4bf",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceTrackingStartResponseSize(Ros1Pal_vision_msgsFaceTrackingStartResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceTrackingStartResponseCapture(value), n = Ros1Pal_vision_msgsFaceTrackingStartResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_vision_msgsFaceTrackingStartResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceTrackingStartResponseRead(r);
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

function Ros1Pal_vision_msgsFaceTrackingStartResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceTrackingStartResponseWrite(value, w)
{
}

function Ros1Pal_vision_msgsFaceTrackingStartResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_vision_msgsFaceTrackingStartResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceTrackingStopRequest codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceTrackingStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_850dd9a2cdf7e12197ac7efad3facaf4609c7be7c63d8157a6b92bc1e56926e5",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceTrackingStopRequestSize(Ros1Pal_vision_msgsFaceTrackingStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceTrackingStopRequestCapture(value), n = Ros1Pal_vision_msgsFaceTrackingStopRequestSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFaceTrackingStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceTrackingStopRequestRead(r);
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

function Ros1Pal_vision_msgsFaceTrackingStopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceTrackingStopRequestWrite(value, w)
{
}

function Ros1Pal_vision_msgsFaceTrackingStopRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_vision_msgsFaceTrackingStopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FaceTrackingStopResponse codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFaceTrackingStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_158adae14ad8a978f5c934c5aee9489306e9ddd31d9afa15ff1a9f9af8872b5f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFaceTrackingStopResponseSize(Ros1Pal_vision_msgsFaceTrackingStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFaceTrackingStopResponseCapture(value), n = Ros1Pal_vision_msgsFaceTrackingStopResponseSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFaceTrackingStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFaceTrackingStopResponseRead(r);
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

function Ros1Pal_vision_msgsFaceTrackingStopResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFaceTrackingStopResponseWrite(value, w)
{
}

function Ros1Pal_vision_msgsFaceTrackingStopResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_vision_msgsFaceTrackingStopResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FollowMeResponse codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFollowMeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_509edcb3854474332fd562cc897fff9266b789772700de1b4a447670fd0bb24f",
    maxWireBytes : 145,
    minWireBytes : 17,
    cartesianMaxWireBytes : 145n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "targetDetected" : false};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFollowMeResponseSize(Ros1Pal_vision_msgsFollowMeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFollowMeResponseCapture(value), n = Ros1Pal_vision_msgsFollowMeResponseSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFollowMeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 145, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFollowMeResponseRead(r);
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

function Ros1Pal_vision_msgsFollowMeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(typeof value["targetDetected"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 145)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFollowMeResponseWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint8(w.at, value["targetDetected"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_vision_msgsFollowMeResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["targetDetected"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_vision_msgsFollowMeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["targetDetected"];
        out["targetDetected"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FollowMeStartRequest codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFollowMeStartRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9ad00d43667a3ac5324f5999d68f04b8c176c308d94c2ed4da9d357697b0faba",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"maxSecondsTargetLost" : 0};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFollowMeStartRequestSize(Ros1Pal_vision_msgsFollowMeStartRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFollowMeStartRequestCapture(value), n = Ros1Pal_vision_msgsFollowMeStartRequestSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFollowMeStartRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFollowMeStartRequestRead(r);
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

function Ros1Pal_vision_msgsFollowMeStartRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["maxSecondsTargetLost"] !== "number" || !Number.isFinite(value["maxSecondsTargetLost"]) ||
       !Number.isFinite(Math.fround(value["maxSecondsTargetLost"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFollowMeStartRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["maxSecondsTargetLost"], true);
    w.at += 4;
}

function Ros1Pal_vision_msgsFollowMeStartRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["maxSecondsTargetLost"] = decoded;
    }
    return value;
}

function Ros1Pal_vision_msgsFollowMeStartRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["maxSecondsTargetLost"];
        out["maxSecondsTargetLost"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FollowMeStartResponse codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFollowMeStartResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2d61bb56a1595cfb26c8607e75c06b6ad712ee04f23f8bb3ec2055a311d3376a",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFollowMeStartResponseSize(Ros1Pal_vision_msgsFollowMeStartResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFollowMeStartResponseCapture(value), n = Ros1Pal_vision_msgsFollowMeStartResponseSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFollowMeStartResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFollowMeStartResponseRead(r);
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

function Ros1Pal_vision_msgsFollowMeStartResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFollowMeStartResponseWrite(value, w)
{
}

function Ros1Pal_vision_msgsFollowMeStartResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_vision_msgsFollowMeStartResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FollowMeStopRequest codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFollowMeStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6027cba04b80218bf304f2a426f716bba87534e477b5dda411c921ac27e9a8b2",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFollowMeStopRequestSize(Ros1Pal_vision_msgsFollowMeStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFollowMeStopRequestCapture(value), n = Ros1Pal_vision_msgsFollowMeStopRequestSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFollowMeStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFollowMeStopRequestRead(r);
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

function Ros1Pal_vision_msgsFollowMeStopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFollowMeStopRequestWrite(value, w)
{
}

function Ros1Pal_vision_msgsFollowMeStopRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_vision_msgsFollowMeStopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/FollowMeStopResponse codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsFollowMeStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a2b3b521174fc092b8f04cdc09ff4a43113b71b9daa4977e7a233fc8a5c02cdb",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsFollowMeStopResponseSize(Ros1Pal_vision_msgsFollowMeStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsFollowMeStopResponseCapture(value), n = Ros1Pal_vision_msgsFollowMeStopResponseSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsFollowMeStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsFollowMeStopResponseRead(r);
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

function Ros1Pal_vision_msgsFollowMeStopResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsFollowMeStopResponseWrite(value, w)
{
}

function Ros1Pal_vision_msgsFollowMeStopResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_vision_msgsFollowMeStopResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/Gesture codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsGestureCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e947cfbffe33a44d3590ff6513d4486c7411747df12fed9c178662e5beb2e4d1",
    maxWireBytes : 300,
    minWireBytes : 44,
    cartesianMaxWireBytes : 300n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "gestureId" : "", "position3D" : Ros1Geometry_msgsPointCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsGestureSize(Ros1Pal_vision_msgsGestureCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsGestureCapture(value), n = Ros1Pal_vision_msgsGestureSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsGestureWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 300, 90);
        if(owned.length < 44)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsGestureRead(r);
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

function Ros1Pal_vision_msgsGestureSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["gestureId"], 128).length);
    n = addSize(n, Ros1Geometry_msgsPointSize(value["position3D"]));
    if(n > 300)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsGestureWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.text(value["gestureId"], 128);
    Ros1Geometry_msgsPointWrite(value["position3D"], w);
}

function Ros1Pal_vision_msgsGestureRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["gestureId"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["position3D"] = decoded;
    }
    return value;
}

function Ros1Pal_vision_msgsGestureCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["gestureId"];
        out["gestureId"] = field;
    }
    {
        const field = value["position3D"];
        out["position3D"] = Ros1Geometry_msgsPointCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/HeadPanTilt codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsHeadPanTiltCodec = Object.freeze({
    codecIdentity : "UWVMROS1_69c6664a98a42741b82d5c147ccfabdb7bb7138cae590c77a2b63103cdf899cc",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "pan" : 0, "tilt" : 0};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsHeadPanTiltSize(Ros1Pal_vision_msgsHeadPanTiltCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsHeadPanTiltCapture(value), n = Ros1Pal_vision_msgsHeadPanTiltSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsHeadPanTiltWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsHeadPanTiltRead(r);
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

function Ros1Pal_vision_msgsHeadPanTiltSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(typeof value["pan"] !== "number" || !Number.isFinite(value["pan"]) || !Number.isFinite(Math.fround(value["pan"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["tilt"] !== "number" || !Number.isFinite(value["tilt"]) || !Number.isFinite(Math.fround(value["tilt"])))
        bad();
    n = addSize(n, 4);
    if(n > 152)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsHeadPanTiltWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setFloat32(w.at, value["pan"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["tilt"], true);
    w.at += 4;
}

function Ros1Pal_vision_msgsHeadPanTiltRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pan"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["tilt"] = decoded;
    }
    return value;
}

function Ros1Pal_vision_msgsHeadPanTiltCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["pan"];
        out["pan"] = field;
    }
    {
        const field = value["tilt"];
        out["tilt"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/HogDetection codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsHogDetectionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4d745cf6bb2b9fce9d25b0c7b15be14ba7aec15d19a6677f7d8f4dfc40c3dcf4",
    maxWireBytes : 344,
    minWireBytes : 88,
    cartesianMaxWireBytes : 344n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "imageBoundingBox" : Ros1Pal_vision_msgsRectangleCodec.defaultValue(),
            "direction" : Ros1Geometry_msgsVector3Codec.defaultValue(),
            "hog" : [],
            "principalEigenVectorRGB" : Ros1Std_msgsColorRGBACodec.defaultValue(),
            "rgbClusterCenters" : [],
            "rgbDescriptor1" : [],
            "rgbDescriptor2" : []
        };
    },
    validateValue(value) {
        Ros1Pal_vision_msgsHogDetectionSize(Ros1Pal_vision_msgsHogDetectionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsHogDetectionCapture(value), n = Ros1Pal_vision_msgsHogDetectionSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsHogDetectionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 344, 90);
        if(owned.length < 88)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsHogDetectionRead(r);
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

function Ros1Pal_vision_msgsHogDetectionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_vision_msgsRectangleSize(value["imageBoundingBox"]));
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["direction"]));
    if(!Array.isArray(value["hog"]) || value["hog"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["hog"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    n = addSize(n, Ros1Std_msgsColorRGBASize(value["principalEigenVectorRGB"]));
    if(!Array.isArray(value["rgbClusterCenters"]) || value["rgbClusterCenters"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["rgbClusterCenters"])
    {
        n = addSize(n, Ros1Std_msgsColorRGBASize(element));
    }
    if(!Array.isArray(value["rgbDescriptor1"]) || value["rgbDescriptor1"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["rgbDescriptor1"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["rgbDescriptor2"]) || value["rgbDescriptor2"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["rgbDescriptor2"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    if(n > 344)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsHogDetectionWrite(value, w)
{
    Ros1Pal_vision_msgsRectangleWrite(value["imageBoundingBox"], w);
    Ros1Geometry_msgsVector3Write(value["direction"], w);
    w.v.setUint32(w.at, value["hog"].length, true);
    w.at += 4;
    for(const element of value["hog"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    Ros1Std_msgsColorRGBAWrite(value["principalEigenVectorRGB"], w);
    w.v.setUint32(w.at, value["rgbClusterCenters"].length, true);
    w.at += 4;
    for(const element of value["rgbClusterCenters"])
    {
        Ros1Std_msgsColorRGBAWrite(element, w);
    }
    w.v.setUint32(w.at, value["rgbDescriptor1"].length, true);
    w.at += 4;
    for(const element of value["rgbDescriptor1"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["rgbDescriptor2"].length, true);
    w.at += 4;
    for(const element of value["rgbDescriptor2"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Pal_vision_msgsHogDetectionRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_vision_msgsRectangleRead(r);
        value["imageBoundingBox"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["direction"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["hog"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["hog"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Std_msgsColorRGBARead(r);
        value["principalEigenVectorRGB"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["rgbClusterCenters"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsColorRGBARead(r);
                value["rgbClusterCenters"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["rgbDescriptor1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint32(r.take(4), true);
                value["rgbDescriptor1"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["rgbDescriptor2"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint32(r.take(4), true);
                value["rgbDescriptor2"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_vision_msgsHogDetectionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["imageBoundingBox"];
        out["imageBoundingBox"] = Ros1Pal_vision_msgsRectangleCapture(field);
    }
    {
        const field = value["direction"];
        out["direction"] = Ros1Geometry_msgsVector3Capture(field);
    }
    {
        const field = value["hog"];
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
        out["hog"] = values;
    }
    {
        const field = value["principalEigenVectorRGB"];
        out["principalEigenVectorRGB"] = Ros1Std_msgsColorRGBACapture(field);
    }
    {
        const field = value["rgbClusterCenters"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsColorRGBACapture(element);
        }
        out["rgbClusterCenters"] = values;
    }
    {
        const field = value["rgbDescriptor1"];
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
        out["rgbDescriptor1"] = values;
    }
    {
        const field = value["rgbDescriptor2"];
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
        out["rgbDescriptor2"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/HogDetections codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsHogDetectionsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ea9e8cc6d81de0b518f3dd1fd3fedca765711f965644e2a0fa88b8d334cbace",
    maxWireBytes : 1528,
    minWireBytes : 24,
    cartesianMaxWireBytes : 1528n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "imgID" : 0, "persons" : []};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsHogDetectionsSize(Ros1Pal_vision_msgsHogDetectionsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsHogDetectionsCapture(value), n = Ros1Pal_vision_msgsHogDetectionsSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsHogDetectionsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1528, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsHogDetectionsRead(r);
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

function Ros1Pal_vision_msgsHogDetectionsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    integer(value["imgID"], 4, false);
    n = addSize(n, 4);
    if(!Array.isArray(value["persons"]) || value["persons"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["persons"])
    {
        n = addSize(n, Ros1Pal_vision_msgsHogDetectionSize(element));
    }
    if(n > 1528)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsHogDetectionsWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["imgID"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["persons"].length, true);
    w.at += 4;
    for(const element of value["persons"])
    {
        Ros1Pal_vision_msgsHogDetectionWrite(element, w);
    }
}

function Ros1Pal_vision_msgsHogDetectionsRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["imgID"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["persons"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_vision_msgsHogDetectionRead(r);
                value["persons"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_vision_msgsHogDetectionsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["imgID"];
        out["imgID"] = field;
    }
    {
        const field = value["persons"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_vision_msgsHogDetectionCapture(element);
        }
        out["persons"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/LegDetections codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsLegDetectionsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e175101eca8d474e2569d4e4e125fd84e8c8a73c957472cf7e4b6aae9dfa0549",
    maxWireBytes : 244,
    minWireBytes : 20,
    cartesianMaxWireBytes : 244n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "position3D" : []};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsLegDetectionsSize(Ros1Pal_vision_msgsLegDetectionsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsLegDetectionsCapture(value), n = Ros1Pal_vision_msgsLegDetectionsSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsLegDetectionsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 244, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsLegDetectionsRead(r);
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

function Ros1Pal_vision_msgsLegDetectionsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["position3D"]) || value["position3D"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["position3D"])
    {
        n = addSize(n, Ros1Geometry_msgsPointSize(element));
    }
    if(n > 244)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsLegDetectionsWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["position3D"].length, true);
    w.at += 4;
    for(const element of value["position3D"])
    {
        Ros1Geometry_msgsPointWrite(element, w);
    }
}

function Ros1Pal_vision_msgsLegDetectionsRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["position3D"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Geometry_msgsPointRead(r);
                value["position3D"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_vision_msgsLegDetectionsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["position3D"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Geometry_msgsPointCapture(element);
        }
        out["position3D"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/LookToPixelRequest codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsLookToPixelRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ead4559133ef68c0248064d865cceaeb335f6104424a199ebc4452e6878383ff",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsLookToPixelRequestSize(Ros1Pal_vision_msgsLookToPixelRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsLookToPixelRequestCapture(value), n = Ros1Pal_vision_msgsLookToPixelRequestSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsLookToPixelRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsLookToPixelRequestRead(r);
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

function Ros1Pal_vision_msgsLookToPixelRequestSize(value)
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
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsLookToPixelRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["y"], true);
    w.at += 4;
}

function Ros1Pal_vision_msgsLookToPixelRequestRead(r)
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
    return value;
}

function Ros1Pal_vision_msgsLookToPixelRequestCapture(value)
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
    return out;
}

/** @brief Complete ROS1 pal_vision_msgs/LookToPixelResponse codec; maxima are not actual lengths. */
export const Ros1Pal_vision_msgsLookToPixelResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_137d83d2b779310ee91811bd5a17c4d232fb2114246da1520656876385562ae1",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_vision_msgsLookToPixelResponseSize(Ros1Pal_vision_msgsLookToPixelResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_vision_msgsLookToPixelResponseCapture(value), n = Ros1Pal_vision_msgsLookToPixelResponseSize(owned), w = new Writer(n);
        Ros1Pal_vision_msgsLookToPixelResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_vision_msgsLookToPixelResponseRead(r);
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

function Ros1Pal_vision_msgsLookToPixelResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_vision_msgsLookToPixelResponseWrite(value, w)
{
}

function Ros1Pal_vision_msgsLookToPixelResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_vision_msgsLookToPixelResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_visual_localization_msgs/VisualLocAddPlaceGoal codec; maxima are not actual lengths. */
export const Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6d84634e1bebf082190a3992acd2379d94a375158775cf0a01c430779105049d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalSize(Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCapture(value), n = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalSize(owned),
              w = new Writer(n);
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalRead(r);
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

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalWrite(value, w)
{
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_visual_localization_msgs/VisualLocAddPlaceResult codec; maxima are not actual lengths. */
export const Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_604eadb052736d8c3999fff8ab635886d87f779943632ce01e89742d591c265a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : false};
    },
    validateValue(value) {
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultSize(Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCapture(value),
              n = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultSize(owned), w = new Writer(n);
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultRead(r);
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

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["res"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultWrite(value, w)
{
    w.v.setUint8(w.at, value["res"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["res"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_visual_localization_msgs/VisualLocAddPlaceFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ceb1b2594d5bf763de97096f0bb683276be372393e779d3b3334b3adc7a6f3b6",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackSize(Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCapture(value),
              n = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackRead(r);
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

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackWrite(value, w)
{
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_visual_localization_msgs/VisualLocRecognizeGoal codec; maxima are not actual lengths. */
export const Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b1aa9fe3f12a81861385e9421e153869ee3f2ba0949fe55c0ed0fe7170ae4c4a",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalSize(Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCapture(value),
              n = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalSize(owned), w = new Writer(n);
        Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalRead(r);
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

function Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalWrite(value, w)
{
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_visual_localization_msgs/VisualLocRecognizeResult codec; maxima are not actual lengths. */
export const Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e20e2e4ba374756256518e0e7075689be3c87660703926ab5d1cb33c8ff1c6da",
    maxWireBytes : 497,
    minWireBytes : 369,
    cartesianMaxWireBytes : 497n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "confidence" : 0, "estimatedPose" : Ros1Geometry_msgsPoseWithCovarianceStampedCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_visual_localization_msgsVisualLocRecognizeResultSize(Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCapture(value),
              n = Ros1Pal_visual_localization_msgsVisualLocRecognizeResultSize(owned), w = new Writer(n);
        Ros1Pal_visual_localization_msgsVisualLocRecognizeResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 497, 90);
        if(owned.length < 369)
            bad();
        const r = new Reader(owned), value = Ros1Pal_visual_localization_msgsVisualLocRecognizeResultRead(r);
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

function Ros1Pal_visual_localization_msgsVisualLocRecognizeResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["confidence"] !== "number" || !Number.isFinite(value["confidence"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, Ros1Geometry_msgsPoseWithCovarianceStampedSize(value["estimatedPose"]));
    if(n > 497)
        bad(90);
    return n;
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeResultWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["confidence"], true);
    w.at += 8;
    Ros1Geometry_msgsPoseWithCovarianceStampedWrite(value["estimatedPose"], w);
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeResultRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["confidence"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseWithCovarianceStampedRead(r);
        value["estimatedPose"] = decoded;
    }
    return value;
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["confidence"];
        out["confidence"] = field;
    }
    {
        const field = value["estimatedPose"];
        out["estimatedPose"] = Ros1Geometry_msgsPoseWithCovarianceStampedCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_visual_localization_msgs/VisualLocRecognizeFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_07206e6717d8ba2621e7a00f69d65a2e56102b64e84e0ef66e44e93a4468e65e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackSize(Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCapture(value),
              n = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackRead(r);
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

function Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackWrite(value, w)
{
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/ContactState codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsContactStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_632dc784a31db78e0b56fe3c2f324e19dcdcac6d6bdc72e0f9fab21e2a8ea3a8",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"TYPE_DS" : 0, "TYPE_LSS" : 1, "TYPE_RSS" : 2}),
    defaultValue() {
        return {"type" : 0};
    },
    validateValue(value) {
        Ros1Pal_walking_msgsContactStateSize(Ros1Pal_walking_msgsContactStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsContactStateCapture(value), n = Ros1Pal_walking_msgsContactStateSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsContactStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsContactStateRead(r);
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

function Ros1Pal_walking_msgsContactStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["type"], 1, false);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsContactStateWrite(value, w)
{
    w.v.setUint8(w.at, value["type"], true);
    w.at += 1;
}

function Ros1Pal_walking_msgsContactStateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["type"] = decoded;
    }
    return value;
}

function Ros1Pal_walking_msgsContactStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["type"];
        out["type"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/MoveHipFeetRequest codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsMoveHipFeetRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5fb083fec01e8eab76d0023802e8ec7590fc993ba7a68d1a2033c43065131c5c",
    maxWireBytes : 1248,
    minWireBytes : 64,
    cartesianMaxWireBytes : 1248n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "hip_poses" : Ros1Geometry_msgsPoseArrayCodec.defaultValue(),
            "left_foot_poses" : Ros1Geometry_msgsPoseArrayCodec.defaultValue(),
            "right_foot_poses" : Ros1Geometry_msgsPoseArrayCodec.defaultValue(),
            "times_after_previous" : []
        };
    },
    validateValue(value) {
        Ros1Pal_walking_msgsMoveHipFeetRequestSize(Ros1Pal_walking_msgsMoveHipFeetRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsMoveHipFeetRequestCapture(value), n = Ros1Pal_walking_msgsMoveHipFeetRequestSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsMoveHipFeetRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1248, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsMoveHipFeetRequestRead(r);
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

function Ros1Pal_walking_msgsMoveHipFeetRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseArraySize(value["hip_poses"]));
    n = addSize(n, Ros1Geometry_msgsPoseArraySize(value["left_foot_poses"]));
    n = addSize(n, Ros1Geometry_msgsPoseArraySize(value["right_foot_poses"]));
    if(!Array.isArray(value["times_after_previous"]) || value["times_after_previous"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["times_after_previous"])
    {
        n = addSize(n, Ros1DurationSize(element));
    }
    if(n > 1248)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsMoveHipFeetRequestWrite(value, w)
{
    Ros1Geometry_msgsPoseArrayWrite(value["hip_poses"], w);
    Ros1Geometry_msgsPoseArrayWrite(value["left_foot_poses"], w);
    Ros1Geometry_msgsPoseArrayWrite(value["right_foot_poses"], w);
    w.v.setUint32(w.at, value["times_after_previous"].length, true);
    w.at += 4;
    for(const element of value["times_after_previous"])
    {
        Ros1DurationWrite(element, w);
    }
}

function Ros1Pal_walking_msgsMoveHipFeetRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseArrayRead(r);
        value["hip_poses"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseArrayRead(r);
        value["left_foot_poses"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseArrayRead(r);
        value["right_foot_poses"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["times_after_previous"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1DurationRead(r);
                value["times_after_previous"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_walking_msgsMoveHipFeetRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["hip_poses"];
        out["hip_poses"] = Ros1Geometry_msgsPoseArrayCapture(field);
    }
    {
        const field = value["left_foot_poses"];
        out["left_foot_poses"] = Ros1Geometry_msgsPoseArrayCapture(field);
    }
    {
        const field = value["right_foot_poses"];
        out["right_foot_poses"] = Ros1Geometry_msgsPoseArrayCapture(field);
    }
    {
        const field = value["times_after_previous"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1DurationCapture(element);
        }
        out["times_after_previous"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/MoveHipFeetResponse codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsMoveHipFeetResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d5adee26d6498a466a886f9869495d90adae91081287903faa9b90ac6ab2306e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_walking_msgsMoveHipFeetResponseSize(Ros1Pal_walking_msgsMoveHipFeetResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsMoveHipFeetResponseCapture(value), n = Ros1Pal_walking_msgsMoveHipFeetResponseSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsMoveHipFeetResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsMoveHipFeetResponseRead(r);
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

function Ros1Pal_walking_msgsMoveHipFeetResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsMoveHipFeetResponseWrite(value, w)
{
}

function Ros1Pal_walking_msgsMoveHipFeetResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_walking_msgsMoveHipFeetResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/SMStatus codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsSMStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e",
    maxWireBytes : 170,
    minWireBytes : 170,
    cartesianMaxWireBytes : 170n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"right" : 1, "left" : 0}),
    defaultValue() {
        return {
            "left_foot_pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "right_foot_pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "stance_foot_side" : 0,
            "future_swing_landing_pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "future_swing_side" : 0
        };
    },
    validateValue(value) {
        Ros1Pal_walking_msgsSMStatusSize(Ros1Pal_walking_msgsSMStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsSMStatusCapture(value), n = Ros1Pal_walking_msgsSMStatusSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsSMStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 170, 90);
        if(owned.length < 170)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsSMStatusRead(r);
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

function Ros1Pal_walking_msgsSMStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["left_foot_pose"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["right_foot_pose"]));
    integer(value["stance_foot_side"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["future_swing_landing_pose"]));
    integer(value["future_swing_side"], 1, false);
    n = addSize(n, 1);
    if(n > 170)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsSMStatusWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["left_foot_pose"], w);
    Ros1Geometry_msgsPoseWrite(value["right_foot_pose"], w);
    w.v.setUint8(w.at, value["stance_foot_side"], true);
    w.at += 1;
    Ros1Geometry_msgsPoseWrite(value["future_swing_landing_pose"], w);
    w.v.setUint8(w.at, value["future_swing_side"], true);
    w.at += 1;
}

function Ros1Pal_walking_msgsSMStatusRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["left_foot_pose"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["right_foot_pose"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["stance_foot_side"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["future_swing_landing_pose"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["future_swing_side"] = decoded;
    }
    return value;
}

function Ros1Pal_walking_msgsSMStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["left_foot_pose"];
        out["left_foot_pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["right_foot_pose"];
        out["right_foot_pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["stance_foot_side"];
        out["stance_foot_side"] = field;
    }
    {
        const field = value["future_swing_landing_pose"];
        out["future_swing_landing_pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["future_swing_side"];
        out["future_swing_side"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/SitRequest codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsSitRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8dc49a028691c5be0752fad0ad7cf1d2d4cc3e093ff8fe53b0f0f5dcf66241da",
    maxWireBytes : 9,
    minWireBytes : 9,
    cartesianMaxWireBytes : 9n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"down" : false, "weight_threshold" : 0};
    },
    validateValue(value) {
        Ros1Pal_walking_msgsSitRequestSize(Ros1Pal_walking_msgsSitRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsSitRequestCapture(value), n = Ros1Pal_walking_msgsSitRequestSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsSitRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsSitRequestRead(r);
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

function Ros1Pal_walking_msgsSitRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["down"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["weight_threshold"] !== "number" || !Number.isFinite(value["weight_threshold"]))
        bad();
    n = addSize(n, 8);
    if(n > 9)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsSitRequestWrite(value, w)
{
    w.v.setUint8(w.at, value["down"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["weight_threshold"], true);
    w.at += 8;
}

function Ros1Pal_walking_msgsSitRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["down"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["weight_threshold"] = decoded;
    }
    return value;
}

function Ros1Pal_walking_msgsSitRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["down"];
        out["down"] = field;
    }
    {
        const field = value["weight_threshold"];
        out["weight_threshold"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/SitResponse codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsSitResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6af9975562de7fe4864f8409ec5c1210f5d144c872e0ce9b553a391a1790df35",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_walking_msgsSitResponseSize(Ros1Pal_walking_msgsSitResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsSitResponseCapture(value), n = Ros1Pal_walking_msgsSitResponseSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsSitResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsSitResponseRead(r);
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

function Ros1Pal_walking_msgsSitResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsSitResponseWrite(value, w)
{
}

function Ros1Pal_walking_msgsSitResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_walking_msgsSitResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/StepOverRequest codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsStepOverRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"step_length" : 0, "step_time" : 0, "step_height" : 0, "z_lipm" : 0};
    },
    validateValue(value) {
        Ros1Pal_walking_msgsStepOverRequestSize(Ros1Pal_walking_msgsStepOverRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsStepOverRequestCapture(value), n = Ros1Pal_walking_msgsStepOverRequestSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsStepOverRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsStepOverRequestRead(r);
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

function Ros1Pal_walking_msgsStepOverRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["step_length"] !== "number" || !Number.isFinite(value["step_length"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["step_time"] !== "number" || !Number.isFinite(value["step_time"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["step_height"] !== "number" || !Number.isFinite(value["step_height"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z_lipm"] !== "number" || !Number.isFinite(value["z_lipm"]))
        bad();
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsStepOverRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["step_length"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["step_time"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["step_height"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z_lipm"], true);
    w.at += 8;
}

function Ros1Pal_walking_msgsStepOverRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["step_length"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["step_time"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["step_height"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z_lipm"] = decoded;
    }
    return value;
}

function Ros1Pal_walking_msgsStepOverRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["step_length"];
        out["step_length"] = field;
    }
    {
        const field = value["step_time"];
        out["step_time"] = field;
    }
    {
        const field = value["step_height"];
        out["step_height"] = field;
    }
    {
        const field = value["z_lipm"];
        out["z_lipm"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/StepOverResponse codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsStepOverResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e7803ee0f8ffd0f2c1eb698670454e2eaae232d60f629e5f0b3b57f876dce944",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : ""};
    },
    validateValue(value) {
        Ros1Pal_walking_msgsStepOverResponseSize(Ros1Pal_walking_msgsStepOverResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsStepOverResponseCapture(value), n = Ros1Pal_walking_msgsStepOverResponseSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsStepOverResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsStepOverResponseRead(r);
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

function Ros1Pal_walking_msgsStepOverResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["result"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsStepOverResponseWrite(value, w)
{
    w.text(value["result"], 128);
}

function Ros1Pal_walking_msgsStepOverResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["result"] = decoded;
    }
    return value;
}

function Ros1Pal_walking_msgsStepOverResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["result"];
        out["result"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/WalkStepsRequest codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsWalkStepsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eab28f422b38937bef44f8c9ef8c5f08283d3fefd0f16865a91e641b489e446a",
    maxWireBytes : 20,
    minWireBytes : 20,
    cartesianMaxWireBytes : 20n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"nsteps" : 0, "step_length" : 0, "step_time" : 0};
    },
    validateValue(value) {
        Ros1Pal_walking_msgsWalkStepsRequestSize(Ros1Pal_walking_msgsWalkStepsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsWalkStepsRequestCapture(value), n = Ros1Pal_walking_msgsWalkStepsRequestSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsWalkStepsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 20, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsWalkStepsRequestRead(r);
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

function Ros1Pal_walking_msgsWalkStepsRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["nsteps"], 4, true);
    n = addSize(n, 4);
    if(typeof value["step_length"] !== "number" || !Number.isFinite(value["step_length"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["step_time"] !== "number" || !Number.isFinite(value["step_time"]))
        bad();
    n = addSize(n, 8);
    if(n > 20)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsWalkStepsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["nsteps"], true);
    w.at += 4;
    w.v.setFloat64(w.at, value["step_length"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["step_time"], true);
    w.at += 8;
}

function Ros1Pal_walking_msgsWalkStepsRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["nsteps"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["step_length"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["step_time"] = decoded;
    }
    return value;
}

function Ros1Pal_walking_msgsWalkStepsRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["nsteps"];
        out["nsteps"] = field;
    }
    {
        const field = value["step_length"];
        out["step_length"] = field;
    }
    {
        const field = value["step_time"];
        out["step_time"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/WalkStepsResponse codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsWalkStepsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_69cf3d1ffea1bbf362863bbaf88af9177ab0324312b2549fb248d3fa21a9522f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_walking_msgsWalkStepsResponseSize(Ros1Pal_walking_msgsWalkStepsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsWalkStepsResponseCapture(value), n = Ros1Pal_walking_msgsWalkStepsResponseSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsWalkStepsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsWalkStepsResponseRead(r);
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

function Ros1Pal_walking_msgsWalkStepsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsWalkStepsResponseWrite(value, w)
{
}

function Ros1Pal_walking_msgsWalkStepsResponseRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_walking_msgsWalkStepsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/WalkingStatus codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsWalkingStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8831e9c68eeb3e065e2986f7671b2925425e07b18a48228e977f984fb9c09e02",
    maxWireBytes : 336,
    minWireBytes : 208,
    cartesianMaxWireBytes : 336n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "hip_reference_pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "foot_reference_pose" : Array.from({length : 2}, () => (Ros1Geometry_msgsPoseCodec.defaultValue())),
            "zmp_reference" : Ros1Geometry_msgsPointCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Pal_walking_msgsWalkingStatusSize(Ros1Pal_walking_msgsWalkingStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsWalkingStatusCapture(value), n = Ros1Pal_walking_msgsWalkingStatusSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsWalkingStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 336, 90);
        if(owned.length < 208)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsWalkingStatusRead(r);
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

function Ros1Pal_walking_msgsWalkingStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["hip_reference_pose"]));
    if(!Array.isArray(value["foot_reference_pose"]) || value["foot_reference_pose"].length !== 2)
        bad();
    for(const element of value["foot_reference_pose"])
    {
        n = addSize(n, Ros1Geometry_msgsPoseSize(element));
    }
    n = addSize(n, Ros1Geometry_msgsPointSize(value["zmp_reference"]));
    if(n > 336)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsWalkingStatusWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Geometry_msgsPoseWrite(value["hip_reference_pose"], w);
    for(const element of value["foot_reference_pose"])
    {
        Ros1Geometry_msgsPoseWrite(element, w);
    }
    Ros1Geometry_msgsPointWrite(value["zmp_reference"], w);
}

function Ros1Pal_walking_msgsWalkingStatusRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["hip_reference_pose"] = decoded;
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["foot_reference_pose"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Geometry_msgsPoseRead(r);
                value["foot_reference_pose"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["zmp_reference"] = decoded;
    }
    return value;
}

function Ros1Pal_walking_msgsWalkingStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["hip_reference_pose"];
        out["hip_reference_pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["foot_reference_pose"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Geometry_msgsPoseCapture(element);
        }
        out["foot_reference_pose"] = values;
    }
    {
        const field = value["zmp_reference"];
        out["zmp_reference"] = Ros1Geometry_msgsPointCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 std_msgs/Duration codec; maxima are not actual lengths. */
export const Ros1Std_msgsDurationCodec = Object.freeze({
    codecIdentity : "UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : Ros1DurationCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Std_msgsDurationSize(Ros1Std_msgsDurationCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsDurationCapture(value), n = Ros1Std_msgsDurationSize(owned), w = new Writer(n);
        Ros1Std_msgsDurationWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsDurationRead(r);
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

function Ros1Std_msgsDurationSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1DurationSize(value["data"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Std_msgsDurationWrite(value, w)
{
    Ros1DurationWrite(value["data"], w);
}

function Ros1Std_msgsDurationRead(r)
{
    const value = {};
    {
        const decoded = Ros1DurationRead(r);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Std_msgsDurationCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        out["data"] = Ros1DurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_walking_msgs/WalkingStep codec; maxima are not actual lengths. */
export const Ros1Pal_walking_msgsWalkingStepCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd",
    maxWireBytes : 181,
    minWireBytes : 53,
    cartesianMaxWireBytes : 181n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "step_target" : Ros1Humanoid_nav_msgsStepTargetCodec.defaultValue(),
            "step_duration" : Ros1Std_msgsDurationCodec.defaultValue(),
            "step_list_size" : 0
        };
    },
    validateValue(value) {
        Ros1Pal_walking_msgsWalkingStepSize(Ros1Pal_walking_msgsWalkingStepCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_walking_msgsWalkingStepCapture(value), n = Ros1Pal_walking_msgsWalkingStepSize(owned), w = new Writer(n);
        Ros1Pal_walking_msgsWalkingStepWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 181, 90);
        if(owned.length < 53)
            bad();
        const r = new Reader(owned), value = Ros1Pal_walking_msgsWalkingStepRead(r);
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

function Ros1Pal_walking_msgsWalkingStepSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Humanoid_nav_msgsStepTargetSize(value["step_target"]));
    n = addSize(n, Ros1Std_msgsDurationSize(value["step_duration"]));
    integer(value["step_list_size"], 4, true);
    n = addSize(n, 4);
    if(n > 181)
        bad(90);
    return n;
}

function Ros1Pal_walking_msgsWalkingStepWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Humanoid_nav_msgsStepTargetWrite(value["step_target"], w);
    Ros1Std_msgsDurationWrite(value["step_duration"], w);
    w.v.setInt32(w.at, value["step_list_size"], true);
    w.at += 4;
}

function Ros1Pal_walking_msgsWalkingStepRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Humanoid_nav_msgsStepTargetRead(r);
        value["step_target"] = decoded;
    }
    {
        const decoded = Ros1Std_msgsDurationRead(r);
        value["step_duration"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["step_list_size"] = decoded;
    }
    return value;
}

function Ros1Pal_walking_msgsWalkingStepCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["step_target"];
        out["step_target"] = Ros1Humanoid_nav_msgsStepTargetCapture(field);
    }
    {
        const field = value["step_duration"];
        out["step_duration"] = Ros1Std_msgsDurationCapture(field);
    }
    {
        const field = value["step_list_size"];
        out["step_list_size"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_web_msgs/WebGoTo codec; maxima are not actual lengths. */
export const Ros1Pal_web_msgsWebGoToCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19f21af491edb41e15ccb284a67005ef6ed2209b873dd94e5241206f4d2471a5",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"IMAGE" : 0, "VIDEO" : 1, "URI" : 2, "URL" : 3, "TOUCH_PAGE" : 4}),
    defaultValue() {
        return {"type" : 0, "value" : ""};
    },
    validateValue(value) {
        Ros1Pal_web_msgsWebGoToSize(Ros1Pal_web_msgsWebGoToCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_web_msgsWebGoToCapture(value), n = Ros1Pal_web_msgsWebGoToSize(owned), w = new Writer(n);
        Ros1Pal_web_msgsWebGoToWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Pal_web_msgsWebGoToRead(r);
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

function Ros1Pal_web_msgsWebGoToSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["type"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Pal_web_msgsWebGoToWrite(value, w)
{
    w.v.setUint8(w.at, value["type"], true);
    w.at += 1;
    w.text(value["value"], 128);
}

function Ros1Pal_web_msgsWebGoToRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Pal_web_msgsWebGoToCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_web_msgs/GetUserInputGoal codec; maxima are not actual lengths. */
export const Ros1Pal_web_msgsGetUserInputGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d170bc8de6aad94561016ef3c075df8c1f528911d42ac2eb9d22885db2533b3e",
    maxWireBytes : 7167,
    minWireBytes : 95,
    cartesianMaxWireBytes : 7167n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "web_go_to" : Ros1Pal_web_msgsWebGoToCodec.defaultValue(),
            "question_tts" : Ros1Pal_interaction_msgsTtsGoalCodec.defaultValue(),
            "valid_asr_inputs" : [],
            "asr_language" : "",
            "asr_timeout" : Ros1DurationCodec.defaultValue(),
            "retry_asr" : false,
            "retry_tts" : Ros1Pal_interaction_msgsTtsGoalCodec.defaultValue(),
            "wait_for_interaction" : false
        };
    },
    validateValue(value) {
        Ros1Pal_web_msgsGetUserInputGoalSize(Ros1Pal_web_msgsGetUserInputGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_web_msgsGetUserInputGoalCapture(value), n = Ros1Pal_web_msgsGetUserInputGoalSize(owned), w = new Writer(n);
        Ros1Pal_web_msgsGetUserInputGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 7167, 90);
        if(owned.length < 95)
            bad();
        const r = new Reader(owned), value = Ros1Pal_web_msgsGetUserInputGoalRead(r);
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

function Ros1Pal_web_msgsGetUserInputGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_web_msgsWebGoToSize(value["web_go_to"]));
    n = addSize(n, Ros1Pal_interaction_msgsTtsGoalSize(value["question_tts"]));
    if(!Array.isArray(value["valid_asr_inputs"]) || value["valid_asr_inputs"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["valid_asr_inputs"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    n = addSize(n, 4 + textBytes(value["asr_language"], 128).length);
    n = addSize(n, Ros1DurationSize(value["asr_timeout"]));
    if(typeof value["retry_asr"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, Ros1Pal_interaction_msgsTtsGoalSize(value["retry_tts"]));
    if(typeof value["wait_for_interaction"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 7167)
        bad(90);
    return n;
}

function Ros1Pal_web_msgsGetUserInputGoalWrite(value, w)
{
    Ros1Pal_web_msgsWebGoToWrite(value["web_go_to"], w);
    Ros1Pal_interaction_msgsTtsGoalWrite(value["question_tts"], w);
    w.v.setUint32(w.at, value["valid_asr_inputs"].length, true);
    w.at += 4;
    for(const element of value["valid_asr_inputs"])
    {
        w.text(element, 128);
    }
    w.text(value["asr_language"], 128);
    Ros1DurationWrite(value["asr_timeout"], w);
    w.v.setUint8(w.at, value["retry_asr"] ? 1 : 0, true);
    w.at += 1;
    Ros1Pal_interaction_msgsTtsGoalWrite(value["retry_tts"], w);
    w.v.setUint8(w.at, value["wait_for_interaction"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Pal_web_msgsGetUserInputGoalRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_web_msgsWebGoToRead(r);
        value["web_go_to"] = decoded;
    }
    {
        const decoded = Ros1Pal_interaction_msgsTtsGoalRead(r);
        value["question_tts"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["valid_asr_inputs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["valid_asr_inputs"].push(decoded);
            }
        }
    }
    {
        const decoded = r.text(128);
        value["asr_language"] = decoded;
    }
    {
        const decoded = Ros1DurationRead(r);
        value["asr_timeout"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["retry_asr"] = decoded !== 0;
    }
    {
        const decoded = Ros1Pal_interaction_msgsTtsGoalRead(r);
        value["retry_tts"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait_for_interaction"] = decoded !== 0;
    }
    return value;
}

function Ros1Pal_web_msgsGetUserInputGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["web_go_to"];
        out["web_go_to"] = Ros1Pal_web_msgsWebGoToCapture(field);
    }
    {
        const field = value["question_tts"];
        out["question_tts"] = Ros1Pal_interaction_msgsTtsGoalCapture(field);
    }
    {
        const field = value["valid_asr_inputs"];
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
        out["valid_asr_inputs"] = values;
    }
    {
        const field = value["asr_language"];
        out["asr_language"] = field;
    }
    {
        const field = value["asr_timeout"];
        out["asr_timeout"] = Ros1DurationCapture(field);
    }
    {
        const field = value["retry_asr"];
        out["retry_asr"] = field;
    }
    {
        const field = value["retry_tts"];
        out["retry_tts"] = Ros1Pal_interaction_msgsTtsGoalCapture(field);
    }
    {
        const field = value["wait_for_interaction"];
        out["wait_for_interaction"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_web_msgs/GetUserInputResult codec; maxima are not actual lengths. */
export const Ros1Pal_web_msgsGetUserInputResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_95e443de95ce17d423ad14004609c743ed1ff0bea7f69921384dd499ba9ba778",
    maxWireBytes : 1192,
    minWireBytes : 8,
    cartesianMaxWireBytes : 1192n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"input" : Ros1Pal_interaction_msgsInputCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_web_msgsGetUserInputResultSize(Ros1Pal_web_msgsGetUserInputResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_web_msgsGetUserInputResultCapture(value), n = Ros1Pal_web_msgsGetUserInputResultSize(owned), w = new Writer(n);
        Ros1Pal_web_msgsGetUserInputResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1192, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Pal_web_msgsGetUserInputResultRead(r);
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

function Ros1Pal_web_msgsGetUserInputResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_interaction_msgsInputSize(value["input"]));
    if(n > 1192)
        bad(90);
    return n;
}

function Ros1Pal_web_msgsGetUserInputResultWrite(value, w)
{
    Ros1Pal_interaction_msgsInputWrite(value["input"], w);
}

function Ros1Pal_web_msgsGetUserInputResultRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_interaction_msgsInputRead(r);
        value["input"] = decoded;
    }
    return value;
}

function Ros1Pal_web_msgsGetUserInputResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["input"];
        out["input"] = Ros1Pal_interaction_msgsInputCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_web_msgs/GetUserInputFeedback codec; maxima are not actual lengths. */
export const Ros1Pal_web_msgsGetUserInputFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc9395e24ce3a8ae3aa198453ac066da1bcb5f90a5883cc4c7dc6a6a52675395",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_web_msgsGetUserInputFeedbackSize(Ros1Pal_web_msgsGetUserInputFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_web_msgsGetUserInputFeedbackCapture(value), n = Ros1Pal_web_msgsGetUserInputFeedbackSize(owned), w = new Writer(n);
        Ros1Pal_web_msgsGetUserInputFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_web_msgsGetUserInputFeedbackRead(r);
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

function Ros1Pal_web_msgsGetUserInputFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_web_msgsGetUserInputFeedbackWrite(value, w)
{
}

function Ros1Pal_web_msgsGetUserInputFeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_web_msgsGetUserInputFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_wifi_localization_msgs/GetWifiMapRequest codec; maxima are not actual lengths. */
export const Ros1Pal_wifi_localization_msgsGetWifiMapRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_91f308677881cbf1a91911f58602b59adabc3935db966392d28ad81acd70d832",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Pal_wifi_localization_msgsGetWifiMapRequestSize(Ros1Pal_wifi_localization_msgsGetWifiMapRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_wifi_localization_msgsGetWifiMapRequestCapture(value), n = Ros1Pal_wifi_localization_msgsGetWifiMapRequestSize(owned),
              w = new Writer(n);
        Ros1Pal_wifi_localization_msgsGetWifiMapRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Pal_wifi_localization_msgsGetWifiMapRequestRead(r);
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

function Ros1Pal_wifi_localization_msgsGetWifiMapRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Pal_wifi_localization_msgsGetWifiMapRequestWrite(value, w)
{
}

function Ros1Pal_wifi_localization_msgsGetWifiMapRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Pal_wifi_localization_msgsGetWifiMapRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS1 pal_wifi_localization_msgs/WifiSignal codec; maxima are not actual lengths. */
export const Ros1Pal_wifi_localization_msgsWifiSignalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f2397d50da735cc25a1392f79d7dca7e1a4bf2837e5981cb987bdfbb0dcebf71",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : Ros1Std_msgsStringCodec.defaultValue(), "mean" : 0, "std_dev" : 0};
    },
    validateValue(value) {
        Ros1Pal_wifi_localization_msgsWifiSignalSize(Ros1Pal_wifi_localization_msgsWifiSignalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_wifi_localization_msgsWifiSignalCapture(value), n = Ros1Pal_wifi_localization_msgsWifiSignalSize(owned), w = new Writer(n);
        Ros1Pal_wifi_localization_msgsWifiSignalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Pal_wifi_localization_msgsWifiSignalRead(r);
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

function Ros1Pal_wifi_localization_msgsWifiSignalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsStringSize(value["id"]));
    if(typeof value["mean"] !== "number" || !Number.isFinite(value["mean"]) || !Number.isFinite(Math.fround(value["mean"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["std_dev"] !== "number" || !Number.isFinite(value["std_dev"]) || !Number.isFinite(Math.fround(value["std_dev"])))
        bad();
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Pal_wifi_localization_msgsWifiSignalWrite(value, w)
{
    Ros1Std_msgsStringWrite(value["id"], w);
    w.v.setFloat32(w.at, value["mean"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["std_dev"], true);
    w.at += 4;
}

function Ros1Pal_wifi_localization_msgsWifiSignalRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsStringRead(r);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mean"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["std_dev"] = decoded;
    }
    return value;
}

function Ros1Pal_wifi_localization_msgsWifiSignalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = Ros1Std_msgsStringCapture(field);
    }
    {
        const field = value["mean"];
        out["mean"] = field;
    }
    {
        const field = value["std_dev"];
        out["std_dev"] = field;
    }
    return out;
}

/** @brief Complete ROS1 pal_wifi_localization_msgs/WifiSignalList codec; maxima are not actual lengths. */
export const Ros1Pal_wifi_localization_msgsWifiSignalListCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a15f8c545d1fb461b8b4d42c31fe7803392a5277c9ee0377aa9b79888ae64fc",
    maxWireBytes : 580,
    minWireBytes : 20,
    cartesianMaxWireBytes : 580n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"networks" : [], "start_time" : Ros1TimeCodec.defaultValue(), "end_time" : Ros1TimeCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_wifi_localization_msgsWifiSignalListSize(Ros1Pal_wifi_localization_msgsWifiSignalListCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_wifi_localization_msgsWifiSignalListCapture(value), n = Ros1Pal_wifi_localization_msgsWifiSignalListSize(owned),
              w = new Writer(n);
        Ros1Pal_wifi_localization_msgsWifiSignalListWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 580, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Pal_wifi_localization_msgsWifiSignalListRead(r);
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

function Ros1Pal_wifi_localization_msgsWifiSignalListSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["networks"]) || value["networks"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["networks"])
    {
        n = addSize(n, Ros1Pal_wifi_localization_msgsWifiSignalSize(element));
    }
    n = addSize(n, Ros1TimeSize(value["start_time"]));
    n = addSize(n, Ros1TimeSize(value["end_time"]));
    if(n > 580)
        bad(90);
    return n;
}

function Ros1Pal_wifi_localization_msgsWifiSignalListWrite(value, w)
{
    w.v.setUint32(w.at, value["networks"].length, true);
    w.at += 4;
    for(const element of value["networks"])
    {
        Ros1Pal_wifi_localization_msgsWifiSignalWrite(element, w);
    }
    Ros1TimeWrite(value["start_time"], w);
    Ros1TimeWrite(value["end_time"], w);
}

function Ros1Pal_wifi_localization_msgsWifiSignalListRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["networks"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_wifi_localization_msgsWifiSignalRead(r);
                value["networks"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros1TimeRead(r);
        value["start_time"] = decoded;
    }
    {
        const decoded = Ros1TimeRead(r);
        value["end_time"] = decoded;
    }
    return value;
}

function Ros1Pal_wifi_localization_msgsWifiSignalListCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["networks"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_wifi_localization_msgsWifiSignalCapture(element);
        }
        out["networks"] = values;
    }
    {
        const field = value["start_time"];
        out["start_time"] = Ros1TimeCapture(field);
    }
    {
        const field = value["end_time"];
        out["end_time"] = Ros1TimeCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 pal_wifi_localization_msgs/WifiSignalMap codec; maxima are not actual lengths. */
export const Ros1Pal_wifi_localization_msgsWifiSignalMapCodec = Object.freeze({
    codecIdentity : "UWVMROS1_948926ffa19fd58fabf24b61ae0d2334e09b3815358f79b521dd3b84fe231a3e",
    maxWireBytes : 2548,
    minWireBytes : 100,
    cartesianMaxWireBytes : 2548n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "info" : Ros1Nav_msgsMapMetaDataCodec.defaultValue(), "sectors" : 0, "data" : []};
    },
    validateValue(value) {
        Ros1Pal_wifi_localization_msgsWifiSignalMapSize(Ros1Pal_wifi_localization_msgsWifiSignalMapCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_wifi_localization_msgsWifiSignalMapCapture(value), n = Ros1Pal_wifi_localization_msgsWifiSignalMapSize(owned), w = new Writer(n);
        Ros1Pal_wifi_localization_msgsWifiSignalMapWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2548, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros1Pal_wifi_localization_msgsWifiSignalMapRead(r);
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

function Ros1Pal_wifi_localization_msgsWifiSignalMapSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Nav_msgsMapMetaDataSize(value["info"]));
    integer(value["sectors"], 4, false);
    n = addSize(n, 4);
    if(!Array.isArray(value["data"]) || value["data"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        n = addSize(n, Ros1Pal_wifi_localization_msgsWifiSignalListSize(element));
    }
    if(n > 2548)
        bad(90);
    return n;
}

function Ros1Pal_wifi_localization_msgsWifiSignalMapWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Nav_msgsMapMetaDataWrite(value["info"], w);
    w.v.setUint32(w.at, value["sectors"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        Ros1Pal_wifi_localization_msgsWifiSignalListWrite(element, w);
    }
}

function Ros1Pal_wifi_localization_msgsWifiSignalMapRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Nav_msgsMapMetaDataRead(r);
        value["info"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["sectors"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Pal_wifi_localization_msgsWifiSignalListRead(r);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Pal_wifi_localization_msgsWifiSignalMapCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["info"];
        out["info"] = Ros1Nav_msgsMapMetaDataCapture(field);
    }
    {
        const field = value["sectors"];
        out["sectors"] = field;
    }
    {
        const field = value["data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Pal_wifi_localization_msgsWifiSignalListCapture(element);
        }
        out["data"] = values;
    }
    return out;
}

/** @brief Complete ROS1 pal_wifi_localization_msgs/GetWifiMapResponse codec; maxima are not actual lengths. */
export const Ros1Pal_wifi_localization_msgsGetWifiMapResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_576278a043277d7621c6fc90fbbf583a0ad0ef9d7704fb8b5cca8b1b86c7bcb3",
    maxWireBytes : 2548,
    minWireBytes : 100,
    cartesianMaxWireBytes : 2548n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"map" : Ros1Pal_wifi_localization_msgsWifiSignalMapCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Pal_wifi_localization_msgsGetWifiMapResponseSize(Ros1Pal_wifi_localization_msgsGetWifiMapResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Pal_wifi_localization_msgsGetWifiMapResponseCapture(value), n = Ros1Pal_wifi_localization_msgsGetWifiMapResponseSize(owned),
              w = new Writer(n);
        Ros1Pal_wifi_localization_msgsGetWifiMapResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2548, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros1Pal_wifi_localization_msgsGetWifiMapResponseRead(r);
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

function Ros1Pal_wifi_localization_msgsGetWifiMapResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Pal_wifi_localization_msgsWifiSignalMapSize(value["map"]));
    if(n > 2548)
        bad(90);
    return n;
}

function Ros1Pal_wifi_localization_msgsGetWifiMapResponseWrite(value, w)
{
    Ros1Pal_wifi_localization_msgsWifiSignalMapWrite(value["map"], w);
}

function Ros1Pal_wifi_localization_msgsGetWifiMapResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Pal_wifi_localization_msgsWifiSignalMapRead(r);
        value["map"] = decoded;
    }
    return value;
}

function Ros1Pal_wifi_localization_msgsGetWifiMapResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map"];
        out["map"] = Ros1Pal_wifi_localization_msgsWifiSignalMapCapture(field);
    }
    return out;
}
