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

/** @brief Complete original unitree_legged_msgs/BmsCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/BmsCmd value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsBmsCmd
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
     * @brief unitree_legged_msgs/BmsCmd.off: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    off: u8 = 0;
    /** @brief Exact native field reserve, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/BmsCmd.reserve: uint8; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsBmsCmd
    {
        const value = new Ros1Unitree_legged_msgsBmsCmd();
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
export class Ros1Unitree_legged_msgsBmsCmdCodec implements VendorCodec<Ros1Unitree_legged_msgsBmsCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928';
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
    encodeChecked(value: Ros1Unitree_legged_msgsBmsCmd): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsBmsCmd): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsBmsCmd>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsBmsCmd>();
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
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsBmsCmd.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsBmsCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsBmsCmd() : changetype<Ros1Unitree_legged_msgsBmsCmd>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/BmsState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/BmsState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 34..34
 * bytes and is identified by UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsBmsState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 34;
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
    static readonly cartesianWireBytes: u64 = 34;
    /** @brief Exact native field version_h, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/BmsState.version_h: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    version_h: u8 = 0;
    /** @brief Exact native field version_l, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/BmsState.version_l: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    version_l: u8 = 0;
    /** @brief Exact native field bms_status, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/BmsState.bms_status: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    bms_status: u8 = 0;
    /** @brief Exact native field SOC, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/BmsState.SOC: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    SOC: u8 = 0;
    /** @brief Exact native field current, native scalar int32. */
    /**
     * @brief unitree_legged_msgs/BmsState.current: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    current: i32 = 0;
    /** @brief Exact native field cycle, native scalar uint16. */
    /**
     * @brief unitree_legged_msgs/BmsState.cycle: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    cycle: u16 = 0;
    /** @brief Exact native field BQ_NTC, native scalar int8. */
    /**
     * @brief unitree_legged_msgs/BmsState.BQ_NTC: int8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    BQ_NTC: Array<i8> = new Array<i8>();
    /** @brief Exact native field MCU_NTC, native scalar int8. */
    /**
     * @brief unitree_legged_msgs/BmsState.MCU_NTC: int8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    MCU_NTC: Array<i8> = new Array<i8>();
    /** @brief Exact native field cell_vol, native scalar uint16. */
    /**
     * @brief unitree_legged_msgs/BmsState.cell_vol: uint16; exactly 10 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    cell_vol: Array<u16> = new Array<u16>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.BQ_NTC.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.MCU_NTC.push(0);
        }
        for(let i = 0; i < 10; ++i)
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
            if(1 > 34 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 34)
            {
                return -90;
            }
        }
        {
            if(1 > 34 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 34)
            {
                return -90;
            }
        }
        {
            if(1 > 34 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 34)
            {
                return -90;
            }
        }
        {
            if(1 > 34 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 34)
            {
                return -90;
            }
        }
        {
            if(4 > 34 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 34)
            {
                return -90;
            }
        }
        {
            if(2 > 34 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 34)
            {
                return -90;
            }
        }
        {
            if(this.BQ_NTC.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.BQ_NTC.length; ++i)
            {
                if(1 > 34 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 34)
                {
                    return -90;
                }
            }
        }
        {
            if(this.MCU_NTC.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.MCU_NTC.length; ++i)
            {
                if(1 > 34 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 34)
                {
                    return -90;
                }
            }
        }
        {
            if(this.cell_vol.length != 10)
            {
                return -22;
            }
            for(let i = 0; i < this.cell_vol.length; ++i)
            {
                if(2 > 34 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 34)
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
        w.integer(<u64>this.version_h, 1);
        w.integer(<u64>this.version_l, 1);
        w.integer(<u64>this.bms_status, 1);
        w.integer(<u64>this.SOC, 1);
        w.integer(<u64>this.current, 4);
        w.integer(<u64>this.cycle, 2);
        for(let i = 0; i < this.BQ_NTC.length; ++i)
        {
            w.integer(<u64>this.BQ_NTC[i], 1);
        }
        for(let i = 0; i < this.MCU_NTC.length; ++i)
        {
            w.integer(<u64>this.MCU_NTC[i], 1);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsBmsState
    {
        const value = new Ros1Unitree_legged_msgsBmsState();
        {
            const decoded = <u8>r.integer(1);
            value.version_h = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.version_l = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.bms_status = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.SOC = decoded;
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
            value.BQ_NTC = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.BQ_NTC.push(decoded);
            }
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.MCU_NTC = new Array<i8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i8>r.integer(1);
                value.MCU_NTC.push(decoded);
            }
        }
        {
            const count: u32 = 10;
            if(!r.valid || count > 10)
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
export class Ros1Unitree_legged_msgsBmsStateCodec implements VendorCodec<Ros1Unitree_legged_msgsBmsState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 34;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros1Unitree_legged_msgsBmsState): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsBmsState): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsBmsState>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsBmsState>();
        if(bytes.length > 34)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 34)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsBmsState.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsBmsState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsBmsState() : changetype<Ros1Unitree_legged_msgsBmsState>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/Cartesian; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/Cartesian value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 12..12
 * bytes and is identified by UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsCartesian
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 12;
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
    static readonly cartesianWireBytes: u64 = 12;
    /** @brief Exact native field x, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/Cartesian.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
     */
    x: f32 = 0;
    /** @brief Exact native field y, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/Cartesian.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
     */
    y: f32 = 0;
    /** @brief Exact native field z, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/Cartesian.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
     */
    z: f32 = 0;

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
            if(!isFinite(this.x))
            {
                return -22;
            }
            if(4 > 12 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 12)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.y))
            {
                return -22;
            }
            if(4 > 12 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 12)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.z))
            {
                return -22;
            }
            if(4 > 12 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 12)
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
        w.integer(<u64>reinterpret<u32>(this.x), 4);
        w.integer(<u64>reinterpret<u32>(this.y), 4);
        w.integer(<u64>reinterpret<u32>(this.z), 4);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsCartesian
    {
        const value = new Ros1Unitree_legged_msgsCartesian();
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
            value.z = decoded;
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
export class Ros1Unitree_legged_msgsCartesianCodec implements VendorCodec<Ros1Unitree_legged_msgsCartesian>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 12;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros1Unitree_legged_msgsCartesian): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsCartesian): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsCartesian>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsCartesian>();
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
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsCartesian.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsCartesian
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsCartesian() : changetype<Ros1Unitree_legged_msgsCartesian>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/LED; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/LED value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes
 * and is identified by UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsLED
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 3;
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
    static readonly cartesianWireBytes: u64 = 3;
    /** @brief Exact native field r, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LED.r: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
     */
    r: u8 = 0;
    /** @brief Exact native field g, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LED.g: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
     */
    g: u8 = 0;
    /** @brief Exact native field b, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LED.b: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
     */
    b: u8 = 0;

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
            if(1 > 3 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 3)
            {
                return -90;
            }
        }
        {
            if(1 > 3 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 3)
            {
                return -90;
            }
        }
        {
            if(1 > 3 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 3)
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
        w.integer(<u64>this.r, 1);
        w.integer(<u64>this.g, 1);
        w.integer(<u64>this.b, 1);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsLED
    {
        const value = new Ros1Unitree_legged_msgsLED();
        {
            const decoded = <u8>r.integer(1);
            value.r = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.g = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.b = decoded;
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
export class Ros1Unitree_legged_msgsLEDCodec implements VendorCodec<Ros1Unitree_legged_msgsLED>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 3;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros1Unitree_legged_msgsLED): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsLED): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsLED>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsLED>();
        if(bytes.length > 3)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 3)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsLED.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsLED
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsLED() : changetype<Ros1Unitree_legged_msgsLED>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/HighCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/HighCmd value.
 * @details All 20 declared fields are retained in source order. The canonical representation occupies 129..129
 * bytes and is identified by UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsHighCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 129;
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
    static readonly cartesianWireBytes: u64 = 129;
    /** @brief Exact native field head, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighCmd.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    head: Array<u8> = new Array<u8>();
    /** @brief Exact native field levelFlag, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighCmd.levelFlag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    levelFlag: u8 = 0;
    /** @brief Exact native field frameReserve, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighCmd.frameReserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    frameReserve: u8 = 0;
    /** @brief Exact native field SN, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.SN: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    SN: Array<u32> = new Array<u32>();
    /** @brief Exact native field version, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    version: Array<u32> = new Array<u32>();
    /** @brief Exact native field bandWidth, native scalar uint16. */
    /**
     * @brief unitree_legged_msgs/HighCmd.bandWidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    bandWidth: u16 = 0;
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field gaitType, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighCmd.gaitType: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    gaitType: u8 = 0;
    /** @brief Exact native field speedLevel, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighCmd.speedLevel: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    speedLevel: u8 = 0;
    /** @brief Exact native field footRaiseHeight, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.footRaiseHeight: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    footRaiseHeight: f32 = 0;
    /** @brief Exact native field bodyHeight, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.bodyHeight: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    bodyHeight: f32 = 0;
    /** @brief Exact native field position, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.position: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    position: Array<f32> = new Array<f32>();
    /** @brief Exact native field euler, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.euler: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    euler: Array<f32> = new Array<f32>();
    /** @brief Exact native field velocity, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.velocity: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    velocity: Array<f32> = new Array<f32>();
    /** @brief Exact native field yawSpeed, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.yawSpeed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    yawSpeed: f32 = 0;
    /** @brief Exact native field bms, native scalar unitree_legged_msgs/BmsCmd. */
    /**
     * @brief unitree_legged_msgs/HighCmd.bms: unitree_legged_msgs/BmsCmd.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    bms: Ros1Unitree_legged_msgsBmsCmd = new Ros1Unitree_legged_msgsBmsCmd();
    /** @brief Exact native field led, native scalar unitree_legged_msgs/LED. */
    /**
     * @brief unitree_legged_msgs/HighCmd.led: unitree_legged_msgs/LED; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    led: Array<Ros1Unitree_legged_msgsLED> = new Array<Ros1Unitree_legged_msgsLED>();
    /** @brief Exact native field wirelessRemote, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighCmd.wirelessRemote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    wirelessRemote: Array<u8> = new Array<u8>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: u32 = 0;
    /** @brief Exact native field crc, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/HighCmd.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
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
            this.SN.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.version.push(0);
        }
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
        for(let i = 0; i < 4; ++i)
        {
            this.led.push(new Ros1Unitree_legged_msgsLED());
        }
        for(let i = 0; i < 40; ++i)
        {
            this.wirelessRemote.push(0);
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
                if(1 > 129 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 129)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 129 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(1 > 129 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(this.SN.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.SN.length; ++i)
            {
                if(4 > 129 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 129)
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
                if(4 > 129 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 129)
                {
                    return -90;
                }
            }
        }
        {
            if(2 > 129 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(1 > 129 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(1 > 129 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(1 > 129 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.footRaiseHeight))
            {
                return -22;
            }
            if(4 > 129 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.bodyHeight))
            {
                return -22;
            }
            if(4 > 129 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 129)
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
                if(4 > 129 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 129)
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
                if(4 > 129 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 129)
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
                if(4 > 129 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 129)
                {
                    return -90;
                }
            }
        }
        {
            if(!isFinite(this.yawSpeed))
            {
                return -22;
            }
            if(4 > 129 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            const child = this.bms.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 129 - n)
            {
                return -90;
            }
            n += child;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(this.led.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.led.length; ++i)
            {
                const child = this.led[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 129 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 129)
                {
                    return -90;
                }
            }
        }
        {
            if(this.wirelessRemote.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.wirelessRemote.length; ++i)
            {
                if(1 > 129 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 129)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 129 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 129)
            {
                return -90;
            }
        }
        {
            if(4 > 129 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 129)
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
        w.integer(<u64>this.levelFlag, 1);
        w.integer(<u64>this.frameReserve, 1);
        for(let i = 0; i < this.SN.length; ++i)
        {
            w.integer(<u64>this.SN[i], 4);
        }
        for(let i = 0; i < this.version.length; ++i)
        {
            w.integer(<u64>this.version[i], 4);
        }
        w.integer(<u64>this.bandWidth, 2);
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>this.gaitType, 1);
        w.integer(<u64>this.speedLevel, 1);
        w.integer(<u64>reinterpret<u32>(this.footRaiseHeight), 4);
        w.integer(<u64>reinterpret<u32>(this.bodyHeight), 4);
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
        w.integer(<u64>reinterpret<u32>(this.yawSpeed), 4);
        this.bms.writeControl(w);
        for(let i = 0; i < this.led.length; ++i)
        {
            this.led[i].writeControl(w);
        }
        for(let i = 0; i < this.wirelessRemote.length; ++i)
        {
            w.integer(<u64>this.wirelessRemote[i], 1);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsHighCmd
    {
        const value = new Ros1Unitree_legged_msgsHighCmd();
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
            value.levelFlag = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.frameReserve = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.SN = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.SN.push(decoded);
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
            value.bandWidth = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mode = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.gaitType = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.speedLevel = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.footRaiseHeight = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.bodyHeight = decoded;
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
            value.yawSpeed = decoded;
        }
        {
            const decoded = Ros1Unitree_legged_msgsBmsCmd.readControl(r);
            value.bms = decoded;
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.led = new Array<Ros1Unitree_legged_msgsLED>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Unitree_legged_msgsLED.readControl(r);
                value.led.push(decoded);
            }
        }
        {
            const count: u32 = 40;
            if(!r.valid || count > 40)
            {
                r.valid = false;
                return value;
            }
            value.wirelessRemote = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.wirelessRemote.push(decoded);
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
export class Ros1Unitree_legged_msgsHighCmdCodec implements VendorCodec<Ros1Unitree_legged_msgsHighCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 129;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros1Unitree_legged_msgsHighCmd): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsHighCmd): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsHighCmd>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsHighCmd>();
        if(bytes.length > 129)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 129)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsHighCmd.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsHighCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsHighCmd() : changetype<Ros1Unitree_legged_msgsHighCmd>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/IMU; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/IMU value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 53..53
 * bytes and is identified by UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsIMU
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
     * @brief unitree_legged_msgs/IMU.quaternion: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    quaternion: Array<f32> = new Array<f32>();
    /** @brief Exact native field gyroscope, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/IMU.gyroscope: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    gyroscope: Array<f32> = new Array<f32>();
    /** @brief Exact native field accelerometer, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/IMU.accelerometer: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    accelerometer: Array<f32> = new Array<f32>();
    /** @brief Exact native field rpy, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/IMU.rpy: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    rpy: Array<f32> = new Array<f32>();
    /** @brief Exact native field temperature, native scalar int8. */
    /**
     * @brief unitree_legged_msgs/IMU.temperature: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsIMU
    {
        const value = new Ros1Unitree_legged_msgsIMU();
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
export class Ros1Unitree_legged_msgsIMUCodec implements VendorCodec<Ros1Unitree_legged_msgsIMU>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276';
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
    encodeChecked(value: Ros1Unitree_legged_msgsIMU): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsIMU): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsIMU>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsIMU>();
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
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsIMU.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsIMU
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsIMU() : changetype<Ros1Unitree_legged_msgsIMU>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/MotorState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/MotorState value.
 * @details All 10 declared fields are retained in source order. The canonical representation occupies 38..38
 * bytes and is identified by UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsMotorState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 38;
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
    static readonly cartesianWireBytes: u64 = 38;
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/MotorState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field q, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorState.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    q: f32 = 0;
    /** @brief Exact native field dq, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorState.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    dq: f32 = 0;
    /** @brief Exact native field ddq, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorState.ddq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    ddq: f32 = 0;
    /** @brief Exact native field tauEst, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorState.tauEst: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    tauEst: f32 = 0;
    /** @brief Exact native field q_raw, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorState.q_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    q_raw: f32 = 0;
    /** @brief Exact native field dq_raw, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorState.dq_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    dq_raw: f32 = 0;
    /** @brief Exact native field ddq_raw, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorState.ddq_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    ddq_raw: f32 = 0;
    /** @brief Exact native field temperature, native scalar int8. */
    /**
     * @brief unitree_legged_msgs/MotorState.temperature: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    temperature: i8 = 0;
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/MotorState.reserve: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
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
            if(1 > 38 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 38)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.q))
            {
                return -22;
            }
            if(4 > 38 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 38)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.dq))
            {
                return -22;
            }
            if(4 > 38 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 38)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.ddq))
            {
                return -22;
            }
            if(4 > 38 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 38)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.tauEst))
            {
                return -22;
            }
            if(4 > 38 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 38)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.q_raw))
            {
                return -22;
            }
            if(4 > 38 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 38)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.dq_raw))
            {
                return -22;
            }
            if(4 > 38 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 38)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.ddq_raw))
            {
                return -22;
            }
            if(4 > 38 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 38)
            {
                return -90;
            }
        }
        {
            if(1 > 38 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 38)
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
                if(4 > 38 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 38)
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
        w.integer(<u64>reinterpret<u32>(this.tauEst), 4);
        w.integer(<u64>reinterpret<u32>(this.q_raw), 4);
        w.integer(<u64>reinterpret<u32>(this.dq_raw), 4);
        w.integer(<u64>reinterpret<u32>(this.ddq_raw), 4);
        w.integer(<u64>this.temperature, 1);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsMotorState
    {
        const value = new Ros1Unitree_legged_msgsMotorState();
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
            value.tauEst = decoded;
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
export class Ros1Unitree_legged_msgsMotorStateCodec implements VendorCodec<Ros1Unitree_legged_msgsMotorState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 38;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros1Unitree_legged_msgsMotorState): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsMotorState): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsMotorState>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsMotorState>();
        if(bytes.length > 38)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 38)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsMotorState.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsMotorState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsMotorState() : changetype<Ros1Unitree_legged_msgsMotorState>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/HighState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/HighState value.
 * @details All 25 declared fields are retained in source order. The canonical representation occupies 1087..1087
 * bytes and is identified by UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsHighState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1087;
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
    static readonly cartesianWireBytes: u64 = 1087;
    /** @brief Exact native field head, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighState.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    head: Array<u8> = new Array<u8>();
    /** @brief Exact native field levelFlag, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighState.levelFlag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    levelFlag: u8 = 0;
    /** @brief Exact native field frameReserve, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighState.frameReserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    frameReserve: u8 = 0;
    /** @brief Exact native field SN, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/HighState.SN: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    SN: Array<u32> = new Array<u32>();
    /** @brief Exact native field version, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/HighState.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    version: Array<u32> = new Array<u32>();
    /** @brief Exact native field bandWidth, native scalar uint16. */
    /**
     * @brief unitree_legged_msgs/HighState.bandWidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    bandWidth: u16 = 0;
    /** @brief Exact native field imu, native scalar unitree_legged_msgs/IMU. */
    /**
     * @brief unitree_legged_msgs/HighState.imu: unitree_legged_msgs/IMU.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu: Ros1Unitree_legged_msgsIMU = new Ros1Unitree_legged_msgsIMU();
    /** @brief Exact native field motorState, native scalar unitree_legged_msgs/MotorState. */
    /**
     * @brief unitree_legged_msgs/HighState.motorState: unitree_legged_msgs/MotorState; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    motorState: Array<Ros1Unitree_legged_msgsMotorState> = new Array<Ros1Unitree_legged_msgsMotorState>();
    /** @brief Exact native field bms, native scalar unitree_legged_msgs/BmsState. */
    /**
     * @brief unitree_legged_msgs/HighState.bms: unitree_legged_msgs/BmsState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    bms: Ros1Unitree_legged_msgsBmsState = new Ros1Unitree_legged_msgsBmsState();
    /** @brief Exact native field footForce, native scalar int16. */
    /**
     * @brief unitree_legged_msgs/HighState.footForce: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    footForce: Array<i16> = new Array<i16>();
    /** @brief Exact native field footForceEst, native scalar int16. */
    /**
     * @brief unitree_legged_msgs/HighState.footForceEst: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    footForceEst: Array<i16> = new Array<i16>();
    /** @brief Exact native field mode, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field progress, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighState.progress: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    progress: f32 = 0;
    /** @brief Exact native field gaitType, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighState.gaitType: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    gaitType: u8 = 0;
    /** @brief Exact native field footRaiseHeight, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighState.footRaiseHeight: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    footRaiseHeight: f32 = 0;
    /** @brief Exact native field position, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighState.position: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    position: Array<f32> = new Array<f32>();
    /** @brief Exact native field bodyHeight, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighState.bodyHeight: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    bodyHeight: f32 = 0;
    /** @brief Exact native field velocity, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighState.velocity: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    velocity: Array<f32> = new Array<f32>();
    /** @brief Exact native field yawSpeed, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighState.yawSpeed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    yawSpeed: f32 = 0;
    /** @brief Exact native field rangeObstacle, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/HighState.rangeObstacle: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    rangeObstacle: Array<f32> = new Array<f32>();
    /** @brief Exact native field footPosition2Body, native scalar unitree_legged_msgs/Cartesian. */
    /**
     * @brief unitree_legged_msgs/HighState.footPosition2Body: unitree_legged_msgs/Cartesian; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    footPosition2Body: Array<Ros1Unitree_legged_msgsCartesian> = new Array<Ros1Unitree_legged_msgsCartesian>();
    /** @brief Exact native field footSpeed2Body, native scalar unitree_legged_msgs/Cartesian. */
    /**
     * @brief unitree_legged_msgs/HighState.footSpeed2Body: unitree_legged_msgs/Cartesian; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    footSpeed2Body: Array<Ros1Unitree_legged_msgsCartesian> = new Array<Ros1Unitree_legged_msgsCartesian>();
    /** @brief Exact native field wirelessRemote, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/HighState.wirelessRemote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    wirelessRemote: Array<u8> = new Array<u8>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/HighState.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: u32 = 0;
    /** @brief Exact native field crc, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/HighState.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
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
            this.SN.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.version.push(0);
        }
        for(let i = 0; i < 20; ++i)
        {
            this.motorState.push(new Ros1Unitree_legged_msgsMotorState());
        }
        for(let i = 0; i < 4; ++i)
        {
            this.footForce.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.footForceEst.push(0);
        }
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
            this.rangeObstacle.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.footPosition2Body.push(new Ros1Unitree_legged_msgsCartesian());
        }
        for(let i = 0; i < 4; ++i)
        {
            this.footSpeed2Body.push(new Ros1Unitree_legged_msgsCartesian());
        }
        for(let i = 0; i < 40; ++i)
        {
            this.wirelessRemote.push(0);
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
                if(1 > 1087 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 1087 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(1 > 1087 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(this.SN.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.SN.length; ++i)
            {
                if(4 > 1087 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1087)
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
                if(4 > 1087 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(2 > 1087 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            const child = this.imu.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1087 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(this.motorState.length != 20)
            {
                return -22;
            }
            for(let i = 0; i < this.motorState.length; ++i)
            {
                const child = this.motorState[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1087 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            const child = this.bms.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1087 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(this.footForce.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.footForce.length; ++i)
            {
                if(2 > 1087 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(this.footForceEst.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.footForceEst.length; ++i)
            {
                if(2 > 1087 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 1087 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.progress))
            {
                return -22;
            }
            if(4 > 1087 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(1 > 1087 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(!isFinite(this.footRaiseHeight))
            {
                return -22;
            }
            if(4 > 1087 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1087)
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
                if(4 > 1087 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(!isFinite(this.bodyHeight))
            {
                return -22;
            }
            if(4 > 1087 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1087)
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
                if(4 > 1087 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(!isFinite(this.yawSpeed))
            {
                return -22;
            }
            if(4 > 1087 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(this.rangeObstacle.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.rangeObstacle.length; ++i)
            {
                if(!isFinite(this.rangeObstacle[i]))
                {
                    return -22;
                }
                if(4 > 1087 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(this.footPosition2Body.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.footPosition2Body.length; ++i)
            {
                const child = this.footPosition2Body[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1087 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(this.footSpeed2Body.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.footSpeed2Body.length; ++i)
            {
                const child = this.footSpeed2Body[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1087 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(this.wirelessRemote.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.wirelessRemote.length; ++i)
            {
                if(1 > 1087 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 1087)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 1087 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1087)
            {
                return -90;
            }
        }
        {
            if(4 > 1087 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1087)
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
        w.integer(<u64>this.levelFlag, 1);
        w.integer(<u64>this.frameReserve, 1);
        for(let i = 0; i < this.SN.length; ++i)
        {
            w.integer(<u64>this.SN[i], 4);
        }
        for(let i = 0; i < this.version.length; ++i)
        {
            w.integer(<u64>this.version[i], 4);
        }
        w.integer(<u64>this.bandWidth, 2);
        this.imu.writeControl(w);
        for(let i = 0; i < this.motorState.length; ++i)
        {
            this.motorState[i].writeControl(w);
        }
        this.bms.writeControl(w);
        for(let i = 0; i < this.footForce.length; ++i)
        {
            w.integer(<u64>this.footForce[i], 2);
        }
        for(let i = 0; i < this.footForceEst.length; ++i)
        {
            w.integer(<u64>this.footForceEst[i], 2);
        }
        w.integer(<u64>this.mode, 1);
        w.integer(<u64>reinterpret<u32>(this.progress), 4);
        w.integer(<u64>this.gaitType, 1);
        w.integer(<u64>reinterpret<u32>(this.footRaiseHeight), 4);
        for(let i = 0; i < this.position.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.position[i]), 4);
        }
        w.integer(<u64>reinterpret<u32>(this.bodyHeight), 4);
        for(let i = 0; i < this.velocity.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.velocity[i]), 4);
        }
        w.integer(<u64>reinterpret<u32>(this.yawSpeed), 4);
        for(let i = 0; i < this.rangeObstacle.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.rangeObstacle[i]), 4);
        }
        for(let i = 0; i < this.footPosition2Body.length; ++i)
        {
            this.footPosition2Body[i].writeControl(w);
        }
        for(let i = 0; i < this.footSpeed2Body.length; ++i)
        {
            this.footSpeed2Body[i].writeControl(w);
        }
        for(let i = 0; i < this.wirelessRemote.length; ++i)
        {
            w.integer(<u64>this.wirelessRemote[i], 1);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsHighState
    {
        const value = new Ros1Unitree_legged_msgsHighState();
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
            value.levelFlag = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.frameReserve = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.SN = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.SN.push(decoded);
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
            value.bandWidth = decoded;
        }
        {
            const decoded = Ros1Unitree_legged_msgsIMU.readControl(r);
            value.imu = decoded;
        }
        {
            const count: u32 = 20;
            if(!r.valid || count > 20)
            {
                r.valid = false;
                return value;
            }
            value.motorState = new Array<Ros1Unitree_legged_msgsMotorState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Unitree_legged_msgsMotorState.readControl(r);
                value.motorState.push(decoded);
            }
        }
        {
            const decoded = Ros1Unitree_legged_msgsBmsState.readControl(r);
            value.bms = decoded;
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.footForce = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.footForce.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.footForceEst = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.footForceEst.push(decoded);
            }
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
            value.gaitType = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.footRaiseHeight = decoded;
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
            value.bodyHeight = decoded;
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
            value.yawSpeed = decoded;
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.rangeObstacle = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                {
                    r.valid = false;
                }
                value.rangeObstacle.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.footPosition2Body = new Array<Ros1Unitree_legged_msgsCartesian>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Unitree_legged_msgsCartesian.readControl(r);
                value.footPosition2Body.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.footSpeed2Body = new Array<Ros1Unitree_legged_msgsCartesian>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Unitree_legged_msgsCartesian.readControl(r);
                value.footSpeed2Body.push(decoded);
            }
        }
        {
            const count: u32 = 40;
            if(!r.valid || count > 40)
            {
                r.valid = false;
                return value;
            }
            value.wirelessRemote = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.wirelessRemote.push(decoded);
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
export class Ros1Unitree_legged_msgsHighStateCodec implements VendorCodec<Ros1Unitree_legged_msgsHighState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1087;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros1Unitree_legged_msgsHighState): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsHighState): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsHighState>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsHighState>();
        if(bytes.length > 1087)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1087)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsHighState.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsHighState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsHighState() : changetype<Ros1Unitree_legged_msgsHighState>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/MotorCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/MotorCmd value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 33..33
 * bytes and is identified by UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsMotorCmd
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
     * @brief unitree_legged_msgs/MotorCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    mode: u8 = 0;
    /** @brief Exact native field q, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    q: f32 = 0;
    /** @brief Exact native field dq, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    dq: f32 = 0;
    /** @brief Exact native field tau, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.tau: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    tau: f32 = 0;
    /** @brief Exact native field Kp, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.Kp: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    Kp: f32 = 0;
    /** @brief Exact native field Kd, native scalar float32. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.Kd: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    Kd: f32 = 0;
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.reserve: uint32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
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
            if(!isFinite(this.Kp))
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
            if(!isFinite(this.Kd))
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
        w.integer(<u64>reinterpret<u32>(this.Kp), 4);
        w.integer(<u64>reinterpret<u32>(this.Kd), 4);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsMotorCmd
    {
        const value = new Ros1Unitree_legged_msgsMotorCmd();
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
            value.Kp = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
            {
                r.valid = false;
            }
            value.Kd = decoded;
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
export class Ros1Unitree_legged_msgsMotorCmdCodec implements VendorCodec<Ros1Unitree_legged_msgsMotorCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083';
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
    encodeChecked(value: Ros1Unitree_legged_msgsMotorCmd): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsMotorCmd): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsMotorCmd>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsMotorCmd>();
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
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsMotorCmd.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsMotorCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsMotorCmd() : changetype<Ros1Unitree_legged_msgsMotorCmd>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/LowCmd; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/LowCmd value.
 * @details All 11 declared fields are retained in source order. The canonical representation occupies 734..734
 * bytes and is identified by UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsLowCmd
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 734;
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
    static readonly cartesianWireBytes: u64 = 734;
    /** @brief Exact native field head, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LowCmd.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    head: Array<u8> = new Array<u8>();
    /** @brief Exact native field levelFlag, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LowCmd.levelFlag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    levelFlag: u8 = 0;
    /** @brief Exact native field frameReserve, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LowCmd.frameReserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    frameReserve: u8 = 0;
    /** @brief Exact native field SN, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowCmd.SN: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    SN: Array<u32> = new Array<u32>();
    /** @brief Exact native field version, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowCmd.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    version: Array<u32> = new Array<u32>();
    /** @brief Exact native field bandWidth, native scalar uint16. */
    /**
     * @brief unitree_legged_msgs/LowCmd.bandWidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    bandWidth: u16 = 0;
    /** @brief Exact native field motorCmd, native scalar unitree_legged_msgs/MotorCmd. */
    /**
     * @brief unitree_legged_msgs/LowCmd.motorCmd: unitree_legged_msgs/MotorCmd; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    motorCmd: Array<Ros1Unitree_legged_msgsMotorCmd> = new Array<Ros1Unitree_legged_msgsMotorCmd>();
    /** @brief Exact native field bms, native scalar unitree_legged_msgs/BmsCmd. */
    /**
     * @brief unitree_legged_msgs/LowCmd.bms: unitree_legged_msgs/BmsCmd.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    bms: Ros1Unitree_legged_msgsBmsCmd = new Ros1Unitree_legged_msgsBmsCmd();
    /** @brief Exact native field wirelessRemote, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LowCmd.wirelessRemote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    wirelessRemote: Array<u8> = new Array<u8>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowCmd.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: u32 = 0;
    /** @brief Exact native field crc, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowCmd.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
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
            this.SN.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.version.push(0);
        }
        for(let i = 0; i < 20; ++i)
        {
            this.motorCmd.push(new Ros1Unitree_legged_msgsMotorCmd());
        }
        for(let i = 0; i < 40; ++i)
        {
            this.wirelessRemote.push(0);
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
                if(1 > 734 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 734)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 734 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 734)
            {
                return -90;
            }
        }
        {
            if(1 > 734 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 734)
            {
                return -90;
            }
        }
        {
            if(this.SN.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.SN.length; ++i)
            {
                if(4 > 734 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 734)
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
                if(4 > 734 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 734)
                {
                    return -90;
                }
            }
        }
        {
            if(2 > 734 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 734)
            {
                return -90;
            }
        }
        {
            if(this.motorCmd.length != 20)
            {
                return -22;
            }
            for(let i = 0; i < this.motorCmd.length; ++i)
            {
                const child = this.motorCmd[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 734 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 734)
                {
                    return -90;
                }
            }
        }
        {
            const child = this.bms.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 734 - n)
            {
                return -90;
            }
            n += child;
            if(n > 734)
            {
                return -90;
            }
        }
        {
            if(this.wirelessRemote.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.wirelessRemote.length; ++i)
            {
                if(1 > 734 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 734)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 734 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 734)
            {
                return -90;
            }
        }
        {
            if(4 > 734 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 734)
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
        w.integer(<u64>this.levelFlag, 1);
        w.integer(<u64>this.frameReserve, 1);
        for(let i = 0; i < this.SN.length; ++i)
        {
            w.integer(<u64>this.SN[i], 4);
        }
        for(let i = 0; i < this.version.length; ++i)
        {
            w.integer(<u64>this.version[i], 4);
        }
        w.integer(<u64>this.bandWidth, 2);
        for(let i = 0; i < this.motorCmd.length; ++i)
        {
            this.motorCmd[i].writeControl(w);
        }
        this.bms.writeControl(w);
        for(let i = 0; i < this.wirelessRemote.length; ++i)
        {
            w.integer(<u64>this.wirelessRemote[i], 1);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsLowCmd
    {
        const value = new Ros1Unitree_legged_msgsLowCmd();
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
            value.levelFlag = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.frameReserve = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.SN = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.SN.push(decoded);
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
            value.bandWidth = decoded;
        }
        {
            const count: u32 = 20;
            if(!r.valid || count > 20)
            {
                r.valid = false;
                return value;
            }
            value.motorCmd = new Array<Ros1Unitree_legged_msgsMotorCmd>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Unitree_legged_msgsMotorCmd.readControl(r);
                value.motorCmd.push(decoded);
            }
        }
        {
            const decoded = Ros1Unitree_legged_msgsBmsCmd.readControl(r);
            value.bms = decoded;
        }
        {
            const count: u32 = 40;
            if(!r.valid || count > 40)
            {
                r.valid = false;
                return value;
            }
            value.wirelessRemote = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.wirelessRemote.push(decoded);
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
export class Ros1Unitree_legged_msgsLowCmdCodec implements VendorCodec<Ros1Unitree_legged_msgsLowCmd>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 734;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros1Unitree_legged_msgsLowCmd): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsLowCmd): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsLowCmd>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsLowCmd>();
        if(bytes.length > 734)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 734)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsLowCmd.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsLowCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsLowCmd() : changetype<Ros1Unitree_legged_msgsLowCmd>(out.value);
    }
}

/** @brief Complete original unitree_legged_msgs/LowState; spellings are published in generation proof. */
/**
 * @brief Complete ROS 1 unitree_legged_msgs/LowState value.
 * @details All 20 declared fields are retained in source order. The canonical representation occupies 1069..1069
 * bytes and is identified by UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
export class Ros1Unitree_legged_msgsLowState
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1069;
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
    static readonly cartesianWireBytes: u64 = 1069;
    /** @brief Exact native field head, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LowState.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    head: Array<u8> = new Array<u8>();
    /** @brief Exact native field levelFlag, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LowState.levelFlag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    levelFlag: u8 = 0;
    /** @brief Exact native field frameReserve, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LowState.frameReserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    frameReserve: u8 = 0;
    /** @brief Exact native field SN, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowState.SN: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    SN: Array<u32> = new Array<u32>();
    /** @brief Exact native field version, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowState.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    version: Array<u32> = new Array<u32>();
    /** @brief Exact native field bandWidth, native scalar uint16. */
    /**
     * @brief unitree_legged_msgs/LowState.bandWidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    bandWidth: u16 = 0;
    /** @brief Exact native field imu, native scalar unitree_legged_msgs/IMU. */
    /**
     * @brief unitree_legged_msgs/LowState.imu: unitree_legged_msgs/IMU.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    imu: Ros1Unitree_legged_msgsIMU = new Ros1Unitree_legged_msgsIMU();
    /** @brief Exact native field motorState, native scalar unitree_legged_msgs/MotorState. */
    /**
     * @brief unitree_legged_msgs/LowState.motorState: unitree_legged_msgs/MotorState; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    motorState: Array<Ros1Unitree_legged_msgsMotorState> = new Array<Ros1Unitree_legged_msgsMotorState>();
    /** @brief Exact native field bms, native scalar unitree_legged_msgs/BmsState. */
    /**
     * @brief unitree_legged_msgs/LowState.bms: unitree_legged_msgs/BmsState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    bms: Ros1Unitree_legged_msgsBmsState = new Ros1Unitree_legged_msgsBmsState();
    /** @brief Exact native field footForce, native scalar int16. */
    /**
     * @brief unitree_legged_msgs/LowState.footForce: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    footForce: Array<i16> = new Array<i16>();
    /** @brief Exact native field footForceEst, native scalar int16. */
    /**
     * @brief unitree_legged_msgs/LowState.footForceEst: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    footForceEst: Array<i16> = new Array<i16>();
    /** @brief Exact native field tick, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowState.tick: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    tick: u32 = 0;
    /** @brief Exact native field wirelessRemote, native scalar uint8. */
    /**
     * @brief unitree_legged_msgs/LowState.wirelessRemote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    wirelessRemote: Array<u8> = new Array<u8>();
    /** @brief Exact native field reserve, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowState.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    reserve: u32 = 0;
    /** @brief Exact native field crc, native scalar uint32. */
    /**
     * @brief unitree_legged_msgs/LowState.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    crc: u32 = 0;
    /** @brief Exact native field eeForceRaw, native scalar unitree_legged_msgs/Cartesian. */
    /**
     * @brief unitree_legged_msgs/LowState.eeForceRaw: unitree_legged_msgs/Cartesian; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    eeForceRaw: Array<Ros1Unitree_legged_msgsCartesian> = new Array<Ros1Unitree_legged_msgsCartesian>();
    /** @brief Exact native field eeForce, native scalar unitree_legged_msgs/Cartesian. */
    /**
     * @brief unitree_legged_msgs/LowState.eeForce: unitree_legged_msgs/Cartesian; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    eeForce: Array<Ros1Unitree_legged_msgsCartesian> = new Array<Ros1Unitree_legged_msgsCartesian>();
    /** @brief Exact native field position, native scalar unitree_legged_msgs/Cartesian. */
    /**
     * @brief unitree_legged_msgs/LowState.position: unitree_legged_msgs/Cartesian.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    position: Ros1Unitree_legged_msgsCartesian = new Ros1Unitree_legged_msgsCartesian();
    /** @brief Exact native field velocity, native scalar unitree_legged_msgs/Cartesian. */
    /**
     * @brief unitree_legged_msgs/LowState.velocity: unitree_legged_msgs/Cartesian.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    velocity: Ros1Unitree_legged_msgsCartesian = new Ros1Unitree_legged_msgsCartesian();
    /** @brief Exact native field velocity_w, native scalar unitree_legged_msgs/Cartesian. */
    /**
     * @brief unitree_legged_msgs/LowState.velocity_w: unitree_legged_msgs/Cartesian.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    velocity_w: Ros1Unitree_legged_msgsCartesian = new Ros1Unitree_legged_msgsCartesian();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
        {
            this.head.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.SN.push(0);
        }
        for(let i = 0; i < 2; ++i)
        {
            this.version.push(0);
        }
        for(let i = 0; i < 20; ++i)
        {
            this.motorState.push(new Ros1Unitree_legged_msgsMotorState());
        }
        for(let i = 0; i < 4; ++i)
        {
            this.footForce.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.footForceEst.push(0);
        }
        for(let i = 0; i < 40; ++i)
        {
            this.wirelessRemote.push(0);
        }
        for(let i = 0; i < 4; ++i)
        {
            this.eeForceRaw.push(new Ros1Unitree_legged_msgsCartesian());
        }
        for(let i = 0; i < 4; ++i)
        {
            this.eeForce.push(new Ros1Unitree_legged_msgsCartesian());
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
                if(1 > 1069 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 1069)
                {
                    return -90;
                }
            }
        }
        {
            if(1 > 1069 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            if(1 > 1069 - n)
            {
                return -90;
            }
            n += 1;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            if(this.SN.length != 2)
            {
                return -22;
            }
            for(let i = 0; i < this.SN.length; ++i)
            {
                if(4 > 1069 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1069)
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
                if(4 > 1069 - n)
                {
                    return -90;
                }
                n += 4;
                if(n > 1069)
                {
                    return -90;
                }
            }
        }
        {
            if(2 > 1069 - n)
            {
                return -90;
            }
            n += 2;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            const child = this.imu.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1069 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            if(this.motorState.length != 20)
            {
                return -22;
            }
            for(let i = 0; i < this.motorState.length; ++i)
            {
                const child = this.motorState[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1069 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1069)
                {
                    return -90;
                }
            }
        }
        {
            const child = this.bms.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1069 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            if(this.footForce.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.footForce.length; ++i)
            {
                if(2 > 1069 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 1069)
                {
                    return -90;
                }
            }
        }
        {
            if(this.footForceEst.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.footForceEst.length; ++i)
            {
                if(2 > 1069 - n)
                {
                    return -90;
                }
                n += 2;
                if(n > 1069)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 1069 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            if(this.wirelessRemote.length != 40)
            {
                return -22;
            }
            for(let i = 0; i < this.wirelessRemote.length; ++i)
            {
                if(1 > 1069 - n)
                {
                    return -90;
                }
                n += 1;
                if(n > 1069)
                {
                    return -90;
                }
            }
        }
        {
            if(4 > 1069 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            if(4 > 1069 - n)
            {
                return -90;
            }
            n += 4;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            if(this.eeForceRaw.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.eeForceRaw.length; ++i)
            {
                const child = this.eeForceRaw[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1069 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1069)
                {
                    return -90;
                }
            }
        }
        {
            if(this.eeForce.length != 4)
            {
                return -22;
            }
            for(let i = 0; i < this.eeForce.length; ++i)
            {
                const child = this.eeForce[i].wireSize();
                if(child < 0)
                {
                    return child;
                }
                if(child > 1069 - n)
                {
                    return -90;
                }
                n += child;
                if(n > 1069)
                {
                    return -90;
                }
            }
        }
        {
            const child = this.position.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1069 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            const child = this.velocity.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1069 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1069)
            {
                return -90;
            }
        }
        {
            const child = this.velocity_w.wireSize();
            if(child < 0)
            {
                return child;
            }
            if(child > 1069 - n)
            {
                return -90;
            }
            n += child;
            if(n > 1069)
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
        w.integer(<u64>this.levelFlag, 1);
        w.integer(<u64>this.frameReserve, 1);
        for(let i = 0; i < this.SN.length; ++i)
        {
            w.integer(<u64>this.SN[i], 4);
        }
        for(let i = 0; i < this.version.length; ++i)
        {
            w.integer(<u64>this.version[i], 4);
        }
        w.integer(<u64>this.bandWidth, 2);
        this.imu.writeControl(w);
        for(let i = 0; i < this.motorState.length; ++i)
        {
            this.motorState[i].writeControl(w);
        }
        this.bms.writeControl(w);
        for(let i = 0; i < this.footForce.length; ++i)
        {
            w.integer(<u64>this.footForce[i], 2);
        }
        for(let i = 0; i < this.footForceEst.length; ++i)
        {
            w.integer(<u64>this.footForceEst[i], 2);
        }
        w.integer(<u64>this.tick, 4);
        for(let i = 0; i < this.wirelessRemote.length; ++i)
        {
            w.integer(<u64>this.wirelessRemote[i], 1);
        }
        w.integer(<u64>this.reserve, 4);
        w.integer(<u64>this.crc, 4);
        for(let i = 0; i < this.eeForceRaw.length; ++i)
        {
            this.eeForceRaw[i].writeControl(w);
        }
        for(let i = 0; i < this.eeForce.length; ++i)
        {
            this.eeForce[i].writeControl(w);
        }
        this.position.writeControl(w);
        this.velocity.writeControl(w);
        this.velocity_w.writeControl(w);
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
    static readControl(r: Reader): Ros1Unitree_legged_msgsLowState
    {
        const value = new Ros1Unitree_legged_msgsLowState();
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
            value.levelFlag = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.frameReserve = decoded;
        }
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.SN = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.SN.push(decoded);
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
            value.bandWidth = decoded;
        }
        {
            const decoded = Ros1Unitree_legged_msgsIMU.readControl(r);
            value.imu = decoded;
        }
        {
            const count: u32 = 20;
            if(!r.valid || count > 20)
            {
                r.valid = false;
                return value;
            }
            value.motorState = new Array<Ros1Unitree_legged_msgsMotorState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Unitree_legged_msgsMotorState.readControl(r);
                value.motorState.push(decoded);
            }
        }
        {
            const decoded = Ros1Unitree_legged_msgsBmsState.readControl(r);
            value.bms = decoded;
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.footForce = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.footForce.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.footForceEst = new Array<i16>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i16>r.integer(2);
                value.footForceEst.push(decoded);
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
            value.wirelessRemote = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.wirelessRemote.push(decoded);
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
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.eeForceRaw = new Array<Ros1Unitree_legged_msgsCartesian>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Unitree_legged_msgsCartesian.readControl(r);
                value.eeForceRaw.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.eeForce = new Array<Ros1Unitree_legged_msgsCartesian>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Unitree_legged_msgsCartesian.readControl(r);
                value.eeForce.push(decoded);
            }
        }
        {
            const decoded = Ros1Unitree_legged_msgsCartesian.readControl(r);
            value.position = decoded;
        }
        {
            const decoded = Ros1Unitree_legged_msgsCartesian.readControl(r);
            value.velocity = decoded;
        }
        {
            const decoded = Ros1Unitree_legged_msgsCartesian.readControl(r);
            value.velocity_w = decoded;
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
export class Ros1Unitree_legged_msgsLowStateCodec implements VendorCodec<Ros1Unitree_legged_msgsLowState>
{
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly codecIdentity: string = 'UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0';
    /**
     * @brief Describe the exact selected complete canonical record profile.
     * @details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec identity
     * binds the original field order and quotas and is distinct from installed native ROS identity. This
     * constant creates no allocation or permission.
     */
    static readonly maxWireBytes: i32 = 1069;

    /**
     * @brief Validate and encode every declared field into owned canonical bytes.
     * @details Synchronous local canonical operation. It creates no native ROS object, capability, task, timer,
     * or permission. Keep mutable value/cursor storage exclusive until return.
     * @param[in] value Complete immutable record, borrowed synchronously.
     * @return Owned bytes with status 0, or original 22/90 refusal with no successful body.
     * @ownership Managed successful values and byte arrays own their storage. Allocation failure or a language
     * trap is not a numeric transport result.
     */
    encodeChecked(value: Ros1Unitree_legged_msgsLowState): VendorEncoded
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
    encode(value: Ros1Unitree_legged_msgsLowState): Uint8Array
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
    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Unitree_legged_msgsLowState>
    {
        const out = new VendorDecoded<Ros1Unitree_legged_msgsLowState>();
        if(bytes.length > 1069)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1069)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Unitree_legged_msgsLowState.readControl(reader);
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
    decode(bytes: Uint8Array): Ros1Unitree_legged_msgsLowState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Unitree_legged_msgsLowState() : changetype<Ros1Unitree_legged_msgsLowState>(out.value);
    }
}
