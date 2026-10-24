/**
 * @file bounded_interfaces.hpp
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros2-jazzy-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <doosan/c/ros2/doosan-ros2-jazzy-complete/bounded_interfaces.h>
#include <doosan/cpp/ros2/doosan-ros2-jazzy-complete/bounded_records.hpp>
#include <array>
#include <memory>
#include <functional>
#include <string_view>
#include <utility>

namespace uwvm_custom
{
    /** Borrow the selected immutable backend; no alias or permission is created. */
    inline roswasmc_string alias(std::string_view text)
    {
        return {text.data(), text.size()};
    }

    /** Private stable two-role ownership; handlers cannot borrow/retire raw capabilities. */
    class ServerOwners
    {
    protected:
        roswasmc_context context_;
        roswasmc_capability advertise_{}, respond_{};
        uint32_t error_{};
        bool busy_{};
        roswasmc_cleanup_report rollback_{};

        struct Pass
        {
            bool& busy;

            explicit Pass(bool& value) : busy{value}
            {
                busy = true;
            }

            ~Pass()
            {
                busy = false;
            }
        };

        ServerOwners(roswasmc_context const& context, std::string_view advertise, std::string_view respond, bool action) : context_{context.backend}
        {
            roswasmc_capability_init(&advertise_, &context_);
            roswasmc_capability_init(&respond_, &context_);
            error_ = roswasmc_check_operation(&context_, action ? ROSWASMC_ACTION_RESPOND : ROSWASMC_SERVICE_RESPOND);
            if(!error_ && (!roswasmc_action_bundle_alias(alias(advertise)) || !roswasmc_action_bundle_alias(alias(respond)) || advertise == respond))
                error_ = 22;
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_)
                error_ = action ? roswasmc_check_operation(&context_, ROSWASMC_ACTION_ADVERTISE) : (context_.backend->advertise_service ? 0 : 95);
            if(!error_)
                error_ = roswasmc_open(&advertise_, advertise.data(), advertise.size());
            if(!error_)
                error_ = roswasmc_open(&respond_, respond.data(), respond.size());
            if(!error_ && advertise_.handle == respond_.handle)
            {
                respond_.handle = 0;
                error_ = 17;
            }
            if(!error_)
            {
                if(action)
                {
                    auto r = roswasmc_action_advertise(&advertise_, nullptr, 0, nullptr, 0);
                    error_ = r.error;
                    if(!error_ && (!r.has_length || r.length))
                        error_ = 22;
                }
                else
                    error_ = roswasmc_service_advertise(&advertise_);
            }
            if(error_)
            {
                std::array<uint32_t, 2> statuses{};
                rollback_ = is_open() ? cleanup(error_, statuses, false) : roswasmc_cleanup_init(error_);
            }
        }

        roswasmc_cleanup_report cleanup(uint32_t primary, std::array<uint32_t, 2>& statuses, bool revoke)
        {
            auto r = roswasmc_cleanup_init(primary);
            if(busy_)
            {
                r.cleanup_error = 17;
                return r;
            }
            if(!is_open())
            {
                r.cleanup_error = 9;
                return r;
            }
            roswasmc_capability* caps[] = {&advertise_, &respond_};
            for(size_t i = 2; i > 0; --i)
            {
                uint32_t code = 0;
                if(roswasmc_is_open(caps[i - 1]))
                {
                    code = revoke ? roswasmc_revoke(caps[i - 1]) : roswasmc_close(caps[i - 1]);
                    ++r.attempted;
                    if(code)
                    {
                        ++r.failed;
                        if(!r.cleanup_error)
                            r.cleanup_error = code;
                    }
                }
                statuses[i - 1] = code;
            }
            return r;
        }

    public:
        ServerOwners(ServerOwners const&) = delete;
        ServerOwners& operator= (ServerOwners const&) = delete;
        ServerOwners(ServerOwners&&) = delete;

        ~ServerOwners()
        {
            if(is_open())
            {
                std::array<uint32_t, 2> statuses{};
                cleanup(0, statuses, false);
            }
        }

        /** Construction and rollback errors stay inspectable; no constructor retries an open. */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&advertise_) || roswasmc_is_open(&respond_);
        }

        roswasmc_cleanup_report construction_cleanup() const
        {
            return rollback_;
        }

        /** Preflight both owners before the first close; a callback refuses17 with no imports. */
        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 2>& statuses)
        {
            return cleanup(primary, statuses, false);
        }

        /** Explicit alias revocation; never automatic rollback or destructor behavior. */
        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 2>& statuses)
        {
            return cleanup(primary, statuses, true);
        }
    };

    /** Complete owned custom dsr_msgs2/action/JogH2r Action client with four separate roles. */
    class Ros2Dsr_msgs2ActionJogH2rClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros2Dsr_msgs2ActionJogH2r_Goal;
        using Result = Ros2Dsr_msgs2ActionJogH2r_Result;
        using Feedback = Ros2Dsr_msgs2ActionJogH2r_Feedback;

        Ros2Dsr_msgs2ActionJogH2rClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) : context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros2Dsr_msgs2ActionJogH2rClient(Ros2Dsr_msgs2ActionJogH2rClient const&) = delete;
        Ros2Dsr_msgs2ActionJogH2rClient& operator= (Ros2Dsr_msgs2ActionJogH2rClient const&) = delete;
        Ros2Dsr_msgs2ActionJogH2rClient(Ros2Dsr_msgs2ActionJogH2rClient&&) = delete;

        ~Ros2Dsr_msgs2ActionJogH2rClient()
        {
            if(bundle_.active)
            {
                std::array<uint32_t, 5> statuses{};
                roswasmc_action_bundle_close_checked(&bundle_, 0, statuses.data(), statuses.size());
            }
        }

        uint32_t error() const noexcept
        {
            return bundle_.error ? bundle_.error : bundle_.active ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return bundle_.active;
        }

        bool owns(uint64_t id) const
        {
            return roswasmc_action_bundle_owns(&bundle_, id);
        }

        roswasmc_result send_goal(Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_JogH2r_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_JogH2r_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_JogH2r_result(&bundle_, id, &kind, &value);
        }

        roswasmc_result cancel_own(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_own(&bundle_, id, &accepted);
        }

        roswasmc_result cancel_any(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_any(&bundle_, id, &accepted);
        }

        roswasmc_result cancel_all(int& accepted)
        {
            return roswasmc_action_bundle_cancel_all(&bundle_, &accepted);
        }

        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses.data(), statuses.size());
        }

        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_revoke_checked(&bundle_, primary, statuses.data(), statuses.size());
        }
    };

    /** Typed custom dsr_msgs2/action/JogH2r server with explicit feedback/terminal component codecs. */
    class Ros2Dsr_msgs2ActionJogH2rServer : public ServerOwners
    {
    public:
        using Goal = Ros2Dsr_msgs2ActionJogH2r_Goal;
        using Result = Ros2Dsr_msgs2ActionJogH2r_Result;
        using Feedback = Ros2Dsr_msgs2ActionJogH2r_Feedback;

        /** Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
        struct Replies
        {
            Feedback feedback{};
            Result result{};
            uint8_t kind{2};
            bool send_feedback{true}, send_result{true};
        };

    private:
        using Handler = std::function<Replies(uint64_t, Goal const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        Ros2Dsr_msgs2ActionJogH2rServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, true}
        {
        }

        void on_goal(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& id, Goal& goal)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_action_JogH2r_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_action_JogH2r_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_action_JogH2r_respond_result(&respond_, id, kind, &value);
        }

        /** One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t id{};
            Goal goal{};
            auto r = roswasmc_bounded_2_dsr_msgs2_action_JogH2r_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_2_dsr_msgs2_action_JogH2r_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_2_dsr_msgs2_action_JogH2r_respond_result(&respond_, id, replies.kind, &replies.result).error : 0;
        }
    };

    /** Complete owned custom dsr_msgs2/action/MovejH2r Action client with four separate roles. */
    class Ros2Dsr_msgs2ActionMovejH2rClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros2Dsr_msgs2ActionMovejH2r_Goal;
        using Result = Ros2Dsr_msgs2ActionMovejH2r_Result;
        using Feedback = Ros2Dsr_msgs2ActionMovejH2r_Feedback;

        Ros2Dsr_msgs2ActionMovejH2rClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) : context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros2Dsr_msgs2ActionMovejH2rClient(Ros2Dsr_msgs2ActionMovejH2rClient const&) = delete;
        Ros2Dsr_msgs2ActionMovejH2rClient& operator= (Ros2Dsr_msgs2ActionMovejH2rClient const&) = delete;
        Ros2Dsr_msgs2ActionMovejH2rClient(Ros2Dsr_msgs2ActionMovejH2rClient&&) = delete;

        ~Ros2Dsr_msgs2ActionMovejH2rClient()
        {
            if(bundle_.active)
            {
                std::array<uint32_t, 5> statuses{};
                roswasmc_action_bundle_close_checked(&bundle_, 0, statuses.data(), statuses.size());
            }
        }

        uint32_t error() const noexcept
        {
            return bundle_.error ? bundle_.error : bundle_.active ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return bundle_.active;
        }

        bool owns(uint64_t id) const
        {
            return roswasmc_action_bundle_owns(&bundle_, id);
        }

        roswasmc_result send_goal(Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_result(&bundle_, id, &kind, &value);
        }

        roswasmc_result cancel_own(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_own(&bundle_, id, &accepted);
        }

        roswasmc_result cancel_any(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_any(&bundle_, id, &accepted);
        }

        roswasmc_result cancel_all(int& accepted)
        {
            return roswasmc_action_bundle_cancel_all(&bundle_, &accepted);
        }

        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses.data(), statuses.size());
        }

        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_revoke_checked(&bundle_, primary, statuses.data(), statuses.size());
        }
    };

    /** Typed custom dsr_msgs2/action/MovejH2r server with explicit feedback/terminal component codecs. */
    class Ros2Dsr_msgs2ActionMovejH2rServer : public ServerOwners
    {
    public:
        using Goal = Ros2Dsr_msgs2ActionMovejH2r_Goal;
        using Result = Ros2Dsr_msgs2ActionMovejH2r_Result;
        using Feedback = Ros2Dsr_msgs2ActionMovejH2r_Feedback;

        /** Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
        struct Replies
        {
            Feedback feedback{};
            Result result{};
            uint8_t kind{2};
            bool send_feedback{true}, send_result{true};
        };

    private:
        using Handler = std::function<Replies(uint64_t, Goal const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        Ros2Dsr_msgs2ActionMovejH2rServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, true}
        {
        }

        void on_goal(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& id, Goal& goal)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_respond_result(&respond_, id, kind, &value);
        }

        /** One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t id{};
            Goal goal{};
            auto r = roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_respond_result(&respond_, id, replies.kind, &replies.result).error : 0;
        }
    };

    /** Complete owned custom dsr_msgs2/action/MovelH2r Action client with four separate roles. */
    class Ros2Dsr_msgs2ActionMovelH2rClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros2Dsr_msgs2ActionMovelH2r_Goal;
        using Result = Ros2Dsr_msgs2ActionMovelH2r_Result;
        using Feedback = Ros2Dsr_msgs2ActionMovelH2r_Feedback;

        Ros2Dsr_msgs2ActionMovelH2rClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) : context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros2Dsr_msgs2ActionMovelH2rClient(Ros2Dsr_msgs2ActionMovelH2rClient const&) = delete;
        Ros2Dsr_msgs2ActionMovelH2rClient& operator= (Ros2Dsr_msgs2ActionMovelH2rClient const&) = delete;
        Ros2Dsr_msgs2ActionMovelH2rClient(Ros2Dsr_msgs2ActionMovelH2rClient&&) = delete;

        ~Ros2Dsr_msgs2ActionMovelH2rClient()
        {
            if(bundle_.active)
            {
                std::array<uint32_t, 5> statuses{};
                roswasmc_action_bundle_close_checked(&bundle_, 0, statuses.data(), statuses.size());
            }
        }

        uint32_t error() const noexcept
        {
            return bundle_.error ? bundle_.error : bundle_.active ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return bundle_.active;
        }

        bool owns(uint64_t id) const
        {
            return roswasmc_action_bundle_owns(&bundle_, id);
        }

        roswasmc_result send_goal(Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_result(&bundle_, id, &kind, &value);
        }

        roswasmc_result cancel_own(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_own(&bundle_, id, &accepted);
        }

        roswasmc_result cancel_any(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_any(&bundle_, id, &accepted);
        }

        roswasmc_result cancel_all(int& accepted)
        {
            return roswasmc_action_bundle_cancel_all(&bundle_, &accepted);
        }

        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses.data(), statuses.size());
        }

        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_revoke_checked(&bundle_, primary, statuses.data(), statuses.size());
        }
    };

    /** Typed custom dsr_msgs2/action/MovelH2r server with explicit feedback/terminal component codecs. */
    class Ros2Dsr_msgs2ActionMovelH2rServer : public ServerOwners
    {
    public:
        using Goal = Ros2Dsr_msgs2ActionMovelH2r_Goal;
        using Result = Ros2Dsr_msgs2ActionMovelH2r_Result;
        using Feedback = Ros2Dsr_msgs2ActionMovelH2r_Feedback;

        /** Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
        struct Replies
        {
            Feedback feedback{};
            Result result{};
            uint8_t kind{2};
            bool send_feedback{true}, send_result{true};
        };

    private:
        using Handler = std::function<Replies(uint64_t, Goal const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        Ros2Dsr_msgs2ActionMovelH2rServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, true}
        {
        }

        void on_goal(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& id, Goal& goal)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_respond_result(&respond_, id, kind, &value);
        }

        /** One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t id{};
            Goal goal{};
            auto r = roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_respond_result(&respond_, id, replies.kind, &replies.result).error : 0;
        }
    };

    /** Complete custom dsr_msgs2/srv/AlignAxis1 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvAlignAxis1Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvAlignAxis1_Request;
        using Response = Ros2Dsr_msgs2SrvAlignAxis1_Response;

        Ros2Dsr_msgs2SrvAlignAxis1Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvAlignAxis1Client(Ros2Dsr_msgs2SrvAlignAxis1Client const&) = delete;
        Ros2Dsr_msgs2SrvAlignAxis1Client& operator= (Ros2Dsr_msgs2SrvAlignAxis1Client const&) = delete;
        Ros2Dsr_msgs2SrvAlignAxis1Client(Ros2Dsr_msgs2SrvAlignAxis1Client&&) = delete;

        ~Ros2Dsr_msgs2SrvAlignAxis1Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/AlignAxis1 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvAlignAxis1Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvAlignAxis1_Response(Ros2Dsr_msgs2SrvAlignAxis1_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvAlignAxis1_Request;
        using Response = Ros2Dsr_msgs2SrvAlignAxis1_Response;

        Ros2Dsr_msgs2SrvAlignAxis1Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/AlignAxis2 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvAlignAxis2Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvAlignAxis2_Request;
        using Response = Ros2Dsr_msgs2SrvAlignAxis2_Response;

        Ros2Dsr_msgs2SrvAlignAxis2Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvAlignAxis2Client(Ros2Dsr_msgs2SrvAlignAxis2Client const&) = delete;
        Ros2Dsr_msgs2SrvAlignAxis2Client& operator= (Ros2Dsr_msgs2SrvAlignAxis2Client const&) = delete;
        Ros2Dsr_msgs2SrvAlignAxis2Client(Ros2Dsr_msgs2SrvAlignAxis2Client&&) = delete;

        ~Ros2Dsr_msgs2SrvAlignAxis2Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/AlignAxis2 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvAlignAxis2Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvAlignAxis2_Response(Ros2Dsr_msgs2SrvAlignAxis2_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvAlignAxis2_Request;
        using Response = Ros2Dsr_msgs2SrvAlignAxis2_Response;

        Ros2Dsr_msgs2SrvAlignAxis2Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/AlterMotion client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvAlterMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvAlterMotion_Request;
        using Response = Ros2Dsr_msgs2SrvAlterMotion_Response;

        Ros2Dsr_msgs2SrvAlterMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvAlterMotionClient(Ros2Dsr_msgs2SrvAlterMotionClient const&) = delete;
        Ros2Dsr_msgs2SrvAlterMotionClient& operator= (Ros2Dsr_msgs2SrvAlterMotionClient const&) = delete;
        Ros2Dsr_msgs2SrvAlterMotionClient(Ros2Dsr_msgs2SrvAlterMotionClient&&) = delete;

        ~Ros2Dsr_msgs2SrvAlterMotionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/AlterMotion server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvAlterMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvAlterMotion_Response(Ros2Dsr_msgs2SrvAlterMotion_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvAlterMotion_Request;
        using Response = Ros2Dsr_msgs2SrvAlterMotion_Response;

        Ros2Dsr_msgs2SrvAlterMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/CalcCoord client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvCalcCoordClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvCalcCoord_Request;
        using Response = Ros2Dsr_msgs2SrvCalcCoord_Response;

        Ros2Dsr_msgs2SrvCalcCoordClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvCalcCoordClient(Ros2Dsr_msgs2SrvCalcCoordClient const&) = delete;
        Ros2Dsr_msgs2SrvCalcCoordClient& operator= (Ros2Dsr_msgs2SrvCalcCoordClient const&) = delete;
        Ros2Dsr_msgs2SrvCalcCoordClient(Ros2Dsr_msgs2SrvCalcCoordClient&&) = delete;

        ~Ros2Dsr_msgs2SrvCalcCoordClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/CalcCoord server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvCalcCoordServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvCalcCoord_Response(Ros2Dsr_msgs2SrvCalcCoord_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvCalcCoord_Request;
        using Response = Ros2Dsr_msgs2SrvCalcCoord_Response;

        Ros2Dsr_msgs2SrvCalcCoordServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ChangeCollisionSensitivity client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request;
        using Response = Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response;

        Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient(Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient const&) = delete;
        Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient& operator= (Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient const&) = delete;
        Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient(Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient&&) = delete;

        ~Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ChangeCollisionSensitivity server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvChangeCollisionSensitivityServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response(Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request;
        using Response = Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response;

        Ros2Dsr_msgs2SrvChangeCollisionSensitivityServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ChangeOperationSpeed client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvChangeOperationSpeedClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvChangeOperationSpeed_Request;
        using Response = Ros2Dsr_msgs2SrvChangeOperationSpeed_Response;

        Ros2Dsr_msgs2SrvChangeOperationSpeedClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvChangeOperationSpeedClient(Ros2Dsr_msgs2SrvChangeOperationSpeedClient const&) = delete;
        Ros2Dsr_msgs2SrvChangeOperationSpeedClient& operator= (Ros2Dsr_msgs2SrvChangeOperationSpeedClient const&) = delete;
        Ros2Dsr_msgs2SrvChangeOperationSpeedClient(Ros2Dsr_msgs2SrvChangeOperationSpeedClient&&) = delete;

        ~Ros2Dsr_msgs2SrvChangeOperationSpeedClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ChangeOperationSpeed server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvChangeOperationSpeedServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvChangeOperationSpeed_Response(Ros2Dsr_msgs2SrvChangeOperationSpeed_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvChangeOperationSpeed_Request;
        using Response = Ros2Dsr_msgs2SrvChangeOperationSpeed_Response;

        Ros2Dsr_msgs2SrvChangeOperationSpeedServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/CheckForceCondition client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvCheckForceConditionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvCheckForceCondition_Request;
        using Response = Ros2Dsr_msgs2SrvCheckForceCondition_Response;

        Ros2Dsr_msgs2SrvCheckForceConditionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvCheckForceConditionClient(Ros2Dsr_msgs2SrvCheckForceConditionClient const&) = delete;
        Ros2Dsr_msgs2SrvCheckForceConditionClient& operator= (Ros2Dsr_msgs2SrvCheckForceConditionClient const&) = delete;
        Ros2Dsr_msgs2SrvCheckForceConditionClient(Ros2Dsr_msgs2SrvCheckForceConditionClient&&) = delete;

        ~Ros2Dsr_msgs2SrvCheckForceConditionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/CheckForceCondition server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvCheckForceConditionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvCheckForceCondition_Response(Ros2Dsr_msgs2SrvCheckForceCondition_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvCheckForceCondition_Request;
        using Response = Ros2Dsr_msgs2SrvCheckForceCondition_Response;

        Ros2Dsr_msgs2SrvCheckForceConditionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/CheckMotion client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvCheckMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvCheckMotion_Request;
        using Response = Ros2Dsr_msgs2SrvCheckMotion_Response;

        Ros2Dsr_msgs2SrvCheckMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvCheckMotionClient(Ros2Dsr_msgs2SrvCheckMotionClient const&) = delete;
        Ros2Dsr_msgs2SrvCheckMotionClient& operator= (Ros2Dsr_msgs2SrvCheckMotionClient const&) = delete;
        Ros2Dsr_msgs2SrvCheckMotionClient(Ros2Dsr_msgs2SrvCheckMotionClient&&) = delete;

        ~Ros2Dsr_msgs2SrvCheckMotionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/CheckMotion server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvCheckMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvCheckMotion_Response(Ros2Dsr_msgs2SrvCheckMotion_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvCheckMotion_Request;
        using Response = Ros2Dsr_msgs2SrvCheckMotion_Response;

        Ros2Dsr_msgs2SrvCheckMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/CheckOrientationCondition1 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvCheckOrientationCondition1Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request;
        using Response = Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response;

        Ros2Dsr_msgs2SrvCheckOrientationCondition1Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvCheckOrientationCondition1Client(Ros2Dsr_msgs2SrvCheckOrientationCondition1Client const&) = delete;
        Ros2Dsr_msgs2SrvCheckOrientationCondition1Client& operator= (Ros2Dsr_msgs2SrvCheckOrientationCondition1Client const&) = delete;
        Ros2Dsr_msgs2SrvCheckOrientationCondition1Client(Ros2Dsr_msgs2SrvCheckOrientationCondition1Client&&) = delete;

        ~Ros2Dsr_msgs2SrvCheckOrientationCondition1Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/CheckOrientationCondition1 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvCheckOrientationCondition1Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response(Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request;
        using Response = Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response;

        Ros2Dsr_msgs2SrvCheckOrientationCondition1Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/CheckOrientationCondition2 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvCheckOrientationCondition2Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request;
        using Response = Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response;

        Ros2Dsr_msgs2SrvCheckOrientationCondition2Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvCheckOrientationCondition2Client(Ros2Dsr_msgs2SrvCheckOrientationCondition2Client const&) = delete;
        Ros2Dsr_msgs2SrvCheckOrientationCondition2Client& operator= (Ros2Dsr_msgs2SrvCheckOrientationCondition2Client const&) = delete;
        Ros2Dsr_msgs2SrvCheckOrientationCondition2Client(Ros2Dsr_msgs2SrvCheckOrientationCondition2Client&&) = delete;

        ~Ros2Dsr_msgs2SrvCheckOrientationCondition2Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/CheckOrientationCondition2 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvCheckOrientationCondition2Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response(Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request;
        using Response = Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response;

        Ros2Dsr_msgs2SrvCheckOrientationCondition2Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/CheckPositionCondition client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvCheckPositionConditionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvCheckPositionCondition_Request;
        using Response = Ros2Dsr_msgs2SrvCheckPositionCondition_Response;

        Ros2Dsr_msgs2SrvCheckPositionConditionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvCheckPositionConditionClient(Ros2Dsr_msgs2SrvCheckPositionConditionClient const&) = delete;
        Ros2Dsr_msgs2SrvCheckPositionConditionClient& operator= (Ros2Dsr_msgs2SrvCheckPositionConditionClient const&) = delete;
        Ros2Dsr_msgs2SrvCheckPositionConditionClient(Ros2Dsr_msgs2SrvCheckPositionConditionClient&&) = delete;

        ~Ros2Dsr_msgs2SrvCheckPositionConditionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/CheckPositionCondition server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvCheckPositionConditionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvCheckPositionCondition_Response(Ros2Dsr_msgs2SrvCheckPositionCondition_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvCheckPositionCondition_Request;
        using Response = Ros2Dsr_msgs2SrvCheckPositionCondition_Response;

        Ros2Dsr_msgs2SrvCheckPositionConditionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ConfigCreateModbus client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvConfigCreateModbusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvConfigCreateModbus_Request;
        using Response = Ros2Dsr_msgs2SrvConfigCreateModbus_Response;

        Ros2Dsr_msgs2SrvConfigCreateModbusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvConfigCreateModbusClient(Ros2Dsr_msgs2SrvConfigCreateModbusClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigCreateModbusClient& operator= (Ros2Dsr_msgs2SrvConfigCreateModbusClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigCreateModbusClient(Ros2Dsr_msgs2SrvConfigCreateModbusClient&&) = delete;

        ~Ros2Dsr_msgs2SrvConfigCreateModbusClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ConfigCreateModbus server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvConfigCreateModbusServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvConfigCreateModbus_Response(Ros2Dsr_msgs2SrvConfigCreateModbus_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvConfigCreateModbus_Request;
        using Response = Ros2Dsr_msgs2SrvConfigCreateModbus_Response;

        Ros2Dsr_msgs2SrvConfigCreateModbusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ConfigCreateTcp client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvConfigCreateTcpClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvConfigCreateTcp_Request;
        using Response = Ros2Dsr_msgs2SrvConfigCreateTcp_Response;

        Ros2Dsr_msgs2SrvConfigCreateTcpClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvConfigCreateTcpClient(Ros2Dsr_msgs2SrvConfigCreateTcpClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigCreateTcpClient& operator= (Ros2Dsr_msgs2SrvConfigCreateTcpClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigCreateTcpClient(Ros2Dsr_msgs2SrvConfigCreateTcpClient&&) = delete;

        ~Ros2Dsr_msgs2SrvConfigCreateTcpClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ConfigCreateTcp server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvConfigCreateTcpServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvConfigCreateTcp_Response(Ros2Dsr_msgs2SrvConfigCreateTcp_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvConfigCreateTcp_Request;
        using Response = Ros2Dsr_msgs2SrvConfigCreateTcp_Response;

        Ros2Dsr_msgs2SrvConfigCreateTcpServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ConfigCreateTool client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvConfigCreateToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvConfigCreateTool_Request;
        using Response = Ros2Dsr_msgs2SrvConfigCreateTool_Response;

        Ros2Dsr_msgs2SrvConfigCreateToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvConfigCreateToolClient(Ros2Dsr_msgs2SrvConfigCreateToolClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigCreateToolClient& operator= (Ros2Dsr_msgs2SrvConfigCreateToolClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigCreateToolClient(Ros2Dsr_msgs2SrvConfigCreateToolClient&&) = delete;

        ~Ros2Dsr_msgs2SrvConfigCreateToolClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ConfigCreateTool server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvConfigCreateToolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvConfigCreateTool_Response(Ros2Dsr_msgs2SrvConfigCreateTool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvConfigCreateTool_Request;
        using Response = Ros2Dsr_msgs2SrvConfigCreateTool_Response;

        Ros2Dsr_msgs2SrvConfigCreateToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ConfigDeleteModbus client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvConfigDeleteModbusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvConfigDeleteModbus_Request;
        using Response = Ros2Dsr_msgs2SrvConfigDeleteModbus_Response;

        Ros2Dsr_msgs2SrvConfigDeleteModbusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvConfigDeleteModbusClient(Ros2Dsr_msgs2SrvConfigDeleteModbusClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigDeleteModbusClient& operator= (Ros2Dsr_msgs2SrvConfigDeleteModbusClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigDeleteModbusClient(Ros2Dsr_msgs2SrvConfigDeleteModbusClient&&) = delete;

        ~Ros2Dsr_msgs2SrvConfigDeleteModbusClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ConfigDeleteModbus server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvConfigDeleteModbusServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvConfigDeleteModbus_Response(Ros2Dsr_msgs2SrvConfigDeleteModbus_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvConfigDeleteModbus_Request;
        using Response = Ros2Dsr_msgs2SrvConfigDeleteModbus_Response;

        Ros2Dsr_msgs2SrvConfigDeleteModbusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ConfigDeleteTcp client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvConfigDeleteTcpClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvConfigDeleteTcp_Request;
        using Response = Ros2Dsr_msgs2SrvConfigDeleteTcp_Response;

        Ros2Dsr_msgs2SrvConfigDeleteTcpClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvConfigDeleteTcpClient(Ros2Dsr_msgs2SrvConfigDeleteTcpClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigDeleteTcpClient& operator= (Ros2Dsr_msgs2SrvConfigDeleteTcpClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigDeleteTcpClient(Ros2Dsr_msgs2SrvConfigDeleteTcpClient&&) = delete;

        ~Ros2Dsr_msgs2SrvConfigDeleteTcpClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ConfigDeleteTcp server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvConfigDeleteTcpServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvConfigDeleteTcp_Response(Ros2Dsr_msgs2SrvConfigDeleteTcp_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvConfigDeleteTcp_Request;
        using Response = Ros2Dsr_msgs2SrvConfigDeleteTcp_Response;

        Ros2Dsr_msgs2SrvConfigDeleteTcpServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ConfigDeleteTool client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvConfigDeleteToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvConfigDeleteTool_Request;
        using Response = Ros2Dsr_msgs2SrvConfigDeleteTool_Response;

        Ros2Dsr_msgs2SrvConfigDeleteToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvConfigDeleteToolClient(Ros2Dsr_msgs2SrvConfigDeleteToolClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigDeleteToolClient& operator= (Ros2Dsr_msgs2SrvConfigDeleteToolClient const&) = delete;
        Ros2Dsr_msgs2SrvConfigDeleteToolClient(Ros2Dsr_msgs2SrvConfigDeleteToolClient&&) = delete;

        ~Ros2Dsr_msgs2SrvConfigDeleteToolClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ConfigDeleteTool server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvConfigDeleteToolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvConfigDeleteTool_Response(Ros2Dsr_msgs2SrvConfigDeleteTool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvConfigDeleteTool_Request;
        using Response = Ros2Dsr_msgs2SrvConfigDeleteTool_Response;

        Ros2Dsr_msgs2SrvConfigDeleteToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ConnectRtControl client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvConnectRtControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvConnectRtControl_Request;
        using Response = Ros2Dsr_msgs2SrvConnectRtControl_Response;

        Ros2Dsr_msgs2SrvConnectRtControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvConnectRtControlClient(Ros2Dsr_msgs2SrvConnectRtControlClient const&) = delete;
        Ros2Dsr_msgs2SrvConnectRtControlClient& operator= (Ros2Dsr_msgs2SrvConnectRtControlClient const&) = delete;
        Ros2Dsr_msgs2SrvConnectRtControlClient(Ros2Dsr_msgs2SrvConnectRtControlClient&&) = delete;

        ~Ros2Dsr_msgs2SrvConnectRtControlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ConnectRtControl server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvConnectRtControlServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvConnectRtControl_Response(Ros2Dsr_msgs2SrvConnectRtControl_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvConnectRtControl_Request;
        using Response = Ros2Dsr_msgs2SrvConnectRtControl_Response;

        Ros2Dsr_msgs2SrvConnectRtControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/CoordTransform client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvCoordTransformClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvCoordTransform_Request;
        using Response = Ros2Dsr_msgs2SrvCoordTransform_Response;

        Ros2Dsr_msgs2SrvCoordTransformClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvCoordTransformClient(Ros2Dsr_msgs2SrvCoordTransformClient const&) = delete;
        Ros2Dsr_msgs2SrvCoordTransformClient& operator= (Ros2Dsr_msgs2SrvCoordTransformClient const&) = delete;
        Ros2Dsr_msgs2SrvCoordTransformClient(Ros2Dsr_msgs2SrvCoordTransformClient&&) = delete;

        ~Ros2Dsr_msgs2SrvCoordTransformClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/CoordTransform server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvCoordTransformServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvCoordTransform_Response(Ros2Dsr_msgs2SrvCoordTransform_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvCoordTransform_Request;
        using Response = Ros2Dsr_msgs2SrvCoordTransform_Response;

        Ros2Dsr_msgs2SrvCoordTransformServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/DisableAlterMotion client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvDisableAlterMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvDisableAlterMotion_Request;
        using Response = Ros2Dsr_msgs2SrvDisableAlterMotion_Response;

        Ros2Dsr_msgs2SrvDisableAlterMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvDisableAlterMotionClient(Ros2Dsr_msgs2SrvDisableAlterMotionClient const&) = delete;
        Ros2Dsr_msgs2SrvDisableAlterMotionClient& operator= (Ros2Dsr_msgs2SrvDisableAlterMotionClient const&) = delete;
        Ros2Dsr_msgs2SrvDisableAlterMotionClient(Ros2Dsr_msgs2SrvDisableAlterMotionClient&&) = delete;

        ~Ros2Dsr_msgs2SrvDisableAlterMotionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/DisableAlterMotion server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvDisableAlterMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvDisableAlterMotion_Response(Ros2Dsr_msgs2SrvDisableAlterMotion_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvDisableAlterMotion_Request;
        using Response = Ros2Dsr_msgs2SrvDisableAlterMotion_Response;

        Ros2Dsr_msgs2SrvDisableAlterMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/DisconnectRtControl client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvDisconnectRtControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvDisconnectRtControl_Request;
        using Response = Ros2Dsr_msgs2SrvDisconnectRtControl_Response;

        Ros2Dsr_msgs2SrvDisconnectRtControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvDisconnectRtControlClient(Ros2Dsr_msgs2SrvDisconnectRtControlClient const&) = delete;
        Ros2Dsr_msgs2SrvDisconnectRtControlClient& operator= (Ros2Dsr_msgs2SrvDisconnectRtControlClient const&) = delete;
        Ros2Dsr_msgs2SrvDisconnectRtControlClient(Ros2Dsr_msgs2SrvDisconnectRtControlClient&&) = delete;

        ~Ros2Dsr_msgs2SrvDisconnectRtControlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/DisconnectRtControl server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvDisconnectRtControlServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvDisconnectRtControl_Response(Ros2Dsr_msgs2SrvDisconnectRtControl_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvDisconnectRtControl_Request;
        using Response = Ros2Dsr_msgs2SrvDisconnectRtControl_Response;

        Ros2Dsr_msgs2SrvDisconnectRtControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/DrlPause client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvDrlPauseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvDrlPause_Request;
        using Response = Ros2Dsr_msgs2SrvDrlPause_Response;

        Ros2Dsr_msgs2SrvDrlPauseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvDrlPauseClient(Ros2Dsr_msgs2SrvDrlPauseClient const&) = delete;
        Ros2Dsr_msgs2SrvDrlPauseClient& operator= (Ros2Dsr_msgs2SrvDrlPauseClient const&) = delete;
        Ros2Dsr_msgs2SrvDrlPauseClient(Ros2Dsr_msgs2SrvDrlPauseClient&&) = delete;

        ~Ros2Dsr_msgs2SrvDrlPauseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/DrlPause server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvDrlPauseServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvDrlPause_Response(Ros2Dsr_msgs2SrvDrlPause_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvDrlPause_Request;
        using Response = Ros2Dsr_msgs2SrvDrlPause_Response;

        Ros2Dsr_msgs2SrvDrlPauseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/DrlResume client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvDrlResumeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvDrlResume_Request;
        using Response = Ros2Dsr_msgs2SrvDrlResume_Response;

        Ros2Dsr_msgs2SrvDrlResumeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvDrlResumeClient(Ros2Dsr_msgs2SrvDrlResumeClient const&) = delete;
        Ros2Dsr_msgs2SrvDrlResumeClient& operator= (Ros2Dsr_msgs2SrvDrlResumeClient const&) = delete;
        Ros2Dsr_msgs2SrvDrlResumeClient(Ros2Dsr_msgs2SrvDrlResumeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvDrlResumeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/DrlResume server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvDrlResumeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvDrlResume_Response(Ros2Dsr_msgs2SrvDrlResume_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvDrlResume_Request;
        using Response = Ros2Dsr_msgs2SrvDrlResume_Response;

        Ros2Dsr_msgs2SrvDrlResumeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/DrlStart client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvDrlStartClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvDrlStart_Request;
        using Response = Ros2Dsr_msgs2SrvDrlStart_Response;

        Ros2Dsr_msgs2SrvDrlStartClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvDrlStartClient(Ros2Dsr_msgs2SrvDrlStartClient const&) = delete;
        Ros2Dsr_msgs2SrvDrlStartClient& operator= (Ros2Dsr_msgs2SrvDrlStartClient const&) = delete;
        Ros2Dsr_msgs2SrvDrlStartClient(Ros2Dsr_msgs2SrvDrlStartClient&&) = delete;

        ~Ros2Dsr_msgs2SrvDrlStartClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/DrlStart server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvDrlStartServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvDrlStart_Response(Ros2Dsr_msgs2SrvDrlStart_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvDrlStart_Request;
        using Response = Ros2Dsr_msgs2SrvDrlStart_Response;

        Ros2Dsr_msgs2SrvDrlStartServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/DrlStop client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvDrlStopClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvDrlStop_Request;
        using Response = Ros2Dsr_msgs2SrvDrlStop_Response;

        Ros2Dsr_msgs2SrvDrlStopClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvDrlStopClient(Ros2Dsr_msgs2SrvDrlStopClient const&) = delete;
        Ros2Dsr_msgs2SrvDrlStopClient& operator= (Ros2Dsr_msgs2SrvDrlStopClient const&) = delete;
        Ros2Dsr_msgs2SrvDrlStopClient(Ros2Dsr_msgs2SrvDrlStopClient&&) = delete;

        ~Ros2Dsr_msgs2SrvDrlStopClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/DrlStop server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvDrlStopServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvDrlStop_Response(Ros2Dsr_msgs2SrvDrlStop_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvDrlStop_Request;
        using Response = Ros2Dsr_msgs2SrvDrlStop_Response;

        Ros2Dsr_msgs2SrvDrlStopServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/EnableAlterMotion client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvEnableAlterMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvEnableAlterMotion_Request;
        using Response = Ros2Dsr_msgs2SrvEnableAlterMotion_Response;

        Ros2Dsr_msgs2SrvEnableAlterMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvEnableAlterMotionClient(Ros2Dsr_msgs2SrvEnableAlterMotionClient const&) = delete;
        Ros2Dsr_msgs2SrvEnableAlterMotionClient& operator= (Ros2Dsr_msgs2SrvEnableAlterMotionClient const&) = delete;
        Ros2Dsr_msgs2SrvEnableAlterMotionClient(Ros2Dsr_msgs2SrvEnableAlterMotionClient&&) = delete;

        ~Ros2Dsr_msgs2SrvEnableAlterMotionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/EnableAlterMotion server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvEnableAlterMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvEnableAlterMotion_Response(Ros2Dsr_msgs2SrvEnableAlterMotion_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvEnableAlterMotion_Request;
        using Response = Ros2Dsr_msgs2SrvEnableAlterMotion_Response;

        Ros2Dsr_msgs2SrvEnableAlterMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/Fkin client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvFkinClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvFkin_Request;
        using Response = Ros2Dsr_msgs2SrvFkin_Response;

        Ros2Dsr_msgs2SrvFkinClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvFkinClient(Ros2Dsr_msgs2SrvFkinClient const&) = delete;
        Ros2Dsr_msgs2SrvFkinClient& operator= (Ros2Dsr_msgs2SrvFkinClient const&) = delete;
        Ros2Dsr_msgs2SrvFkinClient(Ros2Dsr_msgs2SrvFkinClient&&) = delete;

        ~Ros2Dsr_msgs2SrvFkinClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Fkin_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/Fkin server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvFkinServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvFkin_Response(Ros2Dsr_msgs2SrvFkin_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvFkin_Request;
        using Response = Ros2Dsr_msgs2SrvFkin_Response;

        Ros2Dsr_msgs2SrvFkinServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_Fkin_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Fkin_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_Fkin_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_Fkin_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetControlMode client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetControlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetControlMode_Request;
        using Response = Ros2Dsr_msgs2SrvGetControlMode_Response;

        Ros2Dsr_msgs2SrvGetControlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetControlModeClient(Ros2Dsr_msgs2SrvGetControlModeClient const&) = delete;
        Ros2Dsr_msgs2SrvGetControlModeClient& operator= (Ros2Dsr_msgs2SrvGetControlModeClient const&) = delete;
        Ros2Dsr_msgs2SrvGetControlModeClient(Ros2Dsr_msgs2SrvGetControlModeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetControlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetControlMode server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetControlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetControlMode_Response(Ros2Dsr_msgs2SrvGetControlMode_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetControlMode_Request;
        using Response = Ros2Dsr_msgs2SrvGetControlMode_Response;

        Ros2Dsr_msgs2SrvGetControlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetControlSpace client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetControlSpaceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetControlSpace_Request;
        using Response = Ros2Dsr_msgs2SrvGetControlSpace_Response;

        Ros2Dsr_msgs2SrvGetControlSpaceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetControlSpaceClient(Ros2Dsr_msgs2SrvGetControlSpaceClient const&) = delete;
        Ros2Dsr_msgs2SrvGetControlSpaceClient& operator= (Ros2Dsr_msgs2SrvGetControlSpaceClient const&) = delete;
        Ros2Dsr_msgs2SrvGetControlSpaceClient(Ros2Dsr_msgs2SrvGetControlSpaceClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetControlSpaceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetControlSpace server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetControlSpaceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetControlSpace_Response(Ros2Dsr_msgs2SrvGetControlSpace_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetControlSpace_Request;
        using Response = Ros2Dsr_msgs2SrvGetControlSpace_Response;

        Ros2Dsr_msgs2SrvGetControlSpaceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCtrlBoxAnalogInput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request;
        using Response = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response;

        Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient(Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient& operator= (Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient(Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCtrlBoxAnalogInput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request;
        using Response = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response;

        Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCtrlBoxDigitalInput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request;
        using Response = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response;

        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient& operator= (Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCtrlBoxDigitalInput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request;
        using Response = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response;

        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCtrlBoxDigitalOutput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request;
        using Response = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response;

        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient& operator= (Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCtrlBoxDigitalOutput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request;
        using Response = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response;

        Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentPose client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentPose_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentPose_Response;

        Ros2Dsr_msgs2SrvGetCurrentPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentPoseClient(Ros2Dsr_msgs2SrvGetCurrentPoseClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentPoseClient& operator= (Ros2Dsr_msgs2SrvGetCurrentPoseClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentPoseClient(Ros2Dsr_msgs2SrvGetCurrentPoseClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentPose server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentPose_Response(Ros2Dsr_msgs2SrvGetCurrentPose_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentPose_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentPose_Response;

        Ros2Dsr_msgs2SrvGetCurrentPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentPosj client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentPosjClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentPosj_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentPosj_Response;

        Ros2Dsr_msgs2SrvGetCurrentPosjClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentPosjClient(Ros2Dsr_msgs2SrvGetCurrentPosjClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentPosjClient& operator= (Ros2Dsr_msgs2SrvGetCurrentPosjClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentPosjClient(Ros2Dsr_msgs2SrvGetCurrentPosjClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentPosjClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentPosj server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentPosjServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentPosj_Response(Ros2Dsr_msgs2SrvGetCurrentPosj_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentPosj_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentPosj_Response;

        Ros2Dsr_msgs2SrvGetCurrentPosjServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentPosx client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentPosxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentPosx_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentPosx_Response;

        Ros2Dsr_msgs2SrvGetCurrentPosxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentPosxClient(Ros2Dsr_msgs2SrvGetCurrentPosxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentPosxClient& operator= (Ros2Dsr_msgs2SrvGetCurrentPosxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentPosxClient(Ros2Dsr_msgs2SrvGetCurrentPosxClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentPosxClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentPosx server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentPosxServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentPosx_Response(Ros2Dsr_msgs2SrvGetCurrentPosx_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentPosx_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentPosx_Response;

        Ros2Dsr_msgs2SrvGetCurrentPosxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentRotm client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentRotmClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentRotm_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentRotm_Response;

        Ros2Dsr_msgs2SrvGetCurrentRotmClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentRotmClient(Ros2Dsr_msgs2SrvGetCurrentRotmClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentRotmClient& operator= (Ros2Dsr_msgs2SrvGetCurrentRotmClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentRotmClient(Ros2Dsr_msgs2SrvGetCurrentRotmClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentRotmClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentRotm server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentRotmServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentRotm_Response(Ros2Dsr_msgs2SrvGetCurrentRotm_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentRotm_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentRotm_Response;

        Ros2Dsr_msgs2SrvGetCurrentRotmServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentSolutionSpace client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response;

        Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient(Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient& operator= (Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient(Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentSolutionSpace server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response;

        Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentTcp client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentTcpClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentTcp_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentTcp_Response;

        Ros2Dsr_msgs2SrvGetCurrentTcpClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentTcpClient(Ros2Dsr_msgs2SrvGetCurrentTcpClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentTcpClient& operator= (Ros2Dsr_msgs2SrvGetCurrentTcpClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentTcpClient(Ros2Dsr_msgs2SrvGetCurrentTcpClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentTcpClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentTcp server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentTcpServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentTcp_Response(Ros2Dsr_msgs2SrvGetCurrentTcp_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentTcp_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentTcp_Response;

        Ros2Dsr_msgs2SrvGetCurrentTcpServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentTool client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentTool_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentTool_Response;

        Ros2Dsr_msgs2SrvGetCurrentToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentToolClient(Ros2Dsr_msgs2SrvGetCurrentToolClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentToolClient& operator= (Ros2Dsr_msgs2SrvGetCurrentToolClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentToolClient(Ros2Dsr_msgs2SrvGetCurrentToolClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentToolClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentTool server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentToolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentTool_Response(Ros2Dsr_msgs2SrvGetCurrentTool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentTool_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentTool_Response;

        Ros2Dsr_msgs2SrvGetCurrentToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentToolFlangePosx client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response;

        Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient(Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient& operator= (Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient(Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentToolFlangePosx server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response;

        Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentVelj client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentVeljClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentVelj_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentVelj_Response;

        Ros2Dsr_msgs2SrvGetCurrentVeljClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentVeljClient(Ros2Dsr_msgs2SrvGetCurrentVeljClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentVeljClient& operator= (Ros2Dsr_msgs2SrvGetCurrentVeljClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentVeljClient(Ros2Dsr_msgs2SrvGetCurrentVeljClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentVeljClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentVelj server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentVeljServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentVelj_Response(Ros2Dsr_msgs2SrvGetCurrentVelj_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentVelj_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentVelj_Response;

        Ros2Dsr_msgs2SrvGetCurrentVeljServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetCurrentVelx client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetCurrentVelxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentVelx_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentVelx_Response;

        Ros2Dsr_msgs2SrvGetCurrentVelxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetCurrentVelxClient(Ros2Dsr_msgs2SrvGetCurrentVelxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentVelxClient& operator= (Ros2Dsr_msgs2SrvGetCurrentVelxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetCurrentVelxClient(Ros2Dsr_msgs2SrvGetCurrentVelxClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetCurrentVelxClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetCurrentVelx server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetCurrentVelxServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetCurrentVelx_Response(Ros2Dsr_msgs2SrvGetCurrentVelx_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetCurrentVelx_Request;
        using Response = Ros2Dsr_msgs2SrvGetCurrentVelx_Response;

        Ros2Dsr_msgs2SrvGetCurrentVelxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetDesiredPosj client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetDesiredPosjClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetDesiredPosj_Request;
        using Response = Ros2Dsr_msgs2SrvGetDesiredPosj_Response;

        Ros2Dsr_msgs2SrvGetDesiredPosjClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetDesiredPosjClient(Ros2Dsr_msgs2SrvGetDesiredPosjClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDesiredPosjClient& operator= (Ros2Dsr_msgs2SrvGetDesiredPosjClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDesiredPosjClient(Ros2Dsr_msgs2SrvGetDesiredPosjClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetDesiredPosjClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetDesiredPosj server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetDesiredPosjServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetDesiredPosj_Response(Ros2Dsr_msgs2SrvGetDesiredPosj_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetDesiredPosj_Request;
        using Response = Ros2Dsr_msgs2SrvGetDesiredPosj_Response;

        Ros2Dsr_msgs2SrvGetDesiredPosjServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetDesiredPosx client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetDesiredPosxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetDesiredPosx_Request;
        using Response = Ros2Dsr_msgs2SrvGetDesiredPosx_Response;

        Ros2Dsr_msgs2SrvGetDesiredPosxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetDesiredPosxClient(Ros2Dsr_msgs2SrvGetDesiredPosxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDesiredPosxClient& operator= (Ros2Dsr_msgs2SrvGetDesiredPosxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDesiredPosxClient(Ros2Dsr_msgs2SrvGetDesiredPosxClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetDesiredPosxClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetDesiredPosx server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetDesiredPosxServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetDesiredPosx_Response(Ros2Dsr_msgs2SrvGetDesiredPosx_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetDesiredPosx_Request;
        using Response = Ros2Dsr_msgs2SrvGetDesiredPosx_Response;

        Ros2Dsr_msgs2SrvGetDesiredPosxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetDesiredVelj client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetDesiredVeljClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetDesiredVelj_Request;
        using Response = Ros2Dsr_msgs2SrvGetDesiredVelj_Response;

        Ros2Dsr_msgs2SrvGetDesiredVeljClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetDesiredVeljClient(Ros2Dsr_msgs2SrvGetDesiredVeljClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDesiredVeljClient& operator= (Ros2Dsr_msgs2SrvGetDesiredVeljClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDesiredVeljClient(Ros2Dsr_msgs2SrvGetDesiredVeljClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetDesiredVeljClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetDesiredVelj server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetDesiredVeljServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetDesiredVelj_Response(Ros2Dsr_msgs2SrvGetDesiredVelj_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetDesiredVelj_Request;
        using Response = Ros2Dsr_msgs2SrvGetDesiredVelj_Response;

        Ros2Dsr_msgs2SrvGetDesiredVeljServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetDesiredVelx client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetDesiredVelxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetDesiredVelx_Request;
        using Response = Ros2Dsr_msgs2SrvGetDesiredVelx_Response;

        Ros2Dsr_msgs2SrvGetDesiredVelxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetDesiredVelxClient(Ros2Dsr_msgs2SrvGetDesiredVelxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDesiredVelxClient& operator= (Ros2Dsr_msgs2SrvGetDesiredVelxClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDesiredVelxClient(Ros2Dsr_msgs2SrvGetDesiredVelxClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetDesiredVelxClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetDesiredVelx server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetDesiredVelxServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetDesiredVelx_Response(Ros2Dsr_msgs2SrvGetDesiredVelx_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetDesiredVelx_Request;
        using Response = Ros2Dsr_msgs2SrvGetDesiredVelx_Response;

        Ros2Dsr_msgs2SrvGetDesiredVelxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetDrlState client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetDrlStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetDrlState_Request;
        using Response = Ros2Dsr_msgs2SrvGetDrlState_Response;

        Ros2Dsr_msgs2SrvGetDrlStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetDrlStateClient(Ros2Dsr_msgs2SrvGetDrlStateClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDrlStateClient& operator= (Ros2Dsr_msgs2SrvGetDrlStateClient const&) = delete;
        Ros2Dsr_msgs2SrvGetDrlStateClient(Ros2Dsr_msgs2SrvGetDrlStateClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetDrlStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetDrlState server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetDrlStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetDrlState_Response(Ros2Dsr_msgs2SrvGetDrlState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetDrlState_Request;
        using Response = Ros2Dsr_msgs2SrvGetDrlState_Response;

        Ros2Dsr_msgs2SrvGetDrlStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetExternalTorque client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetExternalTorqueClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetExternalTorque_Request;
        using Response = Ros2Dsr_msgs2SrvGetExternalTorque_Response;

        Ros2Dsr_msgs2SrvGetExternalTorqueClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetExternalTorqueClient(Ros2Dsr_msgs2SrvGetExternalTorqueClient const&) = delete;
        Ros2Dsr_msgs2SrvGetExternalTorqueClient& operator= (Ros2Dsr_msgs2SrvGetExternalTorqueClient const&) = delete;
        Ros2Dsr_msgs2SrvGetExternalTorqueClient(Ros2Dsr_msgs2SrvGetExternalTorqueClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetExternalTorqueClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetExternalTorque server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetExternalTorqueServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetExternalTorque_Response(Ros2Dsr_msgs2SrvGetExternalTorque_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetExternalTorque_Request;
        using Response = Ros2Dsr_msgs2SrvGetExternalTorque_Response;

        Ros2Dsr_msgs2SrvGetExternalTorqueServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetInputRegisterBit client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetInputRegisterBitClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetInputRegisterBit_Request;
        using Response = Ros2Dsr_msgs2SrvGetInputRegisterBit_Response;

        Ros2Dsr_msgs2SrvGetInputRegisterBitClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetInputRegisterBitClient(Ros2Dsr_msgs2SrvGetInputRegisterBitClient const&) = delete;
        Ros2Dsr_msgs2SrvGetInputRegisterBitClient& operator= (Ros2Dsr_msgs2SrvGetInputRegisterBitClient const&) = delete;
        Ros2Dsr_msgs2SrvGetInputRegisterBitClient(Ros2Dsr_msgs2SrvGetInputRegisterBitClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetInputRegisterBitClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetInputRegisterBit server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetInputRegisterBitServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetInputRegisterBit_Response(Ros2Dsr_msgs2SrvGetInputRegisterBit_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetInputRegisterBit_Request;
        using Response = Ros2Dsr_msgs2SrvGetInputRegisterBit_Response;

        Ros2Dsr_msgs2SrvGetInputRegisterBitServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetInputRegisterFloat client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetInputRegisterFloatClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request;
        using Response = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response;

        Ros2Dsr_msgs2SrvGetInputRegisterFloatClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetInputRegisterFloatClient(Ros2Dsr_msgs2SrvGetInputRegisterFloatClient const&) = delete;
        Ros2Dsr_msgs2SrvGetInputRegisterFloatClient& operator= (Ros2Dsr_msgs2SrvGetInputRegisterFloatClient const&) = delete;
        Ros2Dsr_msgs2SrvGetInputRegisterFloatClient(Ros2Dsr_msgs2SrvGetInputRegisterFloatClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetInputRegisterFloatClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetInputRegisterFloat server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetInputRegisterFloatServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response(Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request;
        using Response = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response;

        Ros2Dsr_msgs2SrvGetInputRegisterFloatServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetInputRegisterInt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetInputRegisterIntClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetInputRegisterInt_Request;
        using Response = Ros2Dsr_msgs2SrvGetInputRegisterInt_Response;

        Ros2Dsr_msgs2SrvGetInputRegisterIntClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetInputRegisterIntClient(Ros2Dsr_msgs2SrvGetInputRegisterIntClient const&) = delete;
        Ros2Dsr_msgs2SrvGetInputRegisterIntClient& operator= (Ros2Dsr_msgs2SrvGetInputRegisterIntClient const&) = delete;
        Ros2Dsr_msgs2SrvGetInputRegisterIntClient(Ros2Dsr_msgs2SrvGetInputRegisterIntClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetInputRegisterIntClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetInputRegisterInt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetInputRegisterIntServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetInputRegisterInt_Response(Ros2Dsr_msgs2SrvGetInputRegisterInt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetInputRegisterInt_Request;
        using Response = Ros2Dsr_msgs2SrvGetInputRegisterInt_Response;

        Ros2Dsr_msgs2SrvGetInputRegisterIntServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetJointTorque client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetJointTorqueClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetJointTorque_Request;
        using Response = Ros2Dsr_msgs2SrvGetJointTorque_Response;

        Ros2Dsr_msgs2SrvGetJointTorqueClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetJointTorqueClient(Ros2Dsr_msgs2SrvGetJointTorqueClient const&) = delete;
        Ros2Dsr_msgs2SrvGetJointTorqueClient& operator= (Ros2Dsr_msgs2SrvGetJointTorqueClient const&) = delete;
        Ros2Dsr_msgs2SrvGetJointTorqueClient(Ros2Dsr_msgs2SrvGetJointTorqueClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetJointTorqueClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetJointTorque server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetJointTorqueServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetJointTorque_Response(Ros2Dsr_msgs2SrvGetJointTorque_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetJointTorque_Request;
        using Response = Ros2Dsr_msgs2SrvGetJointTorque_Response;

        Ros2Dsr_msgs2SrvGetJointTorqueServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetLastAlarm client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetLastAlarmClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetLastAlarm_Request;
        using Response = Ros2Dsr_msgs2SrvGetLastAlarm_Response;

        Ros2Dsr_msgs2SrvGetLastAlarmClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetLastAlarmClient(Ros2Dsr_msgs2SrvGetLastAlarmClient const&) = delete;
        Ros2Dsr_msgs2SrvGetLastAlarmClient& operator= (Ros2Dsr_msgs2SrvGetLastAlarmClient const&) = delete;
        Ros2Dsr_msgs2SrvGetLastAlarmClient(Ros2Dsr_msgs2SrvGetLastAlarmClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetLastAlarmClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetLastAlarm server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetLastAlarmServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetLastAlarm_Response(Ros2Dsr_msgs2SrvGetLastAlarm_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetLastAlarm_Request;
        using Response = Ros2Dsr_msgs2SrvGetLastAlarm_Response;

        Ros2Dsr_msgs2SrvGetLastAlarmServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetModbusInput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetModbusInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetModbusInput_Request;
        using Response = Ros2Dsr_msgs2SrvGetModbusInput_Response;

        Ros2Dsr_msgs2SrvGetModbusInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetModbusInputClient(Ros2Dsr_msgs2SrvGetModbusInputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetModbusInputClient& operator= (Ros2Dsr_msgs2SrvGetModbusInputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetModbusInputClient(Ros2Dsr_msgs2SrvGetModbusInputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetModbusInputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetModbusInput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetModbusInputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetModbusInput_Response(Ros2Dsr_msgs2SrvGetModbusInput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetModbusInput_Request;
        using Response = Ros2Dsr_msgs2SrvGetModbusInput_Response;

        Ros2Dsr_msgs2SrvGetModbusInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetOrientationError client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetOrientationErrorClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetOrientationError_Request;
        using Response = Ros2Dsr_msgs2SrvGetOrientationError_Response;

        Ros2Dsr_msgs2SrvGetOrientationErrorClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetOrientationErrorClient(Ros2Dsr_msgs2SrvGetOrientationErrorClient const&) = delete;
        Ros2Dsr_msgs2SrvGetOrientationErrorClient& operator= (Ros2Dsr_msgs2SrvGetOrientationErrorClient const&) = delete;
        Ros2Dsr_msgs2SrvGetOrientationErrorClient(Ros2Dsr_msgs2SrvGetOrientationErrorClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetOrientationErrorClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetOrientationError server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetOrientationErrorServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetOrientationError_Response(Ros2Dsr_msgs2SrvGetOrientationError_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetOrientationError_Request;
        using Response = Ros2Dsr_msgs2SrvGetOrientationError_Response;

        Ros2Dsr_msgs2SrvGetOrientationErrorServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetOutputRegisterBit client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetOutputRegisterBitClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request;
        using Response = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response;

        Ros2Dsr_msgs2SrvGetOutputRegisterBitClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetOutputRegisterBitClient(Ros2Dsr_msgs2SrvGetOutputRegisterBitClient const&) = delete;
        Ros2Dsr_msgs2SrvGetOutputRegisterBitClient& operator= (Ros2Dsr_msgs2SrvGetOutputRegisterBitClient const&) = delete;
        Ros2Dsr_msgs2SrvGetOutputRegisterBitClient(Ros2Dsr_msgs2SrvGetOutputRegisterBitClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetOutputRegisterBitClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetOutputRegisterBit server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetOutputRegisterBitServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response(Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request;
        using Response = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response;

        Ros2Dsr_msgs2SrvGetOutputRegisterBitServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetOutputRegisterFloat client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request;
        using Response = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response;

        Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient(Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient const&) = delete;
        Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient& operator= (Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient const&) = delete;
        Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient(Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetOutputRegisterFloat server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetOutputRegisterFloatServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response(Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request;
        using Response = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response;

        Ros2Dsr_msgs2SrvGetOutputRegisterFloatServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetOutputRegisterInt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetOutputRegisterIntClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request;
        using Response = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response;

        Ros2Dsr_msgs2SrvGetOutputRegisterIntClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetOutputRegisterIntClient(Ros2Dsr_msgs2SrvGetOutputRegisterIntClient const&) = delete;
        Ros2Dsr_msgs2SrvGetOutputRegisterIntClient& operator= (Ros2Dsr_msgs2SrvGetOutputRegisterIntClient const&) = delete;
        Ros2Dsr_msgs2SrvGetOutputRegisterIntClient(Ros2Dsr_msgs2SrvGetOutputRegisterIntClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetOutputRegisterIntClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetOutputRegisterInt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetOutputRegisterIntServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response(Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request;
        using Response = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response;

        Ros2Dsr_msgs2SrvGetOutputRegisterIntServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRobotLinkInfo client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetRobotLinkInfoClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response;

        Ros2Dsr_msgs2SrvGetRobotLinkInfoClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRobotLinkInfoClient(Ros2Dsr_msgs2SrvGetRobotLinkInfoClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotLinkInfoClient& operator= (Ros2Dsr_msgs2SrvGetRobotLinkInfoClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotLinkInfoClient(Ros2Dsr_msgs2SrvGetRobotLinkInfoClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRobotLinkInfoClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRobotLinkInfo server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRobotLinkInfoServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response(Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response;

        Ros2Dsr_msgs2SrvGetRobotLinkInfoServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRobotMode client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetRobotModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotMode_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotMode_Response;

        Ros2Dsr_msgs2SrvGetRobotModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRobotModeClient(Ros2Dsr_msgs2SrvGetRobotModeClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotModeClient& operator= (Ros2Dsr_msgs2SrvGetRobotModeClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotModeClient(Ros2Dsr_msgs2SrvGetRobotModeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRobotModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRobotMode server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRobotModeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRobotMode_Response(Ros2Dsr_msgs2SrvGetRobotMode_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotMode_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotMode_Response;

        Ros2Dsr_msgs2SrvGetRobotModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRobotSpeedMode client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetRobotSpeedModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response;

        Ros2Dsr_msgs2SrvGetRobotSpeedModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRobotSpeedModeClient(Ros2Dsr_msgs2SrvGetRobotSpeedModeClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotSpeedModeClient& operator= (Ros2Dsr_msgs2SrvGetRobotSpeedModeClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotSpeedModeClient(Ros2Dsr_msgs2SrvGetRobotSpeedModeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRobotSpeedModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRobotSpeedMode server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRobotSpeedModeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response(Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response;

        Ros2Dsr_msgs2SrvGetRobotSpeedModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRobotState client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetRobotStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotState_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotState_Response;

        Ros2Dsr_msgs2SrvGetRobotStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRobotStateClient(Ros2Dsr_msgs2SrvGetRobotStateClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotStateClient& operator= (Ros2Dsr_msgs2SrvGetRobotStateClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotStateClient(Ros2Dsr_msgs2SrvGetRobotStateClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRobotStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRobotState server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRobotStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRobotState_Response(Ros2Dsr_msgs2SrvGetRobotState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotState_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotState_Response;

        Ros2Dsr_msgs2SrvGetRobotStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRobotSystem client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetRobotSystemClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotSystem_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotSystem_Response;

        Ros2Dsr_msgs2SrvGetRobotSystemClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRobotSystemClient(Ros2Dsr_msgs2SrvGetRobotSystemClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotSystemClient& operator= (Ros2Dsr_msgs2SrvGetRobotSystemClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRobotSystemClient(Ros2Dsr_msgs2SrvGetRobotSystemClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRobotSystemClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRobotSystem server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRobotSystemServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRobotSystem_Response(Ros2Dsr_msgs2SrvGetRobotSystem_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRobotSystem_Request;
        using Response = Ros2Dsr_msgs2SrvGetRobotSystem_Response;

        Ros2Dsr_msgs2SrvGetRobotSystemServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRtControlInputDataList client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetRtControlInputDataListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request;
        using Response = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response;

        Ros2Dsr_msgs2SrvGetRtControlInputDataListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRtControlInputDataListClient(Ros2Dsr_msgs2SrvGetRtControlInputDataListClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRtControlInputDataListClient& operator= (Ros2Dsr_msgs2SrvGetRtControlInputDataListClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRtControlInputDataListClient(Ros2Dsr_msgs2SrvGetRtControlInputDataListClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRtControlInputDataListClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRtControlInputDataList server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRtControlInputDataListServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response(Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request;
        using Response = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response;

        Ros2Dsr_msgs2SrvGetRtControlInputDataListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRtControlInputVersionList client; default policy returns13 from construction.
     */
    class Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request;
        using Response = Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response;

        Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient(Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient& operator= (Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient(Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRtControlInputVersionList server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRtControlInputVersionListServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response(Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request;
        using Response = Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response;

        Ros2Dsr_msgs2SrvGetRtControlInputVersionListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRtControlOutputDataList client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request;
        using Response = Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response;

        Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient(Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient& operator= (Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient(Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRtControlOutputDataList server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRtControlOutputDataListServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response(Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request;
        using Response = Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response;

        Ros2Dsr_msgs2SrvGetRtControlOutputDataListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetRtControlOutputVersionList client; default policy returns13 from construction.
     */
    class Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request;
        using Response = Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response;

        Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient(Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient& operator= (Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient const&) = delete;
        Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient(Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetRtControlOutputVersionList server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetRtControlOutputVersionListServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request;
        using Response = Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response;

        Ros2Dsr_msgs2SrvGetRtControlOutputVersionListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetSolutionSpace client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetSolutionSpaceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetSolutionSpace_Request;
        using Response = Ros2Dsr_msgs2SrvGetSolutionSpace_Response;

        Ros2Dsr_msgs2SrvGetSolutionSpaceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetSolutionSpaceClient(Ros2Dsr_msgs2SrvGetSolutionSpaceClient const&) = delete;
        Ros2Dsr_msgs2SrvGetSolutionSpaceClient& operator= (Ros2Dsr_msgs2SrvGetSolutionSpaceClient const&) = delete;
        Ros2Dsr_msgs2SrvGetSolutionSpaceClient(Ros2Dsr_msgs2SrvGetSolutionSpaceClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetSolutionSpaceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetSolutionSpace server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetSolutionSpaceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetSolutionSpace_Response(Ros2Dsr_msgs2SrvGetSolutionSpace_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetSolutionSpace_Request;
        using Response = Ros2Dsr_msgs2SrvGetSolutionSpace_Response;

        Ros2Dsr_msgs2SrvGetSolutionSpaceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetToolDigitalInput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetToolDigitalInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetToolDigitalInput_Request;
        using Response = Ros2Dsr_msgs2SrvGetToolDigitalInput_Response;

        Ros2Dsr_msgs2SrvGetToolDigitalInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetToolDigitalInputClient(Ros2Dsr_msgs2SrvGetToolDigitalInputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetToolDigitalInputClient& operator= (Ros2Dsr_msgs2SrvGetToolDigitalInputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetToolDigitalInputClient(Ros2Dsr_msgs2SrvGetToolDigitalInputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetToolDigitalInputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetToolDigitalInput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetToolDigitalInputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetToolDigitalInput_Response(Ros2Dsr_msgs2SrvGetToolDigitalInput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetToolDigitalInput_Request;
        using Response = Ros2Dsr_msgs2SrvGetToolDigitalInput_Response;

        Ros2Dsr_msgs2SrvGetToolDigitalInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetToolDigitalOutput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetToolDigitalOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request;
        using Response = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response;

        Ros2Dsr_msgs2SrvGetToolDigitalOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetToolDigitalOutputClient(Ros2Dsr_msgs2SrvGetToolDigitalOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetToolDigitalOutputClient& operator= (Ros2Dsr_msgs2SrvGetToolDigitalOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvGetToolDigitalOutputClient(Ros2Dsr_msgs2SrvGetToolDigitalOutputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetToolDigitalOutputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetToolDigitalOutput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetToolDigitalOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response(Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request;
        using Response = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response;

        Ros2Dsr_msgs2SrvGetToolDigitalOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetToolForce client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetToolForceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetToolForce_Request;
        using Response = Ros2Dsr_msgs2SrvGetToolForce_Response;

        Ros2Dsr_msgs2SrvGetToolForceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetToolForceClient(Ros2Dsr_msgs2SrvGetToolForceClient const&) = delete;
        Ros2Dsr_msgs2SrvGetToolForceClient& operator= (Ros2Dsr_msgs2SrvGetToolForceClient const&) = delete;
        Ros2Dsr_msgs2SrvGetToolForceClient(Ros2Dsr_msgs2SrvGetToolForceClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetToolForceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetToolForce server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetToolForceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetToolForce_Response(Ros2Dsr_msgs2SrvGetToolForce_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetToolForce_Request;
        using Response = Ros2Dsr_msgs2SrvGetToolForce_Response;

        Ros2Dsr_msgs2SrvGetToolForceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetUserCartCoord client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetUserCartCoordClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetUserCartCoord_Request;
        using Response = Ros2Dsr_msgs2SrvGetUserCartCoord_Response;

        Ros2Dsr_msgs2SrvGetUserCartCoordClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetUserCartCoordClient(Ros2Dsr_msgs2SrvGetUserCartCoordClient const&) = delete;
        Ros2Dsr_msgs2SrvGetUserCartCoordClient& operator= (Ros2Dsr_msgs2SrvGetUserCartCoordClient const&) = delete;
        Ros2Dsr_msgs2SrvGetUserCartCoordClient(Ros2Dsr_msgs2SrvGetUserCartCoordClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetUserCartCoordClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetUserCartCoord server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetUserCartCoordServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetUserCartCoord_Response(Ros2Dsr_msgs2SrvGetUserCartCoord_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetUserCartCoord_Request;
        using Response = Ros2Dsr_msgs2SrvGetUserCartCoord_Response;

        Ros2Dsr_msgs2SrvGetUserCartCoordServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/GetWorkpieceWeight client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvGetWorkpieceWeightClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request;
        using Response = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response;

        Ros2Dsr_msgs2SrvGetWorkpieceWeightClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvGetWorkpieceWeightClient(Ros2Dsr_msgs2SrvGetWorkpieceWeightClient const&) = delete;
        Ros2Dsr_msgs2SrvGetWorkpieceWeightClient& operator= (Ros2Dsr_msgs2SrvGetWorkpieceWeightClient const&) = delete;
        Ros2Dsr_msgs2SrvGetWorkpieceWeightClient(Ros2Dsr_msgs2SrvGetWorkpieceWeightClient&&) = delete;

        ~Ros2Dsr_msgs2SrvGetWorkpieceWeightClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/GetWorkpieceWeight server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvGetWorkpieceWeightServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response(Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request;
        using Response = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response;

        Ros2Dsr_msgs2SrvGetWorkpieceWeightServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/Ikin client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvIkinClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvIkin_Request;
        using Response = Ros2Dsr_msgs2SrvIkin_Response;

        Ros2Dsr_msgs2SrvIkinClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvIkinClient(Ros2Dsr_msgs2SrvIkinClient const&) = delete;
        Ros2Dsr_msgs2SrvIkinClient& operator= (Ros2Dsr_msgs2SrvIkinClient const&) = delete;
        Ros2Dsr_msgs2SrvIkinClient(Ros2Dsr_msgs2SrvIkinClient&&) = delete;

        ~Ros2Dsr_msgs2SrvIkinClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Ikin_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/Ikin server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvIkinServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvIkin_Response(Ros2Dsr_msgs2SrvIkin_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvIkin_Request;
        using Response = Ros2Dsr_msgs2SrvIkin_Response;

        Ros2Dsr_msgs2SrvIkinServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_Ikin_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Ikin_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_Ikin_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_Ikin_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/IsDoneBoltTightening client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request;
        using Response = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response;

        Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient(Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient const&) = delete;
        Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient& operator= (Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient const&) = delete;
        Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient(Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient&&) = delete;

        ~Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/IsDoneBoltTightening server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvIsDoneBoltTighteningServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response(Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request;
        using Response = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response;

        Ros2Dsr_msgs2SrvIsDoneBoltTighteningServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/Jog client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvJogClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvJog_Request;
        using Response = Ros2Dsr_msgs2SrvJog_Response;

        Ros2Dsr_msgs2SrvJogClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvJogClient(Ros2Dsr_msgs2SrvJogClient const&) = delete;
        Ros2Dsr_msgs2SrvJogClient& operator= (Ros2Dsr_msgs2SrvJogClient const&) = delete;
        Ros2Dsr_msgs2SrvJogClient(Ros2Dsr_msgs2SrvJogClient&&) = delete;

        ~Ros2Dsr_msgs2SrvJogClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Jog_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/Jog server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvJogServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvJog_Response(Ros2Dsr_msgs2SrvJog_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvJog_Request;
        using Response = Ros2Dsr_msgs2SrvJog_Response;

        Ros2Dsr_msgs2SrvJogServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_Jog_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Jog_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_Jog_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_Jog_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/JogMulti client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvJogMultiClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvJogMulti_Request;
        using Response = Ros2Dsr_msgs2SrvJogMulti_Response;

        Ros2Dsr_msgs2SrvJogMultiClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvJogMultiClient(Ros2Dsr_msgs2SrvJogMultiClient const&) = delete;
        Ros2Dsr_msgs2SrvJogMultiClient& operator= (Ros2Dsr_msgs2SrvJogMultiClient const&) = delete;
        Ros2Dsr_msgs2SrvJogMultiClient(Ros2Dsr_msgs2SrvJogMultiClient&&) = delete;

        ~Ros2Dsr_msgs2SrvJogMultiClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/JogMulti server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvJogMultiServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvJogMulti_Response(Ros2Dsr_msgs2SrvJogMulti_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvJogMulti_Request;
        using Response = Ros2Dsr_msgs2SrvJogMulti_Response;

        Ros2Dsr_msgs2SrvJogMultiServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveBlending client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveBlendingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveBlending_Request;
        using Response = Ros2Dsr_msgs2SrvMoveBlending_Response;

        Ros2Dsr_msgs2SrvMoveBlendingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveBlendingClient(Ros2Dsr_msgs2SrvMoveBlendingClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveBlendingClient& operator= (Ros2Dsr_msgs2SrvMoveBlendingClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveBlendingClient(Ros2Dsr_msgs2SrvMoveBlendingClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveBlendingClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveBlending server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveBlendingServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveBlending_Response(Ros2Dsr_msgs2SrvMoveBlending_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveBlending_Request;
        using Response = Ros2Dsr_msgs2SrvMoveBlending_Response;

        Ros2Dsr_msgs2SrvMoveBlendingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveCircle client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveCircleClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveCircle_Request;
        using Response = Ros2Dsr_msgs2SrvMoveCircle_Response;

        Ros2Dsr_msgs2SrvMoveCircleClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveCircleClient(Ros2Dsr_msgs2SrvMoveCircleClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveCircleClient& operator= (Ros2Dsr_msgs2SrvMoveCircleClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveCircleClient(Ros2Dsr_msgs2SrvMoveCircleClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveCircleClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveCircle server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveCircleServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveCircle_Response(Ros2Dsr_msgs2SrvMoveCircle_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveCircle_Request;
        using Response = Ros2Dsr_msgs2SrvMoveCircle_Response;

        Ros2Dsr_msgs2SrvMoveCircleServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveHome client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveHomeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveHome_Request;
        using Response = Ros2Dsr_msgs2SrvMoveHome_Response;

        Ros2Dsr_msgs2SrvMoveHomeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveHomeClient(Ros2Dsr_msgs2SrvMoveHomeClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveHomeClient& operator= (Ros2Dsr_msgs2SrvMoveHomeClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveHomeClient(Ros2Dsr_msgs2SrvMoveHomeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveHomeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveHome server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveHomeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveHome_Response(Ros2Dsr_msgs2SrvMoveHome_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveHome_Request;
        using Response = Ros2Dsr_msgs2SrvMoveHome_Response;

        Ros2Dsr_msgs2SrvMoveHomeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveJoint client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveJointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveJoint_Request;
        using Response = Ros2Dsr_msgs2SrvMoveJoint_Response;

        Ros2Dsr_msgs2SrvMoveJointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveJointClient(Ros2Dsr_msgs2SrvMoveJointClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveJointClient& operator= (Ros2Dsr_msgs2SrvMoveJointClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveJointClient(Ros2Dsr_msgs2SrvMoveJointClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveJointClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveJoint server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveJointServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveJoint_Response(Ros2Dsr_msgs2SrvMoveJoint_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveJoint_Request;
        using Response = Ros2Dsr_msgs2SrvMoveJoint_Response;

        Ros2Dsr_msgs2SrvMoveJointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveJointx client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveJointxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveJointx_Request;
        using Response = Ros2Dsr_msgs2SrvMoveJointx_Response;

        Ros2Dsr_msgs2SrvMoveJointxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveJointxClient(Ros2Dsr_msgs2SrvMoveJointxClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveJointxClient& operator= (Ros2Dsr_msgs2SrvMoveJointxClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveJointxClient(Ros2Dsr_msgs2SrvMoveJointxClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveJointxClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveJointx server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveJointxServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveJointx_Response(Ros2Dsr_msgs2SrvMoveJointx_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveJointx_Request;
        using Response = Ros2Dsr_msgs2SrvMoveJointx_Response;

        Ros2Dsr_msgs2SrvMoveJointxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveLine client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveLineClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveLine_Request;
        using Response = Ros2Dsr_msgs2SrvMoveLine_Response;

        Ros2Dsr_msgs2SrvMoveLineClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveLineClient(Ros2Dsr_msgs2SrvMoveLineClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveLineClient& operator= (Ros2Dsr_msgs2SrvMoveLineClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveLineClient(Ros2Dsr_msgs2SrvMoveLineClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveLineClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveLine server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveLineServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveLine_Response(Ros2Dsr_msgs2SrvMoveLine_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveLine_Request;
        using Response = Ros2Dsr_msgs2SrvMoveLine_Response;

        Ros2Dsr_msgs2SrvMoveLineServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MovePause client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMovePauseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMovePause_Request;
        using Response = Ros2Dsr_msgs2SrvMovePause_Response;

        Ros2Dsr_msgs2SrvMovePauseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMovePauseClient(Ros2Dsr_msgs2SrvMovePauseClient const&) = delete;
        Ros2Dsr_msgs2SrvMovePauseClient& operator= (Ros2Dsr_msgs2SrvMovePauseClient const&) = delete;
        Ros2Dsr_msgs2SrvMovePauseClient(Ros2Dsr_msgs2SrvMovePauseClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMovePauseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MovePause_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MovePause server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMovePauseServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMovePause_Response(Ros2Dsr_msgs2SrvMovePause_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMovePause_Request;
        using Response = Ros2Dsr_msgs2SrvMovePause_Response;

        Ros2Dsr_msgs2SrvMovePauseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MovePause_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MovePause_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MovePause_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MovePause_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MovePeriodic client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMovePeriodicClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMovePeriodic_Request;
        using Response = Ros2Dsr_msgs2SrvMovePeriodic_Response;

        Ros2Dsr_msgs2SrvMovePeriodicClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMovePeriodicClient(Ros2Dsr_msgs2SrvMovePeriodicClient const&) = delete;
        Ros2Dsr_msgs2SrvMovePeriodicClient& operator= (Ros2Dsr_msgs2SrvMovePeriodicClient const&) = delete;
        Ros2Dsr_msgs2SrvMovePeriodicClient(Ros2Dsr_msgs2SrvMovePeriodicClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMovePeriodicClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MovePeriodic server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMovePeriodicServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMovePeriodic_Response(Ros2Dsr_msgs2SrvMovePeriodic_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMovePeriodic_Request;
        using Response = Ros2Dsr_msgs2SrvMovePeriodic_Response;

        Ros2Dsr_msgs2SrvMovePeriodicServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveResume client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveResumeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveResume_Request;
        using Response = Ros2Dsr_msgs2SrvMoveResume_Response;

        Ros2Dsr_msgs2SrvMoveResumeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveResumeClient(Ros2Dsr_msgs2SrvMoveResumeClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveResumeClient& operator= (Ros2Dsr_msgs2SrvMoveResumeClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveResumeClient(Ros2Dsr_msgs2SrvMoveResumeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveResumeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveResume server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveResumeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveResume_Response(Ros2Dsr_msgs2SrvMoveResume_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveResume_Request;
        using Response = Ros2Dsr_msgs2SrvMoveResume_Response;

        Ros2Dsr_msgs2SrvMoveResumeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveSpiral client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveSpiralClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveSpiral_Request;
        using Response = Ros2Dsr_msgs2SrvMoveSpiral_Response;

        Ros2Dsr_msgs2SrvMoveSpiralClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveSpiralClient(Ros2Dsr_msgs2SrvMoveSpiralClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveSpiralClient& operator= (Ros2Dsr_msgs2SrvMoveSpiralClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveSpiralClient(Ros2Dsr_msgs2SrvMoveSpiralClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveSpiralClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveSpiral server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveSpiralServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveSpiral_Response(Ros2Dsr_msgs2SrvMoveSpiral_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveSpiral_Request;
        using Response = Ros2Dsr_msgs2SrvMoveSpiral_Response;

        Ros2Dsr_msgs2SrvMoveSpiralServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveSplineJoint client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveSplineJointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveSplineJoint_Request;
        using Response = Ros2Dsr_msgs2SrvMoveSplineJoint_Response;

        Ros2Dsr_msgs2SrvMoveSplineJointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveSplineJointClient(Ros2Dsr_msgs2SrvMoveSplineJointClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveSplineJointClient& operator= (Ros2Dsr_msgs2SrvMoveSplineJointClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveSplineJointClient(Ros2Dsr_msgs2SrvMoveSplineJointClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveSplineJointClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveSplineJoint server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveSplineJointServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveSplineJoint_Response(Ros2Dsr_msgs2SrvMoveSplineJoint_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveSplineJoint_Request;
        using Response = Ros2Dsr_msgs2SrvMoveSplineJoint_Response;

        Ros2Dsr_msgs2SrvMoveSplineJointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveSplineTask client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveSplineTaskClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveSplineTask_Request;
        using Response = Ros2Dsr_msgs2SrvMoveSplineTask_Response;

        Ros2Dsr_msgs2SrvMoveSplineTaskClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveSplineTaskClient(Ros2Dsr_msgs2SrvMoveSplineTaskClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveSplineTaskClient& operator= (Ros2Dsr_msgs2SrvMoveSplineTaskClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveSplineTaskClient(Ros2Dsr_msgs2SrvMoveSplineTaskClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveSplineTaskClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveSplineTask server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveSplineTaskServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveSplineTask_Response(Ros2Dsr_msgs2SrvMoveSplineTask_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveSplineTask_Request;
        using Response = Ros2Dsr_msgs2SrvMoveSplineTask_Response;

        Ros2Dsr_msgs2SrvMoveSplineTaskServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveStop client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveStopClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveStop_Request;
        using Response = Ros2Dsr_msgs2SrvMoveStop_Response;

        Ros2Dsr_msgs2SrvMoveStopClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveStopClient(Ros2Dsr_msgs2SrvMoveStopClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveStopClient& operator= (Ros2Dsr_msgs2SrvMoveStopClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveStopClient(Ros2Dsr_msgs2SrvMoveStopClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveStopClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveStop server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveStopServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveStop_Response(Ros2Dsr_msgs2SrvMoveStop_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveStop_Request;
        using Response = Ros2Dsr_msgs2SrvMoveStop_Response;

        Ros2Dsr_msgs2SrvMoveStopServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/MoveWait client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvMoveWaitClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvMoveWait_Request;
        using Response = Ros2Dsr_msgs2SrvMoveWait_Response;

        Ros2Dsr_msgs2SrvMoveWaitClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvMoveWaitClient(Ros2Dsr_msgs2SrvMoveWaitClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveWaitClient& operator= (Ros2Dsr_msgs2SrvMoveWaitClient const&) = delete;
        Ros2Dsr_msgs2SrvMoveWaitClient(Ros2Dsr_msgs2SrvMoveWaitClient&&) = delete;

        ~Ros2Dsr_msgs2SrvMoveWaitClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/MoveWait server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvMoveWaitServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvMoveWait_Response(Ros2Dsr_msgs2SrvMoveWait_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvMoveWait_Request;
        using Response = Ros2Dsr_msgs2SrvMoveWait_Response;

        Ros2Dsr_msgs2SrvMoveWaitServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/OverwriteUserCartCoord client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request;
        using Response = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response;

        Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient(Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient const&) = delete;
        Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient& operator= (Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient const&) = delete;
        Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient(Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient&&) = delete;

        ~Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/OverwriteUserCartCoord server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvOverwriteUserCartCoordServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response(Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request;
        using Response = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response;

        Ros2Dsr_msgs2SrvOverwriteUserCartCoordServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ParallelAxis1 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvParallelAxis1Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvParallelAxis1_Request;
        using Response = Ros2Dsr_msgs2SrvParallelAxis1_Response;

        Ros2Dsr_msgs2SrvParallelAxis1Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvParallelAxis1Client(Ros2Dsr_msgs2SrvParallelAxis1Client const&) = delete;
        Ros2Dsr_msgs2SrvParallelAxis1Client& operator= (Ros2Dsr_msgs2SrvParallelAxis1Client const&) = delete;
        Ros2Dsr_msgs2SrvParallelAxis1Client(Ros2Dsr_msgs2SrvParallelAxis1Client&&) = delete;

        ~Ros2Dsr_msgs2SrvParallelAxis1Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ParallelAxis1 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvParallelAxis1Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvParallelAxis1_Response(Ros2Dsr_msgs2SrvParallelAxis1_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvParallelAxis1_Request;
        using Response = Ros2Dsr_msgs2SrvParallelAxis1_Response;

        Ros2Dsr_msgs2SrvParallelAxis1Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ParallelAxis2 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvParallelAxis2Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvParallelAxis2_Request;
        using Response = Ros2Dsr_msgs2SrvParallelAxis2_Response;

        Ros2Dsr_msgs2SrvParallelAxis2Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvParallelAxis2Client(Ros2Dsr_msgs2SrvParallelAxis2Client const&) = delete;
        Ros2Dsr_msgs2SrvParallelAxis2Client& operator= (Ros2Dsr_msgs2SrvParallelAxis2Client const&) = delete;
        Ros2Dsr_msgs2SrvParallelAxis2Client(Ros2Dsr_msgs2SrvParallelAxis2Client&&) = delete;

        ~Ros2Dsr_msgs2SrvParallelAxis2Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ParallelAxis2 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvParallelAxis2Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvParallelAxis2_Response(Ros2Dsr_msgs2SrvParallelAxis2_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvParallelAxis2_Request;
        using Response = Ros2Dsr_msgs2SrvParallelAxis2_Response;

        Ros2Dsr_msgs2SrvParallelAxis2Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ReadDataRt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvReadDataRtClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvReadDataRt_Request;
        using Response = Ros2Dsr_msgs2SrvReadDataRt_Response;

        Ros2Dsr_msgs2SrvReadDataRtClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvReadDataRtClient(Ros2Dsr_msgs2SrvReadDataRtClient const&) = delete;
        Ros2Dsr_msgs2SrvReadDataRtClient& operator= (Ros2Dsr_msgs2SrvReadDataRtClient const&) = delete;
        Ros2Dsr_msgs2SrvReadDataRtClient(Ros2Dsr_msgs2SrvReadDataRtClient&&) = delete;

        ~Ros2Dsr_msgs2SrvReadDataRtClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ReadDataRt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvReadDataRtServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvReadDataRt_Response(Ros2Dsr_msgs2SrvReadDataRt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvReadDataRt_Request;
        using Response = Ros2Dsr_msgs2SrvReadDataRt_Response;

        Ros2Dsr_msgs2SrvReadDataRtServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ReleaseComplianceCtrl client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request;
        using Response = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response;

        Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient(Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient const&) = delete;
        Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient& operator= (Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient const&) = delete;
        Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient(Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient&&) = delete;

        ~Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ReleaseComplianceCtrl server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvReleaseComplianceCtrlServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response(Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request;
        using Response = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response;

        Ros2Dsr_msgs2SrvReleaseComplianceCtrlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ReleaseForce client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvReleaseForceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvReleaseForce_Request;
        using Response = Ros2Dsr_msgs2SrvReleaseForce_Response;

        Ros2Dsr_msgs2SrvReleaseForceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvReleaseForceClient(Ros2Dsr_msgs2SrvReleaseForceClient const&) = delete;
        Ros2Dsr_msgs2SrvReleaseForceClient& operator= (Ros2Dsr_msgs2SrvReleaseForceClient const&) = delete;
        Ros2Dsr_msgs2SrvReleaseForceClient(Ros2Dsr_msgs2SrvReleaseForceClient&&) = delete;

        ~Ros2Dsr_msgs2SrvReleaseForceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ReleaseForce server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvReleaseForceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvReleaseForce_Response(Ros2Dsr_msgs2SrvReleaseForce_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvReleaseForce_Request;
        using Response = Ros2Dsr_msgs2SrvReleaseForce_Response;

        Ros2Dsr_msgs2SrvReleaseForceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ResetWorkpieceWeight client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvResetWorkpieceWeightClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request;
        using Response = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response;

        Ros2Dsr_msgs2SrvResetWorkpieceWeightClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvResetWorkpieceWeightClient(Ros2Dsr_msgs2SrvResetWorkpieceWeightClient const&) = delete;
        Ros2Dsr_msgs2SrvResetWorkpieceWeightClient& operator= (Ros2Dsr_msgs2SrvResetWorkpieceWeightClient const&) = delete;
        Ros2Dsr_msgs2SrvResetWorkpieceWeightClient(Ros2Dsr_msgs2SrvResetWorkpieceWeightClient&&) = delete;

        ~Ros2Dsr_msgs2SrvResetWorkpieceWeightClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ResetWorkpieceWeight server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvResetWorkpieceWeightServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response(Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request;
        using Response = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response;

        Ros2Dsr_msgs2SrvResetWorkpieceWeightServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/Robotiq2FClose client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvRobotiq2FCloseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvRobotiq2FClose_Request;
        using Response = Ros2Dsr_msgs2SrvRobotiq2FClose_Response;

        Ros2Dsr_msgs2SrvRobotiq2FCloseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvRobotiq2FCloseClient(Ros2Dsr_msgs2SrvRobotiq2FCloseClient const&) = delete;
        Ros2Dsr_msgs2SrvRobotiq2FCloseClient& operator= (Ros2Dsr_msgs2SrvRobotiq2FCloseClient const&) = delete;
        Ros2Dsr_msgs2SrvRobotiq2FCloseClient(Ros2Dsr_msgs2SrvRobotiq2FCloseClient&&) = delete;

        ~Ros2Dsr_msgs2SrvRobotiq2FCloseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/Robotiq2FClose server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvRobotiq2FCloseServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvRobotiq2FClose_Response(Ros2Dsr_msgs2SrvRobotiq2FClose_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvRobotiq2FClose_Request;
        using Response = Ros2Dsr_msgs2SrvRobotiq2FClose_Response;

        Ros2Dsr_msgs2SrvRobotiq2FCloseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/Robotiq2FMove client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvRobotiq2FMoveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvRobotiq2FMove_Request;
        using Response = Ros2Dsr_msgs2SrvRobotiq2FMove_Response;

        Ros2Dsr_msgs2SrvRobotiq2FMoveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvRobotiq2FMoveClient(Ros2Dsr_msgs2SrvRobotiq2FMoveClient const&) = delete;
        Ros2Dsr_msgs2SrvRobotiq2FMoveClient& operator= (Ros2Dsr_msgs2SrvRobotiq2FMoveClient const&) = delete;
        Ros2Dsr_msgs2SrvRobotiq2FMoveClient(Ros2Dsr_msgs2SrvRobotiq2FMoveClient&&) = delete;

        ~Ros2Dsr_msgs2SrvRobotiq2FMoveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/Robotiq2FMove server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvRobotiq2FMoveServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvRobotiq2FMove_Response(Ros2Dsr_msgs2SrvRobotiq2FMove_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvRobotiq2FMove_Request;
        using Response = Ros2Dsr_msgs2SrvRobotiq2FMove_Response;

        Ros2Dsr_msgs2SrvRobotiq2FMoveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/Robotiq2FOpen client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvRobotiq2FOpenClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvRobotiq2FOpen_Request;
        using Response = Ros2Dsr_msgs2SrvRobotiq2FOpen_Response;

        Ros2Dsr_msgs2SrvRobotiq2FOpenClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvRobotiq2FOpenClient(Ros2Dsr_msgs2SrvRobotiq2FOpenClient const&) = delete;
        Ros2Dsr_msgs2SrvRobotiq2FOpenClient& operator= (Ros2Dsr_msgs2SrvRobotiq2FOpenClient const&) = delete;
        Ros2Dsr_msgs2SrvRobotiq2FOpenClient(Ros2Dsr_msgs2SrvRobotiq2FOpenClient&&) = delete;

        ~Ros2Dsr_msgs2SrvRobotiq2FOpenClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/Robotiq2FOpen server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvRobotiq2FOpenServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvRobotiq2FOpen_Response(Ros2Dsr_msgs2SrvRobotiq2FOpen_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvRobotiq2FOpen_Request;
        using Response = Ros2Dsr_msgs2SrvRobotiq2FOpen_Response;

        Ros2Dsr_msgs2SrvRobotiq2FOpenServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SerialSendData client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSerialSendDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSerialSendData_Request;
        using Response = Ros2Dsr_msgs2SrvSerialSendData_Response;

        Ros2Dsr_msgs2SrvSerialSendDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSerialSendDataClient(Ros2Dsr_msgs2SrvSerialSendDataClient const&) = delete;
        Ros2Dsr_msgs2SrvSerialSendDataClient& operator= (Ros2Dsr_msgs2SrvSerialSendDataClient const&) = delete;
        Ros2Dsr_msgs2SrvSerialSendDataClient(Ros2Dsr_msgs2SrvSerialSendDataClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSerialSendDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SerialSendData server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSerialSendDataServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSerialSendData_Response(Ros2Dsr_msgs2SrvSerialSendData_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSerialSendData_Request;
        using Response = Ros2Dsr_msgs2SrvSerialSendData_Response;

        Ros2Dsr_msgs2SrvSerialSendDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/ServoOff client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvServoOffClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvServoOff_Request;
        using Response = Ros2Dsr_msgs2SrvServoOff_Response;

        Ros2Dsr_msgs2SrvServoOffClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvServoOffClient(Ros2Dsr_msgs2SrvServoOffClient const&) = delete;
        Ros2Dsr_msgs2SrvServoOffClient& operator= (Ros2Dsr_msgs2SrvServoOffClient const&) = delete;
        Ros2Dsr_msgs2SrvServoOffClient(Ros2Dsr_msgs2SrvServoOffClient&&) = delete;

        ~Ros2Dsr_msgs2SrvServoOffClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/ServoOff server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvServoOffServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvServoOff_Response(Ros2Dsr_msgs2SrvServoOff_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvServoOff_Request;
        using Response = Ros2Dsr_msgs2SrvServoOff_Response;

        Ros2Dsr_msgs2SrvServoOffServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetAccjRt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetAccjRtClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetAccjRt_Request;
        using Response = Ros2Dsr_msgs2SrvSetAccjRt_Response;

        Ros2Dsr_msgs2SrvSetAccjRtClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetAccjRtClient(Ros2Dsr_msgs2SrvSetAccjRtClient const&) = delete;
        Ros2Dsr_msgs2SrvSetAccjRtClient& operator= (Ros2Dsr_msgs2SrvSetAccjRtClient const&) = delete;
        Ros2Dsr_msgs2SrvSetAccjRtClient(Ros2Dsr_msgs2SrvSetAccjRtClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetAccjRtClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetAccjRt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetAccjRtServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetAccjRt_Response(Ros2Dsr_msgs2SrvSetAccjRt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetAccjRt_Request;
        using Response = Ros2Dsr_msgs2SrvSetAccjRt_Response;

        Ros2Dsr_msgs2SrvSetAccjRtServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetAccxRt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetAccxRtClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetAccxRt_Request;
        using Response = Ros2Dsr_msgs2SrvSetAccxRt_Response;

        Ros2Dsr_msgs2SrvSetAccxRtClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetAccxRtClient(Ros2Dsr_msgs2SrvSetAccxRtClient const&) = delete;
        Ros2Dsr_msgs2SrvSetAccxRtClient& operator= (Ros2Dsr_msgs2SrvSetAccxRtClient const&) = delete;
        Ros2Dsr_msgs2SrvSetAccxRtClient(Ros2Dsr_msgs2SrvSetAccxRtClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetAccxRtClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetAccxRt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetAccxRtServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetAccxRt_Response(Ros2Dsr_msgs2SrvSetAccxRt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetAccxRt_Request;
        using Response = Ros2Dsr_msgs2SrvSetAccxRt_Response;

        Ros2Dsr_msgs2SrvSetAccxRtServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetCtrlBoxAnalogInputType client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request;
        using Response = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response;

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient& operator= (Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetCtrlBoxAnalogInputType server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request;
        using Response = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response;

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetCtrlBoxAnalogOutput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response;

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient& operator= (Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetCtrlBoxAnalogOutput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response;

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetCtrlBoxAnalogOutputType client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request;
        using Response = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response;

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient& operator= (Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetCtrlBoxAnalogOutputType server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request;
        using Response = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response;

        Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetCtrlBoxDigitalOutput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response;

        Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient(Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient& operator= (Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient(Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetCtrlBoxDigitalOutput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response;

        Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetCurrentTcp client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetCurrentTcpClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetCurrentTcp_Request;
        using Response = Ros2Dsr_msgs2SrvSetCurrentTcp_Response;

        Ros2Dsr_msgs2SrvSetCurrentTcpClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetCurrentTcpClient(Ros2Dsr_msgs2SrvSetCurrentTcpClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCurrentTcpClient& operator= (Ros2Dsr_msgs2SrvSetCurrentTcpClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCurrentTcpClient(Ros2Dsr_msgs2SrvSetCurrentTcpClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetCurrentTcpClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetCurrentTcp server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetCurrentTcpServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetCurrentTcp_Response(Ros2Dsr_msgs2SrvSetCurrentTcp_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetCurrentTcp_Request;
        using Response = Ros2Dsr_msgs2SrvSetCurrentTcp_Response;

        Ros2Dsr_msgs2SrvSetCurrentTcpServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetCurrentTool client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetCurrentToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetCurrentTool_Request;
        using Response = Ros2Dsr_msgs2SrvSetCurrentTool_Response;

        Ros2Dsr_msgs2SrvSetCurrentToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetCurrentToolClient(Ros2Dsr_msgs2SrvSetCurrentToolClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCurrentToolClient& operator= (Ros2Dsr_msgs2SrvSetCurrentToolClient const&) = delete;
        Ros2Dsr_msgs2SrvSetCurrentToolClient(Ros2Dsr_msgs2SrvSetCurrentToolClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetCurrentToolClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetCurrentTool server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetCurrentToolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetCurrentTool_Response(Ros2Dsr_msgs2SrvSetCurrentTool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetCurrentTool_Request;
        using Response = Ros2Dsr_msgs2SrvSetCurrentTool_Response;

        Ros2Dsr_msgs2SrvSetCurrentToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetDesiredForce client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetDesiredForceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetDesiredForce_Request;
        using Response = Ros2Dsr_msgs2SrvSetDesiredForce_Response;

        Ros2Dsr_msgs2SrvSetDesiredForceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetDesiredForceClient(Ros2Dsr_msgs2SrvSetDesiredForceClient const&) = delete;
        Ros2Dsr_msgs2SrvSetDesiredForceClient& operator= (Ros2Dsr_msgs2SrvSetDesiredForceClient const&) = delete;
        Ros2Dsr_msgs2SrvSetDesiredForceClient(Ros2Dsr_msgs2SrvSetDesiredForceClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetDesiredForceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetDesiredForce server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetDesiredForceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetDesiredForce_Response(Ros2Dsr_msgs2SrvSetDesiredForce_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetDesiredForce_Request;
        using Response = Ros2Dsr_msgs2SrvSetDesiredForce_Response;

        Ros2Dsr_msgs2SrvSetDesiredForceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetModbusOutput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetModbusOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetModbusOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetModbusOutput_Response;

        Ros2Dsr_msgs2SrvSetModbusOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetModbusOutputClient(Ros2Dsr_msgs2SrvSetModbusOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetModbusOutputClient& operator= (Ros2Dsr_msgs2SrvSetModbusOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetModbusOutputClient(Ros2Dsr_msgs2SrvSetModbusOutputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetModbusOutputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetModbusOutput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetModbusOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetModbusOutput_Response(Ros2Dsr_msgs2SrvSetModbusOutput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetModbusOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetModbusOutput_Response;

        Ros2Dsr_msgs2SrvSetModbusOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetOutputRegisterBit client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetOutputRegisterBitClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request;
        using Response = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response;

        Ros2Dsr_msgs2SrvSetOutputRegisterBitClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetOutputRegisterBitClient(Ros2Dsr_msgs2SrvSetOutputRegisterBitClient const&) = delete;
        Ros2Dsr_msgs2SrvSetOutputRegisterBitClient& operator= (Ros2Dsr_msgs2SrvSetOutputRegisterBitClient const&) = delete;
        Ros2Dsr_msgs2SrvSetOutputRegisterBitClient(Ros2Dsr_msgs2SrvSetOutputRegisterBitClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetOutputRegisterBitClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetOutputRegisterBit server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetOutputRegisterBitServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response(Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request;
        using Response = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response;

        Ros2Dsr_msgs2SrvSetOutputRegisterBitServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetOutputRegisterFloat client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request;
        using Response = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response;

        Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient(Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient const&) = delete;
        Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient& operator= (Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient const&) = delete;
        Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient(Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetOutputRegisterFloat server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetOutputRegisterFloatServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response(Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request;
        using Response = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response;

        Ros2Dsr_msgs2SrvSetOutputRegisterFloatServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetOutputRegisterInt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetOutputRegisterIntClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request;
        using Response = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response;

        Ros2Dsr_msgs2SrvSetOutputRegisterIntClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetOutputRegisterIntClient(Ros2Dsr_msgs2SrvSetOutputRegisterIntClient const&) = delete;
        Ros2Dsr_msgs2SrvSetOutputRegisterIntClient& operator= (Ros2Dsr_msgs2SrvSetOutputRegisterIntClient const&) = delete;
        Ros2Dsr_msgs2SrvSetOutputRegisterIntClient(Ros2Dsr_msgs2SrvSetOutputRegisterIntClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetOutputRegisterIntClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetOutputRegisterInt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetOutputRegisterIntServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response(Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request;
        using Response = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response;

        Ros2Dsr_msgs2SrvSetOutputRegisterIntServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetRefCoord client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetRefCoordClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetRefCoord_Request;
        using Response = Ros2Dsr_msgs2SrvSetRefCoord_Response;

        Ros2Dsr_msgs2SrvSetRefCoordClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetRefCoordClient(Ros2Dsr_msgs2SrvSetRefCoordClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRefCoordClient& operator= (Ros2Dsr_msgs2SrvSetRefCoordClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRefCoordClient(Ros2Dsr_msgs2SrvSetRefCoordClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetRefCoordClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetRefCoord server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetRefCoordServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetRefCoord_Response(Ros2Dsr_msgs2SrvSetRefCoord_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetRefCoord_Request;
        using Response = Ros2Dsr_msgs2SrvSetRefCoord_Response;

        Ros2Dsr_msgs2SrvSetRefCoordServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetRobotControl client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetRobotControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetRobotControl_Request;
        using Response = Ros2Dsr_msgs2SrvSetRobotControl_Response;

        Ros2Dsr_msgs2SrvSetRobotControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetRobotControlClient(Ros2Dsr_msgs2SrvSetRobotControlClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRobotControlClient& operator= (Ros2Dsr_msgs2SrvSetRobotControlClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRobotControlClient(Ros2Dsr_msgs2SrvSetRobotControlClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetRobotControlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetRobotControl server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetRobotControlServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetRobotControl_Response(Ros2Dsr_msgs2SrvSetRobotControl_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetRobotControl_Request;
        using Response = Ros2Dsr_msgs2SrvSetRobotControl_Response;

        Ros2Dsr_msgs2SrvSetRobotControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetRobotMode client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetRobotModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetRobotMode_Request;
        using Response = Ros2Dsr_msgs2SrvSetRobotMode_Response;

        Ros2Dsr_msgs2SrvSetRobotModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetRobotModeClient(Ros2Dsr_msgs2SrvSetRobotModeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRobotModeClient& operator= (Ros2Dsr_msgs2SrvSetRobotModeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRobotModeClient(Ros2Dsr_msgs2SrvSetRobotModeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetRobotModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetRobotMode server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetRobotModeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetRobotMode_Response(Ros2Dsr_msgs2SrvSetRobotMode_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetRobotMode_Request;
        using Response = Ros2Dsr_msgs2SrvSetRobotMode_Response;

        Ros2Dsr_msgs2SrvSetRobotModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetRobotSpeedMode client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetRobotSpeedModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request;
        using Response = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response;

        Ros2Dsr_msgs2SrvSetRobotSpeedModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetRobotSpeedModeClient(Ros2Dsr_msgs2SrvSetRobotSpeedModeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRobotSpeedModeClient& operator= (Ros2Dsr_msgs2SrvSetRobotSpeedModeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRobotSpeedModeClient(Ros2Dsr_msgs2SrvSetRobotSpeedModeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetRobotSpeedModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetRobotSpeedMode server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetRobotSpeedModeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response(Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request;
        using Response = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response;

        Ros2Dsr_msgs2SrvSetRobotSpeedModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetRobotSystem client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetRobotSystemClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetRobotSystem_Request;
        using Response = Ros2Dsr_msgs2SrvSetRobotSystem_Response;

        Ros2Dsr_msgs2SrvSetRobotSystemClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetRobotSystemClient(Ros2Dsr_msgs2SrvSetRobotSystemClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRobotSystemClient& operator= (Ros2Dsr_msgs2SrvSetRobotSystemClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRobotSystemClient(Ros2Dsr_msgs2SrvSetRobotSystemClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetRobotSystemClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetRobotSystem server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetRobotSystemServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetRobotSystem_Response(Ros2Dsr_msgs2SrvSetRobotSystem_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetRobotSystem_Request;
        using Response = Ros2Dsr_msgs2SrvSetRobotSystem_Response;

        Ros2Dsr_msgs2SrvSetRobotSystemServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetRtControlInput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetRtControlInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetRtControlInput_Request;
        using Response = Ros2Dsr_msgs2SrvSetRtControlInput_Response;

        Ros2Dsr_msgs2SrvSetRtControlInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetRtControlInputClient(Ros2Dsr_msgs2SrvSetRtControlInputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRtControlInputClient& operator= (Ros2Dsr_msgs2SrvSetRtControlInputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRtControlInputClient(Ros2Dsr_msgs2SrvSetRtControlInputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetRtControlInputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetRtControlInput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetRtControlInputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetRtControlInput_Response(Ros2Dsr_msgs2SrvSetRtControlInput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetRtControlInput_Request;
        using Response = Ros2Dsr_msgs2SrvSetRtControlInput_Response;

        Ros2Dsr_msgs2SrvSetRtControlInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetRtControlOutput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetRtControlOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetRtControlOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetRtControlOutput_Response;

        Ros2Dsr_msgs2SrvSetRtControlOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetRtControlOutputClient(Ros2Dsr_msgs2SrvSetRtControlOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRtControlOutputClient& operator= (Ros2Dsr_msgs2SrvSetRtControlOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetRtControlOutputClient(Ros2Dsr_msgs2SrvSetRtControlOutputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetRtControlOutputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetRtControlOutput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetRtControlOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetRtControlOutput_Response(Ros2Dsr_msgs2SrvSetRtControlOutput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetRtControlOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetRtControlOutput_Response;

        Ros2Dsr_msgs2SrvSetRtControlOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetSafeStopResetType client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetSafeStopResetType_Request;
        using Response = Ros2Dsr_msgs2SrvSetSafeStopResetType_Response;

        Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient(Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient& operator= (Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient(Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetSafeStopResetType server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetSafeStopResetTypeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetSafeStopResetType_Response(Ros2Dsr_msgs2SrvSetSafeStopResetType_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetSafeStopResetType_Request;
        using Response = Ros2Dsr_msgs2SrvSetSafeStopResetType_Response;

        Ros2Dsr_msgs2SrvSetSafeStopResetTypeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetSafetyMode client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetSafetyModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetSafetyMode_Request;
        using Response = Ros2Dsr_msgs2SrvSetSafetyMode_Response;

        Ros2Dsr_msgs2SrvSetSafetyModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetSafetyModeClient(Ros2Dsr_msgs2SrvSetSafetyModeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetSafetyModeClient& operator= (Ros2Dsr_msgs2SrvSetSafetyModeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetSafetyModeClient(Ros2Dsr_msgs2SrvSetSafetyModeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetSafetyModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetSafetyMode server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetSafetyModeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetSafetyMode_Response(Ros2Dsr_msgs2SrvSetSafetyMode_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetSafetyMode_Request;
        using Response = Ros2Dsr_msgs2SrvSetSafetyMode_Response;

        Ros2Dsr_msgs2SrvSetSafetyModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetSingularHandlingForce client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetSingularHandlingForceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request;
        using Response = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response;

        Ros2Dsr_msgs2SrvSetSingularHandlingForceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetSingularHandlingForceClient(Ros2Dsr_msgs2SrvSetSingularHandlingForceClient const&) = delete;
        Ros2Dsr_msgs2SrvSetSingularHandlingForceClient& operator= (Ros2Dsr_msgs2SrvSetSingularHandlingForceClient const&) = delete;
        Ros2Dsr_msgs2SrvSetSingularHandlingForceClient(Ros2Dsr_msgs2SrvSetSingularHandlingForceClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetSingularHandlingForceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetSingularHandlingForce server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetSingularHandlingForceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response(Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request;
        using Response = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response;

        Ros2Dsr_msgs2SrvSetSingularHandlingForceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetSingularityHandling client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetSingularityHandlingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetSingularityHandling_Request;
        using Response = Ros2Dsr_msgs2SrvSetSingularityHandling_Response;

        Ros2Dsr_msgs2SrvSetSingularityHandlingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetSingularityHandlingClient(Ros2Dsr_msgs2SrvSetSingularityHandlingClient const&) = delete;
        Ros2Dsr_msgs2SrvSetSingularityHandlingClient& operator= (Ros2Dsr_msgs2SrvSetSingularityHandlingClient const&) = delete;
        Ros2Dsr_msgs2SrvSetSingularityHandlingClient(Ros2Dsr_msgs2SrvSetSingularityHandlingClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetSingularityHandlingClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetSingularityHandling server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetSingularityHandlingServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetSingularityHandling_Response(Ros2Dsr_msgs2SrvSetSingularityHandling_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetSingularityHandling_Request;
        using Response = Ros2Dsr_msgs2SrvSetSingularityHandling_Response;

        Ros2Dsr_msgs2SrvSetSingularityHandlingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetStiffnessx client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetStiffnessxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetStiffnessx_Request;
        using Response = Ros2Dsr_msgs2SrvSetStiffnessx_Response;

        Ros2Dsr_msgs2SrvSetStiffnessxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetStiffnessxClient(Ros2Dsr_msgs2SrvSetStiffnessxClient const&) = delete;
        Ros2Dsr_msgs2SrvSetStiffnessxClient& operator= (Ros2Dsr_msgs2SrvSetStiffnessxClient const&) = delete;
        Ros2Dsr_msgs2SrvSetStiffnessxClient(Ros2Dsr_msgs2SrvSetStiffnessxClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetStiffnessxClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetStiffnessx server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetStiffnessxServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetStiffnessx_Response(Ros2Dsr_msgs2SrvSetStiffnessx_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetStiffnessx_Request;
        using Response = Ros2Dsr_msgs2SrvSetStiffnessx_Response;

        Ros2Dsr_msgs2SrvSetStiffnessxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetToolDigitalOutput client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetToolDigitalOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response;

        Ros2Dsr_msgs2SrvSetToolDigitalOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetToolDigitalOutputClient(Ros2Dsr_msgs2SrvSetToolDigitalOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetToolDigitalOutputClient& operator= (Ros2Dsr_msgs2SrvSetToolDigitalOutputClient const&) = delete;
        Ros2Dsr_msgs2SrvSetToolDigitalOutputClient(Ros2Dsr_msgs2SrvSetToolDigitalOutputClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetToolDigitalOutputClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetToolDigitalOutput server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetToolDigitalOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response(Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request;
        using Response = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response;

        Ros2Dsr_msgs2SrvSetToolDigitalOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetToolShape client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetToolShapeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetToolShape_Request;
        using Response = Ros2Dsr_msgs2SrvSetToolShape_Response;

        Ros2Dsr_msgs2SrvSetToolShapeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetToolShapeClient(Ros2Dsr_msgs2SrvSetToolShapeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetToolShapeClient& operator= (Ros2Dsr_msgs2SrvSetToolShapeClient const&) = delete;
        Ros2Dsr_msgs2SrvSetToolShapeClient(Ros2Dsr_msgs2SrvSetToolShapeClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetToolShapeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetToolShape server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetToolShapeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetToolShape_Response(Ros2Dsr_msgs2SrvSetToolShape_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetToolShape_Request;
        using Response = Ros2Dsr_msgs2SrvSetToolShape_Response;

        Ros2Dsr_msgs2SrvSetToolShapeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetUserCartCoord1 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetUserCartCoord1Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetUserCartCoord1_Request;
        using Response = Ros2Dsr_msgs2SrvSetUserCartCoord1_Response;

        Ros2Dsr_msgs2SrvSetUserCartCoord1Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetUserCartCoord1Client(Ros2Dsr_msgs2SrvSetUserCartCoord1Client const&) = delete;
        Ros2Dsr_msgs2SrvSetUserCartCoord1Client& operator= (Ros2Dsr_msgs2SrvSetUserCartCoord1Client const&) = delete;
        Ros2Dsr_msgs2SrvSetUserCartCoord1Client(Ros2Dsr_msgs2SrvSetUserCartCoord1Client&&) = delete;

        ~Ros2Dsr_msgs2SrvSetUserCartCoord1Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetUserCartCoord1 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetUserCartCoord1Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetUserCartCoord1_Response(Ros2Dsr_msgs2SrvSetUserCartCoord1_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetUserCartCoord1_Request;
        using Response = Ros2Dsr_msgs2SrvSetUserCartCoord1_Response;

        Ros2Dsr_msgs2SrvSetUserCartCoord1Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetUserCartCoord2 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetUserCartCoord2Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetUserCartCoord2_Request;
        using Response = Ros2Dsr_msgs2SrvSetUserCartCoord2_Response;

        Ros2Dsr_msgs2SrvSetUserCartCoord2Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetUserCartCoord2Client(Ros2Dsr_msgs2SrvSetUserCartCoord2Client const&) = delete;
        Ros2Dsr_msgs2SrvSetUserCartCoord2Client& operator= (Ros2Dsr_msgs2SrvSetUserCartCoord2Client const&) = delete;
        Ros2Dsr_msgs2SrvSetUserCartCoord2Client(Ros2Dsr_msgs2SrvSetUserCartCoord2Client&&) = delete;

        ~Ros2Dsr_msgs2SrvSetUserCartCoord2Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetUserCartCoord2 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetUserCartCoord2Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetUserCartCoord2_Response(Ros2Dsr_msgs2SrvSetUserCartCoord2_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetUserCartCoord2_Request;
        using Response = Ros2Dsr_msgs2SrvSetUserCartCoord2_Response;

        Ros2Dsr_msgs2SrvSetUserCartCoord2Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetUserCartCoord3 client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetUserCartCoord3Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetUserCartCoord3_Request;
        using Response = Ros2Dsr_msgs2SrvSetUserCartCoord3_Response;

        Ros2Dsr_msgs2SrvSetUserCartCoord3Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetUserCartCoord3Client(Ros2Dsr_msgs2SrvSetUserCartCoord3Client const&) = delete;
        Ros2Dsr_msgs2SrvSetUserCartCoord3Client& operator= (Ros2Dsr_msgs2SrvSetUserCartCoord3Client const&) = delete;
        Ros2Dsr_msgs2SrvSetUserCartCoord3Client(Ros2Dsr_msgs2SrvSetUserCartCoord3Client&&) = delete;

        ~Ros2Dsr_msgs2SrvSetUserCartCoord3Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetUserCartCoord3 server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetUserCartCoord3Server : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetUserCartCoord3_Response(Ros2Dsr_msgs2SrvSetUserCartCoord3_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetUserCartCoord3_Request;
        using Response = Ros2Dsr_msgs2SrvSetUserCartCoord3_Response;

        Ros2Dsr_msgs2SrvSetUserCartCoord3Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetVeljRt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetVeljRtClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetVeljRt_Request;
        using Response = Ros2Dsr_msgs2SrvSetVeljRt_Response;

        Ros2Dsr_msgs2SrvSetVeljRtClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetVeljRtClient(Ros2Dsr_msgs2SrvSetVeljRtClient const&) = delete;
        Ros2Dsr_msgs2SrvSetVeljRtClient& operator= (Ros2Dsr_msgs2SrvSetVeljRtClient const&) = delete;
        Ros2Dsr_msgs2SrvSetVeljRtClient(Ros2Dsr_msgs2SrvSetVeljRtClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetVeljRtClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetVeljRt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetVeljRtServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetVeljRt_Response(Ros2Dsr_msgs2SrvSetVeljRt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetVeljRt_Request;
        using Response = Ros2Dsr_msgs2SrvSetVeljRt_Response;

        Ros2Dsr_msgs2SrvSetVeljRtServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/SetVelxRt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvSetVelxRtClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvSetVelxRt_Request;
        using Response = Ros2Dsr_msgs2SrvSetVelxRt_Response;

        Ros2Dsr_msgs2SrvSetVelxRtClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvSetVelxRtClient(Ros2Dsr_msgs2SrvSetVelxRtClient const&) = delete;
        Ros2Dsr_msgs2SrvSetVelxRtClient& operator= (Ros2Dsr_msgs2SrvSetVelxRtClient const&) = delete;
        Ros2Dsr_msgs2SrvSetVelxRtClient(Ros2Dsr_msgs2SrvSetVelxRtClient&&) = delete;

        ~Ros2Dsr_msgs2SrvSetVelxRtClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/SetVelxRt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvSetVelxRtServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvSetVelxRt_Response(Ros2Dsr_msgs2SrvSetVelxRt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvSetVelxRt_Request;
        using Response = Ros2Dsr_msgs2SrvSetVelxRt_Response;

        Ros2Dsr_msgs2SrvSetVelxRtServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/StartRtControl client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvStartRtControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvStartRtControl_Request;
        using Response = Ros2Dsr_msgs2SrvStartRtControl_Response;

        Ros2Dsr_msgs2SrvStartRtControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvStartRtControlClient(Ros2Dsr_msgs2SrvStartRtControlClient const&) = delete;
        Ros2Dsr_msgs2SrvStartRtControlClient& operator= (Ros2Dsr_msgs2SrvStartRtControlClient const&) = delete;
        Ros2Dsr_msgs2SrvStartRtControlClient(Ros2Dsr_msgs2SrvStartRtControlClient&&) = delete;

        ~Ros2Dsr_msgs2SrvStartRtControlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/StartRtControl server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvStartRtControlServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvStartRtControl_Response(Ros2Dsr_msgs2SrvStartRtControl_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvStartRtControl_Request;
        using Response = Ros2Dsr_msgs2SrvStartRtControl_Response;

        Ros2Dsr_msgs2SrvStartRtControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/StopRtControl client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvStopRtControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvStopRtControl_Request;
        using Response = Ros2Dsr_msgs2SrvStopRtControl_Response;

        Ros2Dsr_msgs2SrvStopRtControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvStopRtControlClient(Ros2Dsr_msgs2SrvStopRtControlClient const&) = delete;
        Ros2Dsr_msgs2SrvStopRtControlClient& operator= (Ros2Dsr_msgs2SrvStopRtControlClient const&) = delete;
        Ros2Dsr_msgs2SrvStopRtControlClient(Ros2Dsr_msgs2SrvStopRtControlClient&&) = delete;

        ~Ros2Dsr_msgs2SrvStopRtControlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/StopRtControl server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvStopRtControlServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvStopRtControl_Response(Ros2Dsr_msgs2SrvStopRtControl_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvStopRtControl_Request;
        using Response = Ros2Dsr_msgs2SrvStopRtControl_Response;

        Ros2Dsr_msgs2SrvStopRtControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/TaskComplianceCtrl client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvTaskComplianceCtrlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request;
        using Response = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response;

        Ros2Dsr_msgs2SrvTaskComplianceCtrlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvTaskComplianceCtrlClient(Ros2Dsr_msgs2SrvTaskComplianceCtrlClient const&) = delete;
        Ros2Dsr_msgs2SrvTaskComplianceCtrlClient& operator= (Ros2Dsr_msgs2SrvTaskComplianceCtrlClient const&) = delete;
        Ros2Dsr_msgs2SrvTaskComplianceCtrlClient(Ros2Dsr_msgs2SrvTaskComplianceCtrlClient&&) = delete;

        ~Ros2Dsr_msgs2SrvTaskComplianceCtrlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/TaskComplianceCtrl server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvTaskComplianceCtrlServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response(Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request;
        using Response = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response;

        Ros2Dsr_msgs2SrvTaskComplianceCtrlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/Trans client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvTransClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvTrans_Request;
        using Response = Ros2Dsr_msgs2SrvTrans_Response;

        Ros2Dsr_msgs2SrvTransClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvTransClient(Ros2Dsr_msgs2SrvTransClient const&) = delete;
        Ros2Dsr_msgs2SrvTransClient& operator= (Ros2Dsr_msgs2SrvTransClient const&) = delete;
        Ros2Dsr_msgs2SrvTransClient(Ros2Dsr_msgs2SrvTransClient&&) = delete;

        ~Ros2Dsr_msgs2SrvTransClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Trans_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/Trans server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvTransServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvTrans_Response(Ros2Dsr_msgs2SrvTrans_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvTrans_Request;
        using Response = Ros2Dsr_msgs2SrvTrans_Response;

        Ros2Dsr_msgs2SrvTransServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_Trans_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_Trans_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_Trans_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_Trans_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs2/srv/WriteDataRt client; default policy returns13 from construction. */
    class Ros2Dsr_msgs2SrvWriteDataRtClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Dsr_msgs2SrvWriteDataRt_Request;
        using Response = Ros2Dsr_msgs2SrvWriteDataRt_Response;

        Ros2Dsr_msgs2SrvWriteDataRtClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Dsr_msgs2SrvWriteDataRtClient(Ros2Dsr_msgs2SrvWriteDataRtClient const&) = delete;
        Ros2Dsr_msgs2SrvWriteDataRtClient& operator= (Ros2Dsr_msgs2SrvWriteDataRtClient const&) = delete;
        Ros2Dsr_msgs2SrvWriteDataRtClient(Ros2Dsr_msgs2SrvWriteDataRtClient&&) = delete;

        ~Ros2Dsr_msgs2SrvWriteDataRtClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom dsr_msgs2/srv/WriteDataRt server; advertise/respond stay separate authorities. */
    class Ros2Dsr_msgs2SrvWriteDataRtServer : public ServerOwners
    {
        using Handler = std::function<Ros2Dsr_msgs2SrvWriteDataRt_Response(Ros2Dsr_msgs2SrvWriteDataRt_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Dsr_msgs2SrvWriteDataRt_Request;
        using Response = Ros2Dsr_msgs2SrvWriteDataRt_Response;

        Ros2Dsr_msgs2SrvWriteDataRtServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
