/**
 * @file bounded_records.ts
 * @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
 * @details The selected domain contains 29 complete record/components and 67 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/** Complete industrial canonical records. No I/O or authority. */
import {Codec, Reader, validUnicode, validUtf8} from "ros/as/codecs";

export class VendorEncoded
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param status Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(public status: u32 = 0, public bytes: Uint8Array = new Uint8Array(0))
    {
    }
}

export class VendorDecoded<T>
{
    value: T|null = null;

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param status Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

/** One exact-size private linear buffer; finish refuses any unexpected extent. */
class VendorWriter
{
    private b: Uint8Array;
    private at: i32 = 0;
    private good: bool = true;

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param n Complete original component or local protocol value, with its documented owner and bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(n: i32)
    {
        if(n < 0 || n > 32768)
        {
            this.good = false;
            n = 0;
        }
        this.b = new Uint8Array(n);
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param v Complete original component or local protocol value, with its documented owner and bounds.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    u8(v: u8): void
    {
        if(!this.good || this.at >= this.b.length)
        {
            this.good = false;
            return;
        }
        this.b[this.at++] = v;
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param v Complete original component or local protocol value, with its documented owner and bounds.
     * @param n Complete original component or local protocol value, with its documented owner and bounds.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param v Complete original component or local protocol value, with its documented owner and bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    u32(v: u32): void
    {
        this.integer(v, 4);
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param v Complete original component or local protocol value, with its documented owner and bounds.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param v Complete original component or local protocol value, with its documented owner and bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    text(v: string): void
    {
        this.blob(Uint8Array.wrap(String.UTF8.encode(v)));
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    finish(): VendorEncoded
    {
        return this.good && this.at == this.b.length ? new VendorEncoded(0, this.b) : new VendorEncoded(22);
    }
}

/** Complete original geometry_msgs/Point; spellings are published in generation proof. */
/**
 * @brief Preserve all original geometry_msgs/Point fields.
 * @details 3 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Geometry_msgsPoint
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /** Exact native field x, native scalar float64. */
    /**
     * @brief Original geometry_msgs/Point.x field.
     * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    x: f64 = 0;
    /** Exact native field y, native scalar float64. */
    /**
     * @brief Original geometry_msgs/Point.y field.
     * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    y: f64 = 0;
    /** Exact native field z, native scalar float64. */
    /**
     * @brief Original geometry_msgs/Point.z field.
     * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    z: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of geometry_msgs/Point.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of geometry_msgs/Point.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of geometry_msgs/Point.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated geometry_msgs/Point component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one geometry_msgs/Point candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Geometry_msgsPoint
    {
        const value = new Ros1Geometry_msgsPoint();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original geometry_msgs/Point fields.
 * @details 3 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Geometry_msgsPointCodec implements VendorCodec<Ros1Geometry_msgsPoint>
{
    static readonly codecIdentity: string = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
    static readonly maxWireBytes: i32 = 24;

    /**
     * @brief Encode the complete ordered value for geometry_msgs/Point.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Geometry_msgsPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for geometry_msgs/Point.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Geometry_msgsPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for geometry_msgs/Point.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsPoint>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsPoint>();
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
        const reader = new Reader(bytes), value = Ros1Geometry_msgsPoint.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of geometry_msgs/Point.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for geometry_msgs/Point.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Geometry_msgsPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsPoint() : changetype<Ros1Geometry_msgsPoint>(out.value);
    }
}

/** Complete original geometry_msgs/Quaternion; spellings are published in generation proof. */
/**
 * @brief Preserve all original geometry_msgs/Quaternion fields.
 * @details 4 ordered fields, canonical extent 32..32 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Geometry_msgsQuaternion
{
    static readonly maxWireBytes: i32 = 32;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 32;
    /** Exact native field x, native scalar float64. */
    /**
     * @brief Original geometry_msgs/Quaternion.x field.
     * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    x: f64 = 0;
    /** Exact native field y, native scalar float64. */
    /**
     * @brief Original geometry_msgs/Quaternion.y field.
     * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    y: f64 = 0;
    /** Exact native field z, native scalar float64. */
    /**
     * @brief Original geometry_msgs/Quaternion.z field.
     * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    z: f64 = 0;
    /** Exact native field w, native scalar float64. */
    /**
     * @brief Original geometry_msgs/Quaternion.w field.
     * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    w: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of geometry_msgs/Quaternion.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.w))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of geometry_msgs/Quaternion.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of geometry_msgs/Quaternion.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated geometry_msgs/Quaternion component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
        w.integer(<u64>reinterpret<u64>(this.w), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one geometry_msgs/Quaternion candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Geometry_msgsQuaternion
    {
        const value = new Ros1Geometry_msgsQuaternion();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.w = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original geometry_msgs/Quaternion fields.
 * @details 4 ordered fields, canonical extent 32..32 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Geometry_msgsQuaternionCodec implements VendorCodec<Ros1Geometry_msgsQuaternion>
{
    static readonly codecIdentity: string = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
    static readonly maxWireBytes: i32 = 32;

    /**
     * @brief Encode the complete ordered value for geometry_msgs/Quaternion.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Geometry_msgsQuaternion): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        /**
         * @brief Original geometry_msgs/Quaternion.w field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for geometry_msgs/Quaternion.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Geometry_msgsQuaternion): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for geometry_msgs/Quaternion.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsQuaternion>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsQuaternion>();
        if(bytes.length > 32)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 32)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Geometry_msgsQuaternion.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of geometry_msgs/Quaternion.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for geometry_msgs/Quaternion.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Geometry_msgsQuaternion
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsQuaternion() : changetype<Ros1Geometry_msgsQuaternion>(out.value);
    }
}

/** Complete original geometry_msgs/Pose; spellings are published in generation proof. */
/**
 * @brief Preserve all original geometry_msgs/Pose fields.
 * @details 2 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Geometry_msgsPose
{
    static readonly maxWireBytes: i32 = 56;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 56;
    /** Exact native field position, native scalar geometry_msgs/Point. */
    /**
     * @brief Original geometry_msgs/Pose.position field.
     * @details geometry_msgs/Point scalar, count/quota 0, text byte bound 0. Preserve original units and
     * frame. Full value checks occur before successful encoding; construction grants no authority.
     */
    position: Ros1Geometry_msgsPoint = new Ros1Geometry_msgsPoint();
    /** Exact native field orientation, native scalar geometry_msgs/Quaternion. */
    /**
     * @brief Original geometry_msgs/Pose.orientation field.
     * @details geometry_msgs/Quaternion scalar, count/quota 0, text byte bound 0. Preserve original units
     * and frame. Full value checks occur before successful encoding; construction grants no authority.
     */
    orientation: Ros1Geometry_msgsQuaternion = new Ros1Geometry_msgsQuaternion();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of geometry_msgs/Pose.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.position.wireSize();
            if(child < 0)
                return child;
            if(child > 56 - n)
                return -90;
            n += child;
            if(n > 56)
                return -90;
        }
        {
            const child = this.orientation.wireSize();
            if(child < 0)
                return child;
            if(child > 56 - n)
                return -90;
            n += child;
            if(n > 56)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of geometry_msgs/Pose.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of geometry_msgs/Pose.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated geometry_msgs/Pose component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        this.position.writeControl(w);
        this.orientation.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one geometry_msgs/Pose candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Geometry_msgsPose
    {
        const value = new Ros1Geometry_msgsPose();
        {
            const decoded = Ros1Geometry_msgsPoint.readControl(r);
            value.position = decoded;
        }
        {
            const decoded = Ros1Geometry_msgsQuaternion.readControl(r);
            value.orientation = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original geometry_msgs/Pose fields.
 * @details 2 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Geometry_msgsPoseCodec implements VendorCodec<Ros1Geometry_msgsPose>
{
    static readonly codecIdentity: string = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
    static readonly maxWireBytes: i32 = 56;

    /**
     * @brief Encode the complete ordered value for geometry_msgs/Pose.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Geometry_msgsPose): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for geometry_msgs/Pose.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Geometry_msgsPose): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for geometry_msgs/Pose.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Geometry_msgsPose>
    {
        const out = new VendorDecoded<Ros1Geometry_msgsPose>();
        if(bytes.length > 56)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 56)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Geometry_msgsPose.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of geometry_msgs/Pose.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for geometry_msgs/Pose.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Geometry_msgsPose
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Geometry_msgsPose() : changetype<Ros1Geometry_msgsPose>(out.value);
    }
}

/** Complete original xarm_msgs/IOState; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/IOState fields.
 * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsIOState
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** Exact native field digital_1, native scalar int32. */
    /**
     * @brief Original xarm_msgs/IOState.digital_1 field.
     * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    digital_1: i32 = 0;
    /** Exact native field digital_2, native scalar int32. */
    /**
     * @brief Original xarm_msgs/IOState.digital_2 field.
     * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    digital_2: i32 = 0;
    /** Exact native field analog_1, native scalar float32. */
    /**
     * @brief Original xarm_msgs/IOState.analog_1 field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    analog_1: f32 = 0;
    /** Exact native field analog_2, native scalar float32. */
    /**
     * @brief Original xarm_msgs/IOState.analog_2 field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    analog_2: f32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/IOState.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/IOState.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/IOState.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/IOState component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.digital_1, 4);
        w.integer(<u64>this.digital_2, 4);
        w.integer(<u64>reinterpret<u32>(this.analog_1), 4);
        w.integer(<u64>reinterpret<u32>(this.analog_2), 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/IOState candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

/**
 * @brief Preserve all original xarm_msgs/IOState fields.
 * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsIOStateCodec implements VendorCodec<Ros1Xarm_msgsIOState>
{
    static readonly codecIdentity: string = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
    static readonly maxWireBytes: i32 = 16;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/IOState.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsIOState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/IOState.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsIOState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/IOState.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/IOState.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/IOState.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsIOState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsIOState() : changetype<Ros1Xarm_msgsIOState>(out.value);
    }
}

/** Complete original xarm_msgs/RobotMsg; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/RobotMsg fields.
 * @details 10 ordered fields, canonical extent 66..94 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsRobotMsg
{
    static readonly maxWireBytes: i32 = 94;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 94;
    /** Exact native field state, native scalar int16. */
    /**
     * @brief Original xarm_msgs/RobotMsg.state field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    state: i16 = 0;
    /** Exact native field mode, native scalar int16. */
    /**
     * @brief Original xarm_msgs/RobotMsg.mode field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    mode: i16 = 0;
    /** Exact native field cmdnum, native scalar int16. */
    /**
     * @brief Original xarm_msgs/RobotMsg.cmdnum field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    cmdnum: i16 = 0;
    /** Exact native field mt_brake, native scalar int16. */
    /**
     * @brief Original xarm_msgs/RobotMsg.mt_brake field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    mt_brake: i16 = 0;
    /** Exact native field mt_able, native scalar int16. */
    /**
     * @brief Original xarm_msgs/RobotMsg.mt_able field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    mt_able: i16 = 0;
    /** Exact native field err, native scalar int16. */
    /**
     * @brief Original xarm_msgs/RobotMsg.err field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    err: i16 = 0;
    /** Exact native field warn, native scalar int16. */
    /**
     * @brief Original xarm_msgs/RobotMsg.warn field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    warn: i16 = 0;
    /** Exact native field angle, native scalar float32. */
    /**
     * @brief Original xarm_msgs/RobotMsg.angle field.
     * @details float32 sequence, count/quota 7, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    angle: Array < f32 >= new Array<f32>();
    /** Exact native field pose, native scalar float32. */
    /**
     * @brief Original xarm_msgs/RobotMsg.pose field.
     * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    pose: Array < f32 >= new Array<f32>();
    /** Exact native field offset, native scalar float32. */
    /**
     * @brief Original xarm_msgs/RobotMsg.offset field.
     * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    offset: Array < f32 >= new Array<f32>();

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor()
    {
        for(let i = 0; i < 6; ++i)
            this.pose.push(0);
        for(let i = 0; i < 6; ++i)
            this.offset.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/RobotMsg.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 94 - n)
                return -90;
            n += 2;
            if(n > 94)
                return -90;
        }
        {
            if(2 > 94 - n)
                return -90;
            n += 2;
            if(n > 94)
                return -90;
        }
        {
            if(2 > 94 - n)
                return -90;
            n += 2;
            if(n > 94)
                return -90;
        }
        {
            if(2 > 94 - n)
                return -90;
            n += 2;
            if(n > 94)
                return -90;
        }
        {
            if(2 > 94 - n)
                return -90;
            n += 2;
            if(n > 94)
                return -90;
        }
        {
            if(2 > 94 - n)
                return -90;
            n += 2;
            if(n > 94)
                return -90;
        }
        {
            if(2 > 94 - n)
                return -90;
            n += 2;
            if(n > 94)
                return -90;
        }
        {
            if(this.angle.length > 7)
                return -22;
            if(4 > 94 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.angle.length; ++i)
            {
                if(!isFinite(this.angle[i]))
                    return -22;
                if(4 > 94 - n)
                    return -90;
                n += 4;
                if(n > 94)
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
                if(4 > 94 - n)
                    return -90;
                n += 4;
                if(n > 94)
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
                if(4 > 94 - n)
                    return -90;
                n += 4;
                if(n > 94)
                    return -90;
            }
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/RobotMsg.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/RobotMsg.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/RobotMsg component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/RobotMsg candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!r.valid || count > 7)
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

/**
 * @brief Preserve all original xarm_msgs/RobotMsg fields.
 * @details 10 ordered fields, canonical extent 66..94 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsRobotMsgCodec implements VendorCodec<Ros1Xarm_msgsRobotMsg>
{
    static readonly codecIdentity: string = "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7";
    static readonly maxWireBytes: i32 = 94;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/RobotMsg.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsRobotMsg): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/RobotMsg.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsRobotMsg): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/RobotMsg.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsRobotMsg>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsRobotMsg>();
        if(bytes.length > 94)
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/RobotMsg.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/RobotMsg.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsRobotMsg
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsRobotMsg() : changetype<Ros1Xarm_msgsRobotMsg>(out.value);
    }
}

/** Complete original xarm_msgs/ClearErrRequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/ClearErrRequest fields.
 * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsClearErrRequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/ClearErrRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/ClearErrRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/ClearErrRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/ClearErrRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/ClearErrRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsClearErrRequest
    {
        const value = new Ros1Xarm_msgsClearErrRequest();
        return value;
    }
}

/**
 * @brief Preserve all original xarm_msgs/ClearErrRequest fields.
 * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsClearErrRequestCodec implements VendorCodec<Ros1Xarm_msgsClearErrRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
    static readonly maxWireBytes: i32 = 0;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/ClearErrRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsClearErrRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/ClearErrRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsClearErrRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/ClearErrRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/ClearErrRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/ClearErrRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsClearErrRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsClearErrRequest() : changetype<Ros1Xarm_msgsClearErrRequest>(out.value);
    }
}

/** Complete original xarm_msgs/ClearErrResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/ClearErrResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsClearErrResponse
{
    static readonly maxWireBytes: i32 = 262;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 262;
    /** Exact native field ret, native scalar int16. */
    /**
     * @brief Original xarm_msgs/ClearErrResponse.ret field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    ret: i16 = 0;
    /** Exact native field message, native scalar string. */
    /**
     * @brief Original xarm_msgs/ClearErrResponse.message field.
     * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    message: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/ClearErrResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 262 - n)
                return -90;
            n += 4 + size;
            if(n > 262)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/ClearErrResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/ClearErrResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/ClearErrResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/ClearErrResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsClearErrResponse
    {
        const value = new Ros1Xarm_msgsClearErrResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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

/**
 * @brief Preserve all original xarm_msgs/ClearErrResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsClearErrResponseCodec implements VendorCodec<Ros1Xarm_msgsClearErrResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
    static readonly maxWireBytes: i32 = 262;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/ClearErrResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsClearErrResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/ClearErrResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsClearErrResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/ClearErrResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsClearErrResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsClearErrResponse>();
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/ClearErrResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/ClearErrResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsClearErrResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsClearErrResponse() : changetype<Ros1Xarm_msgsClearErrResponse>(out.value);
    }
}

/** Complete original xarm_msgs/GetAnalogIORequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/GetAnalogIORequest fields.
 * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsGetAnalogIORequest
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** Exact native field port_num, native scalar int16. */
    /**
     * @brief Original xarm_msgs/GetAnalogIORequest.port_num field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    port_num: i16 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/GetAnalogIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetAnalogIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetAnalogIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/GetAnalogIORequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.port_num, 2);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/GetAnalogIORequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

/**
 * @brief Preserve all original xarm_msgs/GetAnalogIORequest fields.
 * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsGetAnalogIORequestCodec implements VendorCodec<Ros1Xarm_msgsGetAnalogIORequest>
{
    static readonly codecIdentity: string = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
    static readonly maxWireBytes: i32 = 2;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/GetAnalogIORequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsGetAnalogIORequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/GetAnalogIORequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsGetAnalogIORequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/GetAnalogIORequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetAnalogIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/GetAnalogIORequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsGetAnalogIORequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetAnalogIORequest() : changetype<Ros1Xarm_msgsGetAnalogIORequest>(out.value);
    }
}

/** Complete original xarm_msgs/GetAnalogIOResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/GetAnalogIOResponse fields.
 * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsGetAnalogIOResponse
{
    static readonly maxWireBytes: i32 = 266;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 266;
    /** Exact native field analog_value, native scalar float32. */
    /**
     * @brief Original xarm_msgs/GetAnalogIOResponse.analog_value field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    analog_value: f32 = 0;
    /** Exact native field ret, native scalar int16. */
    /**
     * @brief Original xarm_msgs/GetAnalogIOResponse.ret field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    ret: i16 = 0;
    /** Exact native field message, native scalar string. */
    /**
     * @brief Original xarm_msgs/GetAnalogIOResponse.message field.
     * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    message: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/GetAnalogIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.analog_value))
                return -22;
            if(4 > 266 - n)
                return -90;
            n += 4;
            if(n > 266)
                return -90;
        }
        {
            if(2 > 266 - n)
                return -90;
            n += 2;
            if(n > 266)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 266 - n)
                return -90;
            n += 4 + size;
            if(n > 266)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetAnalogIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetAnalogIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/GetAnalogIOResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u32>(this.analog_value), 4);
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/GetAnalogIOResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!r.valid || size > 256)
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

/**
 * @brief Preserve all original xarm_msgs/GetAnalogIOResponse fields.
 * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsGetAnalogIOResponseCodec implements VendorCodec<Ros1Xarm_msgsGetAnalogIOResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
    static readonly maxWireBytes: i32 = 266;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/GetAnalogIOResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsGetAnalogIOResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/GetAnalogIOResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsGetAnalogIOResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/GetAnalogIOResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetAnalogIOResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetAnalogIOResponse>();
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetAnalogIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/GetAnalogIOResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsGetAnalogIOResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetAnalogIOResponse() : changetype<Ros1Xarm_msgsGetAnalogIOResponse>(out.value);
    }
}

/** Complete original xarm_msgs/GetDigitalIORequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/GetDigitalIORequest fields.
 * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsGetDigitalIORequest
{
    static readonly maxWireBytes: i32 = 0;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/GetDigitalIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetDigitalIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetDigitalIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/GetDigitalIORequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/GetDigitalIORequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsGetDigitalIORequest
    {
        const value = new Ros1Xarm_msgsGetDigitalIORequest();
        return value;
    }
}

/**
 * @brief Preserve all original xarm_msgs/GetDigitalIORequest fields.
 * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsGetDigitalIORequestCodec implements VendorCodec<Ros1Xarm_msgsGetDigitalIORequest>
{
    static readonly codecIdentity: string = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
    static readonly maxWireBytes: i32 = 0;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/GetDigitalIORequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsGetDigitalIORequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/GetDigitalIORequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsGetDigitalIORequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/GetDigitalIORequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetDigitalIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/GetDigitalIORequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsGetDigitalIORequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetDigitalIORequest() : changetype<Ros1Xarm_msgsGetDigitalIORequest>(out.value);
    }
}

/** Complete original xarm_msgs/GetDigitalIOResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/GetDigitalIOResponse fields.
 * @details 4 ordered fields, canonical extent 14..270 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsGetDigitalIOResponse
{
    static readonly maxWireBytes: i32 = 270;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 270;
    /** Exact native field digital_1, native scalar int32. */
    /**
     * @brief Original xarm_msgs/GetDigitalIOResponse.digital_1 field.
     * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    digital_1: i32 = 0;
    /** Exact native field digital_2, native scalar int32. */
    /**
     * @brief Original xarm_msgs/GetDigitalIOResponse.digital_2 field.
     * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    digital_2: i32 = 0;
    /** Exact native field ret, native scalar int16. */
    /**
     * @brief Original xarm_msgs/GetDigitalIOResponse.ret field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    ret: i16 = 0;
    /** Exact native field message, native scalar string. */
    /**
     * @brief Original xarm_msgs/GetDigitalIOResponse.message field.
     * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    message: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/GetDigitalIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 270 - n)
                return -90;
            n += 4;
            if(n > 270)
                return -90;
        }
        {
            if(4 > 270 - n)
                return -90;
            n += 4;
            if(n > 270)
                return -90;
        }
        {
            if(2 > 270 - n)
                return -90;
            n += 2;
            if(n > 270)
                return -90;
        }
        {
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 270 - n)
                return -90;
            n += 4 + size;
            if(n > 270)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetDigitalIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetDigitalIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/GetDigitalIOResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.digital_1, 4);
        w.integer(<u64>this.digital_2, 4);
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/GetDigitalIOResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!r.valid || size > 256)
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

/**
 * @brief Preserve all original xarm_msgs/GetDigitalIOResponse fields.
 * @details 4 ordered fields, canonical extent 14..270 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsGetDigitalIOResponseCodec implements VendorCodec<Ros1Xarm_msgsGetDigitalIOResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
    static readonly maxWireBytes: i32 = 270;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/GetDigitalIOResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsGetDigitalIOResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/GetDigitalIOResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsGetDigitalIOResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/GetDigitalIOResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsGetDigitalIOResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsGetDigitalIOResponse>();
        if(bytes.length > 270)
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/GetDigitalIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/GetDigitalIOResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsGetDigitalIOResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsGetDigitalIOResponse() : changetype<Ros1Xarm_msgsGetDigitalIOResponse>(out.value);
    }
}

/** Complete original xarm_msgs/MoveRequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/MoveRequest fields.
 * @details 5 ordered fields, canonical extent 20..148 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsMoveRequest
{
    static readonly maxWireBytes: i32 = 148;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 148;
    /** Exact native field pose, native scalar float32. */
    /**
     * @brief Original xarm_msgs/MoveRequest.pose field.
     * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    pose: Array < f32 >= new Array<f32>();
    /** Exact native field mvvelo, native scalar float32. */
    /**
     * @brief Original xarm_msgs/MoveRequest.mvvelo field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    mvvelo: f32 = 0;
    /** Exact native field mvacc, native scalar float32. */
    /**
     * @brief Original xarm_msgs/MoveRequest.mvacc field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    mvacc: f32 = 0;
    /** Exact native field mvtime, native scalar float32. */
    /**
     * @brief Original xarm_msgs/MoveRequest.mvtime field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    mvtime: f32 = 0;
    /** Exact native field mvradii, native scalar float32. */
    /**
     * @brief Original xarm_msgs/MoveRequest.mvradii field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    mvradii: f32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/MoveRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pose.length > 32)
                return -22;
            if(4 > 148 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.pose.length; ++i)
            {
                if(!isFinite(this.pose[i]))
                    return -22;
                if(4 > 148 - n)
                    return -90;
                n += 4;
                if(n > 148)
                    return -90;
            }
        }
        {
            if(!isFinite(this.mvvelo))
                return -22;
            if(4 > 148 - n)
                return -90;
            n += 4;
            if(n > 148)
                return -90;
        }
        {
            if(!isFinite(this.mvacc))
                return -22;
            if(4 > 148 - n)
                return -90;
            n += 4;
            if(n > 148)
                return -90;
        }
        {
            if(!isFinite(this.mvtime))
                return -22;
            if(4 > 148 - n)
                return -90;
            n += 4;
            if(n > 148)
                return -90;
        }
        {
            if(!isFinite(this.mvradii))
                return -22;
            if(4 > 148 - n)
                return -90;
            n += 4;
            if(n > 148)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/MoveRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/MoveRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/MoveRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/MoveRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsMoveRequest
    {
        const value = new Ros1Xarm_msgsMoveRequest();
        {
            const count = r.u32();
            if(!r.valid || count > 32)
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

/**
 * @brief Preserve all original xarm_msgs/MoveRequest fields.
 * @details 5 ordered fields, canonical extent 20..148 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsMoveRequestCodec implements VendorCodec<Ros1Xarm_msgsMoveRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
    static readonly maxWireBytes: i32 = 148;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/MoveRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsMoveRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/MoveRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsMoveRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/MoveRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsMoveRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsMoveRequest>();
        if(bytes.length > 148)
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/MoveRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/MoveRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsMoveRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsMoveRequest() : changetype<Ros1Xarm_msgsMoveRequest>(out.value);
    }
}

/** Complete original xarm_msgs/MoveResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/MoveResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsMoveResponse
{
    static readonly maxWireBytes: i32 = 262;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 262;
    /** Exact native field ret, native scalar int16. */
    /**
     * @brief Original xarm_msgs/MoveResponse.ret field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    ret: i16 = 0;
    /** Exact native field message, native scalar string. */
    /**
     * @brief Original xarm_msgs/MoveResponse.message field.
     * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    message: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/MoveResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 262 - n)
                return -90;
            n += 4 + size;
            if(n > 262)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/MoveResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/MoveResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/MoveResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/MoveResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsMoveResponse
    {
        const value = new Ros1Xarm_msgsMoveResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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

/**
 * @brief Preserve all original xarm_msgs/MoveResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsMoveResponseCodec implements VendorCodec<Ros1Xarm_msgsMoveResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
    static readonly maxWireBytes: i32 = 262;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/MoveResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsMoveResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/MoveResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsMoveResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/MoveResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsMoveResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsMoveResponse>();
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/MoveResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/MoveResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsMoveResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsMoveResponse() : changetype<Ros1Xarm_msgsMoveResponse>(out.value);
    }
}

/** Complete original xarm_msgs/SetAxisRequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/SetAxisRequest fields.
 * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetAxisRequest
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** Exact native field id, native scalar int16. */
    /**
     * @brief Original xarm_msgs/SetAxisRequest.id field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    id: i16 = 0;
    /** Exact native field data, native scalar int16. */
    /**
     * @brief Original xarm_msgs/SetAxisRequest.data field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    data: i16 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/SetAxisRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetAxisRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetAxisRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/SetAxisRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.id, 2);
        w.integer(<u64>this.data, 2);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/SetAxisRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

/**
 * @brief Preserve all original xarm_msgs/SetAxisRequest fields.
 * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetAxisRequestCodec implements VendorCodec<Ros1Xarm_msgsSetAxisRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
    static readonly maxWireBytes: i32 = 4;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetAxisRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsSetAxisRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetAxisRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsSetAxisRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetAxisRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetAxisRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetAxisRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsSetAxisRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetAxisRequest() : changetype<Ros1Xarm_msgsSetAxisRequest>(out.value);
    }
}

/** Complete original xarm_msgs/SetAxisResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/SetAxisResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetAxisResponse
{
    static readonly maxWireBytes: i32 = 262;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 262;
    /** Exact native field ret, native scalar int16. */
    /**
     * @brief Original xarm_msgs/SetAxisResponse.ret field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    ret: i16 = 0;
    /** Exact native field message, native scalar string. */
    /**
     * @brief Original xarm_msgs/SetAxisResponse.message field.
     * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    message: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/SetAxisResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 262 - n)
                return -90;
            n += 4 + size;
            if(n > 262)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetAxisResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetAxisResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/SetAxisResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/SetAxisResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsSetAxisResponse
    {
        const value = new Ros1Xarm_msgsSetAxisResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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

/**
 * @brief Preserve all original xarm_msgs/SetAxisResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetAxisResponseCodec implements VendorCodec<Ros1Xarm_msgsSetAxisResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
    static readonly maxWireBytes: i32 = 262;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetAxisResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsSetAxisResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetAxisResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsSetAxisResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetAxisResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetAxisResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetAxisResponse>();
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetAxisResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetAxisResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsSetAxisResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetAxisResponse() : changetype<Ros1Xarm_msgsSetAxisResponse>(out.value);
    }
}

/** Complete original xarm_msgs/SetDigitalIORequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/SetDigitalIORequest fields.
 * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetDigitalIORequest
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** Exact native field io_num, native scalar int16. */
    /**
     * @brief Original xarm_msgs/SetDigitalIORequest.io_num field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    io_num: i16 = 0;
    /** Exact native field value, native scalar int16. */
    /**
     * @brief Original xarm_msgs/SetDigitalIORequest.value field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    value: i16 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/SetDigitalIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetDigitalIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetDigitalIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/SetDigitalIORequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.io_num, 2);
        w.integer(<u64>this.value, 2);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/SetDigitalIORequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsSetDigitalIORequest
    {
        /**
         * @brief Original xarm_msgs/SetDigitalIORequest.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        const value = new Ros1Xarm_msgsSetDigitalIORequest();
        {
            const decoded = <i16>r.integer(2);
            value.io_num = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.value = decoded;
        }
        /**
         * @brief Original xarm_msgs/SetDigitalIORequest.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        return value;
    }
}

/**
 * @brief Preserve all original xarm_msgs/SetDigitalIORequest fields.
 * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetDigitalIORequestCodec implements VendorCodec<Ros1Xarm_msgsSetDigitalIORequest>
{
    static readonly codecIdentity: string = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
    static readonly maxWireBytes: i32 = 4;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetDigitalIORequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsSetDigitalIORequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetDigitalIORequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsSetDigitalIORequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetDigitalIORequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetDigitalIORequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetDigitalIORequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsSetDigitalIORequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetDigitalIORequest() : changetype<Ros1Xarm_msgsSetDigitalIORequest>(out.value);
    }
}

/** Complete original xarm_msgs/SetDigitalIOResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/SetDigitalIOResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetDigitalIOResponse
{
    static readonly maxWireBytes: i32 = 262;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 262;
    /** Exact native field ret, native scalar int16. */
    /**
     * @brief Original xarm_msgs/SetDigitalIOResponse.ret field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    ret: i16 = 0;
    /** Exact native field message, native scalar string. */
    /**
     * @brief Original xarm_msgs/SetDigitalIOResponse.message field.
     * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    message: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/SetDigitalIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 262 - n)
                return -90;
            n += 4 + size;
            if(n > 262)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetDigitalIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetDigitalIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/SetDigitalIOResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/SetDigitalIOResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsSetDigitalIOResponse
    {
        const value = new Ros1Xarm_msgsSetDigitalIOResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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

/**
 * @brief Preserve all original xarm_msgs/SetDigitalIOResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetDigitalIOResponseCodec implements VendorCodec<Ros1Xarm_msgsSetDigitalIOResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
    static readonly maxWireBytes: i32 = 262;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetDigitalIOResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsSetDigitalIOResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetDigitalIOResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsSetDigitalIOResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetDigitalIOResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetDigitalIOResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetDigitalIOResponse>();
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetDigitalIOResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetDigitalIOResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsSetDigitalIOResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetDigitalIOResponse() : changetype<Ros1Xarm_msgsSetDigitalIOResponse>(out.value);
    }
}

/** Complete original xarm_msgs/SetInt16Request; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/SetInt16Request fields.
 * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetInt16Request
{
    static readonly maxWireBytes: i32 = 2;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2;
    /** Exact native field data, native scalar int16. */
    /**
     * @brief Original xarm_msgs/SetInt16Request.data field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    data: i16 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/SetInt16Request.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetInt16Request.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetInt16Request.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/SetInt16Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.data, 2);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/SetInt16Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

/**
 * @brief Preserve all original xarm_msgs/SetInt16Request fields.
 * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetInt16RequestCodec implements VendorCodec<Ros1Xarm_msgsSetInt16Request>
{
    static readonly codecIdentity: string = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
    static readonly maxWireBytes: i32 = 2;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetInt16Request.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsSetInt16Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetInt16Request.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsSetInt16Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetInt16Request.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetInt16Request.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetInt16Request.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsSetInt16Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetInt16Request() : changetype<Ros1Xarm_msgsSetInt16Request>(out.value);
    }
}

/** Complete original xarm_msgs/SetInt16Response; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/SetInt16Response fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetInt16Response
{
    static readonly maxWireBytes: i32 = 262;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 262;
    /** Exact native field ret, native scalar int16. */
    /**
     * @brief Original xarm_msgs/SetInt16Response.ret field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    ret: i16 = 0;
    /** Exact native field message, native scalar string. */
    /**
     * @brief Original xarm_msgs/SetInt16Response.message field.
     * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    message: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/SetInt16Response.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 262 - n)
                return -90;
            n += 4 + size;
            if(n > 262)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetInt16Response.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetInt16Response.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/SetInt16Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/SetInt16Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsSetInt16Response
    {
        const value = new Ros1Xarm_msgsSetInt16Response();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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

/**
 * @brief Preserve all original xarm_msgs/SetInt16Response fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsSetInt16ResponseCodec implements VendorCodec<Ros1Xarm_msgsSetInt16Response>
{
    static readonly codecIdentity: string = "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
    static readonly maxWireBytes: i32 = 262;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetInt16Response.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsSetInt16Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/SetInt16Response.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsSetInt16Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetInt16Response.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsSetInt16Response>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsSetInt16Response>();
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/SetInt16Response.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/SetInt16Response.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsSetInt16Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsSetInt16Response() : changetype<Ros1Xarm_msgsSetInt16Response>(out.value);
    }
}

/** Complete original xarm_msgs/TCPOffsetRequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/TCPOffsetRequest fields.
 * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsTCPOffsetRequest
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /** Exact native field x, native scalar float32. */
    /**
     * @brief Original xarm_msgs/TCPOffsetRequest.x field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    x: f32 = 0;
    /** Exact native field y, native scalar float32. */
    /**
     * @brief Original xarm_msgs/TCPOffsetRequest.y field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    y: f32 = 0;
    /** Exact native field z, native scalar float32. */
    /**
     * @brief Original xarm_msgs/TCPOffsetRequest.z field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    z: f32 = 0;
    /** Exact native field roll, native scalar float32. */
    /**
     * @brief Original xarm_msgs/TCPOffsetRequest.roll field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    roll: f32 = 0;
    /** Exact native field pitch, native scalar float32. */
    /**
     * @brief Original xarm_msgs/TCPOffsetRequest.pitch field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    pitch: f32 = 0;
    /** Exact native field yaw, native scalar float32. */
    /**
     * @brief Original xarm_msgs/TCPOffsetRequest.yaw field.
     * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    yaw: f32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/TCPOffsetRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/TCPOffsetRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/TCPOffsetRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/TCPOffsetRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u32>(this.x), 4);
        w.integer(<u64>reinterpret<u32>(this.y), 4);
        w.integer(<u64>reinterpret<u32>(this.z), 4);
        w.integer(<u64>reinterpret<u32>(this.roll), 4);
        w.integer(<u64>reinterpret<u32>(this.pitch), 4);
        w.integer(<u64>reinterpret<u32>(this.yaw), 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/TCPOffsetRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

/**
 * @brief Preserve all original xarm_msgs/TCPOffsetRequest fields.
 * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsTCPOffsetRequestCodec implements VendorCodec<Ros1Xarm_msgsTCPOffsetRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
    static readonly maxWireBytes: i32 = 24;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/TCPOffsetRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsTCPOffsetRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/TCPOffsetRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsTCPOffsetRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/TCPOffsetRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/TCPOffsetRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/TCPOffsetRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsTCPOffsetRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsTCPOffsetRequest() : changetype<Ros1Xarm_msgsTCPOffsetRequest>(out.value);
    }
}

/** Complete original xarm_msgs/TCPOffsetResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_msgs/TCPOffsetResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsTCPOffsetResponse
{
    static readonly maxWireBytes: i32 = 262;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 262;
    /** Exact native field ret, native scalar int16. */
    /**
     * @brief Original xarm_msgs/TCPOffsetResponse.ret field.
     * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    ret: i16 = 0;
    /** Exact native field message, native scalar string. */
    /**
     * @brief Original xarm_msgs/TCPOffsetResponse.message field.
     * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    message: string = "";

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_msgs/TCPOffsetResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
            if(!validUnicode(this.message) || this.message.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.message);
            if(size > 256)
                return -22;
            if(4 + size > 262 - n)
                return -90;
            n += 4 + size;
            if(n > 262)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/TCPOffsetResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_msgs/TCPOffsetResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_msgs/TCPOffsetResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.ret, 2);
        w.text(this.message);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_msgs/TCPOffsetResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_msgsTCPOffsetResponse
    {
        const value = new Ros1Xarm_msgsTCPOffsetResponse();
        {
            const decoded = <i16>r.integer(2);
            value.ret = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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

/**
 * @brief Preserve all original xarm_msgs/TCPOffsetResponse fields.
 * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_msgsTCPOffsetResponseCodec implements VendorCodec<Ros1Xarm_msgsTCPOffsetResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
    static readonly maxWireBytes: i32 = 262;

    /**
     * @brief Encode the complete ordered value for xarm_msgs/TCPOffsetResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_msgsTCPOffsetResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_msgs/TCPOffsetResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_msgsTCPOffsetResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/TCPOffsetResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_msgsTCPOffsetResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_msgsTCPOffsetResponse>();
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

    /**
     * @brief Check the complete finite representation of xarm_msgs/TCPOffsetResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_msgs/TCPOffsetResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_msgsTCPOffsetResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_msgsTCPOffsetResponse() : changetype<Ros1Xarm_msgsTCPOffsetResponse>(out.value);
    }
}

/** Complete original xarm_planner/exec_planRequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_planner/exec_planRequest fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerExec_planRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field exec, native scalar bool. */
    /**
     * @brief Original xarm_planner/exec_planRequest.exec field.
     * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    exec: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_planner/exec_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
                return -90;
            n += 1;
            if(n > 1)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/exec_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/exec_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_planner/exec_planRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.exec ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_planner/exec_planRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_plannerExec_planRequest
    {
        const value = new Ros1Xarm_plannerExec_planRequest();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.exec = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original xarm_planner/exec_planRequest fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerExec_planRequestCodec implements VendorCodec<Ros1Xarm_plannerExec_planRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
    static readonly maxWireBytes: i32 = 1;

    /**
     * @brief Encode the complete ordered value for xarm_planner/exec_planRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_plannerExec_planRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_planner/exec_planRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_plannerExec_planRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/exec_planRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_plannerExec_planRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_plannerExec_planRequest>();
        if(bytes.length > 1)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_plannerExec_planRequest.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of xarm_planner/exec_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/exec_planRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_plannerExec_planRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_plannerExec_planRequest() : changetype<Ros1Xarm_plannerExec_planRequest>(out.value);
    }
}

/** Complete original xarm_planner/exec_planResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_planner/exec_planResponse fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerExec_planResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    /**
     * @brief Original xarm_planner/exec_planResponse.success field.
     * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    success: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_planner/exec_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
                return -90;
            n += 1;
            if(n > 1)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/exec_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/exec_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_planner/exec_planResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_planner/exec_planResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_plannerExec_planResponse
    {
        const value = new Ros1Xarm_plannerExec_planResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original xarm_planner/exec_planResponse fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerExec_planResponseCodec implements VendorCodec<Ros1Xarm_plannerExec_planResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
    static readonly maxWireBytes: i32 = 1;

    /**
     * @brief Encode the complete ordered value for xarm_planner/exec_planResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_plannerExec_planResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_planner/exec_planResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_plannerExec_planResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/exec_planResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_plannerExec_planResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_plannerExec_planResponse>();
        if(bytes.length > 1)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_plannerExec_planResponse.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of xarm_planner/exec_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/exec_planResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_plannerExec_planResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_plannerExec_planResponse() : changetype<Ros1Xarm_plannerExec_planResponse>(out.value);
    }
}

/** Complete original xarm_planner/joint_planRequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_planner/joint_planRequest fields.
 * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerJoint_planRequest
{
    static readonly maxWireBytes: i32 = 260;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 260;
    /** Exact native field target, native scalar float64. */
    /**
     * @brief Original xarm_planner/joint_planRequest.target field.
     * @details float64 sequence, count/quota 32, text byte bound 0. Preserve original units and frame. Full
     * value checks occur before successful encoding; construction grants no authority.
     */
    target: Array < f64 >= new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_planner/joint_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.target.length > 32)
                return -22;
            if(4 > 260 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.target.length; ++i)
            {
                if(!isFinite(this.target[i]))
                    return -22;
                if(8 > 260 - n)
                    return -90;
                n += 8;
                if(n > 260)
                    return -90;
            }
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/joint_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/joint_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_planner/joint_planRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.target.length);
        for(let i = 0; i < this.target.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.target[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_planner/joint_planRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_plannerJoint_planRequest
    {
        const value = new Ros1Xarm_plannerJoint_planRequest();
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.target = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.target.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Preserve all original xarm_planner/joint_planRequest fields.
 * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerJoint_planRequestCodec implements VendorCodec<Ros1Xarm_plannerJoint_planRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
    static readonly maxWireBytes: i32 = 260;

    /**
     * @brief Encode the complete ordered value for xarm_planner/joint_planRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_plannerJoint_planRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_planner/joint_planRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_plannerJoint_planRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/joint_planRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_plannerJoint_planRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_plannerJoint_planRequest>();
        if(bytes.length > 260)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_plannerJoint_planRequest.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of xarm_planner/joint_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/joint_planRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_plannerJoint_planRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_plannerJoint_planRequest() : changetype<Ros1Xarm_plannerJoint_planRequest>(out.value);
    }
}

/** Complete original xarm_planner/joint_planResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_planner/joint_planResponse fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerJoint_planResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    /**
     * @brief Original xarm_planner/joint_planResponse.success field.
     * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    success: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_planner/joint_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
                return -90;
            n += 1;
            if(n > 1)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/joint_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/joint_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_planner/joint_planResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_planner/joint_planResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_plannerJoint_planResponse
    {
        const value = new Ros1Xarm_plannerJoint_planResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original xarm_planner/joint_planResponse fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerJoint_planResponseCodec implements VendorCodec<Ros1Xarm_plannerJoint_planResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
    static readonly maxWireBytes: i32 = 1;

    /**
     * @brief Encode the complete ordered value for xarm_planner/joint_planResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_plannerJoint_planResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_planner/joint_planResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_plannerJoint_planResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/joint_planResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_plannerJoint_planResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_plannerJoint_planResponse>();
        if(bytes.length > 1)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_plannerJoint_planResponse.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of xarm_planner/joint_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/joint_planResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_plannerJoint_planResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_plannerJoint_planResponse() : changetype<Ros1Xarm_plannerJoint_planResponse>(out.value);
    }
}

/** Complete original xarm_planner/pose_planRequest; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_planner/pose_planRequest fields.
 * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerPose_planRequest
{
    static readonly maxWireBytes: i32 = 56;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 56;
    /** Exact native field target, native scalar geometry_msgs/Pose. */
    /**
     * @brief Original xarm_planner/pose_planRequest.target field.
     * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
     * frame. Full value checks occur before successful encoding; construction grants no authority.
     */
    target: Ros1Geometry_msgsPose = new Ros1Geometry_msgsPose();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_planner/pose_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.target.wireSize();
            if(child < 0)
                return child;
            if(child > 56 - n)
                return -90;
            n += child;
            if(n > 56)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/pose_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/pose_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_planner/pose_planRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        this.target.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_planner/pose_planRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_plannerPose_planRequest
    {
        const value = new Ros1Xarm_plannerPose_planRequest();
        {
            const decoded = Ros1Geometry_msgsPose.readControl(r);
            value.target = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original xarm_planner/pose_planRequest fields.
 * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerPose_planRequestCodec implements VendorCodec<Ros1Xarm_plannerPose_planRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
    static readonly maxWireBytes: i32 = 56;

    /**
     * @brief Encode the complete ordered value for xarm_planner/pose_planRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_plannerPose_planRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_planner/pose_planRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_plannerPose_planRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/pose_planRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_plannerPose_planRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_plannerPose_planRequest>();
        if(bytes.length > 56)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 56)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_plannerPose_planRequest.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of xarm_planner/pose_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/pose_planRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_plannerPose_planRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_plannerPose_planRequest() : changetype<Ros1Xarm_plannerPose_planRequest>(out.value);
    }
}

/** Complete original xarm_planner/pose_planResponse; spellings are published in generation proof. */
/**
 * @brief Preserve all original xarm_planner/pose_planResponse fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerPose_planResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    /**
     * @brief Original xarm_planner/pose_planResponse.success field.
     * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    success: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_planner/pose_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
                return -90;
            n += 1;
            if(n > 1)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/pose_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/pose_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_planner/pose_planResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_planner/pose_planResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_plannerPose_planResponse
    {
        const value = new Ros1Xarm_plannerPose_planResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original xarm_planner/pose_planResponse fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerPose_planResponseCodec implements VendorCodec<Ros1Xarm_plannerPose_planResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
    static readonly maxWireBytes: i32 = 1;

    /**
     * @brief Encode the complete ordered value for xarm_planner/pose_planResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_plannerPose_planResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_planner/pose_planResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_plannerPose_planResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/pose_planResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_plannerPose_planResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_plannerPose_planResponse>();
        if(bytes.length > 1)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_plannerPose_planResponse.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of xarm_planner/pose_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/pose_planResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_plannerPose_planResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_plannerPose_planResponse() : changetype<Ros1Xarm_plannerPose_planResponse>(out.value);
    }
}

/**
 * Complete original xarm_planner/single_straight_planRequest; spellings are published in generation proof.
 */
/**
 * @brief Preserve all original xarm_planner/single_straight_planRequest fields.
 * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerSingle_straight_planRequest
{
    static readonly maxWireBytes: i32 = 56;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 56;
    /** Exact native field target, native scalar geometry_msgs/Pose. */
    /**
     * @brief Original xarm_planner/single_straight_planRequest.target field.
     * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
     * frame. Full value checks occur before successful encoding; construction grants no authority.
     */
    target: Ros1Geometry_msgsPose = new Ros1Geometry_msgsPose();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_planner/single_straight_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.target.wireSize();
            if(child < 0)
                return child;
            if(child > 56 - n)
                return -90;
            n += child;
            if(n > 56)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/single_straight_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/single_straight_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_planner/single_straight_planRequest component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        this.target.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_planner/single_straight_planRequest candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_plannerSingle_straight_planRequest
    {
        const value = new Ros1Xarm_plannerSingle_straight_planRequest();
        {
            const decoded = Ros1Geometry_msgsPose.readControl(r);
            value.target = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original xarm_planner/single_straight_planRequest fields.
 * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerSingle_straight_planRequestCodec implements VendorCodec<Ros1Xarm_plannerSingle_straight_planRequest>
{
    static readonly codecIdentity: string = "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
    static readonly maxWireBytes: i32 = 56;

    /**
     * @brief Encode the complete ordered value for xarm_planner/single_straight_planRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_plannerSingle_straight_planRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_planner/single_straight_planRequest.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_plannerSingle_straight_planRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/single_straight_planRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_plannerSingle_straight_planRequest>
    {
        const out = new VendorDecoded<Ros1Xarm_plannerSingle_straight_planRequest>();
        if(bytes.length > 56)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 56)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_plannerSingle_straight_planRequest.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of xarm_planner/single_straight_planRequest.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/single_straight_planRequest.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_plannerSingle_straight_planRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_plannerSingle_straight_planRequest() : changetype<Ros1Xarm_plannerSingle_straight_planRequest>(out.value);
    }
}

/**
 * Complete original xarm_planner/single_straight_planResponse; spellings are published in generation proof.
 */
/**
 * @brief Preserve all original xarm_planner/single_straight_planResponse fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerSingle_straight_planResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field success, native scalar bool. */
    /**
     * @brief Original xarm_planner/single_straight_planResponse.success field.
     * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full value
     * checks occur before successful encoding; construction grants no authority.
     */
    success: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Check the complete finite representation of xarm_planner/single_straight_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
                return -90;
            n += 1;
            if(n > 1)
                return -90;
        }
        return n;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/single_straight_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    /**
     * @brief Check the complete finite representation of xarm_planner/single_straight_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Write one prevalidated xarm_planner/single_straight_planResponse component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param w Borrowed checked staging writer and exclusive storage; retain both until synchronous return.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    writeControl(w: VendorWriter): void
    {
        w.u8(this.success ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read one xarm_planner/single_straight_planResponse candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param r Borrowed checked reader and input; local candidates remain unaccepted until the enclosing
     * boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    static readControl(r: Reader): Ros1Xarm_plannerSingle_straight_planResponse
    {
        const value = new Ros1Xarm_plannerSingle_straight_planResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.success = decoded;
        }
        return value;
    }
}

/**
 * @brief Preserve all original xarm_planner/single_straight_planResponse fields.
 * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
 * explicit; native registration and transport require independent proof.
 * @par Ownership
 * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
 * reference rules.
 */
export class Ros1Xarm_plannerSingle_straight_planResponseCodec implements VendorCodec<Ros1Xarm_plannerSingle_straight_planResponse>
{
    static readonly codecIdentity: string = "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
    static readonly maxWireBytes: i32 = 1;

    /**
     * @brief Encode the complete ordered value for xarm_planner/single_straight_planResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encodeChecked(value: Ros1Xarm_plannerSingle_straight_planResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode the complete ordered value for xarm_planner/single_straight_planResponse.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical
     * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the
     * caller.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
     * transport success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    encode(value: Ros1Xarm_plannerSingle_straight_planResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/single_straight_planResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Xarm_plannerSingle_straight_planResponse>
    {
        const out = new VendorDecoded<Ros1Xarm_plannerSingle_straight_planResponse>();
        if(bytes.length > 1)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Xarm_plannerSingle_straight_planResponse.readControl(reader);
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

    /**
     * @brief Check the complete finite representation of xarm_planner/single_straight_planResponse.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no
     * authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode the whole canonical value for xarm_planner/single_straight_planResponse.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
     * complete value. Returned nested values own their storage and retain every original field.
     * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    decode(bytes: Uint8Array): Ros1Xarm_plannerSingle_straight_planResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Xarm_plannerSingle_straight_planResponse() : changetype<Ros1Xarm_plannerSingle_straight_planResponse>(out.value);
    }
}
