/** @file
 * @brief Complete ABB GetSpeedRatio observation through the macro-selected cpp SDK.
 * @details Uses the actual complete ROS2 family and shared profile facilities for
 * one C++98/03/11/14/17/20/23/draft26 API. Each actual compiler mode, installed
 * xmake and Guest acceptance remains pending; source adaptation is not a pass.
 */
#pragma once
#include <abb/cpp/ros2/abb-ros2-complete/bounded_interfaces.hpp>
#include <ros/cpp/roswasm/cpp_profile.hpp>
#include <ros/cpp/roswasm/views.hpp>

namespace uwvm_abb_query
{
    /** @brief Logically empty original GetSpeedRatio request.
     * @details The generated C-layout placeholder is not a wire field and supplies
     * no override or controller-setting authority. Caller owns all storage.
     * @see query_once
     */
    typedef uwvm_custom::Ros2Abb_robot_msgsSrvGetSpeedRatio_Request Request;
    /** @brief Complete original result_code, speed_ratio and diagnostic message.
     * @details Ratio uses uint8 percent; result_code is uint16. The whole bounded
     * UTF-8 message survives controller refusal and capability closure.
     * @see Outcome
     */
    typedef uwvm_custom::Ros2Abb_robot_msgsSrvGetSpeedRatio_Response Response;

    /** @brief Own the complete decoded response and independent failure observations.
     * @details No reference into a client/native buffer escapes. Response presence
     * is successful decoding, not controller success or physical freshness.
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

        /** @brief First validation/constructor/call/application code.
         * @details Zero precedes independent cleanup; complete controller refusal is 5.
         * @see status
         */
        uint32_t primary;
        /** @brief Complete owned original response, or absent before full decoding.
         * @details Includes the full diagnostic message even when primary is 5.
         * @see Response
         */
        Response response;
        /** @brief Original call envelope, including independent required-length facts.
         * @details Absent if no call occurred. Close never replaces this observation.
         * @see roswasmc_result
         */
        roswasmc_result reply;
        /** @brief Actual once-only close status, absent if no owner was acquired.
         * @details Zero is successful local close; no native stop/reset is implied.
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

        /** @brief Select full-width primary status before independent cleanup failure.
         * @details Local serialized read performs no IO or authority check.
         * @return Primary if nonzero, otherwise observed cleanup or zero.
         * @see primary
         */
        uint32_t status() const ROSWASM_CPP_NOEXCEPT
        {
            return primary ? primary : cleanup_present ? cleanup : 0;
        }
    };

    /** @brief Issue one original empty speed-ratio request, then close the typed client.
     * @details Application success requires RC_SUCCESS (1) and ratio <= 100 percent.
     * A decoded refusal is retained with code 5. The call is synchronous and caller
     * serialized, with no retry, timer, worker, grant or controller-mode change.
     * Abort/allocation termination cannot guarantee normal cleanup reporting.
     * @param[in] context Borrowed genuine ROS2 backend table alive through cleanup.
     * @param[in] alias Exact nonempty caller-selected alias with original service
     * type/operation rights, capacities, quotas and independently reviewed deadline.
     * @param[in] request Borrowed immutable complete logically empty original value.
     * @return Owned whole response, original call envelope and independent close
     * status. No lifetime or ownership of input/context is transferred.
     * @see uwvm_custom::Ros2Abb_robot_msgsSrvGetSpeedRatioClient
     * @see Outcome::status
     */
    inline Outcome query_once(roswasmc_context const& context, roswasmcpp::StringView alias, Request const& request)
    {
        Outcome out;
        if(!roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Request_valid(&request))
        {
            out.primary = 22;
            return out;
        }
        uwvm_custom::Ros2Abb_robot_msgsSrvGetSpeedRatioClient client(context, alias);
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
                if(decoded.result_code != 1 || decoded.speed_ratio > 100)
                {
                    out.primary = 5;
                }
            }
        }
        if(client.is_open())
        {
            out.cleanup = client.close();
            out.cleanup_present = true;
        }
        return out;
    }
}  // namespace uwvm_abb_query
