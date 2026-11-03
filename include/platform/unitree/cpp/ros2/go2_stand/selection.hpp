/** @file
 * @brief Source-selected Go2 stand aliases, real pacing and independent stop input.
 * @details Include only through UWVM_RCLCPP_COMPAT_SELECTION_HEADER. Names in
 * this table grant nothing; the VM/gateway separately admit native types, QoS,
 * resources and WASI clocks. The complete original task body is unchanged.
 * A separately authorized operator may publish Bool true on the management
 * stop topic. This task has subscribe-only authority for that input.
 */
#pragma once
#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/unitree/c/ros2/records.h>
#include <platform/wasi/cpp/monotonic_wait.hpp>
#include <array>
#include <cstdio>
#include <cstdint>
#include <limits>

namespace uwvm_unitree_go2_stand
{
    static_assert(ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_MAX_WIRE_BYTES == 749);
    static_assert(ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_MAX_WIRE_BYTES == 1050);
    inline constexpr std::uint64_t period_ns = 2000000;
    inline constexpr std::uint64_t cancel_quantum_ns = 1000000;
    inline constexpr char cancel_alias[] = "unitree-go2-cancel";

    /** One private guest-instance owner for the independent management input.
     * No host thread, fake timestamp, retry of an uncertain effect, or source
     * iteration counter requests successful completion. A VM guardian remains
     * necessary if the guest traps, aborts or stops making progress.
     */
    class Pacing
    {
        roswasmc_context context_{roswasmc_ros2_backend()};
        roswasmc_capability cancel_{};
        std::uint64_t next_ns_{};
        std::uint64_t previous_ns_{};
        std::uint32_t ros_error_{};
        std::uint32_t cleanup_error_{};
        __wasi_errno_t wasi_error_{};
        unsigned char cancel_byte_{};
        bool attempted_open_{};
        bool sampled_{};
        bool stop_{};
        bool terminal_{};
        bool reported_{};
        std::uint32_t terminal_code_{};

        void close_once() noexcept
        {
            if(cancel_.handle)
            {
                auto code = roswasmc_close(&cancel_);
                if(code && !cleanup_error_) cleanup_error_ = code;
            }
        }

        std::uint32_t fail(std::uint32_t ros = 0, __wasi_errno_t wasi = 0) noexcept
        {
            if(ros && !ros_error_) ros_error_ = ros;
            if(wasi && !wasi_error_) wasi_error_ = wasi;
            close_once();
            terminal_ = true;
            // 125 is Selection's explicit-shutdown signal. A revoked alias,
            // failed close or WASI errno must never impersonate that signal.
            auto code = wasi_error_ ? 5u : ros_error_ ? ros_error_ : cleanup_error_ ? cleanup_error_ : 5u;
            terminal_code_ = code == 125 ? 5u : code;
            if(!reported_)
            {
                reported_ = true;
                std::fprintf(stderr, "go2_stand selection failure: ros=%u wasi=%u cleanup=%u\n",
                    static_cast<unsigned>(ros_error_), static_cast<unsigned>(wasi_error_),
                    static_cast<unsigned>(cleanup_error_));
            }
            return terminal_code_;
        }

        std::uint32_t finish_stop() noexcept
        {
            close_once();
            if(cleanup_error_) return fail();
            terminal_ = true;
            terminal_code_ = 125;
            return terminal_code_;
        }

        bool poll_stop() noexcept
        {
            if(stop_ || ros_error_) return true;
            auto result = roswasmc_poll(&cancel_, &cancel_byte_, sizeof cancel_byte_);
            if(result.error == 11) return false; // Actual ROS empty queue only.
            if(result.error)
            {
                ros_error_ = result.error;
                return true;
            }
            if(!result.has_length || result.length != 1 || cancel_byte_ > 1)
            {
                ros_error_ = UWVM_ROS_INVALID;
                return true;
            }
            stop_ = cancel_byte_ == 1;
            return stop_;
        }

        static bool cancelled(void* value) noexcept
        {
            return static_cast<Pacing*>(value)->poll_stop();
        }

    public:
        Pacing() noexcept { roswasmc_capability_init(&cancel_, &context_); }
        Pacing(Pacing const&) = delete;
        Pacing& operator=(Pacing const&) = delete;
        ~Pacing() { close_once(); }

        std::uint32_t step() noexcept
        {
            if(terminal_) return terminal_code_;
            if(!attempted_open_)
            {
                attempted_open_ = true;
                auto code = roswasmc_open(&cancel_, cancel_alias, sizeof cancel_alias - 1);
                if(code) return fail(code);
                code = roswasmc_subscribe(&cancel_);
                if(code) return fail(code);
            }
            if(poll_stop()) return ros_error_ ? fail() : finish_stop();
            __wasi_timestamp_t now{};
            auto error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 1, &now);
            if(error) return fail(0, error);
            if(sampled_ && now < previous_ns_) return fail(0, __WASI_ERRNO_INVAL);
            if(!sampled_)
            {
                if(now > std::numeric_limits<std::uint64_t>::max() - period_ns)
                    return fail(0, __WASI_ERRNO_OVERFLOW);
                next_ns_ = now + period_ns;
                sampled_ = true;
            }
            previous_ns_ = now;
            auto waited = roswasm_wasi::wait_until(next_ns_, cancel_quantum_ns, cancelled, this);
            if(ros_error_) return fail();
            if(waited.error) return fail(0, waited.error);
            if(stop_) return finish_stop();
            if(waited.cancelled) return fail(UWVM_ROS_INVALID);
            error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 1, &now);
            if(error) return fail(0, error);
            if(now < previous_ns_ || now < next_ns_) return fail(0, __WASI_ERRNO_INVAL);
            previous_ns_ = now;
            // Preserve an absolute real-time phase rather than adding callback
            // execution time to every interval. Skip missed wakeups, never run
            // a synthetic catch-up batch of the original controller callback.
            auto periods = (now - next_ns_) / period_ns + 1;
            if(periods > (std::numeric_limits<std::uint64_t>::max() - next_ns_) / period_ns)
                return fail(0, __WASI_ERRNO_OVERFLOW);
            next_ns_ += periods * period_ns;
            return 0;
        }

        static std::uint32_t dispatch(void* value) noexcept
        {
            return static_cast<Pacing*>(value)->step();
        }
    };

    inline constexpr std::array<roswasm_rclcpp::TopicBinding, 2> topics{{
        {"low_level_cmd_node", "/lowcmd", "unitree-go2-lowcmd", roswasm_rclcpp::Role::publish, 10, 749},
        {"low_level_cmd_node", "/lowstate", "unitree-go2-lowstate", roswasm_rclcpp::Role::subscribe, 10, 1050}
    }};
    inline constexpr std::array<roswasm_rclcpp::NodeBinding, 1> nodes{{
        {"low_level_cmd_node", "unitree-go2-steady", ""}
    }};
}

namespace roswasm_rclcpp
{
    /** Return immutable source bindings with mutable private pacing ownership.
     * The original task runs until an independently admitted external stop.
     * Full native middleware/simulator conformance remains a separate check.
     */
    inline Selection const* selected_configuration() noexcept
    {
        static uwvm_unitree_go2_stand::Pacing pacing;
        static Selection const selected{
            roswasmc_ros2_backend(), uwvm_unitree_go2_stand::topics, uwvm_unitree_go2_stand::nodes,
            uwvm_unitree_go2_stand::Pacing::dispatch, &pacing, 0, nullptr, SpinMode::until_shutdown
        };
        return &selected;
    }
}
