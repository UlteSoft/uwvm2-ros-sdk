/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <platform/pal/c/ros1/pal-ros1-noetic-devel-complete/bounded_interfaces.h>
#include <platform/pal/cpp/ros1/pal-ros1-noetic-devel-complete/bounded_records.hpp>
#include <array>
#include <memory>
#include <functional>
#include <string_view>
#include <utility>

namespace uwvm_custom
{
    /** @brief Borrow the selected immutable backend; no alias or permission is created. */
    inline roswasmc_string alias(std::string_view text)
    {
        return {text.data(), text.size()};
    }

    /** @brief Private stable two-role ownership; handlers cannot borrow/retire raw capabilities. */
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

        /** @brief Construction and rollback errors stay inspectable; no constructor retries an open. */
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

        /** @brief Preflight both owners before the first close; a callback refuses17 with no imports. */
        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 2>& statuses)
        {
            return cleanup(primary, statuses, false);
        }

        /** @brief Explicit alias revocation; never automatic rollback or destructor behavior. */
        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 2>& statuses)
        {
            return cleanup(primary, statuses, true);
        }
    };

    /** @brief Complete custom pal_behaviour_msgs/BehaviourEvent client; default policy returns13 from construction. */
    class Ros1Pal_behaviour_msgsBehaviourEventClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_behaviour_msgsBehaviourEventRequest;
        using Response = Ros1Pal_behaviour_msgsBehaviourEventResponse;

        Ros1Pal_behaviour_msgsBehaviourEventClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_behaviour_msgsBehaviourEventClient(Ros1Pal_behaviour_msgsBehaviourEventClient const&) = delete;
        Ros1Pal_behaviour_msgsBehaviourEventClient& operator= (Ros1Pal_behaviour_msgsBehaviourEventClient const&) = delete;
        Ros1Pal_behaviour_msgsBehaviourEventClient(Ros1Pal_behaviour_msgsBehaviourEventClient&&) = delete;

        ~Ros1Pal_behaviour_msgsBehaviourEventClient()
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
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_behaviour_msgs/BehaviourEvent server; advertise/respond stay separate authorities. */
    class Ros1Pal_behaviour_msgsBehaviourEventServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_behaviour_msgsBehaviourEventResponse(Ros1Pal_behaviour_msgsBehaviourEventRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_behaviour_msgsBehaviourEventRequest;
        using Response = Ros1Pal_behaviour_msgsBehaviourEventResponse;

        Ros1Pal_behaviour_msgsBehaviourEventServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_behaviour_msgs/BehaviourTask Action client with four separate roles. */
    class Ros1Pal_behaviour_msgsBehaviourTaskClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_behaviour_msgsBehaviourTaskGoal;
        using Result = Ros1Pal_behaviour_msgsBehaviourTaskResult;
        using Feedback = Ros1Pal_behaviour_msgsBehaviourTaskFeedback;

        Ros1Pal_behaviour_msgsBehaviourTaskClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_behaviour_msgsBehaviourTaskClient(Ros1Pal_behaviour_msgsBehaviourTaskClient const&) = delete;
        Ros1Pal_behaviour_msgsBehaviourTaskClient& operator= (Ros1Pal_behaviour_msgsBehaviourTaskClient const&) = delete;
        Ros1Pal_behaviour_msgsBehaviourTaskClient(Ros1Pal_behaviour_msgsBehaviourTaskClient&&) = delete;

        ~Ros1Pal_behaviour_msgsBehaviourTaskClient()
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
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_behaviour_msgs/BehaviourTask server with explicit feedback/terminal component codecs. */
    class Ros1Pal_behaviour_msgsBehaviourTaskServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_behaviour_msgsBehaviourTaskGoal;
        using Result = Ros1Pal_behaviour_msgsBehaviourTaskResult;
        using Feedback = Ros1Pal_behaviour_msgsBehaviourTaskFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_behaviour_msgsBehaviourTaskServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_result(&respond_, id, replies.kind, &replies.result).error
                                       : 0;
        }
    };

    /** @brief Complete owned custom pal_behaviour_msgs/Presentation Action client with four separate roles. */
    class Ros1Pal_behaviour_msgsPresentationClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_behaviour_msgsPresentationGoal;
        using Result = Ros1Pal_behaviour_msgsPresentationResult;
        using Feedback = Ros1Pal_behaviour_msgsPresentationFeedback;

        Ros1Pal_behaviour_msgsPresentationClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_behaviour_msgsPresentationClient(Ros1Pal_behaviour_msgsPresentationClient const&) = delete;
        Ros1Pal_behaviour_msgsPresentationClient& operator= (Ros1Pal_behaviour_msgsPresentationClient const&) = delete;
        Ros1Pal_behaviour_msgsPresentationClient(Ros1Pal_behaviour_msgsPresentationClient&&) = delete;

        ~Ros1Pal_behaviour_msgsPresentationClient()
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
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_behaviour_msgs/Presentation server with explicit feedback/terminal component codecs. */
    class Ros1Pal_behaviour_msgsPresentationServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_behaviour_msgsPresentationGoal;
        using Result = Ros1Pal_behaviour_msgsPresentationResult;
        using Feedback = Ros1Pal_behaviour_msgsPresentationFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_behaviour_msgsPresentationServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_behaviour_msgs_Presentation_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_result(&respond_, id, replies.kind, &replies.result).error
                                       : 0;
        }
    };

    /** @brief Complete owned custom pal_common_msgs/Disable Action client with four separate roles. */
    class Ros1Pal_common_msgsDisableClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_common_msgsDisableGoal;
        using Result = Ros1Pal_common_msgsDisableResult;
        using Feedback = Ros1Pal_common_msgsDisableFeedback;

        Ros1Pal_common_msgsDisableClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) : context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_common_msgsDisableClient(Ros1Pal_common_msgsDisableClient const&) = delete;
        Ros1Pal_common_msgsDisableClient& operator= (Ros1Pal_common_msgsDisableClient const&) = delete;
        Ros1Pal_common_msgsDisableClient(Ros1Pal_common_msgsDisableClient&&) = delete;

        ~Ros1Pal_common_msgsDisableClient()
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
            return roswasmc_bounded_1_pal_common_msgs_Disable_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Disable_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Disable_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_common_msgs/Disable server with explicit feedback/terminal component codecs. */
    class Ros1Pal_common_msgsDisableServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_common_msgsDisableGoal;
        using Result = Ros1Pal_common_msgsDisableResult;
        using Feedback = Ros1Pal_common_msgsDisableFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_common_msgsDisableServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_common_msgs_Disable_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_common_msgs_Disable_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_common_msgs_Disable_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_common_msgs_Disable_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_common_msgs_DisableResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_common_msgs_DisableFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_common_msgs_Disable_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_common_msgs_Disable_respond_result(&respond_, id, replies.kind, &replies.result).error : 0;
        }
    };

    /** @brief Complete owned custom pal_common_msgs/Empty Action client with four separate roles. */
    class Ros1Pal_common_msgsEmptyClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_common_msgsEmptyGoal;
        using Result = Ros1Pal_common_msgsEmptyResult;
        using Feedback = Ros1Pal_common_msgsEmptyFeedback;

        Ros1Pal_common_msgsEmptyClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) : context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_common_msgsEmptyClient(Ros1Pal_common_msgsEmptyClient const&) = delete;
        Ros1Pal_common_msgsEmptyClient& operator= (Ros1Pal_common_msgsEmptyClient const&) = delete;
        Ros1Pal_common_msgsEmptyClient(Ros1Pal_common_msgsEmptyClient&&) = delete;

        ~Ros1Pal_common_msgsEmptyClient()
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
            return roswasmc_bounded_1_pal_common_msgs_Empty_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Empty_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Empty_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_common_msgs/Empty server with explicit feedback/terminal component codecs. */
    class Ros1Pal_common_msgsEmptyServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_common_msgsEmptyGoal;
        using Result = Ros1Pal_common_msgsEmptyResult;
        using Feedback = Ros1Pal_common_msgsEmptyFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_common_msgsEmptyServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_common_msgs_Empty_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_common_msgs_Empty_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_common_msgs_Empty_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_common_msgs_Empty_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_common_msgs_EmptyResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_common_msgs_Empty_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_common_msgs_Empty_respond_result(&respond_, id, replies.kind, &replies.result).error : 0;
        }
    };

    /** @brief Complete custom pal_common_msgs/GetString client; default policy returns13 from construction. */
    class Ros1Pal_common_msgsGetStringClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_common_msgsGetStringRequest;
        using Response = Ros1Pal_common_msgsGetStringResponse;

        Ros1Pal_common_msgsGetStringClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_common_msgsGetStringClient(Ros1Pal_common_msgsGetStringClient const&) = delete;
        Ros1Pal_common_msgsGetStringClient& operator= (Ros1Pal_common_msgsGetStringClient const&) = delete;
        Ros1Pal_common_msgsGetStringClient(Ros1Pal_common_msgsGetStringClient&&) = delete;

        ~Ros1Pal_common_msgsGetStringClient()
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
            return roswasmc_bounded_1_pal_common_msgs_GetString_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_common_msgs/GetString server; advertise/respond stay separate authorities. */
    class Ros1Pal_common_msgsGetStringServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_common_msgsGetStringResponse(Ros1Pal_common_msgsGetStringRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_common_msgsGetStringRequest;
        using Response = Ros1Pal_common_msgsGetStringResponse;

        Ros1Pal_common_msgsGetStringServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_common_msgs_GetString_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_common_msgs_GetString_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_common_msgs_GetString_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_common_msgs_GetString_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_common_msgs/SetString client; default policy returns13 from construction. */
    class Ros1Pal_common_msgsSetStringClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_common_msgsSetStringRequest;
        using Response = Ros1Pal_common_msgsSetStringResponse;

        Ros1Pal_common_msgsSetStringClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_common_msgsSetStringClient(Ros1Pal_common_msgsSetStringClient const&) = delete;
        Ros1Pal_common_msgsSetStringClient& operator= (Ros1Pal_common_msgsSetStringClient const&) = delete;
        Ros1Pal_common_msgsSetStringClient(Ros1Pal_common_msgsSetStringClient&&) = delete;

        ~Ros1Pal_common_msgsSetStringClient()
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
            return roswasmc_bounded_1_pal_common_msgs_SetString_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_common_msgs/SetString server; advertise/respond stay separate authorities. */
    class Ros1Pal_common_msgsSetStringServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_common_msgsSetStringResponse(Ros1Pal_common_msgsSetStringRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_common_msgsSetStringRequest;
        using Response = Ros1Pal_common_msgsSetStringResponse;

        Ros1Pal_common_msgsSetStringServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_common_msgs_SetString_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_common_msgs_SetString_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_common_msgs_SetString_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_common_msgs_SetString_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_control_msgs/CurrentLimit client; default policy returns13 from construction. */
    class Ros1Pal_control_msgsCurrentLimitClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_control_msgsCurrentLimitRequest;
        using Response = Ros1Pal_control_msgsCurrentLimitResponse;

        Ros1Pal_control_msgsCurrentLimitClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_control_msgsCurrentLimitClient(Ros1Pal_control_msgsCurrentLimitClient const&) = delete;
        Ros1Pal_control_msgsCurrentLimitClient& operator= (Ros1Pal_control_msgsCurrentLimitClient const&) = delete;
        Ros1Pal_control_msgsCurrentLimitClient(Ros1Pal_control_msgsCurrentLimitClient&&) = delete;

        ~Ros1Pal_control_msgsCurrentLimitClient()
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
            return roswasmc_bounded_1_pal_control_msgs_CurrentLimit_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_control_msgs/CurrentLimit server; advertise/respond stay separate authorities. */
    class Ros1Pal_control_msgsCurrentLimitServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_control_msgsCurrentLimitResponse(Ros1Pal_control_msgsCurrentLimitRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_control_msgsCurrentLimitRequest;
        using Response = Ros1Pal_control_msgsCurrentLimitResponse;

        Ros1Pal_control_msgsCurrentLimitServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_control_msgs_CurrentLimit_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_control_msgs_CurrentLimit_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_control_msgs_CurrentLimit_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_control_msgs_CurrentLimit_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_control_msgs/MotionManager Action client with four separate roles. */
    class Ros1Pal_control_msgsMotionManagerClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_control_msgsMotionManagerGoal;
        using Result = Ros1Pal_control_msgsMotionManagerResult;
        using Feedback = Ros1Pal_control_msgsMotionManagerFeedback;

        Ros1Pal_control_msgsMotionManagerClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_control_msgsMotionManagerClient(Ros1Pal_control_msgsMotionManagerClient const&) = delete;
        Ros1Pal_control_msgsMotionManagerClient& operator= (Ros1Pal_control_msgsMotionManagerClient const&) = delete;
        Ros1Pal_control_msgsMotionManagerClient(Ros1Pal_control_msgsMotionManagerClient&&) = delete;

        ~Ros1Pal_control_msgsMotionManagerClient()
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
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_control_msgs/MotionManager server with explicit feedback/terminal component codecs. */
    class Ros1Pal_control_msgsMotionManagerServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_control_msgsMotionManagerGoal;
        using Result = Ros1Pal_control_msgsMotionManagerResult;
        using Feedback = Ros1Pal_control_msgsMotionManagerFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_control_msgsMotionManagerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_control_msgs_MotionManager_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_result(&respond_, id, replies.kind, &replies.result).error
                                       : 0;
        }
    };

    /** @brief Complete owned custom pal_control_msgs/RigidBodyTrajectory Action client with four separate roles. */
    class Ros1Pal_control_msgsRigidBodyTrajectoryClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_control_msgsRigidBodyTrajectoryGoal;
        using Result = Ros1Pal_control_msgsRigidBodyTrajectoryResult;
        using Feedback = Ros1Pal_control_msgsRigidBodyTrajectoryFeedback;

        Ros1Pal_control_msgsRigidBodyTrajectoryClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_control_msgsRigidBodyTrajectoryClient(Ros1Pal_control_msgsRigidBodyTrajectoryClient const&) = delete;
        Ros1Pal_control_msgsRigidBodyTrajectoryClient& operator= (Ros1Pal_control_msgsRigidBodyTrajectoryClient const&) = delete;
        Ros1Pal_control_msgsRigidBodyTrajectoryClient(Ros1Pal_control_msgsRigidBodyTrajectoryClient&&) = delete;

        ~Ros1Pal_control_msgsRigidBodyTrajectoryClient()
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
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_control_msgs/RigidBodyTrajectory server with explicit feedback/terminal component codecs. */
    class Ros1Pal_control_msgsRigidBodyTrajectoryServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_control_msgsRigidBodyTrajectoryGoal;
        using Result = Ros1Pal_control_msgsRigidBodyTrajectoryResult;
        using Feedback = Ros1Pal_control_msgsRigidBodyTrajectoryFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_control_msgsRigidBodyTrajectoryServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result
                       ? roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_result(&respond_, id, replies.kind, &replies.result).error
                       : 0;
        }
    };

    /** @brief Complete custom pal_detection_msgs/AddTexturedObject client; default policy returns13 from construction. */
    class Ros1Pal_detection_msgsAddTexturedObjectClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_detection_msgsAddTexturedObjectRequest;
        using Response = Ros1Pal_detection_msgsAddTexturedObjectResponse;

        Ros1Pal_detection_msgsAddTexturedObjectClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_detection_msgsAddTexturedObjectClient(Ros1Pal_detection_msgsAddTexturedObjectClient const&) = delete;
        Ros1Pal_detection_msgsAddTexturedObjectClient& operator= (Ros1Pal_detection_msgsAddTexturedObjectClient const&) = delete;
        Ros1Pal_detection_msgsAddTexturedObjectClient(Ros1Pal_detection_msgsAddTexturedObjectClient&&) = delete;

        ~Ros1Pal_detection_msgsAddTexturedObjectClient()
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
            return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_detection_msgs/AddTexturedObject server; advertise/respond stay separate authorities. */
    class Ros1Pal_detection_msgsAddTexturedObjectServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_detection_msgsAddTexturedObjectResponse(Ros1Pal_detection_msgsAddTexturedObjectRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_detection_msgsAddTexturedObjectRequest;
        using Response = Ros1Pal_detection_msgsAddTexturedObjectResponse;

        Ros1Pal_detection_msgsAddTexturedObjectServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_detection_msgs/ChangeObjectRecognizerModel client; default policy returns13 from construction. */
    class Ros1Pal_detection_msgsChangeObjectRecognizerModelClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest;
        using Response = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse;

        Ros1Pal_detection_msgsChangeObjectRecognizerModelClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_detection_msgsChangeObjectRecognizerModelClient(Ros1Pal_detection_msgsChangeObjectRecognizerModelClient const&) = delete;
        Ros1Pal_detection_msgsChangeObjectRecognizerModelClient& operator= (Ros1Pal_detection_msgsChangeObjectRecognizerModelClient const&) = delete;
        Ros1Pal_detection_msgsChangeObjectRecognizerModelClient(Ros1Pal_detection_msgsChangeObjectRecognizerModelClient&&) = delete;

        ~Ros1Pal_detection_msgsChangeObjectRecognizerModelClient()
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
            return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_detection_msgs/ChangeObjectRecognizerModel server; advertise/respond stay separate authorities. */
    class Ros1Pal_detection_msgsChangeObjectRecognizerModelServer : public ServerOwners
    {
        using Handler =
            std::function<Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse(Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest;
        using Response = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse;

        Ros1Pal_detection_msgsChangeObjectRecognizerModelServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_detection_msgs/RecognizeObjects Action client with four separate roles. */
    class Ros1Pal_detection_msgsRecognizeObjectsClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_detection_msgsRecognizeObjectsGoal;
        using Result = Ros1Pal_detection_msgsRecognizeObjectsResult;
        using Feedback = Ros1Pal_detection_msgsRecognizeObjectsFeedback;

        Ros1Pal_detection_msgsRecognizeObjectsClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_detection_msgsRecognizeObjectsClient(Ros1Pal_detection_msgsRecognizeObjectsClient const&) = delete;
        Ros1Pal_detection_msgsRecognizeObjectsClient& operator= (Ros1Pal_detection_msgsRecognizeObjectsClient const&) = delete;
        Ros1Pal_detection_msgsRecognizeObjectsClient(Ros1Pal_detection_msgsRecognizeObjectsClient&&) = delete;

        ~Ros1Pal_detection_msgsRecognizeObjectsClient()
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
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_detection_msgs/RecognizeObjects server with explicit feedback/terminal component codecs. */
    class Ros1Pal_detection_msgsRecognizeObjectsServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_detection_msgsRecognizeObjectsGoal;
        using Result = Ros1Pal_detection_msgsRecognizeObjectsResult;
        using Feedback = Ros1Pal_detection_msgsRecognizeObjectsFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_detection_msgsRecognizeObjectsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result
                       ? roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_result(&respond_, id, replies.kind, &replies.result).error
                       : 0;
        }
    };

    /** @brief Complete custom pal_detection_msgs/Recognizer client; default policy returns13 from construction. */
    class Ros1Pal_detection_msgsRecognizerClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_detection_msgsRecognizerRequest;
        using Response = Ros1Pal_detection_msgsRecognizerResponse;

        Ros1Pal_detection_msgsRecognizerClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_detection_msgsRecognizerClient(Ros1Pal_detection_msgsRecognizerClient const&) = delete;
        Ros1Pal_detection_msgsRecognizerClient& operator= (Ros1Pal_detection_msgsRecognizerClient const&) = delete;
        Ros1Pal_detection_msgsRecognizerClient(Ros1Pal_detection_msgsRecognizerClient&&) = delete;

        ~Ros1Pal_detection_msgsRecognizerClient()
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
            return roswasmc_bounded_1_pal_detection_msgs_Recognizer_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_detection_msgs/Recognizer server; advertise/respond stay separate authorities. */
    class Ros1Pal_detection_msgsRecognizerServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_detection_msgsRecognizerResponse(Ros1Pal_detection_msgsRecognizerRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_detection_msgsRecognizerRequest;
        using Response = Ros1Pal_detection_msgsRecognizerResponse;

        Ros1Pal_detection_msgsRecognizerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_detection_msgs_Recognizer_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_Recognizer_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_detection_msgs_Recognizer_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_detection_msgs_Recognizer_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_detection_msgs/SelectTexturedObject client; default policy returns13 from construction. */
    class Ros1Pal_detection_msgsSelectTexturedObjectClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_detection_msgsSelectTexturedObjectRequest;
        using Response = Ros1Pal_detection_msgsSelectTexturedObjectResponse;

        Ros1Pal_detection_msgsSelectTexturedObjectClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_detection_msgsSelectTexturedObjectClient(Ros1Pal_detection_msgsSelectTexturedObjectClient const&) = delete;
        Ros1Pal_detection_msgsSelectTexturedObjectClient& operator= (Ros1Pal_detection_msgsSelectTexturedObjectClient const&) = delete;
        Ros1Pal_detection_msgsSelectTexturedObjectClient(Ros1Pal_detection_msgsSelectTexturedObjectClient&&) = delete;

        ~Ros1Pal_detection_msgsSelectTexturedObjectClient()
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
            return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_detection_msgs/SelectTexturedObject server; advertise/respond stay separate authorities. */
    class Ros1Pal_detection_msgsSelectTexturedObjectServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_detection_msgsSelectTexturedObjectResponse(Ros1Pal_detection_msgsSelectTexturedObjectRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_detection_msgsSelectTexturedObjectRequest;
        using Response = Ros1Pal_detection_msgsSelectTexturedObjectResponse;

        Ros1Pal_detection_msgsSelectTexturedObjectServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_detection_msgs/SetDatabase client; default policy returns13 from construction. */
    class Ros1Pal_detection_msgsSetDatabaseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_detection_msgsSetDatabaseRequest;
        using Response = Ros1Pal_detection_msgsSetDatabaseResponse;

        Ros1Pal_detection_msgsSetDatabaseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_detection_msgsSetDatabaseClient(Ros1Pal_detection_msgsSetDatabaseClient const&) = delete;
        Ros1Pal_detection_msgsSetDatabaseClient& operator= (Ros1Pal_detection_msgsSetDatabaseClient const&) = delete;
        Ros1Pal_detection_msgsSetDatabaseClient(Ros1Pal_detection_msgsSetDatabaseClient&&) = delete;

        ~Ros1Pal_detection_msgsSetDatabaseClient()
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
            return roswasmc_bounded_1_pal_detection_msgs_SetDatabase_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_detection_msgs/SetDatabase server; advertise/respond stay separate authorities. */
    class Ros1Pal_detection_msgsSetDatabaseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_detection_msgsSetDatabaseResponse(Ros1Pal_detection_msgsSetDatabaseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_detection_msgsSetDatabaseRequest;
        using Response = Ros1Pal_detection_msgsSetDatabaseResponse;

        Ros1Pal_detection_msgsSetDatabaseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_detection_msgs_SetDatabase_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_SetDatabase_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_detection_msgs_SetDatabase_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_detection_msgs_SetDatabase_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_detection_msgs/StartEnrollment client; default policy returns13 from construction. */
    class Ros1Pal_detection_msgsStartEnrollmentClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_detection_msgsStartEnrollmentRequest;
        using Response = Ros1Pal_detection_msgsStartEnrollmentResponse;

        Ros1Pal_detection_msgsStartEnrollmentClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_detection_msgsStartEnrollmentClient(Ros1Pal_detection_msgsStartEnrollmentClient const&) = delete;
        Ros1Pal_detection_msgsStartEnrollmentClient& operator= (Ros1Pal_detection_msgsStartEnrollmentClient const&) = delete;
        Ros1Pal_detection_msgsStartEnrollmentClient(Ros1Pal_detection_msgsStartEnrollmentClient&&) = delete;

        ~Ros1Pal_detection_msgsStartEnrollmentClient()
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
            return roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_detection_msgs/StartEnrollment server; advertise/respond stay separate authorities. */
    class Ros1Pal_detection_msgsStartEnrollmentServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_detection_msgsStartEnrollmentResponse(Ros1Pal_detection_msgsStartEnrollmentRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_detection_msgsStartEnrollmentRequest;
        using Response = Ros1Pal_detection_msgsStartEnrollmentResponse;

        Ros1Pal_detection_msgsStartEnrollmentServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_detection_msgs/StopEnrollment client; default policy returns13 from construction. */
    class Ros1Pal_detection_msgsStopEnrollmentClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_detection_msgsStopEnrollmentRequest;
        using Response = Ros1Pal_detection_msgsStopEnrollmentResponse;

        Ros1Pal_detection_msgsStopEnrollmentClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_detection_msgsStopEnrollmentClient(Ros1Pal_detection_msgsStopEnrollmentClient const&) = delete;
        Ros1Pal_detection_msgsStopEnrollmentClient& operator= (Ros1Pal_detection_msgsStopEnrollmentClient const&) = delete;
        Ros1Pal_detection_msgsStopEnrollmentClient(Ros1Pal_detection_msgsStopEnrollmentClient&&) = delete;

        ~Ros1Pal_detection_msgsStopEnrollmentClient()
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
            return roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_detection_msgs/StopEnrollment server; advertise/respond stay separate authorities. */
    class Ros1Pal_detection_msgsStopEnrollmentServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_detection_msgsStopEnrollmentResponse(Ros1Pal_detection_msgsStopEnrollmentRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_detection_msgsStopEnrollmentRequest;
        using Response = Ros1Pal_detection_msgsStopEnrollmentResponse;

        Ros1Pal_detection_msgsStopEnrollmentServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_device_msgs/CancelEffect client; default policy returns13 from construction. */
    class Ros1Pal_device_msgsCancelEffectClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_device_msgsCancelEffectRequest;
        using Response = Ros1Pal_device_msgsCancelEffectResponse;

        Ros1Pal_device_msgsCancelEffectClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_device_msgsCancelEffectClient(Ros1Pal_device_msgsCancelEffectClient const&) = delete;
        Ros1Pal_device_msgsCancelEffectClient& operator= (Ros1Pal_device_msgsCancelEffectClient const&) = delete;
        Ros1Pal_device_msgsCancelEffectClient(Ros1Pal_device_msgsCancelEffectClient&&) = delete;

        ~Ros1Pal_device_msgsCancelEffectClient()
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
            return roswasmc_bounded_1_pal_device_msgs_CancelEffect_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_device_msgs/CancelEffect server; advertise/respond stay separate authorities. */
    class Ros1Pal_device_msgsCancelEffectServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_device_msgsCancelEffectResponse(Ros1Pal_device_msgsCancelEffectRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_device_msgsCancelEffectRequest;
        using Response = Ros1Pal_device_msgsCancelEffectResponse;

        Ros1Pal_device_msgsCancelEffectServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_device_msgs_CancelEffect_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_device_msgs_CancelEffect_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_device_msgs_CancelEffect_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_device_msgs_CancelEffect_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_device_msgs/DoTimedLedEffect Action client with four separate roles. */
    class Ros1Pal_device_msgsDoTimedLedEffectClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_device_msgsDoTimedLedEffectGoal;
        using Result = Ros1Pal_device_msgsDoTimedLedEffectResult;
        using Feedback = Ros1Pal_device_msgsDoTimedLedEffectFeedback;

        Ros1Pal_device_msgsDoTimedLedEffectClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_device_msgsDoTimedLedEffectClient(Ros1Pal_device_msgsDoTimedLedEffectClient const&) = delete;
        Ros1Pal_device_msgsDoTimedLedEffectClient& operator= (Ros1Pal_device_msgsDoTimedLedEffectClient const&) = delete;
        Ros1Pal_device_msgsDoTimedLedEffectClient(Ros1Pal_device_msgsDoTimedLedEffectClient&&) = delete;

        ~Ros1Pal_device_msgsDoTimedLedEffectClient()
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
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_device_msgs/DoTimedLedEffect server with explicit feedback/terminal component codecs. */
    class Ros1Pal_device_msgsDoTimedLedEffectServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_device_msgsDoTimedLedEffectGoal;
        using Result = Ros1Pal_device_msgsDoTimedLedEffectResult;
        using Feedback = Ros1Pal_device_msgsDoTimedLedEffectFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_device_msgsDoTimedLedEffectServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_result(&respond_, id, replies.kind, &replies.result).error
                                       : 0;
        }
    };

    /** @brief Complete custom pal_device_msgs/ShutdownAndWakeUpRobot client; default policy returns13 from construction. */
    class Ros1Pal_device_msgsShutdownAndWakeUpRobotClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest;
        using Response = Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse;

        Ros1Pal_device_msgsShutdownAndWakeUpRobotClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_device_msgsShutdownAndWakeUpRobotClient(Ros1Pal_device_msgsShutdownAndWakeUpRobotClient const&) = delete;
        Ros1Pal_device_msgsShutdownAndWakeUpRobotClient& operator= (Ros1Pal_device_msgsShutdownAndWakeUpRobotClient const&) = delete;
        Ros1Pal_device_msgsShutdownAndWakeUpRobotClient(Ros1Pal_device_msgsShutdownAndWakeUpRobotClient&&) = delete;

        ~Ros1Pal_device_msgsShutdownAndWakeUpRobotClient()
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
            return roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_device_msgs/ShutdownAndWakeUpRobot server; advertise/respond stay separate authorities. */
    class Ros1Pal_device_msgsShutdownAndWakeUpRobotServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse(Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest;
        using Response = Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse;

        Ros1Pal_device_msgsShutdownAndWakeUpRobotServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_device_msgs/TimedBlinkEffect client; default policy returns13 from construction. */
    class Ros1Pal_device_msgsTimedBlinkEffectClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_device_msgsTimedBlinkEffectRequest;
        using Response = Ros1Pal_device_msgsTimedBlinkEffectResponse;

        Ros1Pal_device_msgsTimedBlinkEffectClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_device_msgsTimedBlinkEffectClient(Ros1Pal_device_msgsTimedBlinkEffectClient const&) = delete;
        Ros1Pal_device_msgsTimedBlinkEffectClient& operator= (Ros1Pal_device_msgsTimedBlinkEffectClient const&) = delete;
        Ros1Pal_device_msgsTimedBlinkEffectClient(Ros1Pal_device_msgsTimedBlinkEffectClient&&) = delete;

        ~Ros1Pal_device_msgsTimedBlinkEffectClient()
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
            return roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_device_msgs/TimedBlinkEffect server; advertise/respond stay separate authorities. */
    class Ros1Pal_device_msgsTimedBlinkEffectServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_device_msgsTimedBlinkEffectResponse(Ros1Pal_device_msgsTimedBlinkEffectRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_device_msgsTimedBlinkEffectRequest;
        using Response = Ros1Pal_device_msgsTimedBlinkEffectResponse;

        Ros1Pal_device_msgsTimedBlinkEffectServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_device_msgs/TimedColourEffect client; default policy returns13 from construction. */
    class Ros1Pal_device_msgsTimedColourEffectClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_device_msgsTimedColourEffectRequest;
        using Response = Ros1Pal_device_msgsTimedColourEffectResponse;

        Ros1Pal_device_msgsTimedColourEffectClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_device_msgsTimedColourEffectClient(Ros1Pal_device_msgsTimedColourEffectClient const&) = delete;
        Ros1Pal_device_msgsTimedColourEffectClient& operator= (Ros1Pal_device_msgsTimedColourEffectClient const&) = delete;
        Ros1Pal_device_msgsTimedColourEffectClient(Ros1Pal_device_msgsTimedColourEffectClient&&) = delete;

        ~Ros1Pal_device_msgsTimedColourEffectClient()
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
            return roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_device_msgs/TimedColourEffect server; advertise/respond stay separate authorities. */
    class Ros1Pal_device_msgsTimedColourEffectServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_device_msgsTimedColourEffectResponse(Ros1Pal_device_msgsTimedColourEffectRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_device_msgsTimedColourEffectRequest;
        using Response = Ros1Pal_device_msgsTimedColourEffectResponse;

        Ros1Pal_device_msgsTimedColourEffectServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_device_msgs/TimedFadeEffect client; default policy returns13 from construction. */
    class Ros1Pal_device_msgsTimedFadeEffectClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_device_msgsTimedFadeEffectRequest;
        using Response = Ros1Pal_device_msgsTimedFadeEffectResponse;

        Ros1Pal_device_msgsTimedFadeEffectClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_device_msgsTimedFadeEffectClient(Ros1Pal_device_msgsTimedFadeEffectClient const&) = delete;
        Ros1Pal_device_msgsTimedFadeEffectClient& operator= (Ros1Pal_device_msgsTimedFadeEffectClient const&) = delete;
        Ros1Pal_device_msgsTimedFadeEffectClient(Ros1Pal_device_msgsTimedFadeEffectClient&&) = delete;

        ~Ros1Pal_device_msgsTimedFadeEffectClient()
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
            return roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_device_msgs/TimedFadeEffect server; advertise/respond stay separate authorities. */
    class Ros1Pal_device_msgsTimedFadeEffectServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_device_msgsTimedFadeEffectResponse(Ros1Pal_device_msgsTimedFadeEffectRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_device_msgsTimedFadeEffectRequest;
        using Response = Ros1Pal_device_msgsTimedFadeEffectResponse;

        Ros1Pal_device_msgsTimedFadeEffectServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_interaction_msgs/ASRFile Action client with four separate roles. */
    class Ros1Pal_interaction_msgsASRFileClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_interaction_msgsASRFileGoal;
        using Result = Ros1Pal_interaction_msgsASRFileResult;
        using Feedback = Ros1Pal_interaction_msgsASRFileFeedback;

        Ros1Pal_interaction_msgsASRFileClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_interaction_msgsASRFileClient(Ros1Pal_interaction_msgsASRFileClient const&) = delete;
        Ros1Pal_interaction_msgsASRFileClient& operator= (Ros1Pal_interaction_msgsASRFileClient const&) = delete;
        Ros1Pal_interaction_msgsASRFileClient(Ros1Pal_interaction_msgsASRFileClient&&) = delete;

        ~Ros1Pal_interaction_msgsASRFileClient()
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
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_interaction_msgs/ASRFile server with explicit feedback/terminal component codecs. */
    class Ros1Pal_interaction_msgsASRFileServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_interaction_msgsASRFileGoal;
        using Result = Ros1Pal_interaction_msgsASRFileResult;
        using Feedback = Ros1Pal_interaction_msgsASRFileFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_interaction_msgsASRFileServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_interaction_msgs_ASRFile_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_result(&respond_, id, replies.kind, &replies.result).error : 0;
        }
    };

    /** @brief Complete custom pal_interaction_msgs/ASRService client; default policy returns13 from construction. */
    class Ros1Pal_interaction_msgsASRServiceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_interaction_msgsASRServiceRequest;
        using Response = Ros1Pal_interaction_msgsASRServiceResponse;

        Ros1Pal_interaction_msgsASRServiceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_interaction_msgsASRServiceClient(Ros1Pal_interaction_msgsASRServiceClient const&) = delete;
        Ros1Pal_interaction_msgsASRServiceClient& operator= (Ros1Pal_interaction_msgsASRServiceClient const&) = delete;
        Ros1Pal_interaction_msgsASRServiceClient(Ros1Pal_interaction_msgsASRServiceClient&&) = delete;

        ~Ros1Pal_interaction_msgsASRServiceClient()
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
            return roswasmc_bounded_1_pal_interaction_msgs_ASRService_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_interaction_msgs/ASRService server; advertise/respond stay separate authorities. */
    class Ros1Pal_interaction_msgsASRServiceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_interaction_msgsASRServiceResponse(Ros1Pal_interaction_msgsASRServiceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_interaction_msgsASRServiceRequest;
        using Response = Ros1Pal_interaction_msgsASRServiceResponse;

        Ros1Pal_interaction_msgsASRServiceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_interaction_msgs_ASRService_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_ASRService_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_interaction_msgs_ASRService_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_interaction_msgs_ASRService_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_interaction_msgs/AudioPlay Action client with four separate roles. */
    class Ros1Pal_interaction_msgsAudioPlayClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_interaction_msgsAudioPlayGoal;
        using Result = Ros1Pal_interaction_msgsAudioPlayResult;
        using Feedback = Ros1Pal_interaction_msgsAudioPlayFeedback;

        Ros1Pal_interaction_msgsAudioPlayClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_interaction_msgsAudioPlayClient(Ros1Pal_interaction_msgsAudioPlayClient const&) = delete;
        Ros1Pal_interaction_msgsAudioPlayClient& operator= (Ros1Pal_interaction_msgsAudioPlayClient const&) = delete;
        Ros1Pal_interaction_msgsAudioPlayClient(Ros1Pal_interaction_msgsAudioPlayClient&&) = delete;

        ~Ros1Pal_interaction_msgsAudioPlayClient()
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
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_interaction_msgs/AudioPlay server with explicit feedback/terminal component codecs. */
    class Ros1Pal_interaction_msgsAudioPlayServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_interaction_msgsAudioPlayGoal;
        using Result = Ros1Pal_interaction_msgsAudioPlayResult;
        using Feedback = Ros1Pal_interaction_msgsAudioPlayFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_interaction_msgsAudioPlayServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_result(&respond_, id, replies.kind, &replies.result).error
                                       : 0;
        }
    };

    /** @brief Complete custom pal_interaction_msgs/GetSpeechDuration client; default policy returns13 from construction. */
    class Ros1Pal_interaction_msgsGetSpeechDurationClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_interaction_msgsGetSpeechDurationRequest;
        using Response = Ros1Pal_interaction_msgsGetSpeechDurationResponse;

        Ros1Pal_interaction_msgsGetSpeechDurationClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_interaction_msgsGetSpeechDurationClient(Ros1Pal_interaction_msgsGetSpeechDurationClient const&) = delete;
        Ros1Pal_interaction_msgsGetSpeechDurationClient& operator= (Ros1Pal_interaction_msgsGetSpeechDurationClient const&) = delete;
        Ros1Pal_interaction_msgsGetSpeechDurationClient(Ros1Pal_interaction_msgsGetSpeechDurationClient&&) = delete;

        ~Ros1Pal_interaction_msgsGetSpeechDurationClient()
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
            return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_interaction_msgs/GetSpeechDuration server; advertise/respond stay separate authorities. */
    class Ros1Pal_interaction_msgsGetSpeechDurationServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_interaction_msgsGetSpeechDurationResponse(Ros1Pal_interaction_msgsGetSpeechDurationRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_interaction_msgsGetSpeechDurationRequest;
        using Response = Ros1Pal_interaction_msgsGetSpeechDurationResponse;

        Ros1Pal_interaction_msgsGetSpeechDurationServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_interaction_msgs/Sound Action client with four separate roles. */
    class Ros1Pal_interaction_msgsSoundClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_interaction_msgsSoundGoal;
        using Result = Ros1Pal_interaction_msgsSoundResult;
        using Feedback = Ros1Pal_interaction_msgsSoundFeedback;

        Ros1Pal_interaction_msgsSoundClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_interaction_msgsSoundClient(Ros1Pal_interaction_msgsSoundClient const&) = delete;
        Ros1Pal_interaction_msgsSoundClient& operator= (Ros1Pal_interaction_msgsSoundClient const&) = delete;
        Ros1Pal_interaction_msgsSoundClient(Ros1Pal_interaction_msgsSoundClient&&) = delete;

        ~Ros1Pal_interaction_msgsSoundClient()
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
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_interaction_msgs/Sound server with explicit feedback/terminal component codecs. */
    class Ros1Pal_interaction_msgsSoundServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_interaction_msgsSoundGoal;
        using Result = Ros1Pal_interaction_msgsSoundResult;
        using Feedback = Ros1Pal_interaction_msgsSoundFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_interaction_msgsSoundServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_interaction_msgs_Sound_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_interaction_msgs_SoundResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_result(&respond_, id, replies.kind, &replies.result).error : 0;
        }
    };

    /** @brief Complete custom pal_interaction_msgs/SoundLocalisationService client; default policy returns13 from construction. */
    class Ros1Pal_interaction_msgsSoundLocalisationServiceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_interaction_msgsSoundLocalisationServiceRequest;
        using Response = Ros1Pal_interaction_msgsSoundLocalisationServiceResponse;

        Ros1Pal_interaction_msgsSoundLocalisationServiceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_interaction_msgsSoundLocalisationServiceClient(Ros1Pal_interaction_msgsSoundLocalisationServiceClient const&) = delete;
        Ros1Pal_interaction_msgsSoundLocalisationServiceClient& operator= (Ros1Pal_interaction_msgsSoundLocalisationServiceClient const&) = delete;
        Ros1Pal_interaction_msgsSoundLocalisationServiceClient(Ros1Pal_interaction_msgsSoundLocalisationServiceClient&&) = delete;

        ~Ros1Pal_interaction_msgsSoundLocalisationServiceClient()
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
            return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_interaction_msgs/SoundLocalisationService server; advertise/respond stay separate authorities. */
    class Ros1Pal_interaction_msgsSoundLocalisationServiceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_interaction_msgsSoundLocalisationServiceResponse(Ros1Pal_interaction_msgsSoundLocalisationServiceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_interaction_msgsSoundLocalisationServiceRequest;
        using Response = Ros1Pal_interaction_msgsSoundLocalisationServiceResponse;

        Ros1Pal_interaction_msgsSoundLocalisationServiceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_interaction_msgs/Tts Action client with four separate roles. */
    class Ros1Pal_interaction_msgsTtsClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_interaction_msgsTtsGoal;
        using Result = Ros1Pal_interaction_msgsTtsResult;
        using Feedback = Ros1Pal_interaction_msgsTtsFeedback;

        Ros1Pal_interaction_msgsTtsClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) : context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_interaction_msgsTtsClient(Ros1Pal_interaction_msgsTtsClient const&) = delete;
        Ros1Pal_interaction_msgsTtsClient& operator= (Ros1Pal_interaction_msgsTtsClient const&) = delete;
        Ros1Pal_interaction_msgsTtsClient(Ros1Pal_interaction_msgsTtsClient&&) = delete;

        ~Ros1Pal_interaction_msgsTtsClient()
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
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_interaction_msgs/Tts server with explicit feedback/terminal component codecs. */
    class Ros1Pal_interaction_msgsTtsServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_interaction_msgsTtsGoal;
        using Result = Ros1Pal_interaction_msgsTtsResult;
        using Feedback = Ros1Pal_interaction_msgsTtsFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_interaction_msgsTtsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_interaction_msgs_Tts_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_interaction_msgs_TtsResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_result(&respond_, id, replies.kind, &replies.result).error : 0;
        }
    };

    /** @brief Complete custom pal_interaction_msgs/recognizerService client; default policy returns13 from construction. */
    class Ros1Pal_interaction_msgsRecognizerServiceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_interaction_msgsRecognizerServiceRequest;
        using Response = Ros1Pal_interaction_msgsRecognizerServiceResponse;

        Ros1Pal_interaction_msgsRecognizerServiceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_interaction_msgsRecognizerServiceClient(Ros1Pal_interaction_msgsRecognizerServiceClient const&) = delete;
        Ros1Pal_interaction_msgsRecognizerServiceClient& operator= (Ros1Pal_interaction_msgsRecognizerServiceClient const&) = delete;
        Ros1Pal_interaction_msgsRecognizerServiceClient(Ros1Pal_interaction_msgsRecognizerServiceClient&&) = delete;

        ~Ros1Pal_interaction_msgsRecognizerServiceClient()
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
            return roswasmc_bounded_1_pal_interaction_msgs_recognizerService_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_interaction_msgs/recognizerService server; advertise/respond stay separate authorities. */
    class Ros1Pal_interaction_msgsRecognizerServiceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_interaction_msgsRecognizerServiceResponse(Ros1Pal_interaction_msgsRecognizerServiceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_interaction_msgsRecognizerServiceRequest;
        using Response = Ros1Pal_interaction_msgsRecognizerServiceResponse;

        Ros1Pal_interaction_msgsRecognizerServiceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_interaction_msgs_recognizerService_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_interaction_msgs_recognizerService_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_interaction_msgs_recognizerService_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_interaction_msgs_recognizerService_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_motion_model_msgs/GetMotionMap client; default policy returns13 from construction. */
    class Ros1Pal_motion_model_msgsGetMotionMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_motion_model_msgsGetMotionMapRequest;
        using Response = Ros1Pal_motion_model_msgsGetMotionMapResponse;

        Ros1Pal_motion_model_msgsGetMotionMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_motion_model_msgsGetMotionMapClient(Ros1Pal_motion_model_msgsGetMotionMapClient const&) = delete;
        Ros1Pal_motion_model_msgsGetMotionMapClient& operator= (Ros1Pal_motion_model_msgsGetMotionMapClient const&) = delete;
        Ros1Pal_motion_model_msgsGetMotionMapClient(Ros1Pal_motion_model_msgsGetMotionMapClient&&) = delete;

        ~Ros1Pal_motion_model_msgsGetMotionMapClient()
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
            return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_motion_model_msgs/GetMotionMap server; advertise/respond stay separate authorities. */
    class Ros1Pal_motion_model_msgsGetMotionMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_motion_model_msgsGetMotionMapResponse(Ros1Pal_motion_model_msgsGetMotionMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_motion_model_msgsGetMotionMapRequest;
        using Response = Ros1Pal_motion_model_msgsGetMotionMapResponse;

        Ros1Pal_motion_model_msgsGetMotionMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_video_recording_msgs/StartRecording client; default policy returns13 from construction. */
    class Ros1Pal_video_recording_msgsStartRecordingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_video_recording_msgsStartRecordingRequest;
        using Response = Ros1Pal_video_recording_msgsStartRecordingResponse;

        Ros1Pal_video_recording_msgsStartRecordingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_video_recording_msgsStartRecordingClient(Ros1Pal_video_recording_msgsStartRecordingClient const&) = delete;
        Ros1Pal_video_recording_msgsStartRecordingClient& operator= (Ros1Pal_video_recording_msgsStartRecordingClient const&) = delete;
        Ros1Pal_video_recording_msgsStartRecordingClient(Ros1Pal_video_recording_msgsStartRecordingClient&&) = delete;

        ~Ros1Pal_video_recording_msgsStartRecordingClient()
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
            return roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_video_recording_msgs/StartRecording server; advertise/respond stay separate authorities. */
    class Ros1Pal_video_recording_msgsStartRecordingServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_video_recording_msgsStartRecordingResponse(Ros1Pal_video_recording_msgsStartRecordingRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_video_recording_msgsStartRecordingRequest;
        using Response = Ros1Pal_video_recording_msgsStartRecordingResponse;

        Ros1Pal_video_recording_msgsStartRecordingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_video_recording_msgs/StopRecording client; default policy returns13 from construction. */
    class Ros1Pal_video_recording_msgsStopRecordingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_video_recording_msgsStopRecordingRequest;
        using Response = Ros1Pal_video_recording_msgsStopRecordingResponse;

        Ros1Pal_video_recording_msgsStopRecordingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_video_recording_msgsStopRecordingClient(Ros1Pal_video_recording_msgsStopRecordingClient const&) = delete;
        Ros1Pal_video_recording_msgsStopRecordingClient& operator= (Ros1Pal_video_recording_msgsStopRecordingClient const&) = delete;
        Ros1Pal_video_recording_msgsStopRecordingClient(Ros1Pal_video_recording_msgsStopRecordingClient&&) = delete;

        ~Ros1Pal_video_recording_msgsStopRecordingClient()
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
            return roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_video_recording_msgs/StopRecording server; advertise/respond stay separate authorities. */
    class Ros1Pal_video_recording_msgsStopRecordingServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_video_recording_msgsStopRecordingResponse(Ros1Pal_video_recording_msgsStopRecordingRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_video_recording_msgsStopRecordingRequest;
        using Response = Ros1Pal_video_recording_msgsStopRecordingResponse;

        Ros1Pal_video_recording_msgsStopRecordingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_vision_msgs/FaceRecognition Action client with four separate roles. */
    class Ros1Pal_vision_msgsFaceRecognitionClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_vision_msgsFaceRecognitionGoal;
        using Result = Ros1Pal_vision_msgsFaceRecognitionResult;
        using Feedback = Ros1Pal_vision_msgsFaceRecognitionFeedback;

        Ros1Pal_vision_msgsFaceRecognitionClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_vision_msgsFaceRecognitionClient(Ros1Pal_vision_msgsFaceRecognitionClient const&) = delete;
        Ros1Pal_vision_msgsFaceRecognitionClient& operator= (Ros1Pal_vision_msgsFaceRecognitionClient const&) = delete;
        Ros1Pal_vision_msgsFaceRecognitionClient(Ros1Pal_vision_msgsFaceRecognitionClient&&) = delete;

        ~Ros1Pal_vision_msgsFaceRecognitionClient()
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
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_vision_msgs/FaceRecognition server with explicit feedback/terminal component codecs. */
    class Ros1Pal_vision_msgsFaceRecognitionServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_vision_msgsFaceRecognitionGoal;
        using Result = Ros1Pal_vision_msgsFaceRecognitionResult;
        using Feedback = Ros1Pal_vision_msgsFaceRecognitionFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_vision_msgsFaceRecognitionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result ? roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_result(&respond_, id, replies.kind, &replies.result).error
                                       : 0;
        }
    };

    /** @brief Complete custom pal_vision_msgs/FaceTrackingStart client; default policy returns13 from construction. */
    class Ros1Pal_vision_msgsFaceTrackingStartClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_vision_msgsFaceTrackingStartRequest;
        using Response = Ros1Pal_vision_msgsFaceTrackingStartResponse;

        Ros1Pal_vision_msgsFaceTrackingStartClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_vision_msgsFaceTrackingStartClient(Ros1Pal_vision_msgsFaceTrackingStartClient const&) = delete;
        Ros1Pal_vision_msgsFaceTrackingStartClient& operator= (Ros1Pal_vision_msgsFaceTrackingStartClient const&) = delete;
        Ros1Pal_vision_msgsFaceTrackingStartClient(Ros1Pal_vision_msgsFaceTrackingStartClient&&) = delete;

        ~Ros1Pal_vision_msgsFaceTrackingStartClient()
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
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_vision_msgs/FaceTrackingStart server; advertise/respond stay separate authorities. */
    class Ros1Pal_vision_msgsFaceTrackingStartServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_vision_msgsFaceTrackingStartResponse(Ros1Pal_vision_msgsFaceTrackingStartRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_vision_msgsFaceTrackingStartRequest;
        using Response = Ros1Pal_vision_msgsFaceTrackingStartResponse;

        Ros1Pal_vision_msgsFaceTrackingStartServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_vision_msgs/FaceTrackingStop client; default policy returns13 from construction. */
    class Ros1Pal_vision_msgsFaceTrackingStopClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_vision_msgsFaceTrackingStopRequest;
        using Response = Ros1Pal_vision_msgsFaceTrackingStopResponse;

        Ros1Pal_vision_msgsFaceTrackingStopClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_vision_msgsFaceTrackingStopClient(Ros1Pal_vision_msgsFaceTrackingStopClient const&) = delete;
        Ros1Pal_vision_msgsFaceTrackingStopClient& operator= (Ros1Pal_vision_msgsFaceTrackingStopClient const&) = delete;
        Ros1Pal_vision_msgsFaceTrackingStopClient(Ros1Pal_vision_msgsFaceTrackingStopClient&&) = delete;

        ~Ros1Pal_vision_msgsFaceTrackingStopClient()
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
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_vision_msgs/FaceTrackingStop server; advertise/respond stay separate authorities. */
    class Ros1Pal_vision_msgsFaceTrackingStopServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_vision_msgsFaceTrackingStopResponse(Ros1Pal_vision_msgsFaceTrackingStopRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_vision_msgsFaceTrackingStopRequest;
        using Response = Ros1Pal_vision_msgsFaceTrackingStopResponse;

        Ros1Pal_vision_msgsFaceTrackingStopServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_vision_msgs/FollowMeStart client; default policy returns13 from construction. */
    class Ros1Pal_vision_msgsFollowMeStartClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_vision_msgsFollowMeStartRequest;
        using Response = Ros1Pal_vision_msgsFollowMeStartResponse;

        Ros1Pal_vision_msgsFollowMeStartClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_vision_msgsFollowMeStartClient(Ros1Pal_vision_msgsFollowMeStartClient const&) = delete;
        Ros1Pal_vision_msgsFollowMeStartClient& operator= (Ros1Pal_vision_msgsFollowMeStartClient const&) = delete;
        Ros1Pal_vision_msgsFollowMeStartClient(Ros1Pal_vision_msgsFollowMeStartClient&&) = delete;

        ~Ros1Pal_vision_msgsFollowMeStartClient()
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
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_vision_msgs/FollowMeStart server; advertise/respond stay separate authorities. */
    class Ros1Pal_vision_msgsFollowMeStartServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_vision_msgsFollowMeStartResponse(Ros1Pal_vision_msgsFollowMeStartRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_vision_msgsFollowMeStartRequest;
        using Response = Ros1Pal_vision_msgsFollowMeStartResponse;

        Ros1Pal_vision_msgsFollowMeStartServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_vision_msgs/FollowMeStop client; default policy returns13 from construction. */
    class Ros1Pal_vision_msgsFollowMeStopClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_vision_msgsFollowMeStopRequest;
        using Response = Ros1Pal_vision_msgsFollowMeStopResponse;

        Ros1Pal_vision_msgsFollowMeStopClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_vision_msgsFollowMeStopClient(Ros1Pal_vision_msgsFollowMeStopClient const&) = delete;
        Ros1Pal_vision_msgsFollowMeStopClient& operator= (Ros1Pal_vision_msgsFollowMeStopClient const&) = delete;
        Ros1Pal_vision_msgsFollowMeStopClient(Ros1Pal_vision_msgsFollowMeStopClient&&) = delete;

        ~Ros1Pal_vision_msgsFollowMeStopClient()
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
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_vision_msgs/FollowMeStop server; advertise/respond stay separate authorities. */
    class Ros1Pal_vision_msgsFollowMeStopServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_vision_msgsFollowMeStopResponse(Ros1Pal_vision_msgsFollowMeStopRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_vision_msgsFollowMeStopRequest;
        using Response = Ros1Pal_vision_msgsFollowMeStopResponse;

        Ros1Pal_vision_msgsFollowMeStopServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_vision_msgs/LookToPixel client; default policy returns13 from construction. */
    class Ros1Pal_vision_msgsLookToPixelClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_vision_msgsLookToPixelRequest;
        using Response = Ros1Pal_vision_msgsLookToPixelResponse;

        Ros1Pal_vision_msgsLookToPixelClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_vision_msgsLookToPixelClient(Ros1Pal_vision_msgsLookToPixelClient const&) = delete;
        Ros1Pal_vision_msgsLookToPixelClient& operator= (Ros1Pal_vision_msgsLookToPixelClient const&) = delete;
        Ros1Pal_vision_msgsLookToPixelClient(Ros1Pal_vision_msgsLookToPixelClient&&) = delete;

        ~Ros1Pal_vision_msgsLookToPixelClient()
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
            return roswasmc_bounded_1_pal_vision_msgs_LookToPixel_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_vision_msgs/LookToPixel server; advertise/respond stay separate authorities. */
    class Ros1Pal_vision_msgsLookToPixelServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_vision_msgsLookToPixelResponse(Ros1Pal_vision_msgsLookToPixelRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_vision_msgsLookToPixelRequest;
        using Response = Ros1Pal_vision_msgsLookToPixelResponse;

        Ros1Pal_vision_msgsLookToPixelServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_vision_msgs_LookToPixel_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_vision_msgs_LookToPixel_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_vision_msgs_LookToPixel_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_vision_msgs_LookToPixel_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete owned custom pal_visual_localization_msgs/VisualLocAddPlace Action client with four separate roles. */
    class Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal;
        using Result = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult;
        using Feedback = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback;

        Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient(Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient const&) = delete;
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient& operator= (Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient const&) = delete;
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient(Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient&&) = delete;

        ~Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient()
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
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_visual_localization_msgs/VisualLocAddPlace server with explicit feedback/terminal component codecs. */
    class Ros1Pal_visual_localization_msgsVisualLocAddPlaceServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal;
        using Result = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult;
        using Feedback = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result
                       ? roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_result(&respond_, id, replies.kind, &replies.result).error
                       : 0;
        }
    };

    /** @brief Complete owned custom pal_visual_localization_msgs/VisualLocRecognize Action client with four separate roles. */
    class Ros1Pal_visual_localization_msgsVisualLocRecognizeClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal;
        using Result = Ros1Pal_visual_localization_msgsVisualLocRecognizeResult;
        using Feedback = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback;

        Ros1Pal_visual_localization_msgsVisualLocRecognizeClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Pal_visual_localization_msgsVisualLocRecognizeClient(Ros1Pal_visual_localization_msgsVisualLocRecognizeClient const&) = delete;
        Ros1Pal_visual_localization_msgsVisualLocRecognizeClient& operator= (Ros1Pal_visual_localization_msgsVisualLocRecognizeClient const&) = delete;
        Ros1Pal_visual_localization_msgsVisualLocRecognizeClient(Ros1Pal_visual_localization_msgsVisualLocRecognizeClient&&) = delete;

        ~Ros1Pal_visual_localization_msgsVisualLocRecognizeClient()
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
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_result(&bundle_, id, &kind, &value);
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

    /** @brief Typed custom pal_visual_localization_msgs/VisualLocRecognize server with explicit feedback/terminal component codecs. */
    class Ros1Pal_visual_localization_msgsVisualLocRecognizeServer : public ServerOwners
    {
    public:
        using Goal = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal;
        using Result = Ros1Pal_visual_localization_msgsVisualLocRecognizeResult;
        using Feedback = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback;

        /** @brief Handler may choose separate feedback/result effects; kind must be2..4 when terminal. */
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
        Ros1Pal_visual_localization_msgsVisualLocRecognizeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_result(&respond_, id, kind, &value);
        }

        /** @brief One pass, at most one feedback plus one terminal response; never implicit replay. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result
                       ? roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_result(&respond_, id, replies.kind, &replies.result).error
                       : 0;
        }
    };

    /** @brief Complete custom pal_walking_msgs/MoveHipFeet client; default policy returns13 from construction. */
    class Ros1Pal_walking_msgsMoveHipFeetClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_walking_msgsMoveHipFeetRequest;
        using Response = Ros1Pal_walking_msgsMoveHipFeetResponse;

        Ros1Pal_walking_msgsMoveHipFeetClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_walking_msgsMoveHipFeetClient(Ros1Pal_walking_msgsMoveHipFeetClient const&) = delete;
        Ros1Pal_walking_msgsMoveHipFeetClient& operator= (Ros1Pal_walking_msgsMoveHipFeetClient const&) = delete;
        Ros1Pal_walking_msgsMoveHipFeetClient(Ros1Pal_walking_msgsMoveHipFeetClient&&) = delete;

        ~Ros1Pal_walking_msgsMoveHipFeetClient()
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
            return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_walking_msgs/MoveHipFeet server; advertise/respond stay separate authorities. */
    class Ros1Pal_walking_msgsMoveHipFeetServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_walking_msgsMoveHipFeetResponse(Ros1Pal_walking_msgsMoveHipFeetRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_walking_msgsMoveHipFeetRequest;
        using Response = Ros1Pal_walking_msgsMoveHipFeetResponse;

        Ros1Pal_walking_msgsMoveHipFeetServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_walking_msgs/Sit client; default policy returns13 from construction. */
    class Ros1Pal_walking_msgsSitClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_walking_msgsSitRequest;
        using Response = Ros1Pal_walking_msgsSitResponse;

        Ros1Pal_walking_msgsSitClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_walking_msgsSitClient(Ros1Pal_walking_msgsSitClient const&) = delete;
        Ros1Pal_walking_msgsSitClient& operator= (Ros1Pal_walking_msgsSitClient const&) = delete;
        Ros1Pal_walking_msgsSitClient(Ros1Pal_walking_msgsSitClient&&) = delete;

        ~Ros1Pal_walking_msgsSitClient()
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
            return roswasmc_bounded_1_pal_walking_msgs_Sit_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_walking_msgs/Sit server; advertise/respond stay separate authorities. */
    class Ros1Pal_walking_msgsSitServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_walking_msgsSitResponse(Ros1Pal_walking_msgsSitRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_walking_msgsSitRequest;
        using Response = Ros1Pal_walking_msgsSitResponse;

        Ros1Pal_walking_msgsSitServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_walking_msgs_Sit_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_walking_msgs_Sit_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_walking_msgs_Sit_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_walking_msgs_Sit_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_walking_msgs/StepOver client; default policy returns13 from construction. */
    class Ros1Pal_walking_msgsStepOverClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_walking_msgsStepOverRequest;
        using Response = Ros1Pal_walking_msgsStepOverResponse;

        Ros1Pal_walking_msgsStepOverClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_walking_msgsStepOverClient(Ros1Pal_walking_msgsStepOverClient const&) = delete;
        Ros1Pal_walking_msgsStepOverClient& operator= (Ros1Pal_walking_msgsStepOverClient const&) = delete;
        Ros1Pal_walking_msgsStepOverClient(Ros1Pal_walking_msgsStepOverClient&&) = delete;

        ~Ros1Pal_walking_msgsStepOverClient()
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
            return roswasmc_bounded_1_pal_walking_msgs_StepOver_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_walking_msgs/StepOver server; advertise/respond stay separate authorities. */
    class Ros1Pal_walking_msgsStepOverServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_walking_msgsStepOverResponse(Ros1Pal_walking_msgsStepOverRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_walking_msgsStepOverRequest;
        using Response = Ros1Pal_walking_msgsStepOverResponse;

        Ros1Pal_walking_msgsStepOverServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_walking_msgs_StepOver_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_walking_msgs_StepOver_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_walking_msgs_StepOver_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_walking_msgs_StepOver_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_walking_msgs/WalkSteps client; default policy returns13 from construction. */
    class Ros1Pal_walking_msgsWalkStepsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_walking_msgsWalkStepsRequest;
        using Response = Ros1Pal_walking_msgsWalkStepsResponse;

        Ros1Pal_walking_msgsWalkStepsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_walking_msgsWalkStepsClient(Ros1Pal_walking_msgsWalkStepsClient const&) = delete;
        Ros1Pal_walking_msgsWalkStepsClient& operator= (Ros1Pal_walking_msgsWalkStepsClient const&) = delete;
        Ros1Pal_walking_msgsWalkStepsClient(Ros1Pal_walking_msgsWalkStepsClient&&) = delete;

        ~Ros1Pal_walking_msgsWalkStepsClient()
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
            return roswasmc_bounded_1_pal_walking_msgs_WalkSteps_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_walking_msgs/WalkSteps server; advertise/respond stay separate authorities. */
    class Ros1Pal_walking_msgsWalkStepsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_walking_msgsWalkStepsResponse(Ros1Pal_walking_msgsWalkStepsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_walking_msgsWalkStepsRequest;
        using Response = Ros1Pal_walking_msgsWalkStepsResponse;

        Ros1Pal_walking_msgsWalkStepsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_walking_msgs_WalkSteps_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_walking_msgs_WalkSteps_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_walking_msgs_WalkSteps_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_walking_msgs_WalkSteps_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom pal_wifi_localization_msgs/GetWifiMap client; default policy returns13 from construction. */
    class Ros1Pal_wifi_localization_msgsGetWifiMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Pal_wifi_localization_msgsGetWifiMapRequest;
        using Response = Ros1Pal_wifi_localization_msgsGetWifiMapResponse;

        Ros1Pal_wifi_localization_msgsGetWifiMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Pal_wifi_localization_msgsGetWifiMapClient(Ros1Pal_wifi_localization_msgsGetWifiMapClient const&) = delete;
        Ros1Pal_wifi_localization_msgsGetWifiMapClient& operator= (Ros1Pal_wifi_localization_msgsGetWifiMapClient const&) = delete;
        Ros1Pal_wifi_localization_msgsGetWifiMapClient(Ros1Pal_wifi_localization_msgsGetWifiMapClient&&) = delete;

        ~Ros1Pal_wifi_localization_msgsGetWifiMapClient()
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
            return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_call(&cap_, &request, &response);
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

    /** @brief Typed custom pal_wifi_localization_msgs/GetWifiMap server; advertise/respond stay separate authorities. */
    class Ros1Pal_wifi_localization_msgsGetWifiMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Pal_wifi_localization_msgsGetWifiMapResponse(Ros1Pal_wifi_localization_msgsGetWifiMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Pal_wifi_localization_msgsGetWifiMapRequest;
        using Response = Ros1Pal_wifi_localization_msgsGetWifiMapResponse;

        Ros1Pal_wifi_localization_msgsGetWifiMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** @brief Replacement applies next pass; the same mutable functor object survives current dispatch. */
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
            return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_respond(&respond_, ticket, &response);
        }

        /** @brief One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** @brief One caller-driven executor pass; Idle11 preserves pending owners. */
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
            auto r = roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
