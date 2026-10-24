/**
 * @file main.cpp
 * @brief Drive two complete original FollowJointTrajectory goals concurrently.
 * @details A controlled peer keeps both goals active until complete feedback is
 * observed. Each goal is separately canceled after isolating goal2 retirement. Four distinct manually
 * granted roles remain owned until both terminal results have been consumed.
 * This verifier neither retries a goal nor asserts a physical controller stop.
 */
#include <fanuc/cpp/ros2/fanuc-ros2-complete/bounded_interfaces.hpp>
#include <ros2/c/roswasm/ros2.h>
#include <array>
#include <cinttypes>
#include <cstdio>
#include <cstring>
#include "goal_inputs.hpp"

using Client = uwvm_custom::Ros2Control_msgsActionFollowJointTrajectoryClient;

/**
 * @brief Emit complete observed canonical component bytes and their local ID.
 * @param component Original component role: goal, feedback or result.
 * @param tag Input marker1 or2, mapped independently to a native UUID by the peer.
 * @param id Runtime-local opaque goal ID; this is not the native16-byte UUID.
 * @param bytes Caller-owned complete encoded component, borrowed for this call.
 * @param size Exact extent without a Runtime ticket/outcome envelope.
 */
static void emit_wire(char const* component, unsigned tag, uint64_t id, unsigned char const* bytes, size_t size)
{
    std::printf("{\"event\":\"component\",\"component\":\"%s\",\"tag\":%u,\"id\":%" PRIu64 ",\"wire_hex\":\"", component, tag, id);
    for(size_t i = 0; i < size; ++i) { std::printf("%02x", static_cast<unsigned>(bytes[i])); }
    std::puts("\"}");
    std::fflush(stdout);
}

/**
 * @brief Run one finite controlled two-goal lifecycle without effect retries.
 * @return Zero only after full feedback/results, explicit owned cancellation,
 * exact quota/permission refusals and independently checked four-role cleanup.
 */
int main()
{
    roswasmc_context context{roswasmc_ros2_backend()};
    roswasmc_action_aliases aliases{
        uwvm_custom::alias("send"),
        uwvm_custom::alias("own"),
        uwvm_custom::alias("feedback"),
        uwvm_custom::alias("result"),
        {nullptr, 0}
    };
    Client client(context, aliases, 2);
    uint32_t primary = client.error();
    std::array<Client::Goal, 2> goals{};
    std::array<uint64_t, 2> ids{};
    std::array<bool, 2> feedback{}, terminal{};
    std::array<uint8_t, 2> kinds{};
    uint64_t sentinel = 0x1122334455667788ULL;
    uint32_t malformed = 999, quota = 999, foreign = 999, any = 999, cancel = 999, cancel_first = 999, isolation_poll = 999;
    int accepted = -7;
    bool independent_owner = false, isolation_unchanged = false, first_owned_after_cancel_ack = false;
    bool two_owned = false, owned_after_cancel_ack = false, sentinels_unchanged = true;
    if(!primary) { primary = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(goal_1, sizeof goal_1, &goals[0]); }
    if(!primary) { primary = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(goal_2, sizeof goal_2, &goals[1]); }
    if(!primary)
    {
        auto invalid = goals[0];
        invalid.trajectory.joint_names.size = 13;
        malformed = client.send_goal(invalid, sentinel).error;
        sentinels_unchanged = sentinel == 0x1122334455667788ULL;
        if(malformed != 22 || !sentinels_unchanged) { primary = 65; }
    }
    for(size_t i = 0; !primary && i < 2; ++i)
    {
        primary = client.send_goal(goals[i], ids[i]).error;
        if(!primary)
        {
            auto const* bytes = i ? goal_2 : goal_1;
            emit_wire("goal", static_cast<unsigned>(i + 1), ids[i], bytes, i ? sizeof goal_2 : sizeof goal_1);
        }
    }
    if(!primary)
    {
        two_owned = ids[0] && ids[1] && ids[0] != ids[1] && client.owns(ids[0]) && client.owns(ids[1]);
        quota = client.send_goal(goals[0], sentinel).error;
        foreign = client.cancel_own(0, accepted).error;
        any = client.cancel_all(accepted).error;
        sentinels_unchanged = sentinels_unchanged && sentinel == 0x1122334455667788ULL && accepted == -7;
        if(!two_owned || quota != 90 || foreign != 9 || any != 13 || !sentinels_unchanged) { primary = 65; }
    }
    for(unsigned round = 0; !primary && !(feedback[0] && feedback[1]) && round < 20000; ++round)
    {
        for(size_t i = 0; !primary && i < 2; ++i)
        {
            if(feedback[i]) { continue; }
            Client::Feedback value{};
            auto polled = client.feedback(ids[i], value);
            if(polled.error == 11) { continue; }
            primary = polled.error;
            if(!primary)
            {
                unsigned char wire[4128];
                size_t size{};
                primary = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(&value, wire, sizeof wire, &size);
                if(!primary)
                {
                    emit_wire("feedback", static_cast<unsigned>(i + 1), ids[i], wire, size);
                    feedback[i] = true;
                }
            }
        }
    }
    if(!primary && !(feedback[0] && feedback[1])) { primary = 110; }
    // Consume the second terminal before touching the first goal's authority.
    auto consume = [&](size_t i)
    {
        for(unsigned round = 0; !primary && !terminal[i] && round < 20000; ++round)
        {
            Client::Result value{};
            auto polled = client.result(ids[i], kinds[i], value);
            if(polled.error == 11) { continue; }
            primary = polled.error;
            if(!primary)
            {
                unsigned char wire[4104];
                size_t size{};
                primary = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(&value, wire, sizeof wire, &size);
                if(!primary)
                {
                    emit_wire("result", static_cast<unsigned>(i + 1), ids[i], wire, size);
                    terminal[i] = true;
                }
            }
        }
        if(!primary && !terminal[i]) { primary = 110; }
    };
    if(!primary)
    {
        cancel = client.cancel_own(ids[1], accepted).error;
        owned_after_cancel_ack = client.owns(ids[0]) && client.owns(ids[1]);
        std::printf("{\"event\":\"cancel_ack\",\"tag\":2,\"id\":%" PRIu64 ",\"error\":%u,\"accepted\":%d}\n", ids[1], cancel, accepted);
        std::fflush(stdout);
        if(cancel || accepted != 1 || !owned_after_cancel_ack) { primary = cancel ? cancel : 65; }
    }
    if(!primary) { consume(1); }
    if(!primary)
    {
        Client::Result probe{};
        probe.error_code = 0x11223344;
        std::array<unsigned char, sizeof probe> before{};
        std::memcpy(before.data(), &probe, sizeof probe);
        uint8_t probe_kind = 0xa7;
        isolation_poll = client.result(ids[0], probe_kind, probe).error;
        isolation_unchanged = probe_kind == 0xa7 && !std::memcmp(before.data(), &probe, sizeof probe);
        independent_owner = terminal[1] && !client.owns(ids[1]) && client.owns(ids[0]);
        std::printf("{\"event\":\"isolated_owner\",\"surviving_id\":%" PRIu64 ",\"retired_id\":%" PRIu64
                    ",\"result_status\":%u,\"whole_output_unchanged\":%s,\"independent_owner\":%s}\n",
                    ids[0],
                    ids[1],
                    isolation_poll,
                    isolation_unchanged ? "true" : "false",
                    independent_owner ? "true" : "false");
        std::fflush(stdout);
        if(isolation_poll != 11 || !isolation_unchanged || !independent_owner) { primary = 65; }
    }
    if(!primary)
    {
        accepted = -7;
        cancel_first = client.cancel_own(ids[0], accepted).error;
        first_owned_after_cancel_ack = client.owns(ids[0]) && !client.owns(ids[1]);
        std::printf("{\"event\":\"cancel_ack\",\"tag\":1,\"id\":%" PRIu64 ",\"error\":%u,\"accepted\":%d}\n", ids[0], cancel_first, accepted);
        std::fflush(stdout);
        if(cancel_first || accepted != 1 || !first_owned_after_cancel_ack) { primary = cancel_first ? cancel_first : 65; }
    }
    if(!primary) { consume(0); }
    bool retired = terminal[0] && terminal[1] && !client.owns(ids[0]) && !client.owns(ids[1]);
    if(!primary && (!retired || kinds[0] != 4 || kinds[1] != 4)) { primary = 65; }
    std::printf(
        "{\"event\":\"independent_cancel_summary\",\"cancel_first\":%u,\"isolation_poll\":%u,\"whole_output_unchanged\":%s,\"independent_owner\":%s,\"first_owned_after_cancel_ack\":%s}\n",
        cancel_first,
        isolation_poll,
        isolation_unchanged ? "true" : "false",
        independent_owner ? "true" : "false",
        first_owned_after_cancel_ack ? "true" : "false");
    std::array<uint32_t, 5> statuses{};
    auto cleanup = client.close_checked(primary, statuses);
    bool passed = !primary && !cleanup.cleanup_error && cleanup.attempted == 4 && !cleanup.failed && !client.is_open();
    for(auto status: statuses) { passed = passed && !status; }
    std::printf(
        "{\"event\":\"summary\",\"primary\":%u,\"malformed\":%u,\"quota\":%u,\"foreign_own\":%u,\"any_denied\":%u,\"cancel\":%u,\"accepted\":%d,\"two_owned\":%s,\"owned_after_cancel_ack\":%s,\"sentinels_unchanged\":%s,\"goals_retired\":%s,\"kind1\":%u,\"kind2\":%u,\"cleanup_error\":%u,\"cleanup_attempted\":%zu,\"cleanup_failed\":%zu,\"role_statuses\":[%u,%u,%u,%u,%u],\"passed\":%s}\n",
        primary,
        malformed,
        quota,
        foreign,
        any,
        cancel,
        accepted,
        two_owned ? "true" : "false",
        owned_after_cancel_ack ? "true" : "false",
        sentinels_unchanged ? "true" : "false",
        retired ? "true" : "false",
        kinds[0],
        kinds[1],
        cleanup.cleanup_error,
        cleanup.attempted,
        cleanup.failed,
        statuses[0],
        statuses[1],
        statuses[2],
        statuses[3],
        statuses[4],
        passed ? "true" : "false");
    if(std::fflush(stdout)) { return 1; }
    return passed ? 0 : 1;
}
