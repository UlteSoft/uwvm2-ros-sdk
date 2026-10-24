/** @file
 * @brief Complete MotoROS2 ReadSingleIO observation through the macro-selected cpp SDK.
 * @details Uses the actual full selected ROS2 family; no output write is made.
 * The single API uses actual shared C++98/03/11/14/17/20/23/draft26 profile
 * facilities. Current per-mode builds, installed xmake and Guests remain pending.
 */
#pragma once
#include <yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_interfaces.hpp>
#include <ros/cpp/roswasm/cpp_profile.hpp>
#include <ros/cpp/roswasm/views.hpp>

namespace uwvm_yaskawa_query
{
    /** @brief Whole original uint32 controller IO-address request.
     * @details The command sample uses 10011. Address interpretation must be reviewed
     * against the selected controller map; it is not a write or mode-change grant.
     * @see query_once
     */
    typedef uwvm_custom::Ros2Motoros2_interfacesSrvReadSingleIO_Request Request;
    /** @brief Entire original result_code/message/success/signed-int32-value response.
     * @details Value units follow the original controller address map. No conversion,
     * clipping or diagnostic-message truncation is performed by this wrapper.
     * @see Outcome
     */
    typedef uwvm_custom::Ros2Motoros2_interfacesSrvReadSingleIO_Response Response;

    /** @brief Retain the complete decoded value and independent transport/close facts.
     * @details Owns response storage after capability close. A present response can
     * describe controller refusal and never proves physical freshness or permission.
     * @see query_once
     */
    struct Outcome
    {
        /** @brief Construct an empty observation without importing or acquiring a role.
         * @details Value storage is initialized, but response/reply/cleanup are valid
         * only when their separate presence flag is true. Copies own all value bytes.
         * Available in the single macro-selected cpp API from C++98 through draft26.
         * @see status
         */
        Outcome() : primary(0), response(), reply(), cleanup(0), response_present(false), reply_present(false), cleanup_present(false)
        {
        }

        /** @brief First validation/constructor/call/application status.
         * @details Zero precedes separate cleanup; a complete controller refusal is 5.
         * @see status
         */
        uint32_t primary;
        /** @brief Whole original response, absent before successful full decoding.
         * @details Original message and signed IO value remain available on refusal.
         * @see Response
         */
        Response response;
        /** @brief Original SDK call envelope with full error/required-length facts.
         * @details Absent before a call attempt; cleanup never overwrites this fact.
         * @see roswasmc_result
         */
        roswasmc_result reply;
        /** @brief Once-only close status, absent when no capability was acquired.
         * @details Zero is a returned local close, not controller cancellation/stop.
         * @see status
         */
        uint32_t cleanup;
        /** @brief True only after a whole response was decoded and committed.
         * @details False makes response storage unusable as an observation, including
         * its zero defaults. A true value can still describe a controller refusal.
         * @see response
         */
        bool response_present;
        /** @brief True only after the typed client's call returned its original envelope.
         * @details False makes reply storage unusable; cleanup never changes this flag.
         * @see reply
         */
        bool reply_present;
        /** @brief True only after one explicit close returned on an acquired owner.
         * @details cleanup is then the independent returned code, including zero.
         * @see cleanup
         */
        bool cleanup_present;

        /** @brief Read primary status before any independent close failure.
         * @details Pure caller-serialized observation; the full u32 code is retained.
         * @return Nonzero primary, otherwise cleanup or zero.
         * @see primary
         */
        uint32_t status() const ROSWASM_CPP_NOEXCEPT
        {
            return primary ? primary : cleanup_present ? cleanup : 0;
        }
    };

    /** @brief Read one complete original IO request and close the actual typed client.
     * @details Application success requires success=true and result_code 0. A whole
     * refusal stays in response with code 5. Calls are synchronous and serialized;
     * no retry, worker, clock, IO write, permission or controller recovery is added.
     * Abort/allocation termination cannot promise normal cleanup reporting.
     * @param[in] context Borrowed genuine ROS2 backend table alive through cleanup.
     * @param[in] alias Nonempty exact service alias, separately granted with original
     * type/operation, bounded capacities, quotas and Host deadline configuration.
     * @param[in] request Borrowed immutable full uint32 address in the reviewed native
     * controller address map. This function performs no address/unit conversion.
     * @return Owned whole response, original call envelope and independent close.
     * Inputs/context remain caller-owned and are borrowed only during this call.
     * @see uwvm_custom::Ros2Motoros2_interfacesSrvReadSingleIOClient
     * @see Outcome::status
     */
    inline Outcome query_once(roswasmc_context const& context, roswasmcpp::StringView alias, Request const& request)
    {
        Outcome out;
        if(!roswasmc_bounded_2_motoros2_interfaces_srv_ReadSingleIO_Request_valid(&request))
        {
            out.primary = 22;
            return out;
        }
        uwvm_custom::Ros2Motoros2_interfacesSrvReadSingleIOClient client(context, alias);
        out.primary = client.error();
        if(!out.primary)
        {
            Response decoded = Response();
            out.reply = client.call(request, decoded);
            out.reply_present = true;
            out.primary = out.reply.error;
            if(!out.primary)
            {
                out.response = decoded;
                out.response_present = true;
                if(!decoded.success || decoded.result_code != 0)
                    out.primary = 5;
            }
        }
        if(client.is_open())
        {
            out.cleanup = client.close();
            out.cleanup_present = true;
        }
        return out;
    }
}  // namespace uwvm_yaskawa_query
