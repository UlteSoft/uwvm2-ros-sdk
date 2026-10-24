/* SPDX-License-Identifier: Apache-2.0 */
#pragma once

#include <platform/ros2/c/roswasm/ros2.h>
#include "bounded_interfaces.h"
#include <array>
#include <cerrno>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <optional>
#include <string_view>
#include <vector>

#if !defined(UWVM_TURTLEBOT3_PROFILE) || UWVM_TURTLEBOT3_PROFILE < 2 || UWVM_TURTLEBOT3_PROFILE > 4
# error "Patrol requires the exact Humble=2, Jazzy=3 or main=4 generated ROS2 family"
#endif

namespace uwvm_robotis::patrol
{

    /** @brief Complete original generated Patrol Goal, without field projection.
     * @details goal.x selects square1/triangle2, goal.y is metres, and goal.z is
     * the original integer count converted to float64. Type selection grants no
     * native action permission. Select the exact Humble/Jazzy/main generated family.
     * @see parse_goal run
     */
    using Goal = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal;

    /** @brief Complete original generated Patrol Feedback with bounded UTF-8 state.
     * @details Owns all original counted text bytes; no view into transport scratch.
     * @see Report run
     */
    using Feedback = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback;

    /** @brief Complete original generated Patrol Result with bounded UTF-8 result.
     * @details Owns every original counted byte; terminal kind is retained separately.
     * @see Report run
     */
    using Result = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result;

    /** @brief Preserve original values, full ID, uncertainty and every role close.
     * @details primary retains the first numeric failure; 110 means unresolved
     * finite polling. cleanup/statuses retain partial-open rollback or every normal
     * close independently. feedback is fully allocated before any open; only
     * feedback_used entries are populated. Complete terminal result/kind is
     * committed after generated decoding, without a post-receive string allocation.
     * send_unknown and a nonterminal goal never permit replay or automatic cancel.
     * @see run parse_goal
     */
    struct Report
    {
        std::uint32_t primary = 0;
        roswasmc_cleanup_report cleanup = roswasmc_cleanup_init(0);
        std::array<std::uint32_t, 5> statuses{};
        std::uint64_t goal_id = 0;
        bool send_unknown = false;
        std::vector<Feedback> feedback;
        std::size_t feedback_used = 0;
        std::optional<Result> result;
        std::uint8_t terminal_kind = 0;
    };

    namespace detail
    {
        inline bool number(std::string_view text, bool integer, double& output) noexcept
        {
            if(text.empty() || text.size() > 255)
                return false;
            std::size_t at = 0;
            if(text[at] == '+' || text[at] == '-')
                ++at;
            if(at == text.size())
                return false;
            if(integer)
            {
                for(auto value: text.substr(at))
                    if(value < '0' || value > '9')
                        return false;
            }
            else
            {
                for(auto value: text)
                {
                    if((value < '0' || value > '9') && value != '+' && value != '-' && value != '.' && value != 'e' && value != 'E')
                        return false;
                }
            }
            std::array<char, 256> owned{};
            for(std::size_t index = 0; index < text.size(); ++index)
                owned[index] = text[index];
            char* end = nullptr;
            errno = 0;
            auto value = std::strtod(owned.data(), &end);
            if(errno || end != owned.data() + text.size() || !std::isfinite(value))
                return false;
            output = integer && value == 0 ? 0 : value;
            return true;
        }
    }  // namespace detail

    /** @brief Parse the original square/triangle Goal before any capability open.
     * @details Bounded ASCII input replaces the Python interactive UI. Each numeric
     * argument is at most 255 bytes; count requires signed decimal digits and is
     * converted to original float64. Locale/hex/whitespace/nonfinite/range failures
     * are refused; no physical model limit is inferred or native API invoked.
     * @param[in] mode Exactly s or t; the command handles x without opening a role.
     * @param[in] distance Finite original metre value.
     * @param[in] count Signed decimal integer count, including normalized '-0'.
     * @return Complete original Goal, or std::nullopt for invalid input.
     * @failure No allocation or exception; invalid arguments leave no native effect.
     * @see Goal run
     */
    inline std::optional<Goal> parse_goal(std::string_view mode, std::string_view distance, std::string_view count) noexcept
    {
        Goal goal{};
        if(mode != "s" && mode != "t")
            return std::nullopt;
        goal.goal.x = mode == "s" ? 1.0 : 2.0;
        if(!detail::number(distance, false, goal.goal.y) || !detail::number(count, true, goal.goal.z))
            return std::nullopt;
        return goal;
    }

    /** @brief Send one full Goal, poll original feedback/result and close all roles.
     * @details Uses actual shared C ownership/transport and generated complete-value
     * functions from C++20. A matching original native server remains separate.
     * Four roles open before send. Every acquired role is closed once, including
     * partial-open failure; all numeric cleanup facts remain independent. There is
     * no destructor RPC, replay, automatic cancel, native server wait or recovery.
     * One synchronous Guest caller owns the local context/bundle for its lifetime.
     * Feedback storage is reserved before any open. An EH-on allocation failure
     * returns90; with EH off the selected standard library may terminate/trap before
     * any owner is acquired. No post-effect allocation is required by this adapter.
     * @param[in] aliases Borrowed distinct send/cancel-own/feedback/result names,
     * NUL-free UTF-8 1..255 bytes, unchanged until return. Host grants are independent.
     * @param[in] goal Borrowed complete original Goal with finite original metre/count values.
     * @param[in] polls Integer 1..4096, bounding feedback and result calls per iteration.
     * @return Report with complete values and full uint64 ownership. Goal acceptance
     * and local cleanup do not establish physical completion or authorize replay.
     * @see Goal Feedback Result Report parse_goal
     */
    inline Report run(std::array<std::string_view, 4> const& aliases, Goal const& goal, std::size_t polls)
    {
        Report report;
        if(!polls || polls > 4096 || (goal.goal.x != 1.0 && goal.goal.x != 2.0) || !std::isfinite(goal.goal.y) || !std::isfinite(goal.goal.z) ||
           std::trunc(goal.goal.z) != goal.goal.z)
        {
            report.primary = 22;
            return report;
        }
#if defined(__cpp_exceptions)
        try
        {
            report.feedback.resize(polls);
        }
        catch(...)
        {
            report.primary = 90;
            return report;
        }
#else
        report.feedback.resize(polls);
#endif
        roswasmc_context context{};
        context.backend = roswasmc_ros2_backend();
        roswasmc_action_bundle bundle{};
        std::array<std::uint64_t, 1> goals{};
        roswasmc_action_aliases selected{};
        selected.send = {aliases[0].data(), aliases[0].size()};
        selected.cancel_own = {aliases[1].data(), aliases[1].size()};
        selected.feedback = {aliases[2].data(), aliases[2].size()};
        selected.result = {aliases[3].data(), aliases[3].size()};
        report.primary = roswasmc_action_bundle_init(&context, &bundle, &selected, goals.data(), goals.size());
        if(report.primary)
        {
            report.cleanup = bundle.rollback;
            for(std::size_t index = 0; index < report.statuses.size(); ++index)
                report.statuses[index] = bundle.rollback_status[index];
            return report;
        }
        report.send_unknown = true;
        report.primary = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_send(&bundle, &goal, &report.goal_id).error;
        if(!report.primary)
            report.send_unknown = false;
        for(std::size_t iteration = 0; !report.primary && !report.result && iteration < polls; ++iteration)
        {
            auto& feedback = report.feedback[report.feedback_used];
            auto received = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_feedback(&bundle, report.goal_id, &feedback);
            if(!received.error)
                ++report.feedback_used;
            else if(received.error != 11)
                report.primary = received.error;
            if(report.primary)
                break;
            Result result{};
            std::uint8_t kind = 0;
            received = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_result(&bundle, report.goal_id, &kind, &result);
            if(!received.error)
            {
                report.result = result;
                report.terminal_kind = kind;
            }
            else if(received.error != 11)
                report.primary = received.error;
        }
        if(!report.primary && !report.result)
            report.primary = 110;
        report.cleanup = roswasmc_action_bundle_close_checked(&bundle, report.primary, report.statuses.data(), report.statuses.size());
        return report;
    }
}  // namespace uwvm_robotis::patrol
