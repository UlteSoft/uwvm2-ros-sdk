/**
 * @file observation.d
 * @brief Own complete Native native observations in genuine betterC D.
 * @details Finite records and bytes belong to this guest value. D owns every
 * handle decision and cleanup result. The scalar adapter owns no capability
 * and interprets no Native field. Fatal traps cannot promise normal cleanup.
 */
module native.d.observation;
import native.d.wire;

/// @brief Borrow exact scalar infrastructure declared in language/native/abi.h.
/// @details All pointers remain guest-owned and live synchronously until return.
extern(C) @nogc nothrow
{
    uint nl_version();
    uint nl_open(const(ubyte) * alias_bytes, uint size, ulong * owner);
    uint nl_close(ulong owner);
    uint nl_subscribe(ulong owner);
    uint nl_poll(ulong owner, ubyte * output, uint capacity, ulong * length);
    uint nl_pause(uint milliseconds);
    uint nl_argument_count();
    const(ubyte) * nl_argument(uint index, uint * size);
    uint nl_report(uint primary,
                   uint cleanup,
                   uint cleanup_present,
                   uint rpc,
                   uint rpc_present,
                   ulong length,
                   uint present,
                   uint polls,
                   const(ubyte) * bytes,
                   uint size);
}

/// @brief Own one complete original record and independent observation facts.
/// @param Record Exact complete original generated record type.
/// @details Value and bytes require responsePresent. Copying grants no authority.
struct Observation(Record)
{
    /// @brief First original validation, transport or complete-codec failure.
    uint primary;
    /// @brief Independent original acquired-owner close status.
    uint cleanup;
    /// @brief True only after one acquired-owner close attempt.
    bool cleanupPresent;
    /// @brief Original final poll status before local complete decoding.
    uint rpc;
    /// @brief True only after an actual event poll returned.
    bool rpcPresent;
    /// @brief Original full-width slot; maximum preserves the unwritten sentinel.
    ulong length = ulong.max;
    /// @brief Actual event polls, including idle results.
    uint polls;
    /// @brief True only after whole-record decoding and re-encoding.
    bool responsePresent;
    /// @brief Entire independently owned original record; require responsePresent.
    Record value;
    /// @brief Owned canonical storage retaining every accepted field.
    ubyte[Record.maximumWireBytes] bytes;
    /// @brief Initialized complete canonical extent, valid only with responsePresent.
    uint size;
}

/// @brief Receive one complete original record through one retained subscription.
/// @param Record Exact complete generated original schema.
/// @param aliasBytes Borrowed strict UTF-8 alias, stable until return, 1..255 bytes.
/// @param attempts Finite total event-poll budget in 1..250.
/// @return Owned complete record and independent primary, poll, length and close facts.
/// @details Only idle 11 permits another poll, after a real twenty-millisecond
/// WASI wait. Every normal successful acquisition is closed exactly once.
Observation !Record receive(Record)(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow

{
    Observation !Record result;
    if (!aliasBytes.length || aliasBytes.length > 255 || !utf8(aliasBytes) || !attempts || attempts > 250)
    {
        result.primary = 22;
        return result;
    }
    if (nl_version() != 1)
    {
        result.primary = 95;
        return result;
    }
    ulong owner;
    result.primary = nl_open(aliasBytes.ptr, cast(uint) aliasBytes.length, &owner);
    if (result.primary)
    {
        return result;
    }
    result.primary = nl_subscribe(owner);
    if (!result.primary)
    {
        foreach (index; 0 ..attempts)
        {
            result.length = ulong.max;
            result.rpc = nl_poll(owner, result.bytes.ptr, cast(uint) result.bytes.length, &result.length);
            result.rpcPresent = true;
            ++result.polls;
            result.primary = result.rpc;
            if (result.rpc != 11 || index + 1 == attempts)
            {
                break;
            }
            result.primary = nl_pause(20);
            if (result.primary)
            {
                break;
            }
        }
        if (!result.primary)
        {
            if (result.length > result.bytes.length)
            {
                result.primary = 22;
            }
            else
            {
                result.primary = native.d.wire.decode(result.bytes[0 ..cast(size_t) result.length], result.value);
                if (!result.primary)
                {
                    ubyte[Record.maximumWireBytes] encoded;
                    size_t written;
                    result.primary = native.d.wire.encode(result.value, encoded, written);
                    if (!result.primary)
                    {
                        result.bytes = encoded;
                        result.size = cast(uint) written;
                        result.responsePresent = true;
                    }
                }
            }
        }
    }
    result.cleanupPresent = true;
    result.cleanup = nl_close(owner);
    return result;
}

/// @brief Count original WASI command arguments, including the executable name.
/// @return Original count; this local operation acquires no native owner.
uint argumentCount() @nogc nothrow
{
    return nl_argument_count();
}

/// @brief Borrow one original WASI argument until the command returns.
/// @param index Original zero-based argument index.
/// @return Immutable complete bytes, or an empty slice when absent.
const(ubyte)[] argument(uint index) @nogc nothrow
{
    uint size;
    const(ubyte)* bytes = nl_argument(index, &size);
    return bytes ? bytes[0 ..size] : null;
}

/// @brief Emit the complete accepted canonical body and independent error facts.
/// @param result Borrowed complete observation, stable through stdout flush.
/// @return Primary, independent close, then stdout status; no status narrowing.
uint report(Record)(ref Observation !Record result) @nogc nothrow
{
    return nl_report(result.primary,
                     result.cleanup,
                     cast(uint) result.cleanupPresent,
                     result.rpc,
                     cast(uint) result.rpcPresent,
                     result.length,
                     cast(uint) result.responsePresent,
                     result.polls,
                     result.bytes.ptr,
                     result.size);
}

/// @brief Borrow one exact synchronous service/action operation.
extern(C) uint nl_request(
    uint operation, ulong owner, const(ubyte) * input, uint size, ubyte* output, uint capacity, ulong* length)
    @nogc nothrow;

/// @brief Execute one canonical service/action request and decode its entire response.
/// @param Record Complete original response record type.
/// @param aliasBytes Borrowed strict UTF-8 exact-operation alias, 1..255 bytes.
/// @param operation Service call 1, send goal 2, cancel own 3, feedback 4, result 5.
/// @param input Complete source-language encoded request, at most 32768 bytes.
/// @return Owned response and independent request/close facts; no partial value.
/// @details No error, timeout or ambiguous effect is replayed. Normal owners
/// close once; fatal traps cannot promise ordinary cleanup.
Observation !Record request(Record)(const(ubyte)[] aliasBytes, uint operation, const(ubyte)[] input) @nogc nothrow
{
    Observation !Record result;
    if (!aliasBytes.length || aliasBytes.length > 255 || !utf8(aliasBytes) || operation < 1 || operation > 5 ||
        input.length > 32768)
    {
        result.primary = 22;
        return result;
    }
    if (nl_version() != 1)
    {
        result.primary = 95;
        return result;
    }
    ulong owner;
    result.primary = nl_open(aliasBytes.ptr, cast(uint) aliasBytes.length, &owner);
    if (result.primary)
    {
        return result;
    }
    result.rpc = nl_request(operation,
                            owner,
                            input.ptr,
                            cast(uint) input.length,
                            result.bytes.ptr,
                            cast(uint) result.bytes.length,
                            &result.length);
    result.rpcPresent = true;
    result.primary = result.rpc;
    if (!result.primary)
    {
        if (result.length > result.bytes.length)
        {
            result.primary = 22;
        }
        else
        {
            result.primary = native.d.wire.decode(result.bytes[0 ..cast(size_t) result.length], result.value);
            if (!result.primary)
            {
                ubyte[Record.maximumWireBytes] encoded;
                size_t written;
                result.primary = native.d.wire.encode(result.value, encoded, written);
                if (!result.primary)
                {
                    result.bytes = encoded;
                    result.size = cast(uint) written;
                    result.responsePresent = true;
                }
            }
        }
    }
    result.cleanupPresent = true;
    result.cleanup = nl_close(owner);
    return result;
}
