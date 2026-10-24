/** @brief Complete industrial canonical records. No I/O or authority. */
import {Codec, Reader, validUnicode, validUtf8} from 'ros/as/codecs';

/**
 * @brief Own one checked canonical encoding result.
 * @details Status 0 admits the complete owned byte array. Nonzero status 22/90 exposes no successful encoding.
 * Construction performs no ROS call.
 */
export class VendorEncoded
{
    /**
     * @brief Construct one owned local checked codec result.
     * @details Construction performs no validation, ROS operation, capability acquisition, or native allocation.
     * Successful managed byte/value storage remains owned by this result.
     * @param[in] status Original unsigned codec status; zero admits the complete result.
     * @param[in] bytes Owned complete canonical bytes; meaningful only with status 0.
     * @ownership The caller retains supplied managed references; serialize mutation while the result is used.
     */
    constructor(
        /**
         * @brief Original unsigned codec status; zero admits the complete result.
         * @details Numeric errors preserve 22 for invalid input and 90 for exceeded canonical capacity. This
         * value is independent from transport and cleanup errors.
         */
        public status: u32 = 0,
        /**
         * @brief Entire owned canonical record body for successful encoding.
         * @details Read only with status 0; mutable bytes must remain exclusive while consumed by a synchronous
         * transport call.
         */
        public bytes: Uint8Array = new Uint8Array(0),
    )
    {
    }
}

/**
 * @brief Own one checked complete-record decoding result.
 * @details A value is accepted only when status is 0 and value is nonnull. Managed storage belongs to this
 * object; failed decoding exposes no partial value.
 */
export class VendorDecoded<T>
{
    /**
     * @brief Owned complete record, or null when no accepted value exists.
     * @details Read only after checked decoding returns status 0. No native memory or capability is retained.
     */
    value: T|null = null;

    /**
     * @brief Construct one owned local checked codec result.
     * @details Construction performs no validation, ROS operation, capability acquisition, or native allocation.
     * Successful managed byte/value storage remains owned by this result.
     * @param[in] status Original unsigned codec status; zero admits the complete result.
     * @ownership The caller retains supplied managed references; serialize mutation while the result is used.
     */
    /**
     * @brief Original unsigned codec status; zero admits the complete result.
     * @details Numeric errors preserve 22 for invalid input and 90 for exceeded canonical capacity. This value
     * is independent from transport and cleanup errors.
     */
    constructor(public status: u32 = 0)
    {
    }
}

/**
 * @brief Describe a complete transactional Unitree record codec.
 * @details Each operation validates every original field and finite quota. Construction and encoding create no
 * capability or native ROS identity.
 */
export interface VendorCodec<T> extends Codec<T> {
    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: T): Uint8Array;
    /**
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool;
    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): T;
    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: T): VendorEncoded;
    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
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
        {
            this.b[this.at++] = <u8>(v >> (i * 8));
        }
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

/** @brief Complete original unitree_api/msg/RequestIdentity; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_api/msg/RequestIdentity value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16
 * bytes and is identified by UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_apiMsgRequestIdentity
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 16;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 16;
    /** @brief Exact native field id, native scalar int64. */
    /**
     * @brief unitree_api/msg/RequestIdentity.id: int64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
     */
    id: i64 = 0;
    /** @brief Exact native field api_id, native scalar int64. */
    /**
     * @brief unitree_api/msg/RequestIdentity.api_id: int64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
     */
    api_id: i64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 16 - n)
            {
                return -90;
            }
            n += 8;
            if(n > 16)
            {
                return -90;
            }
        }
        {
            if(8 > 16 - n)
            {
                return -90;
            }
            n += 8;
            if(n > 16)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.id, 8);
        w.integer(<u64>this.api_id, 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_apiMsgRequestIdentity
    {
        const value = new Ros2Unitree_apiMsgRequestIdentity();
        {
            const decoded = <i64>r.integer(8);
            value.id = decoded;
        }
        {
            const decoded = <i64>r.integer(8);
            value.api_id = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_apiMsgRequestIdentityCodec implements VendorCodec<Ros2Unitree_apiMsgRequestIdentity>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 16;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_apiMsgRequestIdentity): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_apiMsgRequestIdentity): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_apiMsgRequestIdentity>
    {
        const out = new VendorDecoded<Ros2Unitree_apiMsgRequestIdentity>();
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
        const reader = new Reader(bytes), value = Ros2Unitree_apiMsgRequestIdentity.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_apiMsgRequestIdentity
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_apiMsgRequestIdentity() : changetype<Ros2Unitree_apiMsgRequestIdentity>(out.value);
    }
}

/** @brief Complete original unitree_api/msg/RequestLease; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_api/msg/RequestLease value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
 * and is identified by UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_apiMsgRequestLease
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 8;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field id, native scalar int64. */
    /**
     * @brief unitree_api/msg/RequestLease.id: int64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
     */
    id: i64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
            {
                return -90;
            }
            n += 8;
            if(n > 8)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.id, 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_apiMsgRequestLease
    {
        const value = new Ros2Unitree_apiMsgRequestLease();
        {
            const decoded = <i64>r.integer(8);
            value.id = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_apiMsgRequestLeaseCodec implements VendorCodec<Ros2Unitree_apiMsgRequestLease>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 8;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_apiMsgRequestLease): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_apiMsgRequestLease): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_apiMsgRequestLease>
    {
        const out = new VendorDecoded<Ros2Unitree_apiMsgRequestLease>();
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
        const reader = new Reader(bytes), value = Ros2Unitree_apiMsgRequestLease.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_apiMsgRequestLease
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_apiMsgRequestLease() : changetype<Ros2Unitree_apiMsgRequestLease>(out.value);
    }
}

/** @brief Complete original unitree_api/msg/RequestPolicy; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_api/msg/RequestPolicy value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 5..5 bytes
 * and is identified by UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_apiMsgRequestPolicy
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 5;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 5;
    /** @brief Exact native field priority, native scalar int32. */
    /**
     * @brief unitree_api/msg/RequestPolicy.priority: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
     */
    priority: i32 = 0;
    /** @brief Exact native field noreply, native scalar bool. */
    /**
     * @brief unitree_api/msg/RequestPolicy.noreply: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
     */
    noreply: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 5 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 5)
            {
                return -90;
            }
        }
        {
            if(1 > 5 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 5)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.priority, 4);
        w.u8(this.noreply ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_apiMsgRequestPolicy
    {
        const value = new Ros2Unitree_apiMsgRequestPolicy();
        {
            const decoded = <i32>r.integer(4);
            value.priority = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
            {
                r.valid = false;
            }
            const decoded = bit != 0;
            value.noreply = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_apiMsgRequestPolicyCodec implements VendorCodec<Ros2Unitree_apiMsgRequestPolicy>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 5;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_apiMsgRequestPolicy): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_apiMsgRequestPolicy): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_apiMsgRequestPolicy>
    {
        const out = new VendorDecoded<Ros2Unitree_apiMsgRequestPolicy>();
        if(bytes.length > 5)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 5)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_apiMsgRequestPolicy.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_apiMsgRequestPolicy
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_apiMsgRequestPolicy() : changetype<Ros2Unitree_apiMsgRequestPolicy>(out.value);
    }
}

/** @brief Complete original unitree_api/msg/RequestHeader; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_api/msg/RequestHeader value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 29..29
 * bytes and is identified by UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_apiMsgRequestHeader
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 29;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 29;
    /** @brief Exact native field identity, native scalar unitree_api/msg/RequestIdentity. */
    /**
     * @brief unitree_api/msg/RequestHeader.identity: unitree_api/msg/RequestIdentity.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    identity: Ros2Unitree_apiMsgRequestIdentity = new Ros2Unitree_apiMsgRequestIdentity();
    /** @brief Exact native field lease, native scalar unitree_api/msg/RequestLease. */
    /**
     * @brief unitree_api/msg/RequestHeader.lease: unitree_api/msg/RequestLease.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    lease: Ros2Unitree_apiMsgRequestLease = new Ros2Unitree_apiMsgRequestLease();
    /** @brief Exact native field policy, native scalar unitree_api/msg/RequestPolicy. */
    /**
     * @brief unitree_api/msg/RequestHeader.policy: unitree_api/msg/RequestPolicy.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    policy: Ros2Unitree_apiMsgRequestPolicy = new Ros2Unitree_apiMsgRequestPolicy();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.identity.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 29 - n)
            {
                return -90;
            }
            n += child;
            if(n > 29)
            {
                return -90;
            }
        }
        {
            const child = this.lease.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 29 - n)
            {
                return -90;
            }
            n += child;
            if(n > 29)
            {
                return -90;
            }
        }
        {
            const child = this.policy.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 29 - n)
            {
                return -90;
            }
            n += child;
            if(n > 29)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        this.identity.writeControl(w);
        this.lease.writeControl(w);
        this.policy.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_apiMsgRequestHeader
    {
        const value = new Ros2Unitree_apiMsgRequestHeader();
        {
            const decoded = Ros2Unitree_apiMsgRequestIdentity.readControl(r);
            value.identity = decoded;
        }
        {
            const decoded = Ros2Unitree_apiMsgRequestLease.readControl(r);
            value.lease = decoded;
        }
        {
            const decoded = Ros2Unitree_apiMsgRequestPolicy.readControl(r);
            value.policy = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_apiMsgRequestHeaderCodec implements VendorCodec<Ros2Unitree_apiMsgRequestHeader>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 29;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_apiMsgRequestHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_apiMsgRequestHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_apiMsgRequestHeader>
    {
        const out = new VendorDecoded<Ros2Unitree_apiMsgRequestHeader>();
        if(bytes.length > 29)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 29)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_apiMsgRequestHeader.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_apiMsgRequestHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_apiMsgRequestHeader() : changetype<Ros2Unitree_apiMsgRequestHeader>(out.value);
    }
}

/** @brief Complete original unitree_api/msg/Request; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_api/msg/Request value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 37..4133
 * bytes and is identified by UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_apiMsgRequest
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4133;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 4133;
    /** @brief Exact native field header, native scalar unitree_api/msg/RequestHeader. */
    /**
     * @brief unitree_api/msg/Request.header: unitree_api/msg/RequestHeader.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    header: Ros2Unitree_apiMsgRequestHeader = new Ros2Unitree_apiMsgRequestHeader();
    /** @brief Exact native field parameter, native scalar string. */
    /**
     * @brief unitree_api/msg/Request.parameter: string; each string is 0..2048 bytes; strict UTF-8 with no embedded
     * NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    parameter: string = '';
    /** @brief Exact native field binary, native scalar uint8. */
    /**
     * @brief unitree_api/msg/Request.binary: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    binary: Array<u8> = new Array<u8>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 4133 - n)
            {
                return -90;
            }
            n += child;
            if(n > 4133)
            {
                return -90;
            }
        }
        {
            if(!validUnicode(this.parameter) || this.parameter.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.parameter);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 4133 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 4133)
            {
                return -90;
            }
        }
        {
            if(this.binary.length > 2048)
            {
                return -22;
            }
            if(4 > 4133 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.binary.length; ++i)
            {
                if(1 > 4133 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 4133)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        w.text(this.parameter);
        w.u32(<u32>this.binary.length);
        for(let i = 0; i < this.binary.length; ++i)
        {
            w.integer(<u64>this.binary[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_apiMsgRequest
    {
        const value = new Ros2Unitree_apiMsgRequest();
        {
            const decoded = Ros2Unitree_apiMsgRequestHeader.readControl(r);
            value.header = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
            value.parameter = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2048)
            {
                r.valid = false;
                return value;
            }
            value.binary = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.binary.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_apiMsgRequestCodec implements VendorCodec<Ros2Unitree_apiMsgRequest>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4133;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_apiMsgRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_apiMsgRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_apiMsgRequest>
    {
        const out = new VendorDecoded<Ros2Unitree_apiMsgRequest>();
        if(bytes.length > 4133)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 37)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_apiMsgRequest.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_apiMsgRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_apiMsgRequest() : changetype<Ros2Unitree_apiMsgRequest>(out.value);
    }
}

/** @brief Complete original unitree_api/msg/ResponseStatus; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_api/msg/ResponseStatus value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_apiMsgResponseStatus
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field code, native scalar int32. */
    /**
     * @brief unitree_api/msg/ResponseStatus.code: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    code: i32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 4 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 4)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.code, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_apiMsgResponseStatus
    {
        const value = new Ros2Unitree_apiMsgResponseStatus();
        {
            const decoded = <i32>r.integer(4);
            value.code = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_apiMsgResponseStatusCodec implements VendorCodec<Ros2Unitree_apiMsgResponseStatus>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_apiMsgResponseStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_apiMsgResponseStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_apiMsgResponseStatus>
    {
        const out = new VendorDecoded<Ros2Unitree_apiMsgResponseStatus>();
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
        const reader = new Reader(bytes), value = Ros2Unitree_apiMsgResponseStatus.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_apiMsgResponseStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_apiMsgResponseStatus() : changetype<Ros2Unitree_apiMsgResponseStatus>(out.value);
    }
}

/** @brief Complete original unitree_api/msg/ResponseHeader; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_api/msg/ResponseHeader value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 20..20
 * bytes and is identified by UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_apiMsgResponseHeader
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 20;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 20;
    /** @brief Exact native field identity, native scalar unitree_api/msg/RequestIdentity. */
    /**
     * @brief unitree_api/msg/ResponseHeader.identity: unitree_api/msg/RequestIdentity.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    identity: Ros2Unitree_apiMsgRequestIdentity = new Ros2Unitree_apiMsgRequestIdentity();
    /** @brief Exact native field status, native scalar unitree_api/msg/ResponseStatus. */
    /**
     * @brief unitree_api/msg/ResponseHeader.status: unitree_api/msg/ResponseStatus.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    status: Ros2Unitree_apiMsgResponseStatus = new Ros2Unitree_apiMsgResponseStatus();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.identity.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 20 - n)
            {
                return -90;
            }
            n += child;
            if(n > 20)
            {
                return -90;
            }
        }
        {
            const child = this.status.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 20 - n)
            {
                return -90;
            }
            n += child;
            if(n > 20)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        this.identity.writeControl(w);
        this.status.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_apiMsgResponseHeader
    {
        const value = new Ros2Unitree_apiMsgResponseHeader();
        {
            const decoded = Ros2Unitree_apiMsgRequestIdentity.readControl(r);
            value.identity = decoded;
        }
        {
            const decoded = Ros2Unitree_apiMsgResponseStatus.readControl(r);
            value.status = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_apiMsgResponseHeaderCodec implements VendorCodec<Ros2Unitree_apiMsgResponseHeader>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 20;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_apiMsgResponseHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_apiMsgResponseHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_apiMsgResponseHeader>
    {
        const out = new VendorDecoded<Ros2Unitree_apiMsgResponseHeader>();
        if(bytes.length > 20)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_apiMsgResponseHeader.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_apiMsgResponseHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_apiMsgResponseHeader() : changetype<Ros2Unitree_apiMsgResponseHeader>(out.value);
    }
}

/** @brief Complete original unitree_api/msg/Response; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_api/msg/Response value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 28..2108
 * bytes and is identified by UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_apiMsgResponse
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 2108;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 2108;
    /** @brief Exact native field header, native scalar unitree_api/msg/ResponseHeader. */
    /**
     * @brief unitree_api/msg/Response.header: unitree_api/msg/ResponseHeader.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    header: Ros2Unitree_apiMsgResponseHeader = new Ros2Unitree_apiMsgResponseHeader();
    /** @brief Exact native field data, native scalar string. */
    /**
     * @brief unitree_api/msg/Response.data: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    data: string = '';
    /** @brief Exact native field binary, native scalar int8. */
    /**
     * @brief unitree_api/msg/Response.binary: int8; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    binary: Array<i8> = new Array<i8>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 2108 - n)
            {
                return -90;
            }
            n += child;
            if(n > 2108)
            {
                return -90;
            }
        }
        {
            if(!validUnicode(this.data) || this.data.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.data);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 2108 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 2108)
            {
                return -90;
            }
        }
        {
            if(this.binary.length > 32)
            {
                return -22;
            }
            if(4 > 2108 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.binary.length; ++i)
            {
                if(1 > 2108 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 2108)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        w.text(this.data);
        w.u32(<u32>this.binary.length);
        for(let i = 0; i < this.binary.length; ++i)
        {
            w.integer(<u64>this.binary[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_apiMsgResponse
    {
        const value = new Ros2Unitree_apiMsgResponse();
        {
            const decoded = Ros2Unitree_apiMsgResponseHeader.readControl(r);
            value.header = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.binary = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.binary.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_apiMsgResponseCodec implements VendorCodec<Ros2Unitree_apiMsgResponse>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 2108;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_apiMsgResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_apiMsgResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_apiMsgResponse>
    {
        const out = new VendorDecoded<Ros2Unitree_apiMsgResponse>();
        if(bytes.length > 2108)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_apiMsgResponse.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_apiMsgResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_apiMsgResponse() : changetype<Ros2Unitree_apiMsgResponse>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/AudioData; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/AudioData value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 12..2060
 * bytes and is identified by UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgAudioData
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 2060;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 2060;
    /** @brief Exact native field time_frame, native scalar uint64. */
    /**
     * @brief unitree_go/msg/AudioData.time_frame: uint64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
     */
    time_frame: u64 = 0;
    /** @brief Exact native field data, native scalar uint8. */
    /**
     * @brief unitree_go/msg/AudioData.data: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
     */
    data: Array<u8> = new Array<u8>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 2060 - n)
            {
                return -90;
            }
            n += 8;
            if(n > 2060)
            {
                return -90;
            }
        }
        {
            if(this.data.length > 2048)
            {
                return -22;
            }
            if(4 > 2060 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                if(1 > 2060 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 2060)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.time_frame, 8);
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            w.integer(<u64>this.data[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgAudioData
    {
        const value = new Ros2Unitree_goMsgAudioData();
        {
            const decoded = <u64>r.integer(8);
            value.time_frame = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2048)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.data.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgAudioDataCodec implements VendorCodec<Ros2Unitree_goMsgAudioData>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 2060;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgAudioData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgAudioData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgAudioData>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgAudioData>();
        if(bytes.length > 2060)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgAudioData.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgAudioData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgAudioData() : changetype<Ros2Unitree_goMsgAudioData>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/BmsCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/BmsCmd value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgBmsCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field off, native scalar uint8. */
    /**
     * @brief unitree_go/msg/BmsCmd.off: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    off: u8 = 0;
    /** @brief Exact native field reserve, native scalar uint8. */
    /**
     * @brief unitree_go/msg/BmsCmd.reserve: uint8; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u8> = new Array<u8>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 4 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 4)
            {
                return -90;
            }
        }
        {
            if(this.reserve.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(1 > 4 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 4)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.off, 1);
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgBmsCmd
    {
        const value = new Ros2Unitree_goMsgBmsCmd();
        {
            const decoded = <u8>r.integer(1);
            value.off = decoded;
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgBmsCmdCodec implements VendorCodec<Ros2Unitree_goMsgBmsCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgBmsCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgBmsCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgBmsCmd>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgBmsCmd>();
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
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgBmsCmd.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgBmsCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgBmsCmd() : changetype<Ros2Unitree_goMsgBmsCmd>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/BmsState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/BmsState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 44..44
 * bytes and is identified by UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgBmsState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 44;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 44;
    /** @brief Exact native field version_high, native scalar uint8. */
    /**
     * @brief unitree_go/msg/BmsState.version_high: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    version_high: u8 = 0;
    /** @brief Exact native field version_low, native scalar uint8. */
    /**
     * @brief unitree_go/msg/BmsState.version_low: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    version_low: u8 = 0;
    /** @brief Exact native field status, native scalar uint8. */
    /**
     * @brief unitree_go/msg/BmsState.status: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    status: u8 = 0;
    /** @brief Exact native field soc, native scalar uint8. */
    /**
     * @brief unitree_go/msg/BmsState.soc: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    soc: u8 = 0;
    /** @brief Exact native field current, native scalar int32. */
    /**
     * @brief unitree_go/msg/BmsState.current: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    current: i32 = 0;
    /** @brief Exact native field cycle, native scalar uint16. */
    /**
     * @brief unitree_go/msg/BmsState.cycle: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    cycle: u16 = 0;
    /** @brief Exact native field bq_ntc, native scalar int8. */
    /**
     * @brief unitree_go/msg/BmsState.bq_ntc: int8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    bq_ntc: Array<i8> = new Array<i8>();
    /** @brief Exact native field mcu_ntc, native scalar int8. */
    /**
     * @brief unitree_go/msg/BmsState.mcu_ntc: int8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    mcu_ntc: Array<i8> = new Array<i8>();
    /** @brief Exact native field cell_vol, native scalar uint16. */
    /**
     * @brief unitree_go/msg/BmsState.cell_vol: uint16; exactly 15 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    cell_vol: Array<u16> = new Array<u16>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.bq_ntc.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.mcu_ntc.push(0);
        }
        for(let i = 0; i < 15; ++i)
        {
            this.cell_vol.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 44 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 44)
            {
                return -90;
            }
        }
        {
            if(1 > 44 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 44)
            {
                return -90;
            }
        }
        {
            if(1 > 44 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 44)
            {
                return -90;
            }
        }
        {
            if(1 > 44 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 44)
            {
                return -90;
            }
        }
        {
            if(4 > 44 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 44)
            {
                return -90;
            }
        }
        {
            if(2 > 44 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 44)
            {
                return -90;
            }
        }
        {
            if(this.bq_ntc.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.bq_ntc.length; ++i)
            {
                if(1 > 44 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 44)
                {
                    return -90;
                }
            }
        }
        {
            if(this.mcu_ntc.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.mcu_ntc.length; ++i)
            {
                if(1 > 44 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 44)
                {
                    return -90;
                }
            }
        }
        {
            if(this.cell_vol.length != 15)
            {
                return -22;
            }
            for(let i = 0; i < this.cell_vol.length; ++i)
            {
                if(2 > 44 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 44)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.version_high, 1);
        w.integer(<u64>this.version_low, 1);
        w.integer(<u64>this.status, 1);
        w.integer(<u64>this.soc, 1);
        w.integer(<u64>this.current, 4);
        w.integer(<u64>this.cycle, 2);
        for(let i = 0; i < this.bq_ntc.length; ++i)
        {
            w.integer(<u64>this.bq_ntc[i], 1);
        }
        for(let i = 0; i < this.mcu_ntc.length; ++i)
        {
            w.integer(<u64>this.mcu_ntc[i], 1);
        }
        for(let i = 0; i < this.cell_vol.length; ++i)
        {
            w.integer(<u64>this.cell_vol[i], 2);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgBmsState
    {
        const value = new Ros2Unitree_goMsgBmsState();
        {
            const decoded = <u8>r.integer(1);
            value.version_high = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.version_low = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.status = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.soc = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.current = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.cycle = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.bq_ntc = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.bq_ntc.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.mcu_ntc = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.mcu_ntc.push(decoded);
            }
        }
        {
            const count: u32 = 15;
            if(!r.valid || count > 15)
            {
                r.valid = false;
                return value;
            }
            value.cell_vol = new Array<u16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u16>r.integer(2);
                value.cell_vol.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgBmsStateCodec implements VendorCodec<Ros2Unitree_goMsgBmsState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 44;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgBmsState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgBmsState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgBmsState>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgBmsState>();
        if(bytes.length > 44)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 44)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgBmsState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgBmsState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgBmsState() : changetype<Ros2Unitree_goMsgBmsState>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/Error; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/Error value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
 * and is identified by UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgError
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 8;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field source, native scalar uint32. */
    /**
     * @brief unitree_go/msg/Error.source: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
     */
    source: u32 = 0;
    /** @brief Exact native field state, native scalar uint32. */
    /**
     * @brief unitree_go/msg/Error.state: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
     */
    state: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 8 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 8)
            {
                return -90;
            }
        }
        {
            if(4 > 8 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 8)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.source, 4);
        w.integer(<u64>this.state, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgError
    {
        const value = new Ros2Unitree_goMsgError();
        {
            const decoded = <u32>r.integer(4);
            value.source = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.state = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgErrorCodec implements VendorCodec<Ros2Unitree_goMsgError>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 8;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgError): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgError): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgError>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgError>();
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
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgError.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgError
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgError() : changetype<Ros2Unitree_goMsgError>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/Go2FrontVideoData; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/Go2FrontVideoData value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 20..6164
 * bytes and is identified by UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgGo2FrontVideoData
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 6164;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 6164;
    /** @brief Exact native field time_frame, native scalar uint64. */
    /**
     * @brief unitree_go/msg/Go2FrontVideoData.time_frame: uint64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
     */
    time_frame: u64 = 0;
    /** @brief Exact native field video720p, native scalar uint8. */
    /**
     * @brief unitree_go/msg/Go2FrontVideoData.video720p: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
     */
    video720p: Array<u8> = new Array<u8>();
    /** @brief Exact native field video360p, native scalar uint8. */
    /**
     * @brief unitree_go/msg/Go2FrontVideoData.video360p: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
     */
    video360p: Array<u8> = new Array<u8>();
    /** @brief Exact native field video180p, native scalar uint8. */
    /**
     * @brief unitree_go/msg/Go2FrontVideoData.video180p: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
     */
    video180p: Array<u8> = new Array<u8>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 6164 - n)
            {
                return -90;
            }
            n += 8;
            if(n > 6164)
            {
                return -90;
            }
        }
        {
            if(this.video720p.length > 2048)
            {
                return -22;
            }
            if(4 > 6164 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.video720p.length; ++i)
            {
                if(1 > 6164 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 6164)
                {
                    return -90;
                }
            }
        }
        {
            if(this.video360p.length > 2048)
            {
                return -22;
            }
            if(4 > 6164 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.video360p.length; ++i)
            {
                if(1 > 6164 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 6164)
                {
                    return -90;
                }
            }
        }
        {
            if(this.video180p.length > 2048)
            {
                return -22;
            }
            if(4 > 6164 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.video180p.length; ++i)
            {
                if(1 > 6164 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 6164)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.time_frame, 8);
        w.u32(<u32>this.video720p.length);
        for(let i = 0; i < this.video720p.length; ++i)
        {
            w.integer(<u64>this.video720p[i], 1);
        }
        w.u32(<u32>this.video360p.length);
        for(let i = 0; i < this.video360p.length; ++i)
        {
            w.integer(<u64>this.video360p[i], 1);
        }
        w.u32(<u32>this.video180p.length);
        for(let i = 0; i < this.video180p.length; ++i)
        {
            w.integer(<u64>this.video180p[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgGo2FrontVideoData
    {
        const value = new Ros2Unitree_goMsgGo2FrontVideoData();
        {
            const decoded = <u64>r.integer(8);
            value.time_frame = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2048)
            {
                r.valid = false;
                return value;
            }
            value.video720p = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.video720p.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2048)
            {
                r.valid = false;
                return value;
            }
            value.video360p = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.video360p.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2048)
            {
                r.valid = false;
                return value;
            }
            value.video180p = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.video180p.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgGo2FrontVideoDataCodec implements VendorCodec<Ros2Unitree_goMsgGo2FrontVideoData>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 6164;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgGo2FrontVideoData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgGo2FrontVideoData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgGo2FrontVideoData>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgGo2FrontVideoData>();
        if(bytes.length > 6164)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgGo2FrontVideoData.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgGo2FrontVideoData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgGo2FrontVideoData() : changetype<Ros2Unitree_goMsgGo2FrontVideoData>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/HeightMap; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/HeightMap value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 36..2212
 * bytes and is identified by UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgHeightMap
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 2212;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 2212;
    /** @brief Exact native field stamp, native scalar float64. */
    /**
     * @brief unitree_go/msg/HeightMap.stamp: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    stamp: f64 = 0;
    /** @brief Exact native field frame_id, native scalar string. */
    /**
     * @brief unitree_go/msg/HeightMap.frame_id: string; each string is 0..2048 bytes; strict UTF-8 with no embedded
     * NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    frame_id: string = '';
    /** @brief Exact native field resolution, native scalar float32. */
    /**
     * @brief unitree_go/msg/HeightMap.resolution: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    resolution: f32 = 0;
    /** @brief Exact native field width, native scalar uint32. */
    /**
     * @brief unitree_go/msg/HeightMap.width: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    width: u32 = 0;
    /** @brief Exact native field height, native scalar uint32. */
    /**
     * @brief unitree_go/msg/HeightMap.height: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    height: u32 = 0;
    /** @brief Exact native field origin, native scalar float32. */
    /**
     * @brief unitree_go/msg/HeightMap.origin: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    origin: Array<f32> = new Array<f32>();
    /** @brief Exact native field data, native scalar float32. */
    /**
     * @brief unitree_go/msg/HeightMap.data: float32; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    data: Array<f32> = new Array<f32>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.origin.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.stamp))
            {
                return -22;
            }
            if(8 > 2212 - n)
            {
                return -90;
            }
            n += 8;
            if(n > 2212)
            {
                return -90;
            }
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.frame_id);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 2212 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 2212)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.resolution))
            {
                return -22;
            }
            if(4 > 2212 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 2212)
            {
                return -90;
            }
        }
        {
            if(4 > 2212 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 2212)
            {
                return -90;
            }
        }
        {
            if(4 > 2212 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 2212)
            {
                return -90;
            }
        }
        {
            if(this.origin.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.origin.length; ++i)
            {
                if(!isFinite(this.origin[i]))
                {
                    return -22;
                }
                if(4 > 2212 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 2212)
                {
                    return -90;
                }
            }
        }
        {
            if(this.data.length > 32)
            {
                return -22;
            }
            if(4 > 2212 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                if(!isFinite(this.data[i]))
                {
                    return -22;
                }
                if(4 > 2212 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 2212)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.stamp), 8);
        w.text(this.frame_id);
        w.integer(<u64>reinterpret<u32>(this.resolution), 4);
        w.integer(<u64>this.width, 4);
        w.integer(<u64>this.height, 4);
        for(let i = 0; i < this.origin.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.origin[i]), 4);
        }
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.data[i]), 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgHeightMap
    {
        const value = new Ros2Unitree_goMsgHeightMap();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.stamp = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.resolution = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.width = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.height = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.origin = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.origin.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.data.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgHeightMapCodec implements VendorCodec<Ros2Unitree_goMsgHeightMap>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 2212;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgHeightMap): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgHeightMap): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgHeightMap>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgHeightMap>();
        if(bytes.length > 2212)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 36)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgHeightMap.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgHeightMap
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgHeightMap() : changetype<Ros2Unitree_goMsgHeightMap>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/IMUState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/IMUState value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 53..53
 * bytes and is identified by UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgIMUState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 53;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 53;
    /** @brief Exact native field quaternion, native scalar float32. */
    /**
     * @brief unitree_go/msg/IMUState.quaternion: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    quaternion: Array<f32> = new Array<f32>();
    /** @brief Exact native field gyroscope, native scalar float32. */
    /**
     * @brief unitree_go/msg/IMUState.gyroscope: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    gyroscope: Array<f32> = new Array<f32>();
    /** @brief Exact native field accelerometer, native scalar float32. */
    /**
     * @brief unitree_go/msg/IMUState.accelerometer: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    accelerometer: Array<f32> = new Array<f32>();
    /** @brief Exact native field rpy, native scalar float32. */
    /**
     * @brief unitree_go/msg/IMUState.rpy: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    rpy: Array<f32> = new Array<f32>();
    /** @brief Exact native field temperature, native scalar int8. */
    /**
     * @brief unitree_go/msg/IMUState.temperature: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature: i8 = 0;

    constructor()
    {
        for(let i = 0; i < 4; ++i)
        {
            this.quaternion.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.gyroscope.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.accelerometer.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.rpy.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.quaternion.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.quaternion.length; ++i)
            {
                if(!isFinite(this.quaternion[i]))
                {
                    return -22;
                }
                if(4 > 53 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 53)
                {
                    return -90;
                }
            }
        }
        {
            if(this.gyroscope.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.gyroscope.length; ++i)
            {
                if(!isFinite(this.gyroscope[i]))
                {
                    return -22;
                }
                if(4 > 53 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 53)
                {
                    return -90;
                }
            }
        }
        {
            if(this.accelerometer.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.accelerometer.length; ++i)
            {
                if(!isFinite(this.accelerometer[i]))
                {
                    return -22;
                }
                if(4 > 53 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 53)
                {
                    return -90;
                }
            }
        }
        {
            if(this.rpy.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.rpy.length; ++i)
            {
                if(!isFinite(this.rpy[i]))
                {
                    return -22;
                }
                if(4 > 53 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 53)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 53 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 53)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.quaternion.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.quaternion[i]), 4);
        }
        for(let i = 0; i < this.gyroscope.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.gyroscope[i]), 4);
        }
        for(let i = 0; i < this.accelerometer.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.accelerometer[i]), 4);
        }
        for(let i = 0; i < this.rpy.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.rpy[i]), 4);
        }
        w.integer(<u64>this.temperature, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgIMUState
    {
        const value = new Ros2Unitree_goMsgIMUState();
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.quaternion = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.quaternion.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.gyroscope = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.gyroscope.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.accelerometer = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.accelerometer.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.rpy = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.rpy.push(decoded);
            }
        }
        {
            const decoded = <i8>r.integer(1);
            value.temperature = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgIMUStateCodec implements VendorCodec<Ros2Unitree_goMsgIMUState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 53;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgIMUState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgIMUState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgIMUState>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgIMUState>();
        if(bytes.length > 53)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 53)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgIMUState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgIMUState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgIMUState() : changetype<Ros2Unitree_goMsgIMUState>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/InterfaceConfig; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/InterfaceConfig value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgInterfaceConfig
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_go/msg/InterfaceConfig.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field value, native scalar uint8. */
    /**
     * @brief unitree_go/msg/InterfaceConfig.value: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
     */
    value: u8 = 0;
    /** @brief Exact native field reserve, native scalar uint8. */
    /**
     * @brief unitree_go/msg/InterfaceConfig.reserve: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u8> = new Array<u8>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 4 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 4)
            {
                return -90;
            }
        }
        {
            if(1 > 4 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 4)
            {
                return -90;
            }
        }
        {
            if(this.reserve.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(1 > 4 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 4)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.value, 1);
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgInterfaceConfig
    {
        const value = new Ros2Unitree_goMsgInterfaceConfig();
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.value = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgInterfaceConfigCodec implements VendorCodec<Ros2Unitree_goMsgInterfaceConfig>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgInterfaceConfig): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgInterfaceConfig): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgInterfaceConfig>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgInterfaceConfig>();
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
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgInterfaceConfig.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgInterfaceConfig
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgInterfaceConfig() : changetype<Ros2Unitree_goMsgInterfaceConfig>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/LidarState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/LidarState value.
 * @details All 17 declared fields are retained in source order. The canonical representation occupies 81..6225
 * bytes and is identified by UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgLidarState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 6225;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 6225;
    /** @brief Exact native field stamp, native scalar float64. */
    /**
     * @brief unitree_go/msg/LidarState.stamp: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    stamp: f64 = 0;
    /** @brief Exact native field firmware_version, native scalar string. */
    /**
     * @brief unitree_go/msg/LidarState.firmware_version: string; each string is 0..2048 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    firmware_version: string = '';
    /** @brief Exact native field software_version, native scalar string. */
    /**
     * @brief unitree_go/msg/LidarState.software_version: string; each string is 0..2048 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    software_version: string = '';
    /** @brief Exact native field sdk_version, native scalar string. */
    /**
     * @brief unitree_go/msg/LidarState.sdk_version: string; each string is 0..2048 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    sdk_version: string = '';
    /** @brief Exact native field sys_rotation_speed, native scalar float32. */
    /**
     * @brief unitree_go/msg/LidarState.sys_rotation_speed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    sys_rotation_speed: f32 = 0;
    /** @brief Exact native field com_rotation_speed, native scalar float32. */
    /**
     * @brief unitree_go/msg/LidarState.com_rotation_speed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    com_rotation_speed: f32 = 0;
    /** @brief Exact native field error_state, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LidarState.error_state: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    error_state: u8 = 0;
    /** @brief Exact native field cloud_frequency, native scalar float32. */
    /**
     * @brief unitree_go/msg/LidarState.cloud_frequency: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    cloud_frequency: f32 = 0;
    /** @brief Exact native field cloud_packet_loss_rate, native scalar float32. */
    /**
     * @brief unitree_go/msg/LidarState.cloud_packet_loss_rate: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    cloud_packet_loss_rate: f32 = 0;
    /** @brief Exact native field cloud_size, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LidarState.cloud_size: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    cloud_size: u32 = 0;
    /** @brief Exact native field cloud_scan_num, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LidarState.cloud_scan_num: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    cloud_scan_num: u32 = 0;
    /** @brief Exact native field imu_frequency, native scalar float32. */
    /**
     * @brief unitree_go/msg/LidarState.imu_frequency: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu_frequency: f32 = 0;
    /** @brief Exact native field imu_packet_loss_rate, native scalar float32. */
    /**
     * @brief unitree_go/msg/LidarState.imu_packet_loss_rate: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu_packet_loss_rate: f32 = 0;
    /** @brief Exact native field imu_rpy, native scalar float32. */
    /**
     * @brief unitree_go/msg/LidarState.imu_rpy: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu_rpy: Array<f32> = new Array<f32>();
    /** @brief Exact native field serial_recv_stamp, native scalar float64. */
    /**
     * @brief unitree_go/msg/LidarState.serial_recv_stamp: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    serial_recv_stamp: f64 = 0;
    /** @brief Exact native field serial_buffer_size, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LidarState.serial_buffer_size: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    serial_buffer_size: u32 = 0;
    /** @brief Exact native field serial_buffer_read, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LidarState.serial_buffer_read: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    serial_buffer_read: u32 = 0;

    constructor()
    {
        for(let i = 0; i < 3; ++i)
        {
            this.imu_rpy.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.stamp))
            {
                return -22;
            }
            if(8 > 6225 - n)
            {
                return -90;
            }
            n += 8;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!validUnicode(this.firmware_version) || this.firmware_version.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.firmware_version);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 6225 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!validUnicode(this.software_version) || this.software_version.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.software_version);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 6225 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!validUnicode(this.sdk_version) || this.sdk_version.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.sdk_version);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 6225 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.sys_rotation_speed))
            {
                return -22;
            }
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.com_rotation_speed))
            {
                return -22;
            }
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(1 > 6225 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.cloud_frequency))
            {
                return -22;
            }
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.cloud_packet_loss_rate))
            {
                return -22;
            }
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.imu_frequency))
            {
                return -22;
            }
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.imu_packet_loss_rate))
            {
                return -22;
            }
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(this.imu_rpy.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.imu_rpy.length; ++i)
            {
                if(!isFinite(this.imu_rpy[i]))
                {
                    return -22;
                }
                if(4 > 6225 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 6225)
                {
                    return -90;
                }
            }
        }
        {
            if(!isFinite(this.serial_recv_stamp))
            {
                return -22;
            }
            if(8 > 6225 - n)
            {
                return -90;
            }
            n += 8;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        {
            if(4 > 6225 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 6225)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.stamp), 8);
        w.text(this.firmware_version);
        w.text(this.software_version);
        w.text(this.sdk_version);
        w.integer(<u64>reinterpret<u32>(this.sys_rotation_speed), 4);
        w.integer(<u64>reinterpret<u32>(this.com_rotation_speed), 4);
        w.integer(<u64>this.error_state, 1);
        w.integer(<u64>reinterpret<u32>(this.cloud_frequency), 4);
        w.integer(<u64>reinterpret<u32>(this.cloud_packet_loss_rate), 4);
        w.integer(<u64>this.cloud_size, 4);
        w.integer(<u64>this.cloud_scan_num, 4);
        w.integer(<u64>reinterpret<u32>(this.imu_frequency), 4);
        w.integer(<u64>reinterpret<u32>(this.imu_packet_loss_rate), 4);
        for(let i = 0; i < this.imu_rpy.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.imu_rpy[i]), 4);
        }
        w.integer(<u64>reinterpret<u64>(this.serial_recv_stamp), 8);
        w.integer(<u64>this.serial_buffer_size, 4);
        w.integer(<u64>this.serial_buffer_read, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgLidarState
    {
        const value = new Ros2Unitree_goMsgLidarState();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.stamp = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
            value.firmware_version = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
            value.software_version = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
            value.sdk_version = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.sys_rotation_speed = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.com_rotation_speed = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.error_state = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.cloud_frequency = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.cloud_packet_loss_rate = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.cloud_size = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.cloud_scan_num = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.imu_frequency = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.imu_packet_loss_rate = decoded;
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.imu_rpy = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.imu_rpy.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.serial_recv_stamp = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.serial_buffer_size = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.serial_buffer_read = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgLidarStateCodec implements VendorCodec<Ros2Unitree_goMsgLidarState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 6225;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgLidarState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgLidarState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgLidarState>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgLidarState>();
        if(bytes.length > 6225)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 81)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgLidarState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgLidarState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgLidarState() : changetype<Ros2Unitree_goMsgLidarState>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/MotorCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/MotorCmd value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 33..33
 * bytes and is identified by UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgMotorCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 33;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 33;
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_go/msg/MotorCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field q, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorCmd.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    q: f32 = 0;
    /** @brief Exact native field dq, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorCmd.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    dq: f32 = 0;
    /** @brief Exact native field tau, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorCmd.tau: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    tau: f32 = 0;
    /** @brief Exact native field kp, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorCmd.kp: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    kp: f32 = 0;
    /** @brief Exact native field kd, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorCmd.kd: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    kd: f32 = 0;
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_go/msg/MotorCmd.reserve: uint32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u32> = new Array<u32>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 33 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 33)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.q))
            {
                return -22;
            }
            if(4 > 33 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 33)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.dq))
            {
                return -22;
            }
            if(4 > 33 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 33)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.tau))
            {
                return -22;
            }
            if(4 > 33 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 33)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.kp))
            {
                return -22;
            }
            if(4 > 33 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 33)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.kd))
            {
                return -22;
            }
            if(4 > 33 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 33)
            {
                return -90;
            }
        }
        {
            if(this.reserve.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(4 > 33 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 33)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>reinterpret<u32>(this.q), 4);
        w.integer(<u64>reinterpret<u32>(this.dq), 4);
        w.integer(<u64>reinterpret<u32>(this.tau), 4);
        w.integer(<u64>reinterpret<u32>(this.kp), 4);
        w.integer(<u64>reinterpret<u32>(this.kd), 4);
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgMotorCmd
    {
        const value = new Ros2Unitree_goMsgMotorCmd();
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.q = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.dq = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.tau = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.kp = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.kd = decoded;
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgMotorCmdCodec implements VendorCodec<Ros2Unitree_goMsgMotorCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 33;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgMotorCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgMotorCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgMotorCmd>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgMotorCmd>();
        if(bytes.length > 33)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 33)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgMotorCmd.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgMotorCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgMotorCmd() : changetype<Ros2Unitree_goMsgMotorCmd>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/LowCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/LowCmd value.
 * @details All 14 declared fields are retained in source order. The canonical representation occupies 749..749
 * bytes and is identified by UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgLowCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 749;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 749;
    /** @brief Exact native field head, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowCmd.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    head: Array<u8> = new Array<u8>();
    /** @brief Exact native field level_flag, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowCmd.level_flag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    level_flag: u8 = 0;
    /** @brief Exact native field frame_reserve, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowCmd.frame_reserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    frame_reserve: u8 = 0;
    /** @brief Exact native field sn, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowCmd.sn: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    sn: Array<u32> = new Array<u32>();
    /** @brief Exact native field version, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowCmd.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    version: Array<u32> = new Array<u32>();
    /** @brief Exact native field bandwidth, native scalar uint16. */
    /**
     * @brief unitree_go/msg/LowCmd.bandwidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    bandwidth: u16 = 0;
    /** @brief Exact native field motor_cmd, native scalar unitree_go/msg/MotorCmd. */
    /**
     * @brief unitree_go/msg/LowCmd.motor_cmd: unitree_go/msg/MotorCmd; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    motor_cmd: Array<Ros2Unitree_goMsgMotorCmd> = new Array<Ros2Unitree_goMsgMotorCmd>();
    /** @brief Exact native field bms_cmd, native scalar unitree_go/msg/BmsCmd. */
    /**
     * @brief unitree_go/msg/LowCmd.bms_cmd: unitree_go/msg/BmsCmd.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    bms_cmd: Ros2Unitree_goMsgBmsCmd = new Ros2Unitree_goMsgBmsCmd();
    /** @brief Exact native field wireless_remote, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowCmd.wireless_remote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    wireless_remote: Array<u8> = new Array<u8>();
    /** @brief Exact native field led, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowCmd.led: uint8; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    led: Array<u8> = new Array<u8>();
    /** @brief Exact native field fan, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowCmd.fan: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    fan: Array<u8> = new Array<u8>();
    /** @brief Exact native field gpio, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowCmd.gpio: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    gpio: u8 = 0;
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowCmd.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: u32 = 0;
    /** @brief Exact native field crc, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowCmd.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    crc: u32 = 0;

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.head.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.sn.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.version.push(0);
        }
        for(let i = 0; i < 20; ++i)
        {
            this.motor_cmd.push(new Ros2Unitree_goMsgMotorCmd());
        }
        for(let i = 0; i < 40; ++i)
        {
            this.wireless_remote.push(0);
        }
        for(let i = 0; i < 12; ++i)
        {
            this.led.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.fan.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.head.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.head.length; ++i)
            {
                if(1 > 749 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 749)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 749 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 749)
            {
                return -90;
            }
        }
        {
            if(1 > 749 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 749)
            {
                return -90;
            }
        }
        {
            if(this.sn.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.sn.length; ++i)
            {
                if(4 > 749 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 749)
                {
                    return -90;
                }
            }
        }
        {
            if(this.version.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.version.length; ++i)
            {
                if(4 > 749 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 749)
                {
                    return -90;
                }
            }
        }
        {
            if(2 > 749 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 749)
            {
                return -90;
            }
        }
        {
            if(this.motor_cmd.length != 20)
            {
                return -22;
            }
            for(let i = 0; i < this.motor_cmd.length; ++i)
            {
                const child = this.motor_cmd[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 749 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 749)
                {
                    return -90;
                }
            }
        }
        {
            const child = this.bms_cmd.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 749 - n)
            {
                return -90;
            }
            n += child;
            if(n > 749)
            {
                return -90;
            }
        }
        {
            if(this.wireless_remote.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.wireless_remote.length; ++i)
            {
                if(1 > 749 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 749)
                {
                    return -90;
                }
            }
        }
        {
            if(this.led.length != 12)
            {
                return -22;
            }
            for(let i = 0; i < this.led.length; ++i)
            {
                if(1 > 749 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 749)
                {
                    return -90;
                }
            }
        }
        {
            if(this.fan.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.fan.length; ++i)
            {
                if(1 > 749 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 749)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 749 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 749)
            {
                return -90;
            }
        }
        {
            if(4 > 749 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 749)
            {
                return -90;
            }
        }
        {
            if(4 > 749 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 749)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.head.length; ++i)
        {
            w.integer(<u64>this.head[i], 1);
        }
        w.integer(<u64>this.level_flag, 1);
        w.integer(<u64>this.frame_reserve, 1);
        for(let i = 0; i < this.sn.length; ++i)
        {
            w.integer(<u64>this.sn[i], 4);
        }
        for(let i = 0; i < this.version.length; ++i)
        {
            w.integer(<u64>this.version[i], 4);
        }
        w.integer(<u64>this.bandwidth, 2);
        for(let i = 0; i < this.motor_cmd.length; ++i)
        {
            this.motor_cmd[i].writeControl(w);
        }
        this.bms_cmd.writeControl(w);
        for(let i = 0; i < this.wireless_remote.length; ++i)
        {
            w.integer(<u64>this.wireless_remote[i], 1);
        }
        for(let i = 0; i < this.led.length; ++i)
        {
            w.integer(<u64>this.led[i], 1);
        }
        for(let i = 0; i < this.fan.length; ++i)
        {
            w.integer(<u64>this.fan[i], 1);
        }
        w.integer(<u64>this.gpio, 1);
        w.integer(<u64>this.reserve, 4);
        w.integer(<u64>this.crc, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgLowCmd
    {
        const value = new Ros2Unitree_goMsgLowCmd();
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.head = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.head.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.level_flag = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.frame_reserve = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.sn = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.sn.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.version = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.version.push(decoded);
            }
        }
        {
            const decoded = <u16>r.integer(2);
            value.bandwidth = decoded;
        }
        {
            const count: u32 = 20;
            if(!r.valid || count > 20)
            {
                r.valid = false;
                return value;
            }
            value.motor_cmd = new Array<Ros2Unitree_goMsgMotorCmd>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_goMsgMotorCmd.readControl(r);
                value.motor_cmd.push(decoded);
            }
        }
        {
            const decoded = Ros2Unitree_goMsgBmsCmd.readControl(r);
            value.bms_cmd = decoded;
        }
        {
            const count: u32 = 40;
            if(!r.valid || count > 40)
            {
                r.valid = false;
                return value;
            }
            value.wireless_remote = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.wireless_remote.push(decoded);
            }
        }
        {
            const count: u32 = 12;
            if(!r.valid || count > 12)
            {
                r.valid = false;
                return value;
            }
            value.led = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.led.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.fan = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.fan.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.gpio = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.reserve = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.crc = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgLowCmdCodec implements VendorCodec<Ros2Unitree_goMsgLowCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 749;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgLowCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgLowCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgLowCmd>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgLowCmd>();
        if(bytes.length > 749)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 749)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgLowCmd.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgLowCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgLowCmd() : changetype<Ros2Unitree_goMsgLowCmd>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/MotorState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/MotorState value.
 * @details All 11 declared fields are retained in source order. The canonical representation occupies 42..42
 * bytes and is identified by UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgMotorState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 42;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 42;
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_go/msg/MotorState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field q, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorState.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    q: f32 = 0;
    /** @brief Exact native field dq, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorState.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    dq: f32 = 0;
    /** @brief Exact native field ddq, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorState.ddq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    ddq: f32 = 0;
    /** @brief Exact native field tau_est, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorState.tau_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    tau_est: f32 = 0;
    /** @brief Exact native field q_raw, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorState.q_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    q_raw: f32 = 0;
    /** @brief Exact native field dq_raw, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorState.dq_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    dq_raw: f32 = 0;
    /** @brief Exact native field ddq_raw, native scalar float32. */
    /**
     * @brief unitree_go/msg/MotorState.ddq_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    ddq_raw: f32 = 0;
    /** @brief Exact native field temperature, native scalar int8. */
    /**
     * @brief unitree_go/msg/MotorState.temperature: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature: i8 = 0;
    /** @brief Exact native field lost, native scalar uint32. */
    /**
     * @brief unitree_go/msg/MotorState.lost: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    lost: u32 = 0;
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_go/msg/MotorState.reserve: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u32> = new Array<u32>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 42 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.q))
            {
                return -22;
            }
            if(4 > 42 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.dq))
            {
                return -22;
            }
            if(4 > 42 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.ddq))
            {
                return -22;
            }
            if(4 > 42 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.tau_est))
            {
                return -22;
            }
            if(4 > 42 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.q_raw))
            {
                return -22;
            }
            if(4 > 42 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.dq_raw))
            {
                return -22;
            }
            if(4 > 42 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.ddq_raw))
            {
                return -22;
            }
            if(4 > 42 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(1 > 42 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(4 > 42 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 42)
            {
                return -90;
            }
        }
        {
            if(this.reserve.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(4 > 42 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 42)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>reinterpret<u32>(this.q), 4);
        w.integer(<u64>reinterpret<u32>(this.dq), 4);
        w.integer(<u64>reinterpret<u32>(this.ddq), 4);
        w.integer(<u64>reinterpret<u32>(this.tau_est), 4);
        w.integer(<u64>reinterpret<u32>(this.q_raw), 4);
        w.integer(<u64>reinterpret<u32>(this.dq_raw), 4);
        w.integer(<u64>reinterpret<u32>(this.ddq_raw), 4);
        w.integer(<u64>this.temperature, 1);
        w.integer(<u64>this.lost, 4);
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgMotorState
    {
        const value = new Ros2Unitree_goMsgMotorState();
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.q = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.dq = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.ddq = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.tau_est = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.q_raw = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.dq_raw = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.ddq_raw = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.temperature = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.lost = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgMotorStateCodec implements VendorCodec<Ros2Unitree_goMsgMotorState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 42;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgMotorState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgMotorState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgMotorState>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgMotorState>();
        if(bytes.length > 42)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 42)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgMotorState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgMotorState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgMotorState() : changetype<Ros2Unitree_goMsgMotorState>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/LowState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/LowState value.
 * @details All 22 declared fields are retained in source order. The canonical representation occupies 1050..1050
 * bytes and is identified by UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgLowState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1050;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 1050;
    /** @brief Exact native field head, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowState.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    head: Array<u8> = new Array<u8>();
    /** @brief Exact native field level_flag, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowState.level_flag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    level_flag: u8 = 0;
    /** @brief Exact native field frame_reserve, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowState.frame_reserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    frame_reserve: u8 = 0;
    /** @brief Exact native field sn, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowState.sn: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    sn: Array<u32> = new Array<u32>();
    /** @brief Exact native field version, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowState.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    version: Array<u32> = new Array<u32>();
    /** @brief Exact native field bandwidth, native scalar uint16. */
    /**
     * @brief unitree_go/msg/LowState.bandwidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    bandwidth: u16 = 0;
    /** @brief Exact native field imu_state, native scalar unitree_go/msg/IMUState. */
    /**
     * @brief unitree_go/msg/LowState.imu_state: unitree_go/msg/IMUState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu_state: Ros2Unitree_goMsgIMUState = new Ros2Unitree_goMsgIMUState();
    /** @brief Exact native field motor_state, native scalar unitree_go/msg/MotorState. */
    /**
     * @brief unitree_go/msg/LowState.motor_state: unitree_go/msg/MotorState; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    motor_state: Array<Ros2Unitree_goMsgMotorState> = new Array<Ros2Unitree_goMsgMotorState>();
    /** @brief Exact native field bms_state, native scalar unitree_go/msg/BmsState. */
    /**
     * @brief unitree_go/msg/LowState.bms_state: unitree_go/msg/BmsState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    bms_state: Ros2Unitree_goMsgBmsState = new Ros2Unitree_goMsgBmsState();
    /** @brief Exact native field foot_force, native scalar int16. */
    /**
     * @brief unitree_go/msg/LowState.foot_force: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    foot_force: Array<i16> = new Array<i16>();
    /** @brief Exact native field foot_force_est, native scalar int16. */
    /**
     * @brief unitree_go/msg/LowState.foot_force_est: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    foot_force_est: Array<i16> = new Array<i16>();
    /** @brief Exact native field tick, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowState.tick: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    tick: u32 = 0;
    /** @brief Exact native field wireless_remote, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowState.wireless_remote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    wireless_remote: Array<u8> = new Array<u8>();
    /** @brief Exact native field bit_flag, native scalar uint8. */
    /**
     * @brief unitree_go/msg/LowState.bit_flag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    bit_flag: u8 = 0;
    /** @brief Exact native field adc_reel, native scalar float32. */
    /**
     * @brief unitree_go/msg/LowState.adc_reel: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    adc_reel: f32 = 0;
    /** @brief Exact native field temperature_ntc1, native scalar int8. */
    /**
     * @brief unitree_go/msg/LowState.temperature_ntc1: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature_ntc1: i8 = 0;
    /** @brief Exact native field temperature_ntc2, native scalar int8. */
    /**
     * @brief unitree_go/msg/LowState.temperature_ntc2: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature_ntc2: i8 = 0;
    /** @brief Exact native field power_v, native scalar float32. */
    /**
     * @brief unitree_go/msg/LowState.power_v: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    power_v: f32 = 0;
    /** @brief Exact native field power_a, native scalar float32. */
    /**
     * @brief unitree_go/msg/LowState.power_a: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    power_a: f32 = 0;
    /** @brief Exact native field fan_frequency, native scalar uint16. */
    /**
     * @brief unitree_go/msg/LowState.fan_frequency: uint16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    fan_frequency: Array<u16> = new Array<u16>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowState.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: u32 = 0;
    /** @brief Exact native field crc, native scalar uint32. */
    /**
     * @brief unitree_go/msg/LowState.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    crc: u32 = 0;

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.head.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.sn.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.version.push(0);
        }
        for(let i = 0; i < 20; ++i)
        {
            this.motor_state.push(new Ros2Unitree_goMsgMotorState());
        }
        for(let i = 0; i < 4; ++i)
        {
            this.foot_force.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.foot_force_est.push(0);
        }
        for(let i = 0; i < 40; ++i)
        {
            this.wireless_remote.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.fan_frequency.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.head.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.head.length; ++i)
            {
                if(1 > 1050 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 1050)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 1050 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(1 > 1050 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(this.sn.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.sn.length; ++i)
            {
                if(4 > 1050 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1050)
                {
                    return -90;
                }
            }
        }
        {
            if(this.version.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.version.length; ++i)
            {
                if(4 > 1050 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1050)
                {
                    return -90;
                }
            }
        }
        {
            if(2 > 1050 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            const child = this.imu_state.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1050 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(this.motor_state.length != 20)
            {
                return -22;
            }
            for(let i = 0; i < this.motor_state.length; ++i)
            {
                const child = this.motor_state[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1050 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1050)
                {
                    return -90;
                }
            }
        }
        {
            const child = this.bms_state.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1050 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(this.foot_force.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.foot_force.length; ++i)
            {
                if(2 > 1050 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 1050)
                {
                    return -90;
                }
            }
        }
        {
            if(this.foot_force_est.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.foot_force_est.length; ++i)
            {
                if(2 > 1050 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 1050)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 1050 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(this.wireless_remote.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.wireless_remote.length; ++i)
            {
                if(1 > 1050 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 1050)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 1050 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.adc_reel))
            {
                return -22;
            }
            if(4 > 1050 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(1 > 1050 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(1 > 1050 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.power_v))
            {
                return -22;
            }
            if(4 > 1050 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.power_a))
            {
                return -22;
            }
            if(4 > 1050 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(this.fan_frequency.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.fan_frequency.length; ++i)
            {
                if(2 > 1050 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 1050)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 1050 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1050)
            {
                return -90;
            }
        }
        {
            if(4 > 1050 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1050)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.head.length; ++i)
        {
            w.integer(<u64>this.head[i], 1);
        }
        w.integer(<u64>this.level_flag, 1);
        w.integer(<u64>this.frame_reserve, 1);
        for(let i = 0; i < this.sn.length; ++i)
        {
            w.integer(<u64>this.sn[i], 4);
        }
        for(let i = 0; i < this.version.length; ++i)
        {
            w.integer(<u64>this.version[i], 4);
        }
        w.integer(<u64>this.bandwidth, 2);
        this.imu_state.writeControl(w);
        for(let i = 0; i < this.motor_state.length; ++i)
        {
            this.motor_state[i].writeControl(w);
        }
        this.bms_state.writeControl(w);
        for(let i = 0; i < this.foot_force.length; ++i)
        {
            w.integer(<u64>this.foot_force[i], 2);
        }
        for(let i = 0; i < this.foot_force_est.length; ++i)
        {
            w.integer(<u64>this.foot_force_est[i], 2);
        }
        w.integer(<u64>this.tick, 4);
        for(let i = 0; i < this.wireless_remote.length; ++i)
        {
            w.integer(<u64>this.wireless_remote[i], 1);
        }
        w.integer(<u64>this.bit_flag, 1);
        w.integer(<u64>reinterpret<u32>(this.adc_reel), 4);
        w.integer(<u64>this.temperature_ntc1, 1);
        w.integer(<u64>this.temperature_ntc2, 1);
        w.integer(<u64>reinterpret<u32>(this.power_v), 4);
        w.integer(<u64>reinterpret<u32>(this.power_a), 4);
        for(let i = 0; i < this.fan_frequency.length; ++i)
        {
            w.integer(<u64>this.fan_frequency[i], 2);
        }
        w.integer(<u64>this.reserve, 4);
        w.integer(<u64>this.crc, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgLowState
    {
        const value = new Ros2Unitree_goMsgLowState();
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.head = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.head.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.level_flag = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.frame_reserve = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.sn = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.sn.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.version = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.version.push(decoded);
            }
        }
        {
            const decoded = <u16>r.integer(2);
            value.bandwidth = decoded;
        }
        {
            const decoded = Ros2Unitree_goMsgIMUState.readControl(r);
            value.imu_state = decoded;
        }
        {
            const count: u32 = 20;
            if(!r.valid || count > 20)
            {
                r.valid = false;
                return value;
            }
            value.motor_state = new Array<Ros2Unitree_goMsgMotorState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_goMsgMotorState.readControl(r);
                value.motor_state.push(decoded);
            }
        }
        {
            const decoded = Ros2Unitree_goMsgBmsState.readControl(r);
            value.bms_state = decoded;
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.foot_force = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.foot_force.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.foot_force_est = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.foot_force_est.push(decoded);
            }
        }
        {
            const decoded = <u32>r.integer(4);
            value.tick = decoded;
        }
        {
            const count: u32 = 40;
            if(!r.valid || count > 40)
            {
                r.valid = false;
                return value;
            }
            value.wireless_remote = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.wireless_remote.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.bit_flag = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.adc_reel = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.temperature_ntc1 = decoded;
        }
        {
            const decoded = <i8>r.integer(1);
            value.temperature_ntc2 = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.power_v = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.power_a = decoded;
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.fan_frequency = new Array<u16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u16>r.integer(2);
                value.fan_frequency.push(decoded);
            }
        }
        {
            const decoded = <u32>r.integer(4);
            value.reserve = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.crc = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgLowStateCodec implements VendorCodec<Ros2Unitree_goMsgLowState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1050;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgLowState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgLowState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgLowState>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgLowState>();
        if(bytes.length > 1050)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1050)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgLowState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgLowState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgLowState() : changetype<Ros2Unitree_goMsgLowState>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/MotorCmds; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/MotorCmds value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1060
 * bytes and is identified by UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgMotorCmds
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1060;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 1060;
    /** @brief Exact native field cmds, native scalar unitree_go/msg/MotorCmd. */
    /**
     * @brief unitree_go/msg/MotorCmds.cmds: unitree_go/msg/MotorCmd; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
     */
    cmds: Array<Ros2Unitree_goMsgMotorCmd> = new Array<Ros2Unitree_goMsgMotorCmd>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.cmds.length > 32)
            {
                return -22;
            }
            if(4 > 1060 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.cmds.length; ++i)
            {
                const child = this.cmds[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1060 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1060)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.cmds.length);
        for(let i = 0; i < this.cmds.length; ++i)
        {
            this.cmds[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgMotorCmds
    {
        const value = new Ros2Unitree_goMsgMotorCmds();
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.cmds = new Array<Ros2Unitree_goMsgMotorCmd>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_goMsgMotorCmd.readControl(r);
                value.cmds.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgMotorCmdsCodec implements VendorCodec<Ros2Unitree_goMsgMotorCmds>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1060;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgMotorCmds): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgMotorCmds): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgMotorCmds>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgMotorCmds>();
        if(bytes.length > 1060)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgMotorCmds.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgMotorCmds
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgMotorCmds() : changetype<Ros2Unitree_goMsgMotorCmds>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/MotorStates; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/MotorStates value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1348
 * bytes and is identified by UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgMotorStates
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1348;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 1348;
    /** @brief Exact native field states, native scalar unitree_go/msg/MotorState. */
    /**
     * @brief unitree_go/msg/MotorStates.states: unitree_go/msg/MotorState; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
     */
    states: Array<Ros2Unitree_goMsgMotorState> = new Array<Ros2Unitree_goMsgMotorState>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.states.length > 32)
            {
                return -22;
            }
            if(4 > 1348 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.states.length; ++i)
            {
                const child = this.states[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1348 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1348)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.states.length);
        for(let i = 0; i < this.states.length; ++i)
        {
            this.states[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgMotorStates
    {
        const value = new Ros2Unitree_goMsgMotorStates();
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.states = new Array<Ros2Unitree_goMsgMotorState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_goMsgMotorState.readControl(r);
                value.states.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgMotorStatesCodec implements VendorCodec<Ros2Unitree_goMsgMotorStates>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1348;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgMotorStates): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgMotorStates): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgMotorStates>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgMotorStates>();
        if(bytes.length > 1348)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgMotorStates.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgMotorStates
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgMotorStates() : changetype<Ros2Unitree_goMsgMotorStates>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/PathPoint; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/PathPoint value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 28..28
 * bytes and is identified by UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgPathPoint
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 28;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 28;
    /** @brief Exact native field t_from_start, native scalar float32. */
    /**
     * @brief unitree_go/msg/PathPoint.t_from_start: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    t_from_start: f32 = 0;
    /** @brief Exact native field x, native scalar float32. */
    /**
     * @brief unitree_go/msg/PathPoint.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    x: f32 = 0;
    /** @brief Exact native field y, native scalar float32. */
    /**
     * @brief unitree_go/msg/PathPoint.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    y: f32 = 0;
    /** @brief Exact native field yaw, native scalar float32. */
    /**
     * @brief unitree_go/msg/PathPoint.yaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    yaw: f32 = 0;
    /** @brief Exact native field vx, native scalar float32. */
    /**
     * @brief unitree_go/msg/PathPoint.vx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    vx: f32 = 0;
    /** @brief Exact native field vy, native scalar float32. */
    /**
     * @brief unitree_go/msg/PathPoint.vy: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    vy: f32 = 0;
    /** @brief Exact native field vyaw, native scalar float32. */
    /**
     * @brief unitree_go/msg/PathPoint.vyaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    vyaw: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.t_from_start))
            {
                return -22;
            }
            if(4 > 28 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 28)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.x))
            {
                return -22;
            }
            if(4 > 28 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 28)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.y))
            {
                return -22;
            }
            if(4 > 28 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 28)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.yaw))
            {
                return -22;
            }
            if(4 > 28 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 28)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.vx))
            {
                return -22;
            }
            if(4 > 28 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 28)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.vy))
            {
                return -22;
            }
            if(4 > 28 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 28)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.vyaw))
            {
                return -22;
            }
            if(4 > 28 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 28)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u32>(this.t_from_start), 4);
        w.integer(<u64>reinterpret<u32>(this.x), 4);
        w.integer(<u64>reinterpret<u32>(this.y), 4);
        w.integer(<u64>reinterpret<u32>(this.yaw), 4);
        w.integer(<u64>reinterpret<u32>(this.vx), 4);
        w.integer(<u64>reinterpret<u32>(this.vy), 4);
        w.integer(<u64>reinterpret<u32>(this.vyaw), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgPathPoint
    {
        const value = new Ros2Unitree_goMsgPathPoint();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.t_from_start = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.yaw = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.vx = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.vy = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.vyaw = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgPathPointCodec implements VendorCodec<Ros2Unitree_goMsgPathPoint>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 28;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgPathPoint): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgPathPoint): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgPathPoint>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgPathPoint>();
        if(bytes.length > 28)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgPathPoint.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgPathPoint
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgPathPoint() : changetype<Ros2Unitree_goMsgPathPoint>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/Req; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/Req value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 8..4104
 * bytes and is identified by UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgReq
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4104;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 4104;
    /** @brief Exact native field uuid, native scalar string. */
    /**
     * @brief unitree_go/msg/Req.uuid: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
     */
    uuid: string = '';
    /** @brief Exact native field body, native scalar string. */
    /**
     * @brief unitree_go/msg/Req.body: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
     */
    body: string = '';

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.uuid) || this.uuid.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.uuid);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 4104 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 4104)
            {
                return -90;
            }
        }
        {
            if(!validUnicode(this.body) || this.body.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.body);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 4104 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 4104)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.text(this.uuid);
        w.text(this.body);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgReq
    {
        const value = new Ros2Unitree_goMsgReq();
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
            value.uuid = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
            value.body = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgReqCodec implements VendorCodec<Ros2Unitree_goMsgReq>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 4104;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgReq): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgReq): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgReq>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgReq>();
        if(bytes.length > 4104)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgReq.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgReq
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgReq() : changetype<Ros2Unitree_goMsgReq>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/Res; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/Res value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 12..6156
 * bytes and is identified by UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgRes
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 6156;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 6156;
    /** @brief Exact native field uuid, native scalar string. */
    /**
     * @brief unitree_go/msg/Res.uuid: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
     */
    uuid: string = '';
    /** @brief Exact native field data, native scalar uint8. */
    /**
     * @brief unitree_go/msg/Res.data: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
     */
    data: Array<u8> = new Array<u8>();
    /** @brief Exact native field body, native scalar string. */
    /**
     * @brief unitree_go/msg/Res.body: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
     */
    body: string = '';

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.uuid) || this.uuid.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.uuid);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 6156 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 6156)
            {
                return -90;
            }
        }
        {
            if(this.data.length > 2048)
            {
                return -22;
            }
            if(4 > 6156 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                if(1 > 6156 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 6156)
                {
                    return -90;
                }
            }
        }
        {
            if(!validUnicode(this.body) || this.body.indexOf('\0') >= 0)
            {
                return -22;
            }
            const size = String.UTF8.byteLength(this.body);
            if(size > 2048)
            {
                return -22;
            }
            if(4 + size > 6156 - n)
            {
                return -90;
            }
            n += 4 + size;
            if(n > 6156)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.text(this.uuid);
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            w.integer(<u64>this.data[i], 1);
        }
        w.text(this.body);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgRes
    {
        const value = new Ros2Unitree_goMsgRes();
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
            value.uuid = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2048)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.data.push(decoded);
            }
        }
        {
            const size = r.u32();
            if(!r.valid || size > 2048)
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
            value.body = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgResCodec implements VendorCodec<Ros2Unitree_goMsgRes>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 6156;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgRes): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgRes): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgRes>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgRes>();
        if(bytes.length > 6156)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgRes.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgRes
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgRes() : changetype<Ros2Unitree_goMsgRes>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/SportModeCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/SportModeCmd value.
 * @details All 11 declared fields are retained in source order. The canonical representation occupies 887..887
 * bytes and is identified by UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgSportModeCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 887;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 887;
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_go/msg/SportModeCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field gait_type, native scalar uint8. */
    /**
     * @brief unitree_go/msg/SportModeCmd.gait_type: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    gait_type: u8 = 0;
    /** @brief Exact native field speed_level, native scalar uint8. */
    /**
     * @brief unitree_go/msg/SportModeCmd.speed_level: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    speed_level: u8 = 0;
    /** @brief Exact native field foot_raise_height, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeCmd.foot_raise_height: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    foot_raise_height: f32 = 0;
    /** @brief Exact native field body_height, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeCmd.body_height: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    body_height: f32 = 0;
    /** @brief Exact native field position, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeCmd.position: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    position: Array<f32> = new Array<f32>();
    /** @brief Exact native field euler, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeCmd.euler: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    euler: Array<f32> = new Array<f32>();
    /** @brief Exact native field velocity, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeCmd.velocity: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    velocity: Array<f32> = new Array<f32>();
    /** @brief Exact native field yaw_speed, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeCmd.yaw_speed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    yaw_speed: f32 = 0;
    /** @brief Exact native field bms_cmd, native scalar unitree_go/msg/BmsCmd. */
    /**
     * @brief unitree_go/msg/SportModeCmd.bms_cmd: unitree_go/msg/BmsCmd.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    bms_cmd: Ros2Unitree_goMsgBmsCmd = new Ros2Unitree_goMsgBmsCmd();
    /** @brief Exact native field path_point, native scalar unitree_go/msg/PathPoint. */
    /**
     * @brief unitree_go/msg/SportModeCmd.path_point: unitree_go/msg/PathPoint; exactly 30 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    path_point: Array<Ros2Unitree_goMsgPathPoint> = new Array<Ros2Unitree_goMsgPathPoint>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.position.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.euler.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.velocity.push(0);
        }
        for(let i = 0; i < 30; ++i)
        {
            this.path_point.push(new Ros2Unitree_goMsgPathPoint());
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 887 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 887)
            {
                return -90;
            }
        }
        {
            if(1 > 887 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 887)
            {
                return -90;
            }
        }
        {
            if(1 > 887 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 887)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.foot_raise_height))
            {
                return -22;
            }
            if(4 > 887 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 887)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.body_height))
            {
                return -22;
            }
            if(4 > 887 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 887)
            {
                return -90;
            }
        }
        {
            if(this.position.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                {
                    return -22;
                }
                if(4 > 887 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 887)
                {
                    return -90;
                }
            }
        }
        {
            if(this.euler.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.euler.length; ++i)
            {
                if(!isFinite(this.euler[i]))
                {
                    return -22;
                }
                if(4 > 887 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 887)
                {
                    return -90;
                }
            }
        }
        {
            if(this.velocity.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                {
                    return -22;
                }
                if(4 > 887 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 887)
                {
                    return -90;
                }
            }
        }
        {
            if(!isFinite(this.yaw_speed))
            {
                return -22;
            }
            if(4 > 887 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 887)
            {
                return -90;
            }
        }
        {
            const child = this.bms_cmd.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 887 - n)
            {
                return -90;
            }
            n += child;
            if(n > 887)
            {
                return -90;
            }
        }
        {
            if(this.path_point.length != 30)
            {
                return -22;
            }
            for(let i = 0; i < this.path_point.length; ++i)
            {
                const child = this.path_point[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 887 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 887)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.gait_type, 1);
        w.integer(<u64>this.speed_level, 1);
        w.integer(<u64>reinterpret<u32>(this.foot_raise_height), 4);
        w.integer(<u64>reinterpret<u32>(this.body_height), 4);
        for(let i = 0; i < this.position.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.position[i]), 4);
        }
        for(let i = 0; i < this.euler.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.euler[i]), 4);
        }
        for(let i = 0; i < this.velocity.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.velocity[i]), 4);
        }
        w.integer(<u64>reinterpret<u32>(this.yaw_speed), 4);
        this.bms_cmd.writeControl(w);
        for(let i = 0; i < this.path_point.length; ++i)
        {
            this.path_point[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgSportModeCmd
    {
        const value = new Ros2Unitree_goMsgSportModeCmd();
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.gait_type = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.speed_level = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.foot_raise_height = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.body_height = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.position = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.position.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.euler = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.euler.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.velocity = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.velocity.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.yaw_speed = decoded;
        }
        {
            const decoded = Ros2Unitree_goMsgBmsCmd.readControl(r);
            value.bms_cmd = decoded;
        }
        {
            const count: u32 = 30;
            if(!r.valid || count > 30)
            {
                r.valid = false;
                return value;
            }
            value.path_point = new Array<Ros2Unitree_goMsgPathPoint>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_goMsgPathPoint.readControl(r);
                value.path_point.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgSportModeCmdCodec implements VendorCodec<Ros2Unitree_goMsgSportModeCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 887;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgSportModeCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgSportModeCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgSportModeCmd>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgSportModeCmd>();
        if(bytes.length > 887)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 887)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgSportModeCmd.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgSportModeCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgSportModeCmd() : changetype<Ros2Unitree_goMsgSportModeCmd>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/TimeSpec; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/TimeSpec value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
 * and is identified by UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgTimeSpec
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 8;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field sec, native scalar int32. */
    /**
     * @brief unitree_go/msg/TimeSpec.sec: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
     */
    sec: i32 = 0;
    /** @brief Exact native field nanosec, native scalar uint32. */
    /**
     * @brief unitree_go/msg/TimeSpec.nanosec: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
     */
    nanosec: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 8 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 8)
            {
                return -90;
            }
        }
        {
            if(4 > 8 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 8)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sec, 4);
        w.integer(<u64>this.nanosec, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgTimeSpec
    {
        const value = new Ros2Unitree_goMsgTimeSpec();
        {
            const decoded = <i32>r.integer(4);
            value.sec = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.nanosec = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgTimeSpecCodec implements VendorCodec<Ros2Unitree_goMsgTimeSpec>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 8;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgTimeSpec): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgTimeSpec): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgTimeSpec>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgTimeSpec>();
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
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgTimeSpec.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgTimeSpec
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgTimeSpec() : changetype<Ros2Unitree_goMsgTimeSpec>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/SportModeState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/SportModeState value.
 * @details All 15 declared fields are retained in source order. The canonical representation occupies 227..227
 * bytes and is identified by UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgSportModeState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 227;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 227;
    /** @brief Exact native field stamp, native scalar unitree_go/msg/TimeSpec. */
    /**
     * @brief unitree_go/msg/SportModeState.stamp: unitree_go/msg/TimeSpec.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    stamp: Ros2Unitree_goMsgTimeSpec = new Ros2Unitree_goMsgTimeSpec();
    /** @brief Exact native field error_code, native scalar uint32. */
    /**
     * @brief unitree_go/msg/SportModeState.error_code: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    error_code: u32 = 0;
    /** @brief Exact native field imu_state, native scalar unitree_go/msg/IMUState. */
    /**
     * @brief unitree_go/msg/SportModeState.imu_state: unitree_go/msg/IMUState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu_state: Ros2Unitree_goMsgIMUState = new Ros2Unitree_goMsgIMUState();
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_go/msg/SportModeState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field progress, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.progress: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    progress: f32 = 0;
    /** @brief Exact native field gait_type, native scalar uint8. */
    /**
     * @brief unitree_go/msg/SportModeState.gait_type: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    gait_type: u8 = 0;
    /** @brief Exact native field foot_raise_height, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.foot_raise_height: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    foot_raise_height: f32 = 0;
    /** @brief Exact native field position, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.position: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    position: Array<f32> = new Array<f32>();
    /** @brief Exact native field body_height, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.body_height: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    body_height: f32 = 0;
    /** @brief Exact native field velocity, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.velocity: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    velocity: Array<f32> = new Array<f32>();
    /** @brief Exact native field yaw_speed, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.yaw_speed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    yaw_speed: f32 = 0;
    /** @brief Exact native field range_obstacle, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.range_obstacle: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    range_obstacle: Array<f32> = new Array<f32>();
    /** @brief Exact native field foot_force, native scalar int16. */
    /**
     * @brief unitree_go/msg/SportModeState.foot_force: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    foot_force: Array<i16> = new Array<i16>();
    /** @brief Exact native field foot_position_body, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.foot_position_body: float32; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    foot_position_body: Array<f32> = new Array<f32>();
    /** @brief Exact native field foot_speed_body, native scalar float32. */
    /**
     * @brief unitree_go/msg/SportModeState.foot_speed_body: float32; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    foot_speed_body: Array<f32> = new Array<f32>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
        {
            this.position.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.velocity.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.range_obstacle.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.foot_force.push(0);
        }
        for(let i = 0; i < 12; ++i)
        {
            this.foot_position_body.push(0);
        }
        for(let i = 0; i < 12; ++i)
        {
            this.foot_speed_body.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamp.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 227 - n)
            {
                return -90;
            }
            n += child;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            if(4 > 227 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            const child = this.imu_state.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 227 - n)
            {
                return -90;
            }
            n += child;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            if(1 > 227 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.progress))
            {
                return -22;
            }
            if(4 > 227 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            if(1 > 227 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.foot_raise_height))
            {
                return -22;
            }
            if(4 > 227 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            if(this.position.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                {
                    return -22;
                }
                if(4 > 227 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 227)
                {
                    return -90;
                }
            }
        }
        {
            if(!isFinite(this.body_height))
            {
                return -22;
            }
            if(4 > 227 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            if(this.velocity.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                {
                    return -22;
                }
                if(4 > 227 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 227)
                {
                    return -90;
                }
            }
        }
        {
            if(!isFinite(this.yaw_speed))
            {
                return -22;
            }
            if(4 > 227 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 227)
            {
                return -90;
            }
        }
        {
            if(this.range_obstacle.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.range_obstacle.length; ++i)
            {
                if(!isFinite(this.range_obstacle[i]))
                {
                    return -22;
                }
                if(4 > 227 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 227)
                {
                    return -90;
                }
            }
        }
        {
            if(this.foot_force.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.foot_force.length; ++i)
            {
                if(2 > 227 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 227)
                {
                    return -90;
                }
            }
        }
        {
            if(this.foot_position_body.length != 12)
            {
                return -22;
            }
            for(let i = 0; i < this.foot_position_body.length; ++i)
            {
                if(!isFinite(this.foot_position_body[i]))
                {
                    return -22;
                }
                if(4 > 227 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 227)
                {
                    return -90;
                }
            }
        }
        {
            if(this.foot_speed_body.length != 12)
            {
                return -22;
            }
            for(let i = 0; i < this.foot_speed_body.length; ++i)
            {
                if(!isFinite(this.foot_speed_body[i]))
                {
                    return -22;
                }
                if(4 > 227 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 227)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        this.stamp.writeControl(w);
        w.integer(<u64>this.error_code, 4);
        this.imu_state.writeControl(w);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>reinterpret<u32>(this.progress), 4);
        w.integer(<u64>this.gait_type, 1);
        w.integer(<u64>reinterpret<u32>(this.foot_raise_height), 4);
        for(let i = 0; i < this.position.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.position[i]), 4);
        }
        w.integer(<u64>reinterpret<u32>(this.body_height), 4);
        for(let i = 0; i < this.velocity.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.velocity[i]), 4);
        }
        w.integer(<u64>reinterpret<u32>(this.yaw_speed), 4);
        for(let i = 0; i < this.range_obstacle.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.range_obstacle[i]), 4);
        }
        for(let i = 0; i < this.foot_force.length; ++i)
        {
            w.integer(<u64>this.foot_force[i], 2);
        }
        for(let i = 0; i < this.foot_position_body.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.foot_position_body[i]), 4);
        }
        for(let i = 0; i < this.foot_speed_body.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.foot_speed_body[i]), 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgSportModeState
    {
        const value = new Ros2Unitree_goMsgSportModeState();
        {
            const decoded = Ros2Unitree_goMsgTimeSpec.readControl(r);
            value.stamp = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.error_code = decoded;
        }
        {
            const decoded = Ros2Unitree_goMsgIMUState.readControl(r);
            value.imu_state = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.progress = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.gait_type = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.foot_raise_height = decoded;
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.position = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.position.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.body_height = decoded;
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.velocity = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.velocity.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.yaw_speed = decoded;
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.range_obstacle = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.range_obstacle.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.foot_force = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.foot_force.push(decoded);
            }
        }
        {
            const count: u32 = 12;
            if(!r.valid || count > 12)
            {
                r.valid = false;
                return value;
            }
            value.foot_position_body = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.foot_position_body.push(decoded);
            }
        }
        {
            const count: u32 = 12;
            if(!r.valid || count > 12)
            {
                r.valid = false;
                return value;
            }
            value.foot_speed_body = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.foot_speed_body.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgSportModeStateCodec implements VendorCodec<Ros2Unitree_goMsgSportModeState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 227;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgSportModeState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgSportModeState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgSportModeState>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgSportModeState>();
        if(bytes.length > 227)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 227)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgSportModeState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgSportModeState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgSportModeState() : changetype<Ros2Unitree_goMsgSportModeState>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/UwbState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/UwbState value.
 * @details All 17 declared fields are retained in source order. The canonical representation occupies 55..55
 * bytes and is identified by UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgUwbState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 55;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 55;
    /** @brief Exact native field version, native scalar uint8. */
    /**
     * @brief unitree_go/msg/UwbState.version: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    version: Array<u8> = new Array<u8>();
    /** @brief Exact native field channel, native scalar uint8. */
    /**
     * @brief unitree_go/msg/UwbState.channel: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    channel: u8 = 0;
    /** @brief Exact native field joy_mode, native scalar uint8. */
    /**
     * @brief unitree_go/msg/UwbState.joy_mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    joy_mode: u8 = 0;
    /** @brief Exact native field orientation_est, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.orientation_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    orientation_est: f32 = 0;
    /** @brief Exact native field pitch_est, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.pitch_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    pitch_est: f32 = 0;
    /** @brief Exact native field distance_est, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.distance_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    distance_est: f32 = 0;
    /** @brief Exact native field yaw_est, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.yaw_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    yaw_est: f32 = 0;
    /** @brief Exact native field tag_roll, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.tag_roll: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    tag_roll: f32 = 0;
    /** @brief Exact native field tag_pitch, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.tag_pitch: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    tag_pitch: f32 = 0;
    /** @brief Exact native field tag_yaw, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.tag_yaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    tag_yaw: f32 = 0;
    /** @brief Exact native field base_roll, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.base_roll: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    base_roll: f32 = 0;
    /** @brief Exact native field base_pitch, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.base_pitch: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    base_pitch: f32 = 0;
    /** @brief Exact native field base_yaw, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.base_yaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    base_yaw: f32 = 0;
    /** @brief Exact native field joystick, native scalar float32. */
    /**
     * @brief unitree_go/msg/UwbState.joystick: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    joystick: Array<f32> = new Array<f32>();
    /** @brief Exact native field error_state, native scalar uint8. */
    /**
     * @brief unitree_go/msg/UwbState.error_state: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    error_state: u8 = 0;
    /** @brief Exact native field buttons, native scalar uint8. */
    /**
     * @brief unitree_go/msg/UwbState.buttons: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    buttons: u8 = 0;
    /** @brief Exact native field enabled_from_app, native scalar uint8. */
    /**
     * @brief unitree_go/msg/UwbState.enabled_from_app: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    enabled_from_app: u8 = 0;

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.version.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.joystick.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.version.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.version.length; ++i)
            {
                if(1 > 55 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 55)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 55 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(1 > 55 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.orientation_est))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.pitch_est))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.distance_est))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.yaw_est))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.tag_roll))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.tag_pitch))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.tag_yaw))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.base_roll))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.base_pitch))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.base_yaw))
            {
                return -22;
            }
            if(4 > 55 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(this.joystick.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.joystick.length; ++i)
            {
                if(!isFinite(this.joystick[i]))
                {
                    return -22;
                }
                if(4 > 55 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 55)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 55 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(1 > 55 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 55)
            {
                return -90;
            }
        }
        {
            if(1 > 55 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 55)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.version.length; ++i)
        {
            w.integer(<u64>this.version[i], 1);
        }
        w.integer(<u64>this.channel, 1);
        w.integer(<u64>this.joy_mode, 1);
        w.integer(<u64>reinterpret<u32>(this.orientation_est), 4);
        w.integer(<u64>reinterpret<u32>(this.pitch_est), 4);
        w.integer(<u64>reinterpret<u32>(this.distance_est), 4);
        w.integer(<u64>reinterpret<u32>(this.yaw_est), 4);
        w.integer(<u64>reinterpret<u32>(this.tag_roll), 4);
        w.integer(<u64>reinterpret<u32>(this.tag_pitch), 4);
        w.integer(<u64>reinterpret<u32>(this.tag_yaw), 4);
        w.integer(<u64>reinterpret<u32>(this.base_roll), 4);
        w.integer(<u64>reinterpret<u32>(this.base_pitch), 4);
        w.integer(<u64>reinterpret<u32>(this.base_yaw), 4);
        for(let i = 0; i < this.joystick.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.joystick[i]), 4);
        }
        w.integer(<u64>this.error_state, 1);
        w.integer(<u64>this.buttons, 1);
        w.integer(<u64>this.enabled_from_app, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgUwbState
    {
        const value = new Ros2Unitree_goMsgUwbState();
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.version = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.version.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.channel = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.joy_mode = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.orientation_est = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.pitch_est = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.distance_est = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.yaw_est = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.tag_roll = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.tag_pitch = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.tag_yaw = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.base_roll = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.base_pitch = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.base_yaw = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.joystick = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.joystick.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.error_state = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.buttons = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.enabled_from_app = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgUwbStateCodec implements VendorCodec<Ros2Unitree_goMsgUwbState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 55;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgUwbState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgUwbState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgUwbState>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgUwbState>();
        if(bytes.length > 55)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 55)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgUwbState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgUwbState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgUwbState() : changetype<Ros2Unitree_goMsgUwbState>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/UwbSwitch; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/UwbSwitch value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgUwbSwitch
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 1;
    /** @brief Exact native field enabled, native scalar uint8. */
    /**
     * @brief unitree_go/msg/UwbSwitch.enabled: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
     */
    enabled: u8 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.enabled, 1);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgUwbSwitch
    {
        const value = new Ros2Unitree_goMsgUwbSwitch();
        {
            const decoded = <u8>r.integer(1);
            value.enabled = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgUwbSwitchCodec implements VendorCodec<Ros2Unitree_goMsgUwbSwitch>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgUwbSwitch): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgUwbSwitch): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgUwbSwitch>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgUwbSwitch>();
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
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgUwbSwitch.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgUwbSwitch
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgUwbSwitch() : changetype<Ros2Unitree_goMsgUwbSwitch>(out.value);
    }
}

/** @brief Complete original unitree_go/msg/WirelessController; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_go/msg/WirelessController value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 18..18
 * bytes and is identified by UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_goMsgWirelessController
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 18;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 18;
    /** @brief Exact native field lx, native scalar float32. */
    /**
     * @brief unitree_go/msg/WirelessController.lx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    lx: f32 = 0;
    /** @brief Exact native field ly, native scalar float32. */
    /**
     * @brief unitree_go/msg/WirelessController.ly: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    ly: f32 = 0;
    /** @brief Exact native field rx, native scalar float32. */
    /**
     * @brief unitree_go/msg/WirelessController.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    rx: f32 = 0;
    /** @brief Exact native field ry, native scalar float32. */
    /**
     * @brief unitree_go/msg/WirelessController.ry: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    ry: f32 = 0;
    /** @brief Exact native field keys, native scalar uint16. */
    /**
     * @brief unitree_go/msg/WirelessController.keys: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    keys: u16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.lx))
            {
                return -22;
            }
            if(4 > 18 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 18)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.ly))
            {
                return -22;
            }
            if(4 > 18 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 18)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.rx))
            {
                return -22;
            }
            if(4 > 18 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 18)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.ry))
            {
                return -22;
            }
            if(4 > 18 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 18)
            {
                return -90;
            }
        }
        {
            if(2 > 18 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 18)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u32>(this.lx), 4);
        w.integer(<u64>reinterpret<u32>(this.ly), 4);
        w.integer(<u64>reinterpret<u32>(this.rx), 4);
        w.integer(<u64>reinterpret<u32>(this.ry), 4);
        w.integer(<u64>this.keys, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_goMsgWirelessController
    {
        const value = new Ros2Unitree_goMsgWirelessController();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.lx = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.ly = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.rx = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.ry = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.keys = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_goMsgWirelessControllerCodec implements VendorCodec<Ros2Unitree_goMsgWirelessController>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 18;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_goMsgWirelessController): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_goMsgWirelessController): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_goMsgWirelessController>
    {
        const out = new VendorDecoded<Ros2Unitree_goMsgWirelessController>();
        if(bytes.length > 18)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 18)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_goMsgWirelessController.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_goMsgWirelessController
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_goMsgWirelessController() : changetype<Ros2Unitree_goMsgWirelessController>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/BmsCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/BmsCmd value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 41..41
 * bytes and is identified by UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgBmsCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 41;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 41;
    /** @brief Exact native field cmd, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/BmsCmd.cmd: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    cmd: u8 = 0;
    /** @brief Exact native field reserve, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/BmsCmd.reserve: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u8> = new Array<u8>();

    constructor()
    {
        for(let i = 0; i < 40; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 41 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 41)
            {
                return -90;
            }
        }
        {
            if(this.reserve.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(1 > 41 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 41)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.cmd, 1);
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgBmsCmd
    {
        const value = new Ros2Unitree_hgMsgBmsCmd();
        {
            const decoded = <u8>r.integer(1);
            value.cmd = decoded;
        }
        {
            const count: u32 = 40;
            if(!r.valid || count > 40)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgBmsCmdCodec implements VendorCodec<Ros2Unitree_hgMsgBmsCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 41;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgBmsCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgBmsCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgBmsCmd>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgBmsCmd>();
        if(bytes.length > 41)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 41)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgBmsCmd.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgBmsCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgBmsCmd() : changetype<Ros2Unitree_hgMsgBmsCmd>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/BmsState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/BmsState value.
 * @details All 13 declared fields are retained in source order. The canonical representation occupies 161..161
 * bytes and is identified by UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgBmsState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 161;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 161;
    /** @brief Exact native field version_high, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/BmsState.version_high: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    version_high: u8 = 0;
    /** @brief Exact native field version_low, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/BmsState.version_low: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    version_low: u8 = 0;
    /** @brief Exact native field fn, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/BmsState.fn: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    fn: u8 = 0;
    /** @brief Exact native field cell_vol, native scalar uint16. */
    /**
     * @brief unitree_hg/msg/BmsState.cell_vol: uint16; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    cell_vol: Array<u16> = new Array<u16>();
    /** @brief Exact native field bmsvoltage, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/BmsState.bmsvoltage: uint32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    bmsvoltage: Array<u32> = new Array<u32>();
    /** @brief Exact native field current, native scalar int32. */
    /**
     * @brief unitree_hg/msg/BmsState.current: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    current: i32 = 0;
    /** @brief Exact native field soc, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/BmsState.soc: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    soc: u8 = 0;
    /** @brief Exact native field soh, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/BmsState.soh: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    soh: u8 = 0;
    /** @brief Exact native field temperature, native scalar int16. */
    /**
     * @brief unitree_hg/msg/BmsState.temperature: int16; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature: Array<i16> = new Array<i16>();
    /** @brief Exact native field cycle, native scalar uint16. */
    /**
     * @brief unitree_hg/msg/BmsState.cycle: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    cycle: u16 = 0;
    /** @brief Exact native field manufacturer_date, native scalar uint16. */
    /**
     * @brief unitree_hg/msg/BmsState.manufacturer_date: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    manufacturer_date: u16 = 0;
    /** @brief Exact native field bmsstate, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/BmsState.bmsstate: uint32; exactly 5 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    bmsstate: Array<u32> = new Array<u32>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/BmsState.reserve: uint32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u32> = new Array<u32>();

    constructor()
    {
        for(let i = 0; i < 40; ++i)
        {
            this.cell_vol.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.bmsvoltage.push(0);
        }
        for(let i = 0; i < 12; ++i)
        {
            this.temperature.push(0);
        }
        for(let i = 0; i < 5; ++i)
        {
            this.bmsstate.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 161 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 161)
            {
                return -90;
            }
        }
        {
            if(1 > 161 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 161)
            {
                return -90;
            }
        }
        {
            if(1 > 161 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 161)
            {
                return -90;
            }
        }
        {
            if(this.cell_vol.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.cell_vol.length; ++i)
            {
                if(2 > 161 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 161)
                {
                    return -90;
                }
            }
        }
        {
            if(this.bmsvoltage.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.bmsvoltage.length; ++i)
            {
                if(4 > 161 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 161)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 161 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 161)
            {
                return -90;
            }
        }
        {
            if(1 > 161 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 161)
            {
                return -90;
            }
        }
        {
            if(1 > 161 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 161)
            {
                return -90;
            }
        }
        {
            if(this.temperature.length != 12)
            {
                return -22;
            }
            for(let i = 0; i < this.temperature.length; ++i)
            {
                if(2 > 161 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 161)
                {
                    return -90;
                }
            }
        }
        {
            if(2 > 161 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 161)
            {
                return -90;
            }
        }
        {
            if(2 > 161 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 161)
            {
                return -90;
            }
        }
        {
            if(this.bmsstate.length != 5)
            {
                return -22;
            }
            for(let i = 0; i < this.bmsstate.length; ++i)
            {
                if(4 > 161 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 161)
                {
                    return -90;
                }
            }
        }
        {
            if(this.reserve.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(4 > 161 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 161)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.version_high, 1);
        w.integer(<u64>this.version_low, 1);
        w.integer(<u64>this.fn, 1);
        for(let i = 0; i < this.cell_vol.length; ++i)
        {
            w.integer(<u64>this.cell_vol[i], 2);
        }
        for(let i = 0; i < this.bmsvoltage.length; ++i)
        {
            w.integer(<u64>this.bmsvoltage[i], 4);
        }
        w.integer(<u64>this.current, 4);
        w.integer(<u64>this.soc, 1);
        w.integer(<u64>this.soh, 1);
        for(let i = 0; i < this.temperature.length; ++i)
        {
            w.integer(<u64>this.temperature[i], 2);
        }
        w.integer(<u64>this.cycle, 2);
        w.integer(<u64>this.manufacturer_date, 2);
        for(let i = 0; i < this.bmsstate.length; ++i)
        {
            w.integer(<u64>this.bmsstate[i], 4);
        }
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgBmsState
    {
        const value = new Ros2Unitree_hgMsgBmsState();
        {
            const decoded = <u8>r.integer(1);
            value.version_high = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.version_low = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.fn = decoded;
        }
        {
            const count: u32 = 40;
            if(!r.valid || count > 40)
            {
                r.valid = false;
                return value;
            }
            value.cell_vol = new Array<u16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u16>r.integer(2);
                value.cell_vol.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.bmsvoltage = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.bmsvoltage.push(decoded);
            }
        }
        {
            const decoded = <i32>r.integer(4);
            value.current = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.soc = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.soh = decoded;
        }
        {
            const count: u32 = 12;
            if(!r.valid || count > 12)
            {
                r.valid = false;
                return value;
            }
            value.temperature = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.temperature.push(decoded);
            }
        }
        {
            const decoded = <u16>r.integer(2);
            value.cycle = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.manufacturer_date = decoded;
        }
        {
            const count: u32 = 5;
            if(!r.valid || count > 5)
            {
                r.valid = false;
                return value;
            }
            value.bmsstate = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.bmsstate.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgBmsStateCodec implements VendorCodec<Ros2Unitree_hgMsgBmsState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 161;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgBmsState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgBmsState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgBmsState>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgBmsState>();
        if(bytes.length > 161)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 161)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgBmsState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgBmsState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgBmsState() : changetype<Ros2Unitree_hgMsgBmsState>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/MotorCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/MotorCmd value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 25..25
 * bytes and is identified by UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgMotorCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 25;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 25;
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/MotorCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field q, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorCmd.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    q: f32 = 0;
    /** @brief Exact native field dq, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorCmd.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    dq: f32 = 0;
    /** @brief Exact native field tau, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorCmd.tau: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    tau: f32 = 0;
    /** @brief Exact native field kp, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorCmd.kp: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    kp: f32 = 0;
    /** @brief Exact native field kd, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorCmd.kd: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    kd: f32 = 0;
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/MotorCmd.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 25 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 25)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.q))
            {
                return -22;
            }
            if(4 > 25 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 25)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.dq))
            {
                return -22;
            }
            if(4 > 25 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 25)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.tau))
            {
                return -22;
            }
            if(4 > 25 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 25)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.kp))
            {
                return -22;
            }
            if(4 > 25 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 25)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.kd))
            {
                return -22;
            }
            if(4 > 25 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 25)
            {
                return -90;
            }
        }
        {
            if(4 > 25 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 25)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>reinterpret<u32>(this.q), 4);
        w.integer(<u64>reinterpret<u32>(this.dq), 4);
        w.integer(<u64>reinterpret<u32>(this.tau), 4);
        w.integer(<u64>reinterpret<u32>(this.kp), 4);
        w.integer(<u64>reinterpret<u32>(this.kd), 4);
        w.integer(<u64>this.reserve, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgMotorCmd
    {
        const value = new Ros2Unitree_hgMsgMotorCmd();
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.q = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.dq = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.tau = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.kp = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.kd = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.reserve = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgMotorCmdCodec implements VendorCodec<Ros2Unitree_hgMsgMotorCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 25;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgMotorCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgMotorCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgMotorCmd>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgMotorCmd>();
        if(bytes.length > 25)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 25)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgMotorCmd.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgMotorCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgMotorCmd() : changetype<Ros2Unitree_hgMsgMotorCmd>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/HandCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/HandCmd value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 20..820
 * bytes and is identified by UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgHandCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 820;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 820;
    /** @brief Exact native field motor_cmd, native scalar unitree_hg/msg/MotorCmd. */
    /**
     * @brief unitree_hg/msg/HandCmd.motor_cmd: unitree_hg/msg/MotorCmd; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    motor_cmd: Array<Ros2Unitree_hgMsgMotorCmd> = new Array<Ros2Unitree_hgMsgMotorCmd>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/HandCmd.reserve: uint32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u32> = new Array<u32>();

    constructor()
    {
        for(let i = 0; i < 4; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.motor_cmd.length > 32)
            {
                return -22;
            }
            if(4 > 820 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.motor_cmd.length; ++i)
            {
                const child = this.motor_cmd[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 820 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 820)
                {
                    return -90;
                }
            }
        }
        {
            if(this.reserve.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(4 > 820 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 820)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.motor_cmd.length);
        for(let i = 0; i < this.motor_cmd.length; ++i)
        {
            this.motor_cmd[i].writeControl(w);
        }
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgHandCmd
    {
        const value = new Ros2Unitree_hgMsgHandCmd();
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.motor_cmd = new Array<Ros2Unitree_hgMsgMotorCmd>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_hgMsgMotorCmd.readControl(r);
                value.motor_cmd.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgHandCmdCodec implements VendorCodec<Ros2Unitree_hgMsgHandCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 820;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgHandCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgHandCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgHandCmd>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgHandCmd>();
        if(bytes.length > 820)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgHandCmd.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgHandCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgHandCmd() : changetype<Ros2Unitree_hgMsgHandCmd>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/MotorState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/MotorState value.
 * @details All 10 declared fields are retained in source order. The canonical representation occupies 53..53
 * bytes and is identified by UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgMotorState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 53;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 53;
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/MotorState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field q, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorState.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    q: f32 = 0;
    /** @brief Exact native field dq, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorState.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    dq: f32 = 0;
    /** @brief Exact native field ddq, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorState.ddq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    ddq: f32 = 0;
    /** @brief Exact native field tau_est, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorState.tau_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    tau_est: f32 = 0;
    /** @brief Exact native field temperature, native scalar int16. */
    /**
     * @brief unitree_hg/msg/MotorState.temperature: int16; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature: Array<i16> = new Array<i16>();
    /** @brief Exact native field vol, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MotorState.vol: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    vol: f32 = 0;
    /** @brief Exact native field sensor, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/MotorState.sensor: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    sensor: Array<u32> = new Array<u32>();
    /** @brief Exact native field motorstate, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/MotorState.motorstate: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    motorstate: u32 = 0;
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/MotorState.reserve: uint32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u32> = new Array<u32>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.temperature.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.sensor.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 53 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 53)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.q))
            {
                return -22;
            }
            if(4 > 53 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 53)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.dq))
            {
                return -22;
            }
            if(4 > 53 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 53)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.ddq))
            {
                return -22;
            }
            if(4 > 53 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 53)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.tau_est))
            {
                return -22;
            }
            if(4 > 53 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 53)
            {
                return -90;
            }
        }
        {
            if(this.temperature.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.temperature.length; ++i)
            {
                if(2 > 53 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 53)
                {
                    return -90;
                }
            }
        }
        {
            if(!isFinite(this.vol))
            {
                return -22;
            }
            if(4 > 53 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 53)
            {
                return -90;
            }
        }
        {
            if(this.sensor.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.sensor.length; ++i)
            {
                if(4 > 53 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 53)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 53 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 53)
            {
                return -90;
            }
        }
        {
            if(this.reserve.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(4 > 53 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 53)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>reinterpret<u32>(this.q), 4);
        w.integer(<u64>reinterpret<u32>(this.dq), 4);
        w.integer(<u64>reinterpret<u32>(this.ddq), 4);
        w.integer(<u64>reinterpret<u32>(this.tau_est), 4);
        for(let i = 0; i < this.temperature.length; ++i)
        {
            w.integer(<u64>this.temperature[i], 2);
        }
        w.integer(<u64>reinterpret<u32>(this.vol), 4);
        for(let i = 0; i < this.sensor.length; ++i)
        {
            w.integer(<u64>this.sensor[i], 4);
        }
        w.integer(<u64>this.motorstate, 4);
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgMotorState
    {
        const value = new Ros2Unitree_hgMsgMotorState();
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.q = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.dq = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.ddq = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.tau_est = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.temperature = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.temperature.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.vol = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.sensor = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.sensor.push(decoded);
            }
        }
        {
            const decoded = <u32>r.integer(4);
            value.motorstate = decoded;
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgMotorStateCodec implements VendorCodec<Ros2Unitree_hgMsgMotorState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 53;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgMotorState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgMotorState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgMotorState>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgMotorState>();
        if(bytes.length > 53)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 53)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgMotorState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgMotorState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgMotorState() : changetype<Ros2Unitree_hgMsgMotorState>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/PressSensorState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/PressSensorState value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 104..104
 * bytes and is identified by UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgPressSensorState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 104;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 104;
    /** @brief Exact native field pressure, native scalar float32. */
    /**
     * @brief unitree_hg/msg/PressSensorState.pressure: float32; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
     */
    pressure: Array<f32> = new Array<f32>();
    /** @brief Exact native field temperature, native scalar float32. */
    /**
     * @brief unitree_hg/msg/PressSensorState.temperature: float32; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature: Array<f32> = new Array<f32>();
    /** @brief Exact native field lost, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/PressSensorState.lost: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
     */
    lost: u32 = 0;
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/PressSensorState.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: u32 = 0;

    constructor()
    {
        for(let i = 0; i < 12; ++i)
        {
            this.pressure.push(0);
        }
        for(let i = 0; i < 12; ++i)
        {
            this.temperature.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pressure.length != 12)
            {
                return -22;
            }
            for(let i = 0; i < this.pressure.length; ++i)
            {
                if(!isFinite(this.pressure[i]))
                {
                    return -22;
                }
                if(4 > 104 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 104)
                {
                    return -90;
                }
            }
        }
        {
            if(this.temperature.length != 12)
            {
                return -22;
            }
            for(let i = 0; i < this.temperature.length; ++i)
            {
                if(!isFinite(this.temperature[i]))
                {
                    return -22;
                }
                if(4 > 104 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 104)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 104 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 104)
            {
                return -90;
            }
        }
        {
            if(4 > 104 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 104)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.pressure.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.pressure[i]), 4);
        }
        for(let i = 0; i < this.temperature.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.temperature[i]), 4);
        }
        w.integer(<u64>this.lost, 4);
        w.integer(<u64>this.reserve, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgPressSensorState
    {
        const value = new Ros2Unitree_hgMsgPressSensorState();
        {
            const count: u32 = 12;
            if(!r.valid || count > 12)
            {
                r.valid = false;
                return value;
            }
            value.pressure = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.pressure.push(decoded);
            }
        }
        {
            const count: u32 = 12;
            if(!r.valid || count > 12)
            {
                r.valid = false;
                return value;
            }
            value.temperature = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.temperature.push(decoded);
            }
        }
        {
            const decoded = <u32>r.integer(4);
            value.lost = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.reserve = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgPressSensorStateCodec implements VendorCodec<Ros2Unitree_hgMsgPressSensorState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 104;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgPressSensorState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgPressSensorState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgPressSensorState>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgPressSensorState>();
        if(bytes.length > 104)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 104)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgPressSensorState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgPressSensorState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgPressSensorState() : changetype<Ros2Unitree_hgMsgPressSensorState>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/IMUState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/IMUState value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 54..54
 * bytes and is identified by UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgIMUState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 54;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 54;
    /** @brief Exact native field quaternion, native scalar float32. */
    /**
     * @brief unitree_hg/msg/IMUState.quaternion: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    quaternion: Array<f32> = new Array<f32>();
    /** @brief Exact native field gyroscope, native scalar float32. */
    /**
     * @brief unitree_hg/msg/IMUState.gyroscope: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    gyroscope: Array<f32> = new Array<f32>();
    /** @brief Exact native field accelerometer, native scalar float32. */
    /**
     * @brief unitree_hg/msg/IMUState.accelerometer: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    accelerometer: Array<f32> = new Array<f32>();
    /** @brief Exact native field rpy, native scalar float32. */
    /**
     * @brief unitree_hg/msg/IMUState.rpy: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    rpy: Array<f32> = new Array<f32>();
    /** @brief Exact native field temperature, native scalar int16. */
    /**
     * @brief unitree_hg/msg/IMUState.temperature: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature: i16 = 0;

    constructor()
    {
        for(let i = 0; i < 4; ++i)
        {
            this.quaternion.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.gyroscope.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.accelerometer.push(0);
        }
        for(let i = 0; i < 3; ++i)
        {
            this.rpy.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.quaternion.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.quaternion.length; ++i)
            {
                if(!isFinite(this.quaternion[i]))
                {
                    return -22;
                }
                if(4 > 54 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 54)
                {
                    return -90;
                }
            }
        }
        {
            if(this.gyroscope.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.gyroscope.length; ++i)
            {
                if(!isFinite(this.gyroscope[i]))
                {
                    return -22;
                }
                if(4 > 54 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 54)
                {
                    return -90;
                }
            }
        }
        {
            if(this.accelerometer.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.accelerometer.length; ++i)
            {
                if(!isFinite(this.accelerometer[i]))
                {
                    return -22;
                }
                if(4 > 54 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 54)
                {
                    return -90;
                }
            }
        }
        {
            if(this.rpy.length != 3)
            {
                return -22;
            }
            for(let i = 0; i < this.rpy.length; ++i)
            {
                if(!isFinite(this.rpy[i]))
                {
                    return -22;
                }
                if(4 > 54 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 54)
                {
                    return -90;
                }
            }
        }
        {
            if(2 > 54 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 54)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.quaternion.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.quaternion[i]), 4);
        }
        for(let i = 0; i < this.gyroscope.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.gyroscope[i]), 4);
        }
        for(let i = 0; i < this.accelerometer.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.accelerometer[i]), 4);
        }
        for(let i = 0; i < this.rpy.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.rpy[i]), 4);
        }
        w.integer(<u64>this.temperature, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgIMUState
    {
        const value = new Ros2Unitree_hgMsgIMUState();
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.quaternion = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.quaternion.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.gyroscope = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.gyroscope.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.accelerometer = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.accelerometer.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.rpy = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.rpy.push(decoded);
            }
        }
        {
            const decoded = <i16>r.integer(2);
            value.temperature = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgIMUStateCodec implements VendorCodec<Ros2Unitree_hgMsgIMUState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 54;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgIMUState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgIMUState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgIMUState>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgIMUState>();
        if(bytes.length > 54)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 54)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgIMUState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgIMUState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgIMUState() : changetype<Ros2Unitree_hgMsgIMUState>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/HandState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/HandState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 94..5118
 * bytes and is identified by UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgHandState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 5118;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 5118;
    /** @brief Exact native field motor_state, native scalar unitree_hg/msg/MotorState. */
    /**
     * @brief unitree_hg/msg/HandState.motor_state: unitree_hg/msg/MotorState; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    motor_state: Array<Ros2Unitree_hgMsgMotorState> = new Array<Ros2Unitree_hgMsgMotorState>();
    /** @brief Exact native field press_sensor_state, native scalar unitree_hg/msg/PressSensorState. */
    /**
     * @brief unitree_hg/msg/HandState.press_sensor_state: unitree_hg/msg/PressSensorState; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    press_sensor_state: Array<Ros2Unitree_hgMsgPressSensorState> = new Array<Ros2Unitree_hgMsgPressSensorState>();
    /** @brief Exact native field imu_state, native scalar unitree_hg/msg/IMUState. */
    /**
     * @brief unitree_hg/msg/HandState.imu_state: unitree_hg/msg/IMUState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu_state: Ros2Unitree_hgMsgIMUState = new Ros2Unitree_hgMsgIMUState();
    /** @brief Exact native field power_v, native scalar float32. */
    /**
     * @brief unitree_hg/msg/HandState.power_v: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    power_v: f32 = 0;
    /** @brief Exact native field power_a, native scalar float32. */
    /**
     * @brief unitree_hg/msg/HandState.power_a: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    power_a: f32 = 0;
    /** @brief Exact native field system_v, native scalar float32. */
    /**
     * @brief unitree_hg/msg/HandState.system_v: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    system_v: f32 = 0;
    /** @brief Exact native field device_v, native scalar float32. */
    /**
     * @brief unitree_hg/msg/HandState.device_v: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    device_v: f32 = 0;
    /** @brief Exact native field error, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/HandState.error: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    error: Array<u32> = new Array<u32>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/HandState.reserve: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u32> = new Array<u32>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.error.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.motor_state.length > 32)
            {
                return -22;
            }
            if(4 > 5118 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.motor_state.length; ++i)
            {
                const child = this.motor_state[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 5118 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 5118)
                {
                    return -90;
                }
            }
        }
        {
            if(this.press_sensor_state.length > 32)
            {
                return -22;
            }
            if(4 > 5118 - n)
            {
                return -90;
            }
            n += 4;
            for(let i = 0; i < this.press_sensor_state.length; ++i)
            {
                const child = this.press_sensor_state[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 5118 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 5118)
                {
                    return -90;
                }
            }
        }
        {
            const child = this.imu_state.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 5118 - n)
            {
                return -90;
            }
            n += child;
            if(n > 5118)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.power_v))
            {
                return -22;
            }
            if(4 > 5118 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 5118)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.power_a))
            {
                return -22;
            }
            if(4 > 5118 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 5118)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.system_v))
            {
                return -22;
            }
            if(4 > 5118 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 5118)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.device_v))
            {
                return -22;
            }
            if(4 > 5118 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 5118)
            {
                return -90;
            }
        }
        {
            if(this.error.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.error.length; ++i)
            {
                if(4 > 5118 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 5118)
                {
                    return -90;
                }
            }
        }
        {
            if(this.reserve.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(4 > 5118 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 5118)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.motor_state.length);
        for(let i = 0; i < this.motor_state.length; ++i)
        {
            this.motor_state[i].writeControl(w);
        }
        w.u32(<u32>this.press_sensor_state.length);
        for(let i = 0; i < this.press_sensor_state.length; ++i)
        {
            this.press_sensor_state[i].writeControl(w);
        }
        this.imu_state.writeControl(w);
        w.integer(<u64>reinterpret<u32>(this.power_v), 4);
        w.integer(<u64>reinterpret<u32>(this.power_a), 4);
        w.integer(<u64>reinterpret<u32>(this.system_v), 4);
        w.integer(<u64>reinterpret<u32>(this.device_v), 4);
        for(let i = 0; i < this.error.length; ++i)
        {
            w.integer(<u64>this.error[i], 4);
        }
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgHandState
    {
        const value = new Ros2Unitree_hgMsgHandState();
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.motor_state = new Array<Ros2Unitree_hgMsgMotorState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_hgMsgMotorState.readControl(r);
                value.motor_state.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.press_sensor_state = new Array<Ros2Unitree_hgMsgPressSensorState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_hgMsgPressSensorState.readControl(r);
                value.press_sensor_state.push(decoded);
            }
        }
        {
            const decoded = Ros2Unitree_hgMsgIMUState.readControl(r);
            value.imu_state = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.power_v = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.power_a = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.system_v = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.device_v = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.error = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.error.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.reserve.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgHandStateCodec implements VendorCodec<Ros2Unitree_hgMsgHandState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 5118;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgHandState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgHandState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgHandState>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgHandState>();
        if(bytes.length > 5118)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 94)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgHandState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgHandState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgHandState() : changetype<Ros2Unitree_hgMsgHandState>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/LowCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/LowCmd value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 897..897
 * bytes and is identified by UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgLowCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 897;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 897;
    /** @brief Exact native field mode_pr, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/LowCmd.mode_pr: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    mode_pr: u8 = 0;
    /** @brief Exact native field mode_machine, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/LowCmd.mode_machine: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    mode_machine: u8 = 0;
    /** @brief Exact native field motor_cmd, native scalar unitree_hg/msg/MotorCmd. */
    /**
     * @brief unitree_hg/msg/LowCmd.motor_cmd: unitree_hg/msg/MotorCmd; exactly 35 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    motor_cmd: Array<Ros2Unitree_hgMsgMotorCmd> = new Array<Ros2Unitree_hgMsgMotorCmd>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/LowCmd.reserve: uint32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u32> = new Array<u32>();
    /** @brief Exact native field crc, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/LowCmd.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    crc: u32 = 0;

    constructor()
    {
        for(let i = 0; i < 35; ++i)
        {
            this.motor_cmd.push(new Ros2Unitree_hgMsgMotorCmd());
        }
        for(let i = 0; i < 4; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 897 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 897)
            {
                return -90;
            }
        }
        {
            if(1 > 897 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 897)
            {
                return -90;
            }
        }
        {
            if(this.motor_cmd.length != 35)
            {
                return -22;
            }
            for(let i = 0; i < this.motor_cmd.length; ++i)
            {
                const child = this.motor_cmd[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 897 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 897)
                {
                    return -90;
                }
            }
        }
        {
            if(this.reserve.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(4 > 897 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 897)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 897 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 897)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.mode_pr, 1);
        w.integer(<u64>this.mode_machine, 1);
        for(let i = 0; i < this.motor_cmd.length; ++i)
        {
            this.motor_cmd[i].writeControl(w);
        }
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 4);
        }
        w.integer(<u64>this.crc, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgLowCmd
    {
        const value = new Ros2Unitree_hgMsgLowCmd();
        {
            const decoded = <u8>r.integer(1);
            value.mode_pr = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode_machine = decoded;
        }
        {
            const count: u32 = 35;
            if(!r.valid || count > 35)
            {
                r.valid = false;
                return value;
            }
            value.motor_cmd = new Array<Ros2Unitree_hgMsgMotorCmd>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_hgMsgMotorCmd.readControl(r);
                value.motor_cmd.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.reserve.push(decoded);
            }
        }
        {
            const decoded = <u32>r.integer(4);
            value.crc = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgLowCmdCodec implements VendorCodec<Ros2Unitree_hgMsgLowCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 897;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgLowCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgLowCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgLowCmd>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgLowCmd>();
        if(bytes.length > 897)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 897)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgLowCmd.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgLowCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgLowCmd() : changetype<Ros2Unitree_hgMsgLowCmd>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/LowState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/LowState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 1983..1983
 * bytes and is identified by UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgLowState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1983;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 1983;
    /** @brief Exact native field version, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/LowState.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    version: Array<u32> = new Array<u32>();
    /** @brief Exact native field mode_pr, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/LowState.mode_pr: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    mode_pr: u8 = 0;
    /** @brief Exact native field mode_machine, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/LowState.mode_machine: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    mode_machine: u8 = 0;
    /** @brief Exact native field tick, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/LowState.tick: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    tick: u32 = 0;
    /** @brief Exact native field imu_state, native scalar unitree_hg/msg/IMUState. */
    /**
     * @brief unitree_hg/msg/LowState.imu_state: unitree_hg/msg/IMUState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu_state: Ros2Unitree_hgMsgIMUState = new Ros2Unitree_hgMsgIMUState();
    /** @brief Exact native field motor_state, native scalar unitree_hg/msg/MotorState. */
    /**
     * @brief unitree_hg/msg/LowState.motor_state: unitree_hg/msg/MotorState; exactly 35 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    motor_state: Array<Ros2Unitree_hgMsgMotorState> = new Array<Ros2Unitree_hgMsgMotorState>();
    /** @brief Exact native field wireless_remote, native scalar uint8. */
    /**
     * @brief unitree_hg/msg/LowState.wireless_remote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    wireless_remote: Array<u8> = new Array<u8>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/LowState.reserve: uint32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: Array<u32> = new Array<u32>();
    /** @brief Exact native field crc, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/LowState.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    crc: u32 = 0;

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.version.push(0);
        }
        for(let i = 0; i < 35; ++i)
        {
            this.motor_state.push(new Ros2Unitree_hgMsgMotorState());
        }
        for(let i = 0; i < 40; ++i)
        {
            this.wireless_remote.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.reserve.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.version.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.version.length; ++i)
            {
                if(4 > 1983 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1983)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 1983 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1983)
            {
                return -90;
            }
        }
        {
            if(1 > 1983 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1983)
            {
                return -90;
            }
        }
        {
            if(4 > 1983 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1983)
            {
                return -90;
            }
        }
        {
            const child = this.imu_state.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1983 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1983)
            {
                return -90;
            }
        }
        {
            if(this.motor_state.length != 35)
            {
                return -22;
            }
            for(let i = 0; i < this.motor_state.length; ++i)
            {
                const child = this.motor_state[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1983 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1983)
                {
                    return -90;
                }
            }
        }
        {
            if(this.wireless_remote.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.wireless_remote.length; ++i)
            {
                if(1 > 1983 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 1983)
                {
                    return -90;
                }
            }
        }
        {
            if(this.reserve.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.reserve.length; ++i)
            {
                if(4 > 1983 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1983)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 1983 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1983)
            {
                return -90;
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.version.length; ++i)
        {
            w.integer(<u64>this.version[i], 4);
        }
        w.integer(<u64>this.mode_pr, 1);
        w.integer(<u64>this.mode_machine, 1);
        w.integer(<u64>this.tick, 4);
        this.imu_state.writeControl(w);
        for(let i = 0; i < this.motor_state.length; ++i)
        {
            this.motor_state[i].writeControl(w);
        }
        for(let i = 0; i < this.wireless_remote.length; ++i)
        {
            w.integer(<u64>this.wireless_remote[i], 1);
        }
        for(let i = 0; i < this.reserve.length; ++i)
        {
            w.integer(<u64>this.reserve[i], 4);
        }
        w.integer(<u64>this.crc, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgLowState
    {
        const value = new Ros2Unitree_hgMsgLowState();
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.version = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.version.push(decoded);
            }
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode_pr = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode_machine = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.tick = decoded;
        }
        {
            const decoded = Ros2Unitree_hgMsgIMUState.readControl(r);
            value.imu_state = decoded;
        }
        {
            const count: u32 = 35;
            if(!r.valid || count > 35)
            {
                r.valid = false;
                return value;
            }
            value.motor_state = new Array<Ros2Unitree_hgMsgMotorState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Unitree_hgMsgMotorState.readControl(r);
                value.motor_state.push(decoded);
            }
        }
        {
            const count: u32 = 40;
            if(!r.valid || count > 40)
            {
                r.valid = false;
                return value;
            }
            value.wireless_remote = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.wireless_remote.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.reserve = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.reserve.push(decoded);
            }
        }
        {
            const decoded = <u32>r.integer(4);
            value.crc = decoded;
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgLowStateCodec implements VendorCodec<Ros2Unitree_hgMsgLowState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1983;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgLowState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgLowState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgLowState>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgLowState>();
        if(bytes.length > 1983)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1983)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgLowState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgLowState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgLowState() : changetype<Ros2Unitree_hgMsgLowState>(out.value);
    }
}

/** @brief Complete original unitree_hg/msg/MainBoardState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 2 unitree_hg/msg/MainBoardState value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 72..72
 * bytes and is identified by UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros2Unitree_hgMsgMainBoardState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 72;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly aggregateWireBytes: i32 = 0;
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly cartesianWireBytes: u64 = 72;
    /** @brief Exact native field fan_state, native scalar uint16. */
    /**
     * @brief unitree_hg/msg/MainBoardState.fan_state: uint16; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
     */
    fan_state: Array<u16> = new Array<u16>();
    /** @brief Exact native field temperature, native scalar int16. */
    /**
     * @brief unitree_hg/msg/MainBoardState.temperature: int16; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature: Array<i16> = new Array<i16>();
    /** @brief Exact native field value, native scalar float32. */
    /**
     * @brief unitree_hg/msg/MainBoardState.value: float32; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
     */
    value: Array<f32> = new Array<f32>();
    /** @brief Exact native field state, native scalar uint32. */
    /**
     * @brief unitree_hg/msg/MainBoardState.state: uint32; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
     */
    state: Array<u32> = new Array<u32>();

    constructor()
    {
        for(let i = 0; i < 6; ++i)
        {
            this.fan_state.push(0);
        }
        for(let i = 0; i < 6; ++i)
        {
            this.temperature.push(0);
        }
        for(let i = 0; i < 6; ++i)
        {
            this.value.push(0);
        }
        for(let i = 0; i < 6; ++i)
        {
            this.state.push(0);
        }
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    /**
     * @brief Validate and measure the exact active canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Exact initialized byte count, or a negative original 22/90 codec status.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.fan_state.length != 6)
            {
                return -22;
            }
            for(let i = 0; i < this.fan_state.length; ++i)
            {
                if(2 > 72 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 72)
                {
                    return -90;
                }
            }
        }
        {
            if(this.temperature.length != 6)
            {
                return -22;
            }
            for(let i = 0; i < this.temperature.length; ++i)
            {
                if(2 > 72 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 72)
                {
                    return -90;
                }
            }
        }
        {
            if(this.value.length != 6)
            {
                return -22;
            }
            for(let i = 0; i < this.value.length; ++i)
            {
                if(!isFinite(this.value[i]))
                {
                    return -22;
                }
                if(4 > 72 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 72)
                {
                    return -90;
                }
            }
        }
        {
            if(this.state.length != 6)
            {
                return -22;
            }
            for(let i = 0; i < this.state.length; ++i)
            {
                if(4 > 72 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 72)
                {
                    return -90;
                }
            }
        }
        return n;
    }

    /**
     * @brief Validate every initialized record field and finite bound.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    /**
     * @brief Test complete value validity without transport or allocation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @return True only when every initialized field satisfies this canonical profile.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    /**
     * @brief Append the complete prevalidated record to its internal writer.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] w Exclusive canonical writer with sufficient measured capacity.
     * @return No record value; the internal writer retains its original failure.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.fan_state.length; ++i)
        {
            w.integer(<u64>this.fan_state[i], 2);
        }
        for(let i = 0; i < this.temperature.length; ++i)
        {
            w.integer(<u64>this.temperature[i], 2);
        }
        for(let i = 0; i < this.value.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.value[i]), 4);
        }
        for(let i = 0; i < this.state.length; ++i)
        {
            w.integer(<u64>this.state[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    /**
     * @brief Read every declared field from the internal canonical reader.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in,out] r Exclusive reader; discard returned storage if reader validation fails.
     * @return Owned record prefix; only decodeChecked may publish a validated complete value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    static readControl(r: Reader): Ros2Unitree_hgMsgMainBoardState
    {
        const value = new Ros2Unitree_hgMsgMainBoardState();
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.fan_state = new Array<u16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u16>r.integer(2);
                value.fan_state.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.temperature = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.temperature.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.value = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.value.push(decoded);
            }
        }
        {
            const count: u32 = 6;
            if(!r.valid || count > 6)
            {
                r.valid = false;
                return value;
            }
            value.state = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.state.push(decoded);
            }
        }
        return value;
    }
}

/**
 * @brief Provide a complete checked original Unitree record codec.
 * @details Every field and finite schema quota is preserved. Successful values and byte arrays own their managed
 * storage; numeric refusal exposes no accepted partial result. Construction creates no native object or
 * authority.
 */
export class Ros2Unitree_hgMsgMainBoardStateCodec implements VendorCodec<Ros2Unitree_hgMsgMainBoardState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 72;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros2Unitree_hgMsgMainBoardState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
        {
            return new VendorEncoded(<u32>- n);
        }
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    /**
     * @brief Encode every field through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable original record.
     * @return Owned canonical bytes; checked variants retain numeric failure details.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encode(value: Ros2Unitree_hgMsgMainBoardState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    /**
     * @brief Validate and decode exactly one entire canonical record.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Complete immutable canonical input, borrowed through return.
     * @return Owned complete value with status 0; nonzero status exposes no accepted value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Unitree_hgMsgMainBoardState>
    {
        const out = new VendorDecoded<Ros2Unitree_hgMsgMainBoardState>();
        if(bytes.length > 72)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 72)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Unitree_hgMsgMainBoardState.readControl(reader);
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
     * @brief Validate one entire canonical byte sequence without a ROS operation.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body.
     * @return True only when complete decoding succeeds; false preserves no partial record.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    /**
     * @brief Decode one complete record through the selected language codec contract.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] bytes Entire immutable canonical body; no trailing bytes are accepted.
     * @return Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    decode(bytes: Uint8Array): Ros2Unitree_hgMsgMainBoardState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Unitree_hgMsgMainBoardState() : changetype<Ros2Unitree_hgMsgMainBoardState>(out.value);
    }
}
