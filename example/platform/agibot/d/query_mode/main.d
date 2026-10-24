// @file main.d
// @brief Decode the entire original aimdk_msgs/srv/GetMcAction_Response in genuine D/BetterC.
// @details Caller-owned wire and Arena storage stay live through output. The
// C bridge only transports bytes; the complete generated D codec validates them.
import agibot.d.client : observe;
import agibot.d.ros2_sdk_v1_1_0_main.records : Ros2Aimdk_msgsSrvGetMcAction_Response;
import roswasm.wire : Arena;
import core.stdc.stdio : printf, putchar, fflush, stdout;
import core.stdc.stdlib : malloc, free;

// @brief Read one explicit alias and output only after the C owner was closed.
extern(C) int main(int argc, char** argv) @nogc nothrow
{
    if (argc != 2) return 22;
    ubyte[156] bytes = void;
    auto facts = observe(argv[1], 1, bytes[]);
    bool present = false;
    long rpcStatus = 0;
    auto backing = cast(ubyte*)malloc(262144);
    if (backing is null) return 12;
    scope(exit) free(backing);
    Arena arena;
    arena.storage = backing[0 .. 262144];
    if (facts.primary == 0)
    {
        Ros2Aimdk_msgsSrvGetMcAction_Response value;
        facts.primary = Ros2Aimdk_msgsSrvGetMcAction_Response.decode(bytes[0 .. facts.length], arena, value);
        present = facts.primary == 0;
        if (present) rpcStatus = value.field_header.field_code;
    }
    printf("{\"primary\":%u,\"cleanup\":%u,\"cleanup_present\":%s,",
        facts.primary, facts.cleanup, facts.cleanupPresent ? "true".ptr : "false".ptr);
    printf("\"response_present\":%s,\"has_required\":%s,\"required\":\"%llu\",",
        present ? "true".ptr : "false".ptr, facts.hasRequired ? "true".ptr : "false".ptr, facts.required);
    printf("\"rpc_status_present\":%s,\"rpc_status\":\"%lld\",\"wire_hex\":\"",
        present ? "true".ptr : "false".ptr, rpcStatus);
    if (present) foreach (byteValue; bytes[0 .. facts.length]) printf("%02x", cast(uint)byteValue);
    printf("\"}\n");
    if (fflush(stdout) != 0) return 5;
    uint code = facts.primary != 0 ? facts.primary : facts.cleanup;
    if (code == 0 && present && rpcStatus != 0) code = 5;
    return cast(int)(code > 125 ? 125 : code);
}
