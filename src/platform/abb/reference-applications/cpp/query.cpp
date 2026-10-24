/** @file
 * @brief Macro-selected cpp command candidate for one complete ABB GetSpeedRatio read.
 * @details One argv alias requires independently granted ROS2 service rights.
 * Stdout retains the full original canonical response, including all message
 * bytes. Current installed compiler/link/Guest qualification is pending.
 * @see uwvm_abb_query::query_once
 */
#include <ros2/c/roswasm/ros2.h>
#include <abb/cpp/query_once.hpp>
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

/** @brief Send the logically empty original request and emit independent observations.
 * @details The 36-byte LE header is primary u32, cleanup u32, cleanup-present u32,
 * call-present u32, call-error u32, has-length u32, original-length u64 and
 * response-byte-count u32. The complete canonical response follows, with the
 * original percent field and full refusal message. Wrong argc returns 22 before
 * ROS open. Primary/cleanup precede serialization/IO errors; exit is clamped to 125.
 * Calls are serialized and never retried; close establishes no native stop.
 * @param[in] argc Argument count including command name, required to equal 2.
 * @param[in] argv Caller-owned arguments alive throughout main; argv1 is an
 * existing capability alias and supplies no override/controller permission.
 * @return Clamped first primary/cleanup/serialization/IO status, otherwise zero.
 * @see uwvm_abb_query::Outcome
 */
int main(int argc, char** argv)
{
    if(argc != 2)
        return 22;
    roswasmc_context context = {roswasmc_ros2_backend()};
    uwvm_abb_query::Request request = uwvm_abb_query::Request();
    uwvm_abb_query::Outcome result = uwvm_abb_query::query_once(context, argv[1], request);
    roswasmcpp::FixedArray<unsigned char, ROSWASMC_BOUNDED_2_ABB_ROBOT_MSGS_SRV_GETSPEEDRATIO_RESPONSE_MAX_WIRE_BYTES> bytes;
    size_t used = 0;
    uint32_t status = result.status();
    if(result.response_present)
    {
        uint32_t encoded = roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Response_encode(&result.response, bytes.data(), bytes.size(), &used);
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
