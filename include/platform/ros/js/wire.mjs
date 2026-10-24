/**
 * @file wire.mjs
 * @brief Encode complete original ROS records in genuine ECMAScript.
 * @details Exact 64-bit fields use BigInt. All nested records, field order,
 * bounds, strict UTF-8, normalized time and JointState rules remain explicit.
 * These pure codecs create no native registration, capability or transport.
 */
export class CodecError extends Error
{
    /** @brief Report a local canonical failure. @param code Exact local errno. */
    constructor(code = 22)
    {
        super("invalid complete canonical value");
        this.code = code;
    }
}

/** @brief Reject an inadmissible complete value. @param code Local errno. @return Never. */
function bad(code = 22)
{
    throw new CodecError(code);
}

/**
 * @brief Encode Unicode scalar values as strict UTF-8 without browser APIs.
 * @param text Actual JavaScript string; malformed surrogates and NUL are refused.
 * @param bound Maximum encoded byte extent.
 * @return Independent Uint8Array of exact UTF-8 bytes.
 */
export function utf8Encode(text, bound = 32768)
{
    if(typeof text !== "string" || text.length > bound)
        bad();
    const bytes = [];
    for(let at = 0; at < text.length; ++at)
    {
        let code = text.charCodeAt(at);
        if(code === 0)
            bad();
        if(code >= 0xd800 && code <= 0xdbff)
        {
            const low = text.charCodeAt(++at);
            if(!(low >= 0xdc00 && low <= 0xdfff))
                bad();
            code = 0x10000 + ((code - 0xd800) << 10) + low - 0xdc00;
        }
        else if(code >= 0xdc00 && code <= 0xdfff)
            bad();
        if(code < 0x80)
            bytes.push(code);
        else if(code < 0x800)
            bytes.push(0xc0 | (code >> 6), 0x80 | (code & 63));
        else if(code < 0x10000)
            bytes.push(0xe0 | (code >> 12), 0x80 | ((code >> 6) & 63), 0x80 | (code & 63));
        else
            bytes.push(0xf0 | (code >> 18), 0x80 | ((code >> 12) & 63), 0x80 | ((code >> 6) & 63), 0x80 | (code & 63));
        if(bytes.length > bound)
            bad();
    }
    return new Uint8Array(bytes);
}

/**
 * @brief Decode only well-formed scalar UTF-8 while preserving a leading BOM.
 * @param bytes Complete bounded Uint8Array of UTF-8 bytes.
 * @return JavaScript string; overlong, surrogate, NUL and truncated encodings fail.
 */
export function utf8Decode(bytes)
{
    let text = "";
    for(let at = 0; at < bytes.length;)
    {
        const first = bytes[at++];
        let code, count, minimum;
        if(first < 0x80)
        {
            code = first;
            count = 0;
            minimum = 0;
        }
        else if(first >= 0xc2 && first <= 0xdf)
        {
            code = first & 31;
            count = 1;
            minimum = 0x80;
        }
        else if(first >= 0xe0 && first <= 0xef)
        {
            code = first & 15;
            count = 2;
            minimum = 0x800;
        }
        else if(first >= 0xf0 && first <= 0xf4)
        {
            code = first & 7;
            count = 3;
            minimum = 0x10000;
        }
        else
            bad();
        if(count > bytes.length - at)
            bad();
        for(let index = 0; index < count; ++index)
        {
            const next = bytes[at++];
            if((next & 0xc0) !== 0x80)
                bad();
            code = code * 64 + (next & 63);
        }
        if(code < minimum || code === 0 || code > 0x10ffff || (code >= 0xd800 && code <= 0xdfff))
            bad();
        text += String.fromCodePoint(code);
    }
    return text;
}

/** @brief Own one complete ordinary generated record with independent defaults. */
export class Record
{
    /**
     * @brief Initialize all original fields and reject unknown names.
     * @param fields Object keyed by exact original native field names.
     * @return New complete local value; full domain validation occurs on encoding.
     */
    constructor(fields = {})
    {
        if(fields === null || typeof fields !== "object" || Array.isArray(fields))
            bad();
        const schema = this.constructor.schema;
        const registry = this.constructor.registry;
        const names = new Set(schema.fields.map(field => field.name));
        for(const name of Object.keys(fields))
            if(!names.has(name))
                bad();
        for(const field of schema.fields)
        {
            if(Object.hasOwn(fields, field.name))
                this[field.name] = fields[field.name];
            else if(field.array === "sequence")
                this[field.name] = [];
            else if(field.array === "array")
                this[field.name] = Array.from({length : field.count}, () => registry.default(field));
            else
                this[field.name] = registry.default(field);
        }
    }

    /** @brief Encode this entire record. @return Owned canonical Uint8Array. */
    encode()
    {
        return this.constructor.registry.encode(this);
    }

    /** @brief Decode the complete class value. @param bytes Whole bytes. @return Owned original value. */
    static decode(bytes)
    {
        return this.registry.decode(this, bytes);
    }
}

/** @brief Resolve original nested type names in one complete local catalog. */
export class Registry
{
    /** @brief Create an empty local registry without ROS authority. */
    constructor()
    {
        this.types = new Map();
    }

    /** @brief Add one generated original class. @param cls Complete class. @return Same class. */
    add(cls)
    {
        if(this.types.has(cls.schema.type))
            bad();
        cls.registry = this;
        this.types.set(cls.schema.type, cls);
        return cls;
    }

    /** @brief Preserve an original scalar default. @param field Complete IR. @return Independent value. */
    default(field)
    {
        if(field.default !== null)
            return field.default;
        const kind = field.type;
        if(kind === "string")
            return field.string_encoding === "raw_bytes" ? new Uint8Array() : "";
        if(kind === "bool")
            return false;
        if(kind === "uint64" || kind === "int64")
            return 0n;
        if(/^(u?int|float)/.test(kind))
            return 0;
        const cls = this.types.get(kind);
        if(!cls)
            bad();
        return new cls();
    }

    /**
     * @brief Enforce original cross-field semantics. @param value Full original record. @return Undefined or
     * throw.
     */
    semantics(value)
    {
        const rule = value.constructor.schema.semantics;
        if(rule === "normalized-time" || rule === "normalized-duration")
        {
            const fraction = Object.hasOwn(value, "nanosec") ? value.nanosec : Object.hasOwn(value, "nsec") ? value.nsec : value.nsecs;
            if(!Number.isInteger(fraction) || fraction < 0 || fraction > 999999999)
                bad();
        }
        if(rule === "joint-state-optional-equal-length-arrays")
        {
            // Validate shape before cross-field access so every malformed
            // optional array reports CodecError without leaking a TypeError.
            const arrays = [ value.name, value.position, value.velocity, value.effort ];
            if(!arrays.every(array => Array.isArray(array)))
                bad();
            const lengths = new Set(arrays.filter(array => array.length).map(array => array.length));
            if(lengths.size > 1)
                bad();
        }
    }

    /**
     * @brief Encode one original scalar or nested record with exact signedness.
     * @param field Complete original element schema and bound.
     * @param value Exact ECMAScript scalar, BigInt or generated nested value.
     * @return Complete independent canonical element bytes.
     */
    scalar(field, value)
    {
        const kind = field.type;
        if(kind === "string")
        {
            const raw = field.string_encoding === "raw_bytes" ? value : utf8Encode(value, field.string_bound);
            if(!(raw instanceof Uint8Array) || raw.length > field.string_bound)
                bad();
            const result = new Uint8Array(4 + raw.length);
            new DataView(result.buffer).setUint32(0, raw.length, true);
            result.set(raw, 4);
            return result;
        }
        if(kind === "bool")
        {
            if(typeof value !== "boolean")
                bad();
            return Uint8Array.of(Number(value));
        }
        if(/^u?int/.test(kind))
        {
            const signed = kind.startsWith("int");
            const bits = Number(kind.slice(signed ? 3 : 4));
            const bytes = new Uint8Array(bits / 8), view = new DataView(bytes.buffer);
            if(bits === 64)
            {
                const low = signed ? -(1n << 63n) : 0n, high = signed ? (1n << 63n) - 1n : (1n << 64n) - 1n;
                if(typeof value !== "bigint" || value < low || value > high)
                    bad();
                view[signed ? "setBigInt64" : "setBigUint64"](0, value, true);
            }
            else
            {
                const low = signed ? -(2 ** (bits - 1)) : 0, high = signed ? 2 ** (bits - 1) - 1 : 2 ** bits - 1;
                if(!Number.isInteger(value) || value < low || value > high)
                    bad();
                view[(signed ? "setInt" : "setUint") + bits](0, value, true);
            }
            return bytes;
        }
        if(kind.startsWith("float"))
        {
            if(typeof value !== "number" || !Number.isFinite(value))
                bad();
            const bits = Number(kind.slice(5)), bytes = new Uint8Array(bits / 8), view = new DataView(bytes.buffer);
            view["setFloat" + bits](0, value, true);
            if(!Number.isFinite(view["getFloat" + bits](0, true)))
                bad();
            return bytes;
        }
        // Null and non-record values must fail through the documented codec
        // error before consulting the concrete generated constructor.
        if(!(value instanceof Record) || value.constructor !== this.types.get(kind))
            bad();
        return this.encode(value);
    }

    /**
     * @brief Encode every original field in source order with finite ownership.
     * @param value Complete generated class in this registry.
     * @return Owned complete bytes; malformed values never expose partial output.
     */
    encode(value)
    {
        if(!(value instanceof Record) || value.constructor.registry !== this)
            bad();
        this.semantics(value);
        const parts = [], schema = value.constructor.schema;
        let size = 0;
        for(const field of schema.fields)
        {
            const element = value[field.name];
            if(field.array)
            {
                if(!Array.isArray(element) || element.length > field.count || (field.array === "array" && element.length !== field.count))
                    bad();
                if(field.array === "sequence")
                {
                    const prefix = new Uint8Array(4);
                    new DataView(prefix.buffer).setUint32(0, element.length, true);
                    parts.push(prefix);
                    size += 4;
                }
                for(const item of element)
                {
                    const chunk = this.scalar(field, item);
                    parts.push(chunk);
                    size += chunk.length;
                    if(size > schema.maximum || size > 32768)
                        bad(90);
                }
            }
            else
            {
                const chunk = this.scalar(field, element);
                parts.push(chunk);
                size += chunk.length;
            }
            if(size > schema.maximum || size > 32768)
                bad(90);
        }
        if(size < schema.minimum)
            bad();
        const output = new Uint8Array(size);
        let at = 0;
        for(const chunk of parts)
        {
            output.set(chunk, at);
            at += chunk.length;
        }
        return output;
    }

    /**
     * @brief Decode one whole record and reject truncation or trailing bytes.
     * @param cls Complete expected generated class.
     * @param bytes Complete finite canonical Uint8Array.
     * @return Independent full record after all shape, scalar and semantic checks.
     */
    decode(cls, bytes)
    {
        if(!(bytes instanceof Uint8Array) || bytes.length < cls.schema.minimum || bytes.length > cls.schema.maximum || bytes.length > 32768)
            bad();
        const view = new DataView(bytes.buffer, bytes.byteOffset, bytes.length);
        let at = 0;
        const take = size => {
            if(size < 0 || size > bytes.length - at)
                bad();
            const start = at;
            at += size;
            return start;
        };
        const scalar = field => {
            const kind = field.type;
            if(kind === "string")
            {
                const size = view.getUint32(take(4), true);
                if(size > field.string_bound)
                    bad();
                const start = take(size), raw = bytes.slice(start, start + size);
                return field.string_encoding === "raw_bytes" ? raw : utf8Decode(raw);
            }
            if(kind === "bool")
            {
                const value = bytes[take(1)];
                if(value > 1)
                    bad();
                return Boolean(value);
            }
            if(/^u?int/.test(kind))
            {
                const signed = kind.startsWith("int"), bits = Number(kind.slice(signed ? 3 : 4));
                return view[(bits === 64 ? (signed ? "getBigInt" : "getBigUint") : (signed ? "getInt" : "getUint")) + bits](take(bits / 8), true);
            }
            if(kind.startsWith("float"))
            {
                const bits = Number(kind.slice(5)), value = view["getFloat" + bits](take(bits / 8), true);
                if(!Number.isFinite(value))
                    bad();
                return value;
            }
            return record(this.types.get(kind));
        };
        const record = selected => {
            const fields = {};
            for(const field of selected.schema.fields)
            {
                if(field.array)
                {
                    const count = field.array === "sequence" ? view.getUint32(take(4), true) : field.count;
                    if(count > field.count)
                        bad();
                    fields[field.name] = Array.from({length : count}, () => scalar(field));
                }
                else
                    fields[field.name] = scalar(field);
            }
            const value = new selected(fields);
            this.semantics(value);
            return value;
        };
        const result = record(cls);
        if(at !== bytes.length)
            bad();
        return result;
    }
}
