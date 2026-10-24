// @file client.d
// @brief Borrow complete canonical Agibot bytes through the real in-guest C ABI.
// @details No HTTP, JSON conversion, GC or substituted D codec is used. The D
// caller decodes with its complete generated D record and caller-owned Arena.
module agibot.d.client;
@nogc nothrow:

extern(C) private uint uwvm_agibot_observe_raw(const(char)* aliasName, uint operation,
    uint timeoutMs, ubyte* output, size_t capacity, size_t* length, uint* cleanup,
    uint* cleanupPresent, ulong* required, uint* hasRequired);

/// @brief Separate raw operation, cleanup and capacity facts after native retirement.
struct Observation
{
    uint primary;
    uint cleanup;
    uint cleanupPresent;
    uint hasRequired;
    ulong required;
    size_t length;
}

/// @brief Receive complete caller-owned canonical bytes; close happens before return.
/// @param aliasName Borrowed NUL-terminated exact granted alias, 1..255 UTF-8 bytes.
/// @param operation 1 GetMcAction, 2 McCommonState, 3 GetRobotResources.
/// @param output Exclusive writable bytes; no view is retained by the C bridge.
/// @return Independent facts; decode only primary-zero complete bytes.
Observation observe(const(char)* aliasName, uint operation, ubyte[] output)
{
    Observation result;
    result.primary = uwvm_agibot_observe_raw(aliasName, operation, 3000,
        output.ptr, output.length, &result.length, &result.cleanup,
        &result.cleanupPresent, &result.required, &result.hasRequired);
    return result;
}
