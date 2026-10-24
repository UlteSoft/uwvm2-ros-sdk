/** @file
 * @brief Macro-selected cpp command candidate for one original ReadSingleIO address 10011.
 * @details Uses the complete real ROS2 family, without an IO write or reset.
 * Installed compiler/link/Guest qualification of this new source is pending.
 * @see uwvm_yaskawa_query::query_once
 */
#include <ros2/c/roswasm/ros2.h>
#include <yaskawa/cpp/query_once.hpp>
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

/** @brief Read the source-selected address and emit the full response/envelope.
 * @details Stdout starts with 36 LE bytes: primary u32, cleanup u32,
 * cleanup-present u32, call-present u32, call-error u32, has-length u32,
 * original-length u64, response-byte-count u32. Then follows the entire canonical
 * result_code/message/success/signed-value response, including refusal. All IO
 * units follow the reviewed native controller map. Wrong argc returns22 before
 * opening. Primary/cleanup precede serialization/IO failure; exit clamps to 125.
 * @param[in] argc Count including command name, required to equal 2.
 * @param[in] argv Borrowed process arguments alive through main; argv1 selects
 * an existing read-service alias and grants no native operation or endpoint.
 * @return Clamped first primary/cleanup/serialization/IO status, otherwise zero.
 * No retry, clock, worker, controller recovery or native stop occurs.
 * @see uwvm_yaskawa_query::Outcome
 */
int main(int argc, char** argv)
{
    if(argc != 2)
        return 22;
    roswasmc_context context = {roswasmc_ros2_backend()};
    uwvm_yaskawa_query::Request request = uwvm_yaskawa_query::Request();
    request.address = 10011;
    uwvm_yaskawa_query::Outcome result = uwvm_yaskawa_query::query_once(context, argv[1], request);
    roswasmcpp::FixedArray<unsigned char, ROSWASMC_BOUNDED_2_MOTOROS2_INTERFACES_SRV_READSINGLEIO_RESPONSE_MAX_WIRE_BYTES> bytes;
    size_t used = 0;
    uint32_t status = result.status();
    if(result.response_present)
    {
        uint32_t encoded = roswasmc_bounded_2_motoros2_interfaces_srv_ReadSingleIO_Response_encode(&result.response, bytes.data(), bytes.size(), &used);
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
