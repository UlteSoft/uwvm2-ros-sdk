/**
 * @file codec.mts
 * @brief Type complete NVIDIA values while delegating every canonical field to the existing JS codec.
 * @details No ROS capability, interpreter, compiler or native pointer is created here.
 * Runtime checks retain unsigned ranges, UTF-8, finite wire values and container bounds.
 */

/** @brief Unsigned byte domain; the shared runtime checks 0..255 before encoding. */
export type UInt8 = number;
/** @brief Unsigned16 domain, checked at the canonical boundary. */
export type UInt16 = number;
/** @brief Exact unsigned32 domain; no modulo narrowing is performed. */
export type UInt32 = number;
/** @brief Exact unsigned64 values remain BigInt, including values above2^53. */
export type UInt64 = bigint;
/** @brief Original signed32 value, with its original units and range. */
export type Int32 = number;
/** @brief Original IEEE binary32 input; finite serialized output is checked after rounding. */
export type Float32 = number;
/** @brief Original finite IEEE binary64 input. */
export type Float64 = number;

/** @brief Exact fixed2 member count; encoding still checks actual runtime length. */
export type Tuple2<T> = [T, T];
/** @brief Exact fixed3 member count. */
export type Tuple3<T> = [T, T, T];
/** @brief Exact fixed4 member count. */
export type Tuple4<T> = [T, T, T, T];
/** @brief Exact fixed5 member count. */
export type Tuple5<T> = [T, T, T, T, T];
/** @brief Every original covariance member, with no reduced projection. */
export type Tuple36<T> = [
    T, T, T, T, T, T, T, T, T, T, T, T,
    T, T, T, T, T, T, T, T, T, T, T, T,
    T, T, T, T, T, T, T, T, T, T, T, T
];

/** @brief Numeric codec failure with its original exception retained for inspection. */
export class CodecError extends Error
{
    readonly code: number;
    readonly originalError: unknown;

    /** @param code Original nonzero local status. @param originalError Borrowed original cause. */
    constructor(code: number = 22, originalError: unknown = undefined)
    {
        super("invalid complete NVIDIA canonical value");
        this.name = "NvidiaCodecError";
        this.code = code;
        this.originalError = originalError;
    }
}

/** @brief Preserve a real numeric refusal; foreign/invalid exceptions are local22. */
export function codecErrorCode(error: unknown): number
{
    if(typeof error === "object" && error !== null && "code" in error &&
       typeof error.code === "number" && Number.isInteger(error.code) &&
       error.code > 0 && error.code <= 4294967295)
    {
        return error.code;
    }
    return 22;
}

/** @brief Structural contract implemented by the unchanged original JavaScript codec operations. */
export interface RuntimeCodec<C extends object>
{
    readonly codecIdentity: string;
    readonly maxWireBytes: number;
    readonly minWireBytes: number;
    readonly cartesianMaxWireBytes: bigint;
    readonly aggregateWireBytes: number;
    readonly constants: Readonly<C>;
    defaultValue(): unknown;
    validateValue(value: unknown): boolean;
    encode(value: unknown): Uint8Array;
    decode(bytes: Uint8Array): unknown;
    valid(bytes: Uint8Array): boolean;
}

/** @brief Full owned typed record codec; the original implementation retains all fields and defaults. */
export interface CanonicalCodec<T, C extends object = object>
{
    readonly codecIdentity: string;
    readonly maxWireBytes: number;
    readonly minWireBytes: number;
    readonly cartesianMaxWireBytes: bigint;
    readonly aggregateWireBytes: number;
    readonly constants: Readonly<C>;
    defaultValue(): T;
    validateValue(value: T): true;
    encode(value: T): Uint8Array;
    decode(bytes: Uint8Array): T;
    valid(bytes: Uint8Array): boolean;
}

/**
 * @brief Validate the complete original object and its complete serialized representation.
 * @details The second check also rejects finite JS numbers that overflow binary32 on serialization.
 * @param runtime Actual pinned JS codec, never a replacement evaluator.
 * @param value Borrowed caller value; capture/copy semantics belong to that codec.
 */
export function validRuntimeValue<C extends object>(runtime: RuntimeCodec<C>, value: unknown): boolean
{
    try
    {
        runtime.validateValue(value);
        return runtime.valid(runtime.encode(value));
    }
    catch
    {
        return false;
    }
}

/**
 * @brief Bind a complete static field contract to the actual runtime codec identity.
 * @param runtime Existing JS codec with immutable metadata and full bounds.
 * @param guard Schema-specific complete-value predicate, including actual wire finiteness.
 * @param identity Original immutable canonical identity.
 * @param maximum Inclusive byte maximum; it is never treated as actual output length.
 * @param minimum Original minimum complete body length.
 * @return Typed owned values and original numeric errors; no grant or native resource is opened.
 */
export function bindCodec<T, C extends object>(runtime: RuntimeCodec<C>,
    guard: (value: unknown) => value is T, identity: string,
    maximum: number, minimum: number): CanonicalCodec<T, C>
{
    if(runtime.codecIdentity !== identity || runtime.maxWireBytes !== maximum || runtime.minWireBytes !== minimum)
    {
        throw new CodecError(17);
    }
    const encode = (value: T): Uint8Array => {
        try
        {
            const bytes = runtime.encode(value);
            if(!runtime.valid(bytes))
            {
                throw new CodecError(22);
            }
            return bytes;
        }
        catch(error: unknown)
        {
            throw new CodecError(codecErrorCode(error), error);
        }
    };
    return Object.freeze({
        codecIdentity: runtime.codecIdentity,
        maxWireBytes: runtime.maxWireBytes,
        minWireBytes: runtime.minWireBytes,
        cartesianMaxWireBytes: runtime.cartesianMaxWireBytes,
        aggregateWireBytes: runtime.aggregateWireBytes,
        constants: runtime.constants,
        defaultValue(): T {
            const value: unknown = runtime.defaultValue();
            if(!guard(value))
            {
                throw new CodecError(22);
            }
            return value;
        },
        validateValue(value: T): true {
            encode(value);
            return true;
        },
        encode,
        decode(bytes: Uint8Array): T {
            try
            {
                const value: unknown = runtime.decode(bytes);
                if(!guard(value))
                {
                    throw new CodecError(22);
                }
                return value;
            }
            catch(error: unknown)
            {
                throw new CodecError(codecErrorCode(error), error);
            }
        },
        valid(bytes: Uint8Array): boolean {
            return runtime.valid(bytes);
        }
    });
}
