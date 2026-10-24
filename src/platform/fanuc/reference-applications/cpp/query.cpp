/** @file
 * @brief Macro-selected cpp command candidate for one FANUC group 1 GetTCPSpeed query.
 * @details One argv alias selects an externally granted ROS2 service. Stdout
 * is the documented 36-byte LE status/envelope header followed by the entire
 * canonical response. Current compile/link/Guest qualification is pending.
 * @see uwvm_fanuc_query::query_once
 */
#include <ros2/c/roswasm/ros2.h>
#include <fanuc/cpp/query_once.hpp>
#include <cstdio>

/** @brief Store one bounded little-endian field in the command's output header.
 * @details Internal caller supplies a field inside the 36-byte array, with width
 * at most eight. Uses the actual shared fixed-array API in every C++ profile;
 * no stream, Host operation, native object layout or authority is involved.
 * @param[out] header Existing command-owned header, borrowed during this call.
 * @param[in] offset First byte; offset plus width must not exceed 36.
 * @param[in] value Full unsigned field value, shifted only by 0..56 bits.
 * @param[in] width Number of output bytes, selected as 4 or 8 by main.
 * @see main
 */
static void put_le(roswasmcpp::FixedArray<unsigned char, 36>& header, size_t offset, uint64_t value, size_t width) ROSWASM_CPP_NOEXCEPT
{
    for(size_t i = 0; i < width; ++i)
        header[offset + i] = static_cast<unsigned char>(value >> (8 * i));
}

/** @brief Execute one source request and report full response plus independent failures.
 * @details Exits 22 for argc!=2 before ROS open. Header fields are primary u32,
 * cleanup u32, cleanup-present u32, call-present u32, call-error u32,
 * has-length u32, original-length u64, response-byte-count u32. Then follow all
 * canonical response bytes, including refusal. Serialization/stdout failure
 * supplies a status only when primary/cleanup are zero; exit is clamped to 125.
 * No retry, controller recovery, clock or native authority is created.
 * @param[in] argc Number of process arguments, including the command name.
 * @param[in] argv Caller-owned arguments alive through main; argv1 is an alias,
 * not a native endpoint or permission. The source request uses uint8 group 1.
 * @return Clamped primary/cleanup/serialization/IO code, zero only if all succeed.
 * @see uwvm_fanuc_query::Outcome
 */
int main(int argc, char** argv)
{
    if(argc != 2)
        return 22;
    roswasmc_context context = {roswasmc_ros2_backend()};
    uwvm_fanuc_query::Request request = uwvm_fanuc_query::Request();
    request.group = 1;
    uwvm_fanuc_query::Outcome result = uwvm_fanuc_query::query_once(context, argv[1], request);
    roswasmcpp::FixedArray<unsigned char, ROSWASMC_BOUNDED_2_FANUC_MSGS_SRV_GETTCPSPEED_RESPONSE_MAX_WIRE_BYTES> bytes;
    size_t used = 0;
    uint32_t status = result.status();
    if(result.response_present)
    {
        uint32_t encoded = roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_Response_encode(&result.response, bytes.data(), bytes.size(), &used);
        if(!status)
            status = encoded;
        if(encoded)
            used = 0;
    }
    roswasmcpp::FixedArray<unsigned char, 36> header;
    put_le(header, 0, result.primary, 4);
    put_le(header, 4, result.cleanup_present ? result.cleanup : 0, 4);
    put_le(header, 8, result.cleanup_present, 4);
    put_le(header, 12, result.reply_present, 4);
    put_le(header, 16, result.reply_present ? result.reply.error : 0, 4);
    put_le(header, 20, result.reply_present && result.reply.has_length, 4);
    put_le(header, 24, result.reply_present ? result.reply.length : 0, 8);
    put_le(header, 32, used, 4);
    bool output_failed = std::fwrite(header.data(), 1, header.size(), stdout) != header.size() || std::fwrite(bytes.data(), 1, used, stdout) != used;
    if(std::fflush(stdout) == EOF)
        output_failed = true;
    if(output_failed && !status)
        status = 5;
    return static_cast<int>(status > 125 ? 125 : status);
}
