/** @file
 * @brief Complete FANUC GetTCPSpeed observation through the macro-selected cpp SDK.
 * @details Requires the selected installed complete family. Importing this
 * header grants no rights. C++98/03/11/14/17/20/23/draft26 use one public API
 * and the actual shared profile facilities. Current compiler/Guest checks remain
 * pending; this source adaptation alone qualifies none of those modes.
 */
#pragma once
#include <fanuc/cpp/ros2/fanuc-ros2-complete/bounded_interfaces.hpp>
#include <ros/cpp/roswasm/cpp_profile.hpp>
#include <ros/cpp/roswasm/views.hpp>

namespace uwvm_fanuc_query
{
    /** @brief Original complete uint8 group request.
     * @details Group range is 0..255; the command sample selects 1. Value ownership
     * stays with the caller. Canonical validation precedes capability construction.
     * @see query_once
     */
    typedef uwvm_custom::Ros2Fanuc_msgsSrvGetTCPSpeed_Request Request;
    /** @brief Original complete result/timetag/speed/group response.
     * @details Includes signed int32 result/timetag, finite float32 speed and uint8
     * group. Original IDL declares no speed/timetag units; no conversion occurs.
     * @see Outcome
     */
    typedef uwvm_custom::Ros2Fanuc_msgsSrvGetTCPSpeed_Response Response;

    /** @brief Own a whole response and independent call/cleanup observations.
     * @details Returned storage survives owner close. A response can retain a
     * controller refusal; it never certifies current physical robot state.
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

        /** @brief First validation/constructor/call/application code; zero precedes cleanup.
         * @details A decoded application refusal maps to5, without discarding response.
         * @see status
         */
        uint32_t primary;
        /** @brief Whole decoded original response, absent before successful decoding.
         * @details Owns every field; present does not imply primary is zero.
         * @see Response
         */
        Response response;
        /** @brief Complete original call envelope and required-length facts.
         * @details Absent if validation/construction prevented the call. Cleanup
         * never overwrites an observed call failure or length observation.
         * @see roswasmc_result
         */
        roswasmc_result reply;
        /** @brief Once-only capability-close result, absent when no owner was acquired.
         * @details A present zero means close succeeded; close does not stop motion.
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

        /** @brief Preserve primary precedence while checking independent close failure.
         * @details Pure serialized read; returns the full u32 code, with no import.
         * @return Primary when nonzero, otherwise cleanup or zero.
         * @see primary
         */
        uint32_t status() const ROSWASM_CPP_NOEXCEPT
        {
            return primary ? primary : cleanup_present ? cleanup : 0;
        }
    };

    /** @brief Send one complete original request and close its actual typed client.
     * @details Success requires result 0, matching group and nonnegative finite speed.
     * A complete refusal remains in response with code 5. No retry, timer, thread,
     * grant or controller recovery is created. Serialize use of the Guest backend;
     * panic/abort/allocation termination cannot guarantee cleanup. Normal SDK errors
     * retain the original call envelope and checked close independently.
     * @param[in] context Borrowed valid ROS2 backend table, alive through call/close.
     * @param[in] alias Nonempty exact service alias with separately granted original
     * type/operation, bounded capacities, quotas and Host deadline configuration.
     * @param[in] request Borrowed immutable full original group value, range 0..255.
     * @return Owned Outcome. Inputs are borrowed for this synchronous call only;
     * returned response storage is independent of client/context destruction.
     * @see uwvm_custom::Ros2Fanuc_msgsSrvGetTCPSpeedClient
     * @see Outcome::status
     */
    inline Outcome query_once(roswasmc_context const& context, roswasmcpp::StringView alias, Request const& request)
    {
        Outcome out;
        if(!roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_Request_valid(&request))
        {
            out.primary = 22;
            return out;
        }
        uwvm_custom::Ros2Fanuc_msgsSrvGetTCPSpeedClient client(context, alias);
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
                if(decoded.result != 0 || decoded.group != request.group || decoded.speed < 0)
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
}  // namespace uwvm_fanuc_query
