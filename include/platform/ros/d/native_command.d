/**
 * @file native_command.d
 * @brief Genuine betterC D records, canonical codecs and owned native ROS String/Trigger commands.
 * @details No D runtime, GC, native ROS library or network client is linked.
 * Every record owns fixed arrays; response fields never borrow transport bytes.
 * The pointer adapter contains no codec, owner or polling policy.
 */
module ros.d.native_command;

extern(C) @nogc nothrow
{
    /// @brief Read the selected original ROS transport ABI version.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    /// @return Original version value, independently from operation errors.
    uint nl_version();

    /// @brief Open one exact granted alias without retry.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    /// @param capabilityAlias Complete immutable strict UTF-8 capability alias.
    /// @param size Complete initialized byte extent.
    /// @param owner Exclusive writable full-width acquired-owner slot.
    /// @return Original unsigned ABI error; owner is acquired only on zero.
    uint nl_open(const(ubyte) * capabilityAlias, uint size, ulong * owner);

    /// @brief Retire one caller-owned acquired capability once.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    /// @param handle Caller-owned exact opaque capability identifier.
    /// @return Original independent unsigned close status.
    uint nl_close(ulong handle);

    /// @brief Activate one exact already granted topic subscription.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    /// @param handle Caller-owned exact opaque capability identifier.
    /// @return Original unsigned ABI operation status.
    uint nl_subscribe(ulong handle);

    /// @brief Poll exactly one event without implicit retry or decoding.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    /// @param handle Caller-owned exact opaque capability identifier.
    /// @param output Exclusive writable canonical response storage.
    /// @param capacity Complete available response byte extent.
    /// @param length Exclusive sentinel-initialized full-width original length slot.
    /// @return Original unsigned transport status and unchanged original length facts.
    uint nl_poll(ulong handle, ubyte * output, uint capacity, ulong * length);

    /// @brief Perform one admitted service call without replay or interpretation.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    /// @param handle Caller-owned exact opaque capability identifier.
    /// @param input Complete immutable original canonical request bytes.
    /// @param size Complete initialized byte extent.
    /// @param output Exclusive writable canonical response storage.
    /// @param capacity Complete available response byte extent.
    /// @param length Exclusive sentinel-initialized full-width original length slot.
    /// @return Original unsigned transport status and unchanged original length facts.
    uint nl_call(ulong handle, const(ubyte) * input, uint size, ubyte * output, uint capacity, ulong * length);

    /// @brief Delay only after an explicitly observed idle poll.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    /// @param milliseconds Finite explicitly selected delay in 0..1000 milliseconds.
    /// @return Zero, local argument error 22 or original local pause error.
    uint nl_pause(uint milliseconds);

    /// @brief Emit complete already owned facts and lossless canonical bytes.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    /// @param primary First original operation, canonical-codec or controller error.
    /// @param cleanup Independent original acquired-owner close status.
    /// @param cleanup_present Exactly one only after an acquired-owner close attempt.
    /// @param rpc Original full unsigned transport status without narrowing.
    /// @param rpc_present Exactly one only after an admitted service call or event poll.
    /// @param length_value Original full-width length slot; maximum preserves unwritten state.
    /// @param present Exactly one only after whole-record canonical validation.
    /// @param wire Complete immutable source-language re-encoded canonical bytes.
    /// @param size Complete initialized byte extent.
    /// @return Primary, independent cleanup or output error; no numeric narrowing.
    uint nl_report(uint primary,
                   uint cleanup,
                   uint cleanup_present,
                   uint rpc,
                   uint rpc_present,
                   ulong length_value,
                   uint present,
                   const(ubyte) * wire,
                   uint size);
}

import ros.d.wire;
/// @brief Publish one complete language-encoded original String without retry.
/// @param owner Exact acquired handle. @param bytes Complete borrowed canonical bytes.
/// @param size Complete byte extent. @return Original unsigned ROS ABI status.
extern(C) uint nl_publish(ulong owner, const(ubyte) * bytes, uint size) @nogc nothrow;

/// @brief Own the complete original String field within the explicit 252-byte SDK quota.
struct StringValue
{
    enum minimumWireBytes = 4;
    enum maximumWireBytes = 256;
    /// @brief Original complete data; backing storage belongs to the value.
    Text !252 data;
}
/// @brief Own every original Trigger response field; its request is empty.
struct TriggerResponse

{
    enum minimumWireBytes = 5;
    enum maximumWireBytes = 256;
    /// @brief Original success flag, including an explicit service refusal.
    bool success;
    /// @brief Complete original message within an explicit 251-byte UTF-8 quota.
    Text !251 message;
}
/// @brief Retain whole accepted values and separate original operation/cleanup facts.
/// @details No acquired native owner survives normal return.
struct Outcome
{
    /// @brief First operation, independent once-only close, and original last RPC statuses.
    uint primary, cleanup, rpc;
    /// @brief Distinguish observed close, entered import, and whole accepted response.
    bool cleanupPresent, rpcPresent, responsePresent;
    /// @brief Original full-width length slot; maximum preserves an unwritten slot.
    ulong length = ulong.max;
    /// @brief Whole owned original String, selected for publication/subscription.
    StringValue stringValue;
    /// @brief Both complete owned original Trigger fields, selected for calling.
    TriggerResponse trigger;
    /// @brief Complete owned canonical storage; only size bytes are active.
    ubyte[256] bytes;
    /// @brief Initialized whole canonical extent within the backing array.
    uint size;

}

/// @brief Execute one complete original publication, subscription, or Trigger call.
/// @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
/// @param capabilityAlias Existing exact-operation policy alias, borrowed until return.
/// @return Owned complete fields and independent first-operation/once-only close facts.
/// @details Two planned publications are separated by 1 second for discovery.
/// No failed effect is retried. Only idle topic polls repeat, at most 250 times.
Outcome run(uint operation, const(ubyte)[] capabilityAlias) @nogc nothrow
{
    Outcome facts;
    if(operation < 1 || operation > 3 || !capabilityAlias.length || capabilityAlias.length > 255 || !utf8(capabilityAlias))
    {
        facts.primary = 22;
        return facts;
    }
    if(operation == 1)
    {
        immutable sample = "hello native ROS";
        facts.stringValue.data.data[0..sample.length] = cast(const(ubyte)[]) sample;
        facts.stringValue.data.size = cast(uint) sample.length;
        size_t extent;
        facts.primary = encode(facts.stringValue, facts.bytes[], extent);
        facts.size = cast(uint) extent;
        if(facts.primary) {
             return facts;
        }
    }
    if(nl_version() != 1)
    {
        facts.primary = 95;
        return facts;
    }
    ulong owner;
    facts.primary = nl_open(capabilityAlias.ptr, cast(uint) capabilityAlias.length, &owner);
    if(facts.primary) {
         return facts;
    }
    if(!owner)
    {
        facts.primary = 5;
        return facts;
    }
    if(operation == 1)
    {
        facts.rpcPresent = true;
        facts.rpc = nl_publish(owner, facts.bytes.ptr, facts.size);
        facts.primary = facts.rpc;
        if(!facts.primary) {
             facts.primary = nl_pause(1000);
        }
        if(!facts.primary)
        {
            facts.rpc = nl_publish(owner, facts.bytes.ptr, facts.size);
            facts.primary = facts.rpc;
        }
        if(!facts.primary) {
             facts.primary = nl_pause(200);
        }
    }
    else
    {
        if(operation == 2) {
             facts.primary = nl_subscribe(owner);
        }
        if(!facts.primary)
        {
            foreach(attempt; 0..250)
            {
                facts.length = ulong.max;
                facts.rpcPresent = true;
                facts.rpc = operation == 2 ? nl_poll(owner, facts.bytes.ptr, 256, &facts.length)
                                           : nl_call(owner, facts.bytes.ptr, 0, facts.bytes.ptr, 256, &facts.length);
                facts.primary = facts.rpc;
                if(operation != 2 || facts.rpc != 11 || attempt == 249) {
                     break;
                }
                facts.primary = nl_pause(20);
                if(facts.primary) {
                     break;
                }
            }
        }
        if(!facts.primary)
        {
            if(facts.length > 256) {
                 facts.primary = 22;
            }
            else
            {
                size_t extent;
                if(operation == 2)
                {
                    facts.primary = decode(facts.bytes[0..cast(size_t)facts.length], facts.stringValue);
                    if(!facts.primary)
                    {
                        facts.responsePresent = true;
                        facts.primary = encode(facts.stringValue, facts.bytes[], extent);
                    }
                }
                else
                {
                    facts.primary = decode(facts.bytes[0..cast(size_t)facts.length], facts.trigger);
                    if(!facts.primary)
                    {
                        facts.responsePresent = true;
                        facts.primary = encode(facts.trigger, facts.bytes[], extent);
                    }
                }
                if(!facts.primary) {
                     facts.size = cast(uint) extent;
                }
                if(!facts.primary && operation == 3 && !facts.trigger.success) {
                     facts.primary = 5;
                }
            }
        }
    }
    facts.cleanupPresent = true;
    facts.cleanup = nl_close(owner);
    return facts;
}

/// @brief Emit every complete accepted canonical byte after once-only retirement.
/// @param facts Borrowed language-owned result. @return First primary, close, or stdout error.
uint report(ref Outcome facts) @nogc nothrow
{
    return nl_report(facts.primary,
                     facts.cleanup,
                     facts.cleanupPresent,
                     facts.rpc,
                     facts.rpcPresent,
                     facts.length,
                     facts.responsePresent,
                     facts.bytes.ptr,
                     facts.size);
}
