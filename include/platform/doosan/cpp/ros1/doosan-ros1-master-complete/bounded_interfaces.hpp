/**
 * @file bounded_interfaces.hpp
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros1-master-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <doosan/c/ros1/doosan-ros1-master-complete/bounded_interfaces.h>
#include <doosan/cpp/ros1/doosan-ros1-master-complete/bounded_records.hpp>
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

    /** Complete custom dsr_msgs/AlignAxis1 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsAlignAxis1Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsAlignAxis1Request;
        using Response = Ros1Dsr_msgsAlignAxis1Response;

        Ros1Dsr_msgsAlignAxis1Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsAlignAxis1Client(Ros1Dsr_msgsAlignAxis1Client const&) = delete;
        Ros1Dsr_msgsAlignAxis1Client& operator= (Ros1Dsr_msgsAlignAxis1Client const&) = delete;
        Ros1Dsr_msgsAlignAxis1Client(Ros1Dsr_msgsAlignAxis1Client&&) = delete;

        ~Ros1Dsr_msgsAlignAxis1Client()
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
            return roswasmc_bounded_1_dsr_msgs_AlignAxis1_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/AlignAxis1 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsAlignAxis1Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsAlignAxis1Response(Ros1Dsr_msgsAlignAxis1Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsAlignAxis1Request;
        using Response = Ros1Dsr_msgsAlignAxis1Response;

        Ros1Dsr_msgsAlignAxis1Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_AlignAxis1_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_AlignAxis1_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_AlignAxis1_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_AlignAxis1_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/AlignAxis2 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsAlignAxis2Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsAlignAxis2Request;
        using Response = Ros1Dsr_msgsAlignAxis2Response;

        Ros1Dsr_msgsAlignAxis2Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsAlignAxis2Client(Ros1Dsr_msgsAlignAxis2Client const&) = delete;
        Ros1Dsr_msgsAlignAxis2Client& operator= (Ros1Dsr_msgsAlignAxis2Client const&) = delete;
        Ros1Dsr_msgsAlignAxis2Client(Ros1Dsr_msgsAlignAxis2Client&&) = delete;

        ~Ros1Dsr_msgsAlignAxis2Client()
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
            return roswasmc_bounded_1_dsr_msgs_AlignAxis2_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/AlignAxis2 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsAlignAxis2Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsAlignAxis2Response(Ros1Dsr_msgsAlignAxis2Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsAlignAxis2Request;
        using Response = Ros1Dsr_msgsAlignAxis2Response;

        Ros1Dsr_msgsAlignAxis2Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_AlignAxis2_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_AlignAxis2_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_AlignAxis2_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_AlignAxis2_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/AlterMotion client; default policy returns13 from construction. */
    class Ros1Dsr_msgsAlterMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsAlterMotionRequest;
        using Response = Ros1Dsr_msgsAlterMotionResponse;

        Ros1Dsr_msgsAlterMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsAlterMotionClient(Ros1Dsr_msgsAlterMotionClient const&) = delete;
        Ros1Dsr_msgsAlterMotionClient& operator= (Ros1Dsr_msgsAlterMotionClient const&) = delete;
        Ros1Dsr_msgsAlterMotionClient(Ros1Dsr_msgsAlterMotionClient&&) = delete;

        ~Ros1Dsr_msgsAlterMotionClient()
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
            return roswasmc_bounded_1_dsr_msgs_AlterMotion_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/AlterMotion server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsAlterMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsAlterMotionResponse(Ros1Dsr_msgsAlterMotionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsAlterMotionRequest;
        using Response = Ros1Dsr_msgsAlterMotionResponse;

        Ros1Dsr_msgsAlterMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_AlterMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_AlterMotion_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_AlterMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_AlterMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/CalcCoord client; default policy returns13 from construction. */
    class Ros1Dsr_msgsCalcCoordClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsCalcCoordRequest;
        using Response = Ros1Dsr_msgsCalcCoordResponse;

        Ros1Dsr_msgsCalcCoordClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsCalcCoordClient(Ros1Dsr_msgsCalcCoordClient const&) = delete;
        Ros1Dsr_msgsCalcCoordClient& operator= (Ros1Dsr_msgsCalcCoordClient const&) = delete;
        Ros1Dsr_msgsCalcCoordClient(Ros1Dsr_msgsCalcCoordClient&&) = delete;

        ~Ros1Dsr_msgsCalcCoordClient()
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
            return roswasmc_bounded_1_dsr_msgs_CalcCoord_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/CalcCoord server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsCalcCoordServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsCalcCoordResponse(Ros1Dsr_msgsCalcCoordRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsCalcCoordRequest;
        using Response = Ros1Dsr_msgsCalcCoordResponse;

        Ros1Dsr_msgsCalcCoordServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_CalcCoord_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_CalcCoord_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_CalcCoord_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_CalcCoord_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ChangeOperationSpeed client; default policy returns13 from construction. */
    class Ros1Dsr_msgsChangeOperationSpeedClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsChangeOperationSpeedRequest;
        using Response = Ros1Dsr_msgsChangeOperationSpeedResponse;

        Ros1Dsr_msgsChangeOperationSpeedClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsChangeOperationSpeedClient(Ros1Dsr_msgsChangeOperationSpeedClient const&) = delete;
        Ros1Dsr_msgsChangeOperationSpeedClient& operator= (Ros1Dsr_msgsChangeOperationSpeedClient const&) = delete;
        Ros1Dsr_msgsChangeOperationSpeedClient(Ros1Dsr_msgsChangeOperationSpeedClient&&) = delete;

        ~Ros1Dsr_msgsChangeOperationSpeedClient()
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
            return roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ChangeOperationSpeed server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsChangeOperationSpeedServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsChangeOperationSpeedResponse(Ros1Dsr_msgsChangeOperationSpeedRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsChangeOperationSpeedRequest;
        using Response = Ros1Dsr_msgsChangeOperationSpeedResponse;

        Ros1Dsr_msgsChangeOperationSpeedServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/CheckForceCondition client; default policy returns13 from construction. */
    class Ros1Dsr_msgsCheckForceConditionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsCheckForceConditionRequest;
        using Response = Ros1Dsr_msgsCheckForceConditionResponse;

        Ros1Dsr_msgsCheckForceConditionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsCheckForceConditionClient(Ros1Dsr_msgsCheckForceConditionClient const&) = delete;
        Ros1Dsr_msgsCheckForceConditionClient& operator= (Ros1Dsr_msgsCheckForceConditionClient const&) = delete;
        Ros1Dsr_msgsCheckForceConditionClient(Ros1Dsr_msgsCheckForceConditionClient&&) = delete;

        ~Ros1Dsr_msgsCheckForceConditionClient()
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
            return roswasmc_bounded_1_dsr_msgs_CheckForceCondition_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/CheckForceCondition server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsCheckForceConditionServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsCheckForceConditionResponse(Ros1Dsr_msgsCheckForceConditionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsCheckForceConditionRequest;
        using Response = Ros1Dsr_msgsCheckForceConditionResponse;

        Ros1Dsr_msgsCheckForceConditionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_CheckForceCondition_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_CheckForceCondition_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_CheckForceCondition_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_CheckForceCondition_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/CheckMotion client; default policy returns13 from construction. */
    class Ros1Dsr_msgsCheckMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsCheckMotionRequest;
        using Response = Ros1Dsr_msgsCheckMotionResponse;

        Ros1Dsr_msgsCheckMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsCheckMotionClient(Ros1Dsr_msgsCheckMotionClient const&) = delete;
        Ros1Dsr_msgsCheckMotionClient& operator= (Ros1Dsr_msgsCheckMotionClient const&) = delete;
        Ros1Dsr_msgsCheckMotionClient(Ros1Dsr_msgsCheckMotionClient&&) = delete;

        ~Ros1Dsr_msgsCheckMotionClient()
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
            return roswasmc_bounded_1_dsr_msgs_CheckMotion_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/CheckMotion server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsCheckMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsCheckMotionResponse(Ros1Dsr_msgsCheckMotionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsCheckMotionRequest;
        using Response = Ros1Dsr_msgsCheckMotionResponse;

        Ros1Dsr_msgsCheckMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_CheckMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_CheckMotion_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_CheckMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_CheckMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/CheckOrientationCondition1 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsCheckOrientationCondition1Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsCheckOrientationCondition1Request;
        using Response = Ros1Dsr_msgsCheckOrientationCondition1Response;

        Ros1Dsr_msgsCheckOrientationCondition1Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsCheckOrientationCondition1Client(Ros1Dsr_msgsCheckOrientationCondition1Client const&) = delete;
        Ros1Dsr_msgsCheckOrientationCondition1Client& operator= (Ros1Dsr_msgsCheckOrientationCondition1Client const&) = delete;
        Ros1Dsr_msgsCheckOrientationCondition1Client(Ros1Dsr_msgsCheckOrientationCondition1Client&&) = delete;

        ~Ros1Dsr_msgsCheckOrientationCondition1Client()
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
            return roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/CheckOrientationCondition1 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsCheckOrientationCondition1Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsCheckOrientationCondition1Response(Ros1Dsr_msgsCheckOrientationCondition1Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsCheckOrientationCondition1Request;
        using Response = Ros1Dsr_msgsCheckOrientationCondition1Response;

        Ros1Dsr_msgsCheckOrientationCondition1Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/CheckOrientationCondition2 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsCheckOrientationCondition2Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsCheckOrientationCondition2Request;
        using Response = Ros1Dsr_msgsCheckOrientationCondition2Response;

        Ros1Dsr_msgsCheckOrientationCondition2Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsCheckOrientationCondition2Client(Ros1Dsr_msgsCheckOrientationCondition2Client const&) = delete;
        Ros1Dsr_msgsCheckOrientationCondition2Client& operator= (Ros1Dsr_msgsCheckOrientationCondition2Client const&) = delete;
        Ros1Dsr_msgsCheckOrientationCondition2Client(Ros1Dsr_msgsCheckOrientationCondition2Client&&) = delete;

        ~Ros1Dsr_msgsCheckOrientationCondition2Client()
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
            return roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/CheckOrientationCondition2 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsCheckOrientationCondition2Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsCheckOrientationCondition2Response(Ros1Dsr_msgsCheckOrientationCondition2Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsCheckOrientationCondition2Request;
        using Response = Ros1Dsr_msgsCheckOrientationCondition2Response;

        Ros1Dsr_msgsCheckOrientationCondition2Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/CheckPositionCondition client; default policy returns13 from construction. */
    class Ros1Dsr_msgsCheckPositionConditionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsCheckPositionConditionRequest;
        using Response = Ros1Dsr_msgsCheckPositionConditionResponse;

        Ros1Dsr_msgsCheckPositionConditionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsCheckPositionConditionClient(Ros1Dsr_msgsCheckPositionConditionClient const&) = delete;
        Ros1Dsr_msgsCheckPositionConditionClient& operator= (Ros1Dsr_msgsCheckPositionConditionClient const&) = delete;
        Ros1Dsr_msgsCheckPositionConditionClient(Ros1Dsr_msgsCheckPositionConditionClient&&) = delete;

        ~Ros1Dsr_msgsCheckPositionConditionClient()
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
            return roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/CheckPositionCondition server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsCheckPositionConditionServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsCheckPositionConditionResponse(Ros1Dsr_msgsCheckPositionConditionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsCheckPositionConditionRequest;
        using Response = Ros1Dsr_msgsCheckPositionConditionResponse;

        Ros1Dsr_msgsCheckPositionConditionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ConfigCreateModbus client; default policy returns13 from construction. */
    class Ros1Dsr_msgsConfigCreateModbusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsConfigCreateModbusRequest;
        using Response = Ros1Dsr_msgsConfigCreateModbusResponse;

        Ros1Dsr_msgsConfigCreateModbusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsConfigCreateModbusClient(Ros1Dsr_msgsConfigCreateModbusClient const&) = delete;
        Ros1Dsr_msgsConfigCreateModbusClient& operator= (Ros1Dsr_msgsConfigCreateModbusClient const&) = delete;
        Ros1Dsr_msgsConfigCreateModbusClient(Ros1Dsr_msgsConfigCreateModbusClient&&) = delete;

        ~Ros1Dsr_msgsConfigCreateModbusClient()
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
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ConfigCreateModbus server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsConfigCreateModbusServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsConfigCreateModbusResponse(Ros1Dsr_msgsConfigCreateModbusRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsConfigCreateModbusRequest;
        using Response = Ros1Dsr_msgsConfigCreateModbusResponse;

        Ros1Dsr_msgsConfigCreateModbusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ConfigCreateTcp client; default policy returns13 from construction. */
    class Ros1Dsr_msgsConfigCreateTcpClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsConfigCreateTcpRequest;
        using Response = Ros1Dsr_msgsConfigCreateTcpResponse;

        Ros1Dsr_msgsConfigCreateTcpClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsConfigCreateTcpClient(Ros1Dsr_msgsConfigCreateTcpClient const&) = delete;
        Ros1Dsr_msgsConfigCreateTcpClient& operator= (Ros1Dsr_msgsConfigCreateTcpClient const&) = delete;
        Ros1Dsr_msgsConfigCreateTcpClient(Ros1Dsr_msgsConfigCreateTcpClient&&) = delete;

        ~Ros1Dsr_msgsConfigCreateTcpClient()
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
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ConfigCreateTcp server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsConfigCreateTcpServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsConfigCreateTcpResponse(Ros1Dsr_msgsConfigCreateTcpRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsConfigCreateTcpRequest;
        using Response = Ros1Dsr_msgsConfigCreateTcpResponse;

        Ros1Dsr_msgsConfigCreateTcpServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ConfigCreateTool client; default policy returns13 from construction. */
    class Ros1Dsr_msgsConfigCreateToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsConfigCreateToolRequest;
        using Response = Ros1Dsr_msgsConfigCreateToolResponse;

        Ros1Dsr_msgsConfigCreateToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsConfigCreateToolClient(Ros1Dsr_msgsConfigCreateToolClient const&) = delete;
        Ros1Dsr_msgsConfigCreateToolClient& operator= (Ros1Dsr_msgsConfigCreateToolClient const&) = delete;
        Ros1Dsr_msgsConfigCreateToolClient(Ros1Dsr_msgsConfigCreateToolClient&&) = delete;

        ~Ros1Dsr_msgsConfigCreateToolClient()
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
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ConfigCreateTool server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsConfigCreateToolServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsConfigCreateToolResponse(Ros1Dsr_msgsConfigCreateToolRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsConfigCreateToolRequest;
        using Response = Ros1Dsr_msgsConfigCreateToolResponse;

        Ros1Dsr_msgsConfigCreateToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ConfigDeleteModbus client; default policy returns13 from construction. */
    class Ros1Dsr_msgsConfigDeleteModbusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsConfigDeleteModbusRequest;
        using Response = Ros1Dsr_msgsConfigDeleteModbusResponse;

        Ros1Dsr_msgsConfigDeleteModbusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsConfigDeleteModbusClient(Ros1Dsr_msgsConfigDeleteModbusClient const&) = delete;
        Ros1Dsr_msgsConfigDeleteModbusClient& operator= (Ros1Dsr_msgsConfigDeleteModbusClient const&) = delete;
        Ros1Dsr_msgsConfigDeleteModbusClient(Ros1Dsr_msgsConfigDeleteModbusClient&&) = delete;

        ~Ros1Dsr_msgsConfigDeleteModbusClient()
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
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ConfigDeleteModbus server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsConfigDeleteModbusServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsConfigDeleteModbusResponse(Ros1Dsr_msgsConfigDeleteModbusRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsConfigDeleteModbusRequest;
        using Response = Ros1Dsr_msgsConfigDeleteModbusResponse;

        Ros1Dsr_msgsConfigDeleteModbusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ConfigDeleteTcp client; default policy returns13 from construction. */
    class Ros1Dsr_msgsConfigDeleteTcpClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsConfigDeleteTcpRequest;
        using Response = Ros1Dsr_msgsConfigDeleteTcpResponse;

        Ros1Dsr_msgsConfigDeleteTcpClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsConfigDeleteTcpClient(Ros1Dsr_msgsConfigDeleteTcpClient const&) = delete;
        Ros1Dsr_msgsConfigDeleteTcpClient& operator= (Ros1Dsr_msgsConfigDeleteTcpClient const&) = delete;
        Ros1Dsr_msgsConfigDeleteTcpClient(Ros1Dsr_msgsConfigDeleteTcpClient&&) = delete;

        ~Ros1Dsr_msgsConfigDeleteTcpClient()
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
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ConfigDeleteTcp server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsConfigDeleteTcpServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsConfigDeleteTcpResponse(Ros1Dsr_msgsConfigDeleteTcpRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsConfigDeleteTcpRequest;
        using Response = Ros1Dsr_msgsConfigDeleteTcpResponse;

        Ros1Dsr_msgsConfigDeleteTcpServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ConfigDeleteTool client; default policy returns13 from construction. */
    class Ros1Dsr_msgsConfigDeleteToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsConfigDeleteToolRequest;
        using Response = Ros1Dsr_msgsConfigDeleteToolResponse;

        Ros1Dsr_msgsConfigDeleteToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsConfigDeleteToolClient(Ros1Dsr_msgsConfigDeleteToolClient const&) = delete;
        Ros1Dsr_msgsConfigDeleteToolClient& operator= (Ros1Dsr_msgsConfigDeleteToolClient const&) = delete;
        Ros1Dsr_msgsConfigDeleteToolClient(Ros1Dsr_msgsConfigDeleteToolClient&&) = delete;

        ~Ros1Dsr_msgsConfigDeleteToolClient()
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
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ConfigDeleteTool server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsConfigDeleteToolServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsConfigDeleteToolResponse(Ros1Dsr_msgsConfigDeleteToolRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsConfigDeleteToolRequest;
        using Response = Ros1Dsr_msgsConfigDeleteToolResponse;

        Ros1Dsr_msgsConfigDeleteToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ConnectRTControl client; default policy returns13 from construction. */
    class Ros1Dsr_msgsConnectRTControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsConnectRTControlRequest;
        using Response = Ros1Dsr_msgsConnectRTControlResponse;

        Ros1Dsr_msgsConnectRTControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsConnectRTControlClient(Ros1Dsr_msgsConnectRTControlClient const&) = delete;
        Ros1Dsr_msgsConnectRTControlClient& operator= (Ros1Dsr_msgsConnectRTControlClient const&) = delete;
        Ros1Dsr_msgsConnectRTControlClient(Ros1Dsr_msgsConnectRTControlClient&&) = delete;

        ~Ros1Dsr_msgsConnectRTControlClient()
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
            return roswasmc_bounded_1_dsr_msgs_ConnectRTControl_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ConnectRTControl server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsConnectRTControlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsConnectRTControlResponse(Ros1Dsr_msgsConnectRTControlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsConnectRTControlRequest;
        using Response = Ros1Dsr_msgsConnectRTControlResponse;

        Ros1Dsr_msgsConnectRTControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ConnectRTControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ConnectRTControl_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ConnectRTControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ConnectRTControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/CoordTransform client; default policy returns13 from construction. */
    class Ros1Dsr_msgsCoordTransformClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsCoordTransformRequest;
        using Response = Ros1Dsr_msgsCoordTransformResponse;

        Ros1Dsr_msgsCoordTransformClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsCoordTransformClient(Ros1Dsr_msgsCoordTransformClient const&) = delete;
        Ros1Dsr_msgsCoordTransformClient& operator= (Ros1Dsr_msgsCoordTransformClient const&) = delete;
        Ros1Dsr_msgsCoordTransformClient(Ros1Dsr_msgsCoordTransformClient&&) = delete;

        ~Ros1Dsr_msgsCoordTransformClient()
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
            return roswasmc_bounded_1_dsr_msgs_CoordTransform_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/CoordTransform server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsCoordTransformServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsCoordTransformResponse(Ros1Dsr_msgsCoordTransformRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsCoordTransformRequest;
        using Response = Ros1Dsr_msgsCoordTransformResponse;

        Ros1Dsr_msgsCoordTransformServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_CoordTransform_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_CoordTransform_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_CoordTransform_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_CoordTransform_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/DisableAlterMotion client; default policy returns13 from construction. */
    class Ros1Dsr_msgsDisableAlterMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsDisableAlterMotionRequest;
        using Response = Ros1Dsr_msgsDisableAlterMotionResponse;

        Ros1Dsr_msgsDisableAlterMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsDisableAlterMotionClient(Ros1Dsr_msgsDisableAlterMotionClient const&) = delete;
        Ros1Dsr_msgsDisableAlterMotionClient& operator= (Ros1Dsr_msgsDisableAlterMotionClient const&) = delete;
        Ros1Dsr_msgsDisableAlterMotionClient(Ros1Dsr_msgsDisableAlterMotionClient&&) = delete;

        ~Ros1Dsr_msgsDisableAlterMotionClient()
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
            return roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/DisableAlterMotion server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsDisableAlterMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsDisableAlterMotionResponse(Ros1Dsr_msgsDisableAlterMotionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsDisableAlterMotionRequest;
        using Response = Ros1Dsr_msgsDisableAlterMotionResponse;

        Ros1Dsr_msgsDisableAlterMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/DisconnectRTControl client; default policy returns13 from construction. */
    class Ros1Dsr_msgsDisconnectRTControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsDisconnectRTControlRequest;
        using Response = Ros1Dsr_msgsDisconnectRTControlResponse;

        Ros1Dsr_msgsDisconnectRTControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsDisconnectRTControlClient(Ros1Dsr_msgsDisconnectRTControlClient const&) = delete;
        Ros1Dsr_msgsDisconnectRTControlClient& operator= (Ros1Dsr_msgsDisconnectRTControlClient const&) = delete;
        Ros1Dsr_msgsDisconnectRTControlClient(Ros1Dsr_msgsDisconnectRTControlClient&&) = delete;

        ~Ros1Dsr_msgsDisconnectRTControlClient()
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
            return roswasmc_bounded_1_dsr_msgs_DisconnectRTControl_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/DisconnectRTControl server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsDisconnectRTControlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsDisconnectRTControlResponse(Ros1Dsr_msgsDisconnectRTControlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsDisconnectRTControlRequest;
        using Response = Ros1Dsr_msgsDisconnectRTControlResponse;

        Ros1Dsr_msgsDisconnectRTControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_DisconnectRTControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_DisconnectRTControl_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_DisconnectRTControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_DisconnectRTControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/DrlPause client; default policy returns13 from construction. */
    class Ros1Dsr_msgsDrlPauseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsDrlPauseRequest;
        using Response = Ros1Dsr_msgsDrlPauseResponse;

        Ros1Dsr_msgsDrlPauseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsDrlPauseClient(Ros1Dsr_msgsDrlPauseClient const&) = delete;
        Ros1Dsr_msgsDrlPauseClient& operator= (Ros1Dsr_msgsDrlPauseClient const&) = delete;
        Ros1Dsr_msgsDrlPauseClient(Ros1Dsr_msgsDrlPauseClient&&) = delete;

        ~Ros1Dsr_msgsDrlPauseClient()
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
            return roswasmc_bounded_1_dsr_msgs_DrlPause_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/DrlPause server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsDrlPauseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsDrlPauseResponse(Ros1Dsr_msgsDrlPauseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsDrlPauseRequest;
        using Response = Ros1Dsr_msgsDrlPauseResponse;

        Ros1Dsr_msgsDrlPauseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_DrlPause_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_DrlPause_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_DrlPause_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_DrlPause_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/DrlResume client; default policy returns13 from construction. */
    class Ros1Dsr_msgsDrlResumeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsDrlResumeRequest;
        using Response = Ros1Dsr_msgsDrlResumeResponse;

        Ros1Dsr_msgsDrlResumeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsDrlResumeClient(Ros1Dsr_msgsDrlResumeClient const&) = delete;
        Ros1Dsr_msgsDrlResumeClient& operator= (Ros1Dsr_msgsDrlResumeClient const&) = delete;
        Ros1Dsr_msgsDrlResumeClient(Ros1Dsr_msgsDrlResumeClient&&) = delete;

        ~Ros1Dsr_msgsDrlResumeClient()
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
            return roswasmc_bounded_1_dsr_msgs_DrlResume_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/DrlResume server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsDrlResumeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsDrlResumeResponse(Ros1Dsr_msgsDrlResumeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsDrlResumeRequest;
        using Response = Ros1Dsr_msgsDrlResumeResponse;

        Ros1Dsr_msgsDrlResumeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_DrlResume_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_DrlResume_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_DrlResume_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_DrlResume_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/DrlStart client; default policy returns13 from construction. */
    class Ros1Dsr_msgsDrlStartClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsDrlStartRequest;
        using Response = Ros1Dsr_msgsDrlStartResponse;

        Ros1Dsr_msgsDrlStartClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsDrlStartClient(Ros1Dsr_msgsDrlStartClient const&) = delete;
        Ros1Dsr_msgsDrlStartClient& operator= (Ros1Dsr_msgsDrlStartClient const&) = delete;
        Ros1Dsr_msgsDrlStartClient(Ros1Dsr_msgsDrlStartClient&&) = delete;

        ~Ros1Dsr_msgsDrlStartClient()
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
            return roswasmc_bounded_1_dsr_msgs_DrlStart_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/DrlStart server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsDrlStartServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsDrlStartResponse(Ros1Dsr_msgsDrlStartRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsDrlStartRequest;
        using Response = Ros1Dsr_msgsDrlStartResponse;

        Ros1Dsr_msgsDrlStartServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_DrlStart_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_DrlStart_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_DrlStart_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_DrlStart_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/DrlStop client; default policy returns13 from construction. */
    class Ros1Dsr_msgsDrlStopClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsDrlStopRequest;
        using Response = Ros1Dsr_msgsDrlStopResponse;

        Ros1Dsr_msgsDrlStopClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsDrlStopClient(Ros1Dsr_msgsDrlStopClient const&) = delete;
        Ros1Dsr_msgsDrlStopClient& operator= (Ros1Dsr_msgsDrlStopClient const&) = delete;
        Ros1Dsr_msgsDrlStopClient(Ros1Dsr_msgsDrlStopClient&&) = delete;

        ~Ros1Dsr_msgsDrlStopClient()
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
            return roswasmc_bounded_1_dsr_msgs_DrlStop_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/DrlStop server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsDrlStopServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsDrlStopResponse(Ros1Dsr_msgsDrlStopRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsDrlStopRequest;
        using Response = Ros1Dsr_msgsDrlStopResponse;

        Ros1Dsr_msgsDrlStopServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_DrlStop_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_DrlStop_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_DrlStop_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_DrlStop_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/EnableAlterMotion client; default policy returns13 from construction. */
    class Ros1Dsr_msgsEnableAlterMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsEnableAlterMotionRequest;
        using Response = Ros1Dsr_msgsEnableAlterMotionResponse;

        Ros1Dsr_msgsEnableAlterMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsEnableAlterMotionClient(Ros1Dsr_msgsEnableAlterMotionClient const&) = delete;
        Ros1Dsr_msgsEnableAlterMotionClient& operator= (Ros1Dsr_msgsEnableAlterMotionClient const&) = delete;
        Ros1Dsr_msgsEnableAlterMotionClient(Ros1Dsr_msgsEnableAlterMotionClient&&) = delete;

        ~Ros1Dsr_msgsEnableAlterMotionClient()
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
            return roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/EnableAlterMotion server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsEnableAlterMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsEnableAlterMotionResponse(Ros1Dsr_msgsEnableAlterMotionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsEnableAlterMotionRequest;
        using Response = Ros1Dsr_msgsEnableAlterMotionResponse;

        Ros1Dsr_msgsEnableAlterMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/Fkin client; default policy returns13 from construction. */
    class Ros1Dsr_msgsFkinClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsFkinRequest;
        using Response = Ros1Dsr_msgsFkinResponse;

        Ros1Dsr_msgsFkinClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsFkinClient(Ros1Dsr_msgsFkinClient const&) = delete;
        Ros1Dsr_msgsFkinClient& operator= (Ros1Dsr_msgsFkinClient const&) = delete;
        Ros1Dsr_msgsFkinClient(Ros1Dsr_msgsFkinClient&&) = delete;

        ~Ros1Dsr_msgsFkinClient()
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
            return roswasmc_bounded_1_dsr_msgs_Fkin_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/Fkin server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsFkinServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsFkinResponse(Ros1Dsr_msgsFkinRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsFkinRequest;
        using Response = Ros1Dsr_msgsFkinResponse;

        Ros1Dsr_msgsFkinServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_Fkin_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_Fkin_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_Fkin_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_Fkin_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetControlMode client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetControlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetControlModeRequest;
        using Response = Ros1Dsr_msgsGetControlModeResponse;

        Ros1Dsr_msgsGetControlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetControlModeClient(Ros1Dsr_msgsGetControlModeClient const&) = delete;
        Ros1Dsr_msgsGetControlModeClient& operator= (Ros1Dsr_msgsGetControlModeClient const&) = delete;
        Ros1Dsr_msgsGetControlModeClient(Ros1Dsr_msgsGetControlModeClient&&) = delete;

        ~Ros1Dsr_msgsGetControlModeClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetControlMode_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetControlMode server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetControlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetControlModeResponse(Ros1Dsr_msgsGetControlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetControlModeRequest;
        using Response = Ros1Dsr_msgsGetControlModeResponse;

        Ros1Dsr_msgsGetControlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetControlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetControlMode_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetControlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetControlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetControlSpace client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetControlSpaceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetControlSpaceRequest;
        using Response = Ros1Dsr_msgsGetControlSpaceResponse;

        Ros1Dsr_msgsGetControlSpaceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetControlSpaceClient(Ros1Dsr_msgsGetControlSpaceClient const&) = delete;
        Ros1Dsr_msgsGetControlSpaceClient& operator= (Ros1Dsr_msgsGetControlSpaceClient const&) = delete;
        Ros1Dsr_msgsGetControlSpaceClient(Ros1Dsr_msgsGetControlSpaceClient&&) = delete;

        ~Ros1Dsr_msgsGetControlSpaceClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetControlSpace_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetControlSpace server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetControlSpaceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetControlSpaceResponse(Ros1Dsr_msgsGetControlSpaceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetControlSpaceRequest;
        using Response = Ros1Dsr_msgsGetControlSpaceResponse;

        Ros1Dsr_msgsGetControlSpaceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetControlSpace_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetControlSpace_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetControlSpace_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetControlSpace_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCtrlBoxAnalogInput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCtrlBoxAnalogInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest;
        using Response = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse;

        Ros1Dsr_msgsGetCtrlBoxAnalogInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCtrlBoxAnalogInputClient(Ros1Dsr_msgsGetCtrlBoxAnalogInputClient const&) = delete;
        Ros1Dsr_msgsGetCtrlBoxAnalogInputClient& operator= (Ros1Dsr_msgsGetCtrlBoxAnalogInputClient const&) = delete;
        Ros1Dsr_msgsGetCtrlBoxAnalogInputClient(Ros1Dsr_msgsGetCtrlBoxAnalogInputClient&&) = delete;

        ~Ros1Dsr_msgsGetCtrlBoxAnalogInputClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCtrlBoxAnalogInput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCtrlBoxAnalogInputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse(Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest;
        using Response = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse;

        Ros1Dsr_msgsGetCtrlBoxAnalogInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCtrlBoxDigitalInput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCtrlBoxDigitalInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest;
        using Response = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse;

        Ros1Dsr_msgsGetCtrlBoxDigitalInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCtrlBoxDigitalInputClient(Ros1Dsr_msgsGetCtrlBoxDigitalInputClient const&) = delete;
        Ros1Dsr_msgsGetCtrlBoxDigitalInputClient& operator= (Ros1Dsr_msgsGetCtrlBoxDigitalInputClient const&) = delete;
        Ros1Dsr_msgsGetCtrlBoxDigitalInputClient(Ros1Dsr_msgsGetCtrlBoxDigitalInputClient&&) = delete;

        ~Ros1Dsr_msgsGetCtrlBoxDigitalInputClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCtrlBoxDigitalInput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCtrlBoxDigitalInputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest;
        using Response = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse;

        Ros1Dsr_msgsGetCtrlBoxDigitalInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCtrlBoxDigitalOutput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest;
        using Response = Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse;

        Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient(Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient const&) = delete;
        Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient& operator= (Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient const&) = delete;
        Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient(Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient&&) = delete;

        ~Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCtrlBoxDigitalOutput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCtrlBoxDigitalOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse(Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest;
        using Response = Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse;

        Ros1Dsr_msgsGetCtrlBoxDigitalOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentPose client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentPoseRequest;
        using Response = Ros1Dsr_msgsGetCurrentPoseResponse;

        Ros1Dsr_msgsGetCurrentPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentPoseClient(Ros1Dsr_msgsGetCurrentPoseClient const&) = delete;
        Ros1Dsr_msgsGetCurrentPoseClient& operator= (Ros1Dsr_msgsGetCurrentPoseClient const&) = delete;
        Ros1Dsr_msgsGetCurrentPoseClient(Ros1Dsr_msgsGetCurrentPoseClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentPoseClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPose_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentPose server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentPoseResponse(Ros1Dsr_msgsGetCurrentPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentPoseRequest;
        using Response = Ros1Dsr_msgsGetCurrentPoseResponse;

        Ros1Dsr_msgsGetCurrentPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPose_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentPosj client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentPosjClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentPosjRequest;
        using Response = Ros1Dsr_msgsGetCurrentPosjResponse;

        Ros1Dsr_msgsGetCurrentPosjClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentPosjClient(Ros1Dsr_msgsGetCurrentPosjClient const&) = delete;
        Ros1Dsr_msgsGetCurrentPosjClient& operator= (Ros1Dsr_msgsGetCurrentPosjClient const&) = delete;
        Ros1Dsr_msgsGetCurrentPosjClient(Ros1Dsr_msgsGetCurrentPosjClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentPosjClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentPosj server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentPosjServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentPosjResponse(Ros1Dsr_msgsGetCurrentPosjRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentPosjRequest;
        using Response = Ros1Dsr_msgsGetCurrentPosjResponse;

        Ros1Dsr_msgsGetCurrentPosjServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentPosx client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentPosxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentPosxRequest;
        using Response = Ros1Dsr_msgsGetCurrentPosxResponse;

        Ros1Dsr_msgsGetCurrentPosxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentPosxClient(Ros1Dsr_msgsGetCurrentPosxClient const&) = delete;
        Ros1Dsr_msgsGetCurrentPosxClient& operator= (Ros1Dsr_msgsGetCurrentPosxClient const&) = delete;
        Ros1Dsr_msgsGetCurrentPosxClient(Ros1Dsr_msgsGetCurrentPosxClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentPosxClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentPosx server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentPosxServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentPosxResponse(Ros1Dsr_msgsGetCurrentPosxRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentPosxRequest;
        using Response = Ros1Dsr_msgsGetCurrentPosxResponse;

        Ros1Dsr_msgsGetCurrentPosxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentRotm client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentRotmClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentRotmRequest;
        using Response = Ros1Dsr_msgsGetCurrentRotmResponse;

        Ros1Dsr_msgsGetCurrentRotmClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentRotmClient(Ros1Dsr_msgsGetCurrentRotmClient const&) = delete;
        Ros1Dsr_msgsGetCurrentRotmClient& operator= (Ros1Dsr_msgsGetCurrentRotmClient const&) = delete;
        Ros1Dsr_msgsGetCurrentRotmClient(Ros1Dsr_msgsGetCurrentRotmClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentRotmClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentRotm server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentRotmServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentRotmResponse(Ros1Dsr_msgsGetCurrentRotmRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentRotmRequest;
        using Response = Ros1Dsr_msgsGetCurrentRotmResponse;

        Ros1Dsr_msgsGetCurrentRotmServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentSolutionSpace client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentSolutionSpaceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentSolutionSpaceRequest;
        using Response = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse;

        Ros1Dsr_msgsGetCurrentSolutionSpaceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentSolutionSpaceClient(Ros1Dsr_msgsGetCurrentSolutionSpaceClient const&) = delete;
        Ros1Dsr_msgsGetCurrentSolutionSpaceClient& operator= (Ros1Dsr_msgsGetCurrentSolutionSpaceClient const&) = delete;
        Ros1Dsr_msgsGetCurrentSolutionSpaceClient(Ros1Dsr_msgsGetCurrentSolutionSpaceClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentSolutionSpaceClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentSolutionSpace server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentSolutionSpaceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(Ros1Dsr_msgsGetCurrentSolutionSpaceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentSolutionSpaceRequest;
        using Response = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse;

        Ros1Dsr_msgsGetCurrentSolutionSpaceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentTcp client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentTcpClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentTcpRequest;
        using Response = Ros1Dsr_msgsGetCurrentTcpResponse;

        Ros1Dsr_msgsGetCurrentTcpClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentTcpClient(Ros1Dsr_msgsGetCurrentTcpClient const&) = delete;
        Ros1Dsr_msgsGetCurrentTcpClient& operator= (Ros1Dsr_msgsGetCurrentTcpClient const&) = delete;
        Ros1Dsr_msgsGetCurrentTcpClient(Ros1Dsr_msgsGetCurrentTcpClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentTcpClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentTcp server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentTcpServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentTcpResponse(Ros1Dsr_msgsGetCurrentTcpRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentTcpRequest;
        using Response = Ros1Dsr_msgsGetCurrentTcpResponse;

        Ros1Dsr_msgsGetCurrentTcpServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentTool client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentToolRequest;
        using Response = Ros1Dsr_msgsGetCurrentToolResponse;

        Ros1Dsr_msgsGetCurrentToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentToolClient(Ros1Dsr_msgsGetCurrentToolClient const&) = delete;
        Ros1Dsr_msgsGetCurrentToolClient& operator= (Ros1Dsr_msgsGetCurrentToolClient const&) = delete;
        Ros1Dsr_msgsGetCurrentToolClient(Ros1Dsr_msgsGetCurrentToolClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentToolClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentTool_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentTool server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentToolServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentToolResponse(Ros1Dsr_msgsGetCurrentToolRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentToolRequest;
        using Response = Ros1Dsr_msgsGetCurrentToolResponse;

        Ros1Dsr_msgsGetCurrentToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentTool_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentTool_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentTool_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentToolFlangePosx client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentToolFlangePosxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentToolFlangePosxRequest;
        using Response = Ros1Dsr_msgsGetCurrentToolFlangePosxResponse;

        Ros1Dsr_msgsGetCurrentToolFlangePosxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentToolFlangePosxClient(Ros1Dsr_msgsGetCurrentToolFlangePosxClient const&) = delete;
        Ros1Dsr_msgsGetCurrentToolFlangePosxClient& operator= (Ros1Dsr_msgsGetCurrentToolFlangePosxClient const&) = delete;
        Ros1Dsr_msgsGetCurrentToolFlangePosxClient(Ros1Dsr_msgsGetCurrentToolFlangePosxClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentToolFlangePosxClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentToolFlangePosx server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentToolFlangePosxServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentToolFlangePosxResponse(Ros1Dsr_msgsGetCurrentToolFlangePosxRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentToolFlangePosxRequest;
        using Response = Ros1Dsr_msgsGetCurrentToolFlangePosxResponse;

        Ros1Dsr_msgsGetCurrentToolFlangePosxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentVelj client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentVeljClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentVeljRequest;
        using Response = Ros1Dsr_msgsGetCurrentVeljResponse;

        Ros1Dsr_msgsGetCurrentVeljClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentVeljClient(Ros1Dsr_msgsGetCurrentVeljClient const&) = delete;
        Ros1Dsr_msgsGetCurrentVeljClient& operator= (Ros1Dsr_msgsGetCurrentVeljClient const&) = delete;
        Ros1Dsr_msgsGetCurrentVeljClient(Ros1Dsr_msgsGetCurrentVeljClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentVeljClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentVelj server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentVeljServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentVeljResponse(Ros1Dsr_msgsGetCurrentVeljRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentVeljRequest;
        using Response = Ros1Dsr_msgsGetCurrentVeljResponse;

        Ros1Dsr_msgsGetCurrentVeljServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetCurrentVelx client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetCurrentVelxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetCurrentVelxRequest;
        using Response = Ros1Dsr_msgsGetCurrentVelxResponse;

        Ros1Dsr_msgsGetCurrentVelxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetCurrentVelxClient(Ros1Dsr_msgsGetCurrentVelxClient const&) = delete;
        Ros1Dsr_msgsGetCurrentVelxClient& operator= (Ros1Dsr_msgsGetCurrentVelxClient const&) = delete;
        Ros1Dsr_msgsGetCurrentVelxClient(Ros1Dsr_msgsGetCurrentVelxClient&&) = delete;

        ~Ros1Dsr_msgsGetCurrentVelxClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetCurrentVelx server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetCurrentVelxServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetCurrentVelxResponse(Ros1Dsr_msgsGetCurrentVelxRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetCurrentVelxRequest;
        using Response = Ros1Dsr_msgsGetCurrentVelxResponse;

        Ros1Dsr_msgsGetCurrentVelxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetDesiredPosj client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetDesiredPosjClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetDesiredPosjRequest;
        using Response = Ros1Dsr_msgsGetDesiredPosjResponse;

        Ros1Dsr_msgsGetDesiredPosjClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetDesiredPosjClient(Ros1Dsr_msgsGetDesiredPosjClient const&) = delete;
        Ros1Dsr_msgsGetDesiredPosjClient& operator= (Ros1Dsr_msgsGetDesiredPosjClient const&) = delete;
        Ros1Dsr_msgsGetDesiredPosjClient(Ros1Dsr_msgsGetDesiredPosjClient&&) = delete;

        ~Ros1Dsr_msgsGetDesiredPosjClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetDesiredPosj server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetDesiredPosjServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetDesiredPosjResponse(Ros1Dsr_msgsGetDesiredPosjRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetDesiredPosjRequest;
        using Response = Ros1Dsr_msgsGetDesiredPosjResponse;

        Ros1Dsr_msgsGetDesiredPosjServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetDesiredPosx client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetDesiredPosxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetDesiredPosxRequest;
        using Response = Ros1Dsr_msgsGetDesiredPosxResponse;

        Ros1Dsr_msgsGetDesiredPosxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetDesiredPosxClient(Ros1Dsr_msgsGetDesiredPosxClient const&) = delete;
        Ros1Dsr_msgsGetDesiredPosxClient& operator= (Ros1Dsr_msgsGetDesiredPosxClient const&) = delete;
        Ros1Dsr_msgsGetDesiredPosxClient(Ros1Dsr_msgsGetDesiredPosxClient&&) = delete;

        ~Ros1Dsr_msgsGetDesiredPosxClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetDesiredPosx server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetDesiredPosxServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetDesiredPosxResponse(Ros1Dsr_msgsGetDesiredPosxRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetDesiredPosxRequest;
        using Response = Ros1Dsr_msgsGetDesiredPosxResponse;

        Ros1Dsr_msgsGetDesiredPosxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetDesiredVelj client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetDesiredVeljClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetDesiredVeljRequest;
        using Response = Ros1Dsr_msgsGetDesiredVeljResponse;

        Ros1Dsr_msgsGetDesiredVeljClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetDesiredVeljClient(Ros1Dsr_msgsGetDesiredVeljClient const&) = delete;
        Ros1Dsr_msgsGetDesiredVeljClient& operator= (Ros1Dsr_msgsGetDesiredVeljClient const&) = delete;
        Ros1Dsr_msgsGetDesiredVeljClient(Ros1Dsr_msgsGetDesiredVeljClient&&) = delete;

        ~Ros1Dsr_msgsGetDesiredVeljClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetDesiredVelj server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetDesiredVeljServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetDesiredVeljResponse(Ros1Dsr_msgsGetDesiredVeljRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetDesiredVeljRequest;
        using Response = Ros1Dsr_msgsGetDesiredVeljResponse;

        Ros1Dsr_msgsGetDesiredVeljServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetDesiredVelx client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetDesiredVelxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetDesiredVelxRequest;
        using Response = Ros1Dsr_msgsGetDesiredVelxResponse;

        Ros1Dsr_msgsGetDesiredVelxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetDesiredVelxClient(Ros1Dsr_msgsGetDesiredVelxClient const&) = delete;
        Ros1Dsr_msgsGetDesiredVelxClient& operator= (Ros1Dsr_msgsGetDesiredVelxClient const&) = delete;
        Ros1Dsr_msgsGetDesiredVelxClient(Ros1Dsr_msgsGetDesiredVelxClient&&) = delete;

        ~Ros1Dsr_msgsGetDesiredVelxClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetDesiredVelx server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetDesiredVelxServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetDesiredVelxResponse(Ros1Dsr_msgsGetDesiredVelxRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetDesiredVelxRequest;
        using Response = Ros1Dsr_msgsGetDesiredVelxResponse;

        Ros1Dsr_msgsGetDesiredVelxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetDrlState client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetDrlStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetDrlStateRequest;
        using Response = Ros1Dsr_msgsGetDrlStateResponse;

        Ros1Dsr_msgsGetDrlStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetDrlStateClient(Ros1Dsr_msgsGetDrlStateClient const&) = delete;
        Ros1Dsr_msgsGetDrlStateClient& operator= (Ros1Dsr_msgsGetDrlStateClient const&) = delete;
        Ros1Dsr_msgsGetDrlStateClient(Ros1Dsr_msgsGetDrlStateClient&&) = delete;

        ~Ros1Dsr_msgsGetDrlStateClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetDrlState_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetDrlState server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetDrlStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetDrlStateResponse(Ros1Dsr_msgsGetDrlStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetDrlStateRequest;
        using Response = Ros1Dsr_msgsGetDrlStateResponse;

        Ros1Dsr_msgsGetDrlStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetDrlState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetDrlState_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetDrlState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetDrlState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetExternalTorque client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetExternalTorqueClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetExternalTorqueRequest;
        using Response = Ros1Dsr_msgsGetExternalTorqueResponse;

        Ros1Dsr_msgsGetExternalTorqueClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetExternalTorqueClient(Ros1Dsr_msgsGetExternalTorqueClient const&) = delete;
        Ros1Dsr_msgsGetExternalTorqueClient& operator= (Ros1Dsr_msgsGetExternalTorqueClient const&) = delete;
        Ros1Dsr_msgsGetExternalTorqueClient(Ros1Dsr_msgsGetExternalTorqueClient&&) = delete;

        ~Ros1Dsr_msgsGetExternalTorqueClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetExternalTorque_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetExternalTorque server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetExternalTorqueServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetExternalTorqueResponse(Ros1Dsr_msgsGetExternalTorqueRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetExternalTorqueRequest;
        using Response = Ros1Dsr_msgsGetExternalTorqueResponse;

        Ros1Dsr_msgsGetExternalTorqueServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetExternalTorque_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetExternalTorque_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetExternalTorque_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetExternalTorque_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetJointTorque client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetJointTorqueClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetJointTorqueRequest;
        using Response = Ros1Dsr_msgsGetJointTorqueResponse;

        Ros1Dsr_msgsGetJointTorqueClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetJointTorqueClient(Ros1Dsr_msgsGetJointTorqueClient const&) = delete;
        Ros1Dsr_msgsGetJointTorqueClient& operator= (Ros1Dsr_msgsGetJointTorqueClient const&) = delete;
        Ros1Dsr_msgsGetJointTorqueClient(Ros1Dsr_msgsGetJointTorqueClient&&) = delete;

        ~Ros1Dsr_msgsGetJointTorqueClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetJointTorque_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetJointTorque server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetJointTorqueServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetJointTorqueResponse(Ros1Dsr_msgsGetJointTorqueRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetJointTorqueRequest;
        using Response = Ros1Dsr_msgsGetJointTorqueResponse;

        Ros1Dsr_msgsGetJointTorqueServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetJointTorque_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetJointTorque_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetJointTorque_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetJointTorque_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetLastAlarm client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetLastAlarmClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetLastAlarmRequest;
        using Response = Ros1Dsr_msgsGetLastAlarmResponse;

        Ros1Dsr_msgsGetLastAlarmClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetLastAlarmClient(Ros1Dsr_msgsGetLastAlarmClient const&) = delete;
        Ros1Dsr_msgsGetLastAlarmClient& operator= (Ros1Dsr_msgsGetLastAlarmClient const&) = delete;
        Ros1Dsr_msgsGetLastAlarmClient(Ros1Dsr_msgsGetLastAlarmClient&&) = delete;

        ~Ros1Dsr_msgsGetLastAlarmClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetLastAlarm_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetLastAlarm server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetLastAlarmServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetLastAlarmResponse(Ros1Dsr_msgsGetLastAlarmRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetLastAlarmRequest;
        using Response = Ros1Dsr_msgsGetLastAlarmResponse;

        Ros1Dsr_msgsGetLastAlarmServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetLastAlarm_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetLastAlarm_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetLastAlarm_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetLastAlarm_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetModbusInput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetModbusInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetModbusInputRequest;
        using Response = Ros1Dsr_msgsGetModbusInputResponse;

        Ros1Dsr_msgsGetModbusInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetModbusInputClient(Ros1Dsr_msgsGetModbusInputClient const&) = delete;
        Ros1Dsr_msgsGetModbusInputClient& operator= (Ros1Dsr_msgsGetModbusInputClient const&) = delete;
        Ros1Dsr_msgsGetModbusInputClient(Ros1Dsr_msgsGetModbusInputClient&&) = delete;

        ~Ros1Dsr_msgsGetModbusInputClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetModbusInput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetModbusInput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetModbusInputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetModbusInputResponse(Ros1Dsr_msgsGetModbusInputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetModbusInputRequest;
        using Response = Ros1Dsr_msgsGetModbusInputResponse;

        Ros1Dsr_msgsGetModbusInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetModbusInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetModbusInput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetModbusInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetModbusInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetOrientationError client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetOrientationErrorClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetOrientationErrorRequest;
        using Response = Ros1Dsr_msgsGetOrientationErrorResponse;

        Ros1Dsr_msgsGetOrientationErrorClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetOrientationErrorClient(Ros1Dsr_msgsGetOrientationErrorClient const&) = delete;
        Ros1Dsr_msgsGetOrientationErrorClient& operator= (Ros1Dsr_msgsGetOrientationErrorClient const&) = delete;
        Ros1Dsr_msgsGetOrientationErrorClient(Ros1Dsr_msgsGetOrientationErrorClient&&) = delete;

        ~Ros1Dsr_msgsGetOrientationErrorClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetOrientationError_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetOrientationError server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetOrientationErrorServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetOrientationErrorResponse(Ros1Dsr_msgsGetOrientationErrorRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetOrientationErrorRequest;
        using Response = Ros1Dsr_msgsGetOrientationErrorResponse;

        Ros1Dsr_msgsGetOrientationErrorServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetOrientationError_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetOrientationError_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetOrientationError_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetOrientationError_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetRTControlInputDataList client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetRTControlInputDataListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetRTControlInputDataListRequest;
        using Response = Ros1Dsr_msgsGetRTControlInputDataListResponse;

        Ros1Dsr_msgsGetRTControlInputDataListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetRTControlInputDataListClient(Ros1Dsr_msgsGetRTControlInputDataListClient const&) = delete;
        Ros1Dsr_msgsGetRTControlInputDataListClient& operator= (Ros1Dsr_msgsGetRTControlInputDataListClient const&) = delete;
        Ros1Dsr_msgsGetRTControlInputDataListClient(Ros1Dsr_msgsGetRTControlInputDataListClient&&) = delete;

        ~Ros1Dsr_msgsGetRTControlInputDataListClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataList_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetRTControlInputDataList server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetRTControlInputDataListServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetRTControlInputDataListResponse(Ros1Dsr_msgsGetRTControlInputDataListRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetRTControlInputDataListRequest;
        using Response = Ros1Dsr_msgsGetRTControlInputDataListResponse;

        Ros1Dsr_msgsGetRTControlInputDataListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataList_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetRTControlInputVersionList client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetRTControlInputVersionListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetRTControlInputVersionListRequest;
        using Response = Ros1Dsr_msgsGetRTControlInputVersionListResponse;

        Ros1Dsr_msgsGetRTControlInputVersionListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetRTControlInputVersionListClient(Ros1Dsr_msgsGetRTControlInputVersionListClient const&) = delete;
        Ros1Dsr_msgsGetRTControlInputVersionListClient& operator= (Ros1Dsr_msgsGetRTControlInputVersionListClient const&) = delete;
        Ros1Dsr_msgsGetRTControlInputVersionListClient(Ros1Dsr_msgsGetRTControlInputVersionListClient&&) = delete;

        ~Ros1Dsr_msgsGetRTControlInputVersionListClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionList_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetRTControlInputVersionList server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetRTControlInputVersionListServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetRTControlInputVersionListResponse(Ros1Dsr_msgsGetRTControlInputVersionListRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetRTControlInputVersionListRequest;
        using Response = Ros1Dsr_msgsGetRTControlInputVersionListResponse;

        Ros1Dsr_msgsGetRTControlInputVersionListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionList_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetRTControlOutputDataList client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetRTControlOutputDataListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetRTControlOutputDataListRequest;
        using Response = Ros1Dsr_msgsGetRTControlOutputDataListResponse;

        Ros1Dsr_msgsGetRTControlOutputDataListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetRTControlOutputDataListClient(Ros1Dsr_msgsGetRTControlOutputDataListClient const&) = delete;
        Ros1Dsr_msgsGetRTControlOutputDataListClient& operator= (Ros1Dsr_msgsGetRTControlOutputDataListClient const&) = delete;
        Ros1Dsr_msgsGetRTControlOutputDataListClient(Ros1Dsr_msgsGetRTControlOutputDataListClient&&) = delete;

        ~Ros1Dsr_msgsGetRTControlOutputDataListClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataList_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetRTControlOutputDataList server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetRTControlOutputDataListServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetRTControlOutputDataListResponse(Ros1Dsr_msgsGetRTControlOutputDataListRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetRTControlOutputDataListRequest;
        using Response = Ros1Dsr_msgsGetRTControlOutputDataListResponse;

        Ros1Dsr_msgsGetRTControlOutputDataListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataList_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetRTControlOutputVersionList client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetRTControlOutputVersionListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetRTControlOutputVersionListRequest;
        using Response = Ros1Dsr_msgsGetRTControlOutputVersionListResponse;

        Ros1Dsr_msgsGetRTControlOutputVersionListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetRTControlOutputVersionListClient(Ros1Dsr_msgsGetRTControlOutputVersionListClient const&) = delete;
        Ros1Dsr_msgsGetRTControlOutputVersionListClient& operator= (Ros1Dsr_msgsGetRTControlOutputVersionListClient const&) = delete;
        Ros1Dsr_msgsGetRTControlOutputVersionListClient(Ros1Dsr_msgsGetRTControlOutputVersionListClient&&) = delete;

        ~Ros1Dsr_msgsGetRTControlOutputVersionListClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionList_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetRTControlOutputVersionList server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetRTControlOutputVersionListServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetRTControlOutputVersionListResponse(Ros1Dsr_msgsGetRTControlOutputVersionListRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetRTControlOutputVersionListRequest;
        using Response = Ros1Dsr_msgsGetRTControlOutputVersionListResponse;

        Ros1Dsr_msgsGetRTControlOutputVersionListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionList_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetRobotMode client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetRobotModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetRobotModeRequest;
        using Response = Ros1Dsr_msgsGetRobotModeResponse;

        Ros1Dsr_msgsGetRobotModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetRobotModeClient(Ros1Dsr_msgsGetRobotModeClient const&) = delete;
        Ros1Dsr_msgsGetRobotModeClient& operator= (Ros1Dsr_msgsGetRobotModeClient const&) = delete;
        Ros1Dsr_msgsGetRobotModeClient(Ros1Dsr_msgsGetRobotModeClient&&) = delete;

        ~Ros1Dsr_msgsGetRobotModeClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetRobotMode_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetRobotMode server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetRobotModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetRobotModeResponse(Ros1Dsr_msgsGetRobotModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetRobotModeRequest;
        using Response = Ros1Dsr_msgsGetRobotModeResponse;

        Ros1Dsr_msgsGetRobotModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetRobotMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetRobotMode_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetRobotMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetRobotMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetRobotSpeedMode client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetRobotSpeedModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetRobotSpeedModeRequest;
        using Response = Ros1Dsr_msgsGetRobotSpeedModeResponse;

        Ros1Dsr_msgsGetRobotSpeedModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetRobotSpeedModeClient(Ros1Dsr_msgsGetRobotSpeedModeClient const&) = delete;
        Ros1Dsr_msgsGetRobotSpeedModeClient& operator= (Ros1Dsr_msgsGetRobotSpeedModeClient const&) = delete;
        Ros1Dsr_msgsGetRobotSpeedModeClient(Ros1Dsr_msgsGetRobotSpeedModeClient&&) = delete;

        ~Ros1Dsr_msgsGetRobotSpeedModeClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetRobotSpeedMode server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetRobotSpeedModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetRobotSpeedModeResponse(Ros1Dsr_msgsGetRobotSpeedModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetRobotSpeedModeRequest;
        using Response = Ros1Dsr_msgsGetRobotSpeedModeResponse;

        Ros1Dsr_msgsGetRobotSpeedModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetRobotState client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetRobotStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetRobotStateRequest;
        using Response = Ros1Dsr_msgsGetRobotStateResponse;

        Ros1Dsr_msgsGetRobotStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetRobotStateClient(Ros1Dsr_msgsGetRobotStateClient const&) = delete;
        Ros1Dsr_msgsGetRobotStateClient& operator= (Ros1Dsr_msgsGetRobotStateClient const&) = delete;
        Ros1Dsr_msgsGetRobotStateClient(Ros1Dsr_msgsGetRobotStateClient&&) = delete;

        ~Ros1Dsr_msgsGetRobotStateClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetRobotState_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetRobotState server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetRobotStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetRobotStateResponse(Ros1Dsr_msgsGetRobotStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetRobotStateRequest;
        using Response = Ros1Dsr_msgsGetRobotStateResponse;

        Ros1Dsr_msgsGetRobotStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetRobotState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetRobotState_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetRobotState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetRobotState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetRobotSystem client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetRobotSystemClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetRobotSystemRequest;
        using Response = Ros1Dsr_msgsGetRobotSystemResponse;

        Ros1Dsr_msgsGetRobotSystemClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetRobotSystemClient(Ros1Dsr_msgsGetRobotSystemClient const&) = delete;
        Ros1Dsr_msgsGetRobotSystemClient& operator= (Ros1Dsr_msgsGetRobotSystemClient const&) = delete;
        Ros1Dsr_msgsGetRobotSystemClient(Ros1Dsr_msgsGetRobotSystemClient&&) = delete;

        ~Ros1Dsr_msgsGetRobotSystemClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetRobotSystem_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetRobotSystem server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetRobotSystemServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetRobotSystemResponse(Ros1Dsr_msgsGetRobotSystemRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetRobotSystemRequest;
        using Response = Ros1Dsr_msgsGetRobotSystemResponse;

        Ros1Dsr_msgsGetRobotSystemServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetRobotSystem_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetRobotSystem_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetRobotSystem_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetRobotSystem_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetSolutionSpace client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetSolutionSpaceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetSolutionSpaceRequest;
        using Response = Ros1Dsr_msgsGetSolutionSpaceResponse;

        Ros1Dsr_msgsGetSolutionSpaceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetSolutionSpaceClient(Ros1Dsr_msgsGetSolutionSpaceClient const&) = delete;
        Ros1Dsr_msgsGetSolutionSpaceClient& operator= (Ros1Dsr_msgsGetSolutionSpaceClient const&) = delete;
        Ros1Dsr_msgsGetSolutionSpaceClient(Ros1Dsr_msgsGetSolutionSpaceClient&&) = delete;

        ~Ros1Dsr_msgsGetSolutionSpaceClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetSolutionSpace server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetSolutionSpaceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetSolutionSpaceResponse(Ros1Dsr_msgsGetSolutionSpaceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetSolutionSpaceRequest;
        using Response = Ros1Dsr_msgsGetSolutionSpaceResponse;

        Ros1Dsr_msgsGetSolutionSpaceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetToolDigitalInput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetToolDigitalInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetToolDigitalInputRequest;
        using Response = Ros1Dsr_msgsGetToolDigitalInputResponse;

        Ros1Dsr_msgsGetToolDigitalInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetToolDigitalInputClient(Ros1Dsr_msgsGetToolDigitalInputClient const&) = delete;
        Ros1Dsr_msgsGetToolDigitalInputClient& operator= (Ros1Dsr_msgsGetToolDigitalInputClient const&) = delete;
        Ros1Dsr_msgsGetToolDigitalInputClient(Ros1Dsr_msgsGetToolDigitalInputClient&&) = delete;

        ~Ros1Dsr_msgsGetToolDigitalInputClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetToolDigitalInput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetToolDigitalInputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetToolDigitalInputResponse(Ros1Dsr_msgsGetToolDigitalInputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetToolDigitalInputRequest;
        using Response = Ros1Dsr_msgsGetToolDigitalInputResponse;

        Ros1Dsr_msgsGetToolDigitalInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetToolDigitalOutput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetToolDigitalOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetToolDigitalOutputRequest;
        using Response = Ros1Dsr_msgsGetToolDigitalOutputResponse;

        Ros1Dsr_msgsGetToolDigitalOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetToolDigitalOutputClient(Ros1Dsr_msgsGetToolDigitalOutputClient const&) = delete;
        Ros1Dsr_msgsGetToolDigitalOutputClient& operator= (Ros1Dsr_msgsGetToolDigitalOutputClient const&) = delete;
        Ros1Dsr_msgsGetToolDigitalOutputClient(Ros1Dsr_msgsGetToolDigitalOutputClient&&) = delete;

        ~Ros1Dsr_msgsGetToolDigitalOutputClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetToolDigitalOutput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetToolDigitalOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetToolDigitalOutputResponse(Ros1Dsr_msgsGetToolDigitalOutputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetToolDigitalOutputRequest;
        using Response = Ros1Dsr_msgsGetToolDigitalOutputResponse;

        Ros1Dsr_msgsGetToolDigitalOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetToolForce client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetToolForceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetToolForceRequest;
        using Response = Ros1Dsr_msgsGetToolForceResponse;

        Ros1Dsr_msgsGetToolForceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetToolForceClient(Ros1Dsr_msgsGetToolForceClient const&) = delete;
        Ros1Dsr_msgsGetToolForceClient& operator= (Ros1Dsr_msgsGetToolForceClient const&) = delete;
        Ros1Dsr_msgsGetToolForceClient(Ros1Dsr_msgsGetToolForceClient&&) = delete;

        ~Ros1Dsr_msgsGetToolForceClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetToolForce_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetToolForce server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetToolForceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetToolForceResponse(Ros1Dsr_msgsGetToolForceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetToolForceRequest;
        using Response = Ros1Dsr_msgsGetToolForceResponse;

        Ros1Dsr_msgsGetToolForceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetToolForce_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetToolForce_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetToolForce_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetToolForce_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetUserCartCoord client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetUserCartCoordClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetUserCartCoordRequest;
        using Response = Ros1Dsr_msgsGetUserCartCoordResponse;

        Ros1Dsr_msgsGetUserCartCoordClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetUserCartCoordClient(Ros1Dsr_msgsGetUserCartCoordClient const&) = delete;
        Ros1Dsr_msgsGetUserCartCoordClient& operator= (Ros1Dsr_msgsGetUserCartCoordClient const&) = delete;
        Ros1Dsr_msgsGetUserCartCoordClient(Ros1Dsr_msgsGetUserCartCoordClient&&) = delete;

        ~Ros1Dsr_msgsGetUserCartCoordClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetUserCartCoord server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetUserCartCoordServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetUserCartCoordResponse(Ros1Dsr_msgsGetUserCartCoordRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetUserCartCoordRequest;
        using Response = Ros1Dsr_msgsGetUserCartCoordResponse;

        Ros1Dsr_msgsGetUserCartCoordServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/GetWorkpieceWeight client; default policy returns13 from construction. */
    class Ros1Dsr_msgsGetWorkpieceWeightClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsGetWorkpieceWeightRequest;
        using Response = Ros1Dsr_msgsGetWorkpieceWeightResponse;

        Ros1Dsr_msgsGetWorkpieceWeightClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsGetWorkpieceWeightClient(Ros1Dsr_msgsGetWorkpieceWeightClient const&) = delete;
        Ros1Dsr_msgsGetWorkpieceWeightClient& operator= (Ros1Dsr_msgsGetWorkpieceWeightClient const&) = delete;
        Ros1Dsr_msgsGetWorkpieceWeightClient(Ros1Dsr_msgsGetWorkpieceWeightClient&&) = delete;

        ~Ros1Dsr_msgsGetWorkpieceWeightClient()
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
            return roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/GetWorkpieceWeight server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsGetWorkpieceWeightServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsGetWorkpieceWeightResponse(Ros1Dsr_msgsGetWorkpieceWeightRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsGetWorkpieceWeightRequest;
        using Response = Ros1Dsr_msgsGetWorkpieceWeightResponse;

        Ros1Dsr_msgsGetWorkpieceWeightServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/Ikin client; default policy returns13 from construction. */
    class Ros1Dsr_msgsIkinClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsIkinRequest;
        using Response = Ros1Dsr_msgsIkinResponse;

        Ros1Dsr_msgsIkinClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsIkinClient(Ros1Dsr_msgsIkinClient const&) = delete;
        Ros1Dsr_msgsIkinClient& operator= (Ros1Dsr_msgsIkinClient const&) = delete;
        Ros1Dsr_msgsIkinClient(Ros1Dsr_msgsIkinClient&&) = delete;

        ~Ros1Dsr_msgsIkinClient()
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
            return roswasmc_bounded_1_dsr_msgs_Ikin_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/Ikin server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsIkinServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsIkinResponse(Ros1Dsr_msgsIkinRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsIkinRequest;
        using Response = Ros1Dsr_msgsIkinResponse;

        Ros1Dsr_msgsIkinServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_Ikin_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_Ikin_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_Ikin_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_Ikin_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/IkinEx client; default policy returns13 from construction. */
    class Ros1Dsr_msgsIkinExClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsIkinExRequest;
        using Response = Ros1Dsr_msgsIkinExResponse;

        Ros1Dsr_msgsIkinExClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsIkinExClient(Ros1Dsr_msgsIkinExClient const&) = delete;
        Ros1Dsr_msgsIkinExClient& operator= (Ros1Dsr_msgsIkinExClient const&) = delete;
        Ros1Dsr_msgsIkinExClient(Ros1Dsr_msgsIkinExClient&&) = delete;

        ~Ros1Dsr_msgsIkinExClient()
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
            return roswasmc_bounded_1_dsr_msgs_IkinEx_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/IkinEx server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsIkinExServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsIkinExResponse(Ros1Dsr_msgsIkinExRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsIkinExRequest;
        using Response = Ros1Dsr_msgsIkinExResponse;

        Ros1Dsr_msgsIkinExServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_IkinEx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_IkinEx_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_IkinEx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_IkinEx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/IsDoneBoltTightening client; default policy returns13 from construction. */
    class Ros1Dsr_msgsIsDoneBoltTighteningClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsIsDoneBoltTighteningRequest;
        using Response = Ros1Dsr_msgsIsDoneBoltTighteningResponse;

        Ros1Dsr_msgsIsDoneBoltTighteningClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsIsDoneBoltTighteningClient(Ros1Dsr_msgsIsDoneBoltTighteningClient const&) = delete;
        Ros1Dsr_msgsIsDoneBoltTighteningClient& operator= (Ros1Dsr_msgsIsDoneBoltTighteningClient const&) = delete;
        Ros1Dsr_msgsIsDoneBoltTighteningClient(Ros1Dsr_msgsIsDoneBoltTighteningClient&&) = delete;

        ~Ros1Dsr_msgsIsDoneBoltTighteningClient()
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
            return roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/IsDoneBoltTightening server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsIsDoneBoltTighteningServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsIsDoneBoltTighteningResponse(Ros1Dsr_msgsIsDoneBoltTighteningRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsIsDoneBoltTighteningRequest;
        using Response = Ros1Dsr_msgsIsDoneBoltTighteningResponse;

        Ros1Dsr_msgsIsDoneBoltTighteningServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/Jog client; default policy returns13 from construction. */
    class Ros1Dsr_msgsJogClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsJogRequest;
        using Response = Ros1Dsr_msgsJogResponse;

        Ros1Dsr_msgsJogClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsJogClient(Ros1Dsr_msgsJogClient const&) = delete;
        Ros1Dsr_msgsJogClient& operator= (Ros1Dsr_msgsJogClient const&) = delete;
        Ros1Dsr_msgsJogClient(Ros1Dsr_msgsJogClient&&) = delete;

        ~Ros1Dsr_msgsJogClient()
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
            return roswasmc_bounded_1_dsr_msgs_Jog_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/Jog server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsJogServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsJogResponse(Ros1Dsr_msgsJogRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsJogRequest;
        using Response = Ros1Dsr_msgsJogResponse;

        Ros1Dsr_msgsJogServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_Jog_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_Jog_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_Jog_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_Jog_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/JogMulti client; default policy returns13 from construction. */
    class Ros1Dsr_msgsJogMultiClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsJogMultiRequest;
        using Response = Ros1Dsr_msgsJogMultiResponse;

        Ros1Dsr_msgsJogMultiClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsJogMultiClient(Ros1Dsr_msgsJogMultiClient const&) = delete;
        Ros1Dsr_msgsJogMultiClient& operator= (Ros1Dsr_msgsJogMultiClient const&) = delete;
        Ros1Dsr_msgsJogMultiClient(Ros1Dsr_msgsJogMultiClient&&) = delete;

        ~Ros1Dsr_msgsJogMultiClient()
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
            return roswasmc_bounded_1_dsr_msgs_JogMulti_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/JogMulti server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsJogMultiServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsJogMultiResponse(Ros1Dsr_msgsJogMultiRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsJogMultiRequest;
        using Response = Ros1Dsr_msgsJogMultiResponse;

        Ros1Dsr_msgsJogMultiServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_JogMulti_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_JogMulti_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_JogMulti_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_JogMulti_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ManageAccessControl client; default policy returns13 from construction. */
    class Ros1Dsr_msgsManageAccessControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsManageAccessControlRequest;
        using Response = Ros1Dsr_msgsManageAccessControlResponse;

        Ros1Dsr_msgsManageAccessControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsManageAccessControlClient(Ros1Dsr_msgsManageAccessControlClient const&) = delete;
        Ros1Dsr_msgsManageAccessControlClient& operator= (Ros1Dsr_msgsManageAccessControlClient const&) = delete;
        Ros1Dsr_msgsManageAccessControlClient(Ros1Dsr_msgsManageAccessControlClient&&) = delete;

        ~Ros1Dsr_msgsManageAccessControlClient()
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
            return roswasmc_bounded_1_dsr_msgs_ManageAccessControl_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ManageAccessControl server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsManageAccessControlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsManageAccessControlResponse(Ros1Dsr_msgsManageAccessControlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsManageAccessControlRequest;
        using Response = Ros1Dsr_msgsManageAccessControlResponse;

        Ros1Dsr_msgsManageAccessControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ManageAccessControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ManageAccessControl_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ManageAccessControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ManageAccessControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveBlending client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveBlendingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveBlendingRequest;
        using Response = Ros1Dsr_msgsMoveBlendingResponse;

        Ros1Dsr_msgsMoveBlendingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveBlendingClient(Ros1Dsr_msgsMoveBlendingClient const&) = delete;
        Ros1Dsr_msgsMoveBlendingClient& operator= (Ros1Dsr_msgsMoveBlendingClient const&) = delete;
        Ros1Dsr_msgsMoveBlendingClient(Ros1Dsr_msgsMoveBlendingClient&&) = delete;

        ~Ros1Dsr_msgsMoveBlendingClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveBlending_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveBlending server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveBlendingServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveBlendingResponse(Ros1Dsr_msgsMoveBlendingRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveBlendingRequest;
        using Response = Ros1Dsr_msgsMoveBlendingResponse;

        Ros1Dsr_msgsMoveBlendingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveBlending_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveBlending_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveBlending_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveBlending_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveCircle client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveCircleClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveCircleRequest;
        using Response = Ros1Dsr_msgsMoveCircleResponse;

        Ros1Dsr_msgsMoveCircleClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveCircleClient(Ros1Dsr_msgsMoveCircleClient const&) = delete;
        Ros1Dsr_msgsMoveCircleClient& operator= (Ros1Dsr_msgsMoveCircleClient const&) = delete;
        Ros1Dsr_msgsMoveCircleClient(Ros1Dsr_msgsMoveCircleClient&&) = delete;

        ~Ros1Dsr_msgsMoveCircleClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveCircle_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveCircle server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveCircleServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveCircleResponse(Ros1Dsr_msgsMoveCircleRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveCircleRequest;
        using Response = Ros1Dsr_msgsMoveCircleResponse;

        Ros1Dsr_msgsMoveCircleServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveCircle_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveCircle_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveCircle_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveCircle_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveHome client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveHomeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveHomeRequest;
        using Response = Ros1Dsr_msgsMoveHomeResponse;

        Ros1Dsr_msgsMoveHomeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveHomeClient(Ros1Dsr_msgsMoveHomeClient const&) = delete;
        Ros1Dsr_msgsMoveHomeClient& operator= (Ros1Dsr_msgsMoveHomeClient const&) = delete;
        Ros1Dsr_msgsMoveHomeClient(Ros1Dsr_msgsMoveHomeClient&&) = delete;

        ~Ros1Dsr_msgsMoveHomeClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveHome_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveHome server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveHomeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveHomeResponse(Ros1Dsr_msgsMoveHomeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveHomeRequest;
        using Response = Ros1Dsr_msgsMoveHomeResponse;

        Ros1Dsr_msgsMoveHomeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveHome_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveHome_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveHome_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveHome_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveJoint client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveJointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveJointRequest;
        using Response = Ros1Dsr_msgsMoveJointResponse;

        Ros1Dsr_msgsMoveJointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveJointClient(Ros1Dsr_msgsMoveJointClient const&) = delete;
        Ros1Dsr_msgsMoveJointClient& operator= (Ros1Dsr_msgsMoveJointClient const&) = delete;
        Ros1Dsr_msgsMoveJointClient(Ros1Dsr_msgsMoveJointClient&&) = delete;

        ~Ros1Dsr_msgsMoveJointClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveJoint_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveJoint server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveJointServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveJointResponse(Ros1Dsr_msgsMoveJointRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveJointRequest;
        using Response = Ros1Dsr_msgsMoveJointResponse;

        Ros1Dsr_msgsMoveJointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveJoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveJoint_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveJoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveJoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveJointx client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveJointxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveJointxRequest;
        using Response = Ros1Dsr_msgsMoveJointxResponse;

        Ros1Dsr_msgsMoveJointxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveJointxClient(Ros1Dsr_msgsMoveJointxClient const&) = delete;
        Ros1Dsr_msgsMoveJointxClient& operator= (Ros1Dsr_msgsMoveJointxClient const&) = delete;
        Ros1Dsr_msgsMoveJointxClient(Ros1Dsr_msgsMoveJointxClient&&) = delete;

        ~Ros1Dsr_msgsMoveJointxClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveJointx_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveJointx server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveJointxServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveJointxResponse(Ros1Dsr_msgsMoveJointxRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveJointxRequest;
        using Response = Ros1Dsr_msgsMoveJointxResponse;

        Ros1Dsr_msgsMoveJointxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveJointx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveJointx_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveJointx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveJointx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveLine client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveLineClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveLineRequest;
        using Response = Ros1Dsr_msgsMoveLineResponse;

        Ros1Dsr_msgsMoveLineClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveLineClient(Ros1Dsr_msgsMoveLineClient const&) = delete;
        Ros1Dsr_msgsMoveLineClient& operator= (Ros1Dsr_msgsMoveLineClient const&) = delete;
        Ros1Dsr_msgsMoveLineClient(Ros1Dsr_msgsMoveLineClient&&) = delete;

        ~Ros1Dsr_msgsMoveLineClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveLine_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveLine server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveLineServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveLineResponse(Ros1Dsr_msgsMoveLineRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveLineRequest;
        using Response = Ros1Dsr_msgsMoveLineResponse;

        Ros1Dsr_msgsMoveLineServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveLine_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveLine_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveLine_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveLine_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MovePause client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMovePauseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMovePauseRequest;
        using Response = Ros1Dsr_msgsMovePauseResponse;

        Ros1Dsr_msgsMovePauseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMovePauseClient(Ros1Dsr_msgsMovePauseClient const&) = delete;
        Ros1Dsr_msgsMovePauseClient& operator= (Ros1Dsr_msgsMovePauseClient const&) = delete;
        Ros1Dsr_msgsMovePauseClient(Ros1Dsr_msgsMovePauseClient&&) = delete;

        ~Ros1Dsr_msgsMovePauseClient()
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
            return roswasmc_bounded_1_dsr_msgs_MovePause_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MovePause server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMovePauseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMovePauseResponse(Ros1Dsr_msgsMovePauseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMovePauseRequest;
        using Response = Ros1Dsr_msgsMovePauseResponse;

        Ros1Dsr_msgsMovePauseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MovePause_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MovePause_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MovePause_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MovePause_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MovePeriodic client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMovePeriodicClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMovePeriodicRequest;
        using Response = Ros1Dsr_msgsMovePeriodicResponse;

        Ros1Dsr_msgsMovePeriodicClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMovePeriodicClient(Ros1Dsr_msgsMovePeriodicClient const&) = delete;
        Ros1Dsr_msgsMovePeriodicClient& operator= (Ros1Dsr_msgsMovePeriodicClient const&) = delete;
        Ros1Dsr_msgsMovePeriodicClient(Ros1Dsr_msgsMovePeriodicClient&&) = delete;

        ~Ros1Dsr_msgsMovePeriodicClient()
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
            return roswasmc_bounded_1_dsr_msgs_MovePeriodic_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MovePeriodic server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMovePeriodicServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMovePeriodicResponse(Ros1Dsr_msgsMovePeriodicRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMovePeriodicRequest;
        using Response = Ros1Dsr_msgsMovePeriodicResponse;

        Ros1Dsr_msgsMovePeriodicServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MovePeriodic_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MovePeriodic_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MovePeriodic_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MovePeriodic_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveResume client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveResumeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveResumeRequest;
        using Response = Ros1Dsr_msgsMoveResumeResponse;

        Ros1Dsr_msgsMoveResumeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveResumeClient(Ros1Dsr_msgsMoveResumeClient const&) = delete;
        Ros1Dsr_msgsMoveResumeClient& operator= (Ros1Dsr_msgsMoveResumeClient const&) = delete;
        Ros1Dsr_msgsMoveResumeClient(Ros1Dsr_msgsMoveResumeClient&&) = delete;

        ~Ros1Dsr_msgsMoveResumeClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveResume_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveResume server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveResumeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveResumeResponse(Ros1Dsr_msgsMoveResumeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveResumeRequest;
        using Response = Ros1Dsr_msgsMoveResumeResponse;

        Ros1Dsr_msgsMoveResumeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveResume_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveResume_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveResume_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveResume_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveSpiral client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveSpiralClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveSpiralRequest;
        using Response = Ros1Dsr_msgsMoveSpiralResponse;

        Ros1Dsr_msgsMoveSpiralClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveSpiralClient(Ros1Dsr_msgsMoveSpiralClient const&) = delete;
        Ros1Dsr_msgsMoveSpiralClient& operator= (Ros1Dsr_msgsMoveSpiralClient const&) = delete;
        Ros1Dsr_msgsMoveSpiralClient(Ros1Dsr_msgsMoveSpiralClient&&) = delete;

        ~Ros1Dsr_msgsMoveSpiralClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveSpiral_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveSpiral server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveSpiralServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveSpiralResponse(Ros1Dsr_msgsMoveSpiralRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveSpiralRequest;
        using Response = Ros1Dsr_msgsMoveSpiralResponse;

        Ros1Dsr_msgsMoveSpiralServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveSpiral_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveSpiral_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveSpiral_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveSpiral_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveSplineJoint client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveSplineJointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveSplineJointRequest;
        using Response = Ros1Dsr_msgsMoveSplineJointResponse;

        Ros1Dsr_msgsMoveSplineJointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveSplineJointClient(Ros1Dsr_msgsMoveSplineJointClient const&) = delete;
        Ros1Dsr_msgsMoveSplineJointClient& operator= (Ros1Dsr_msgsMoveSplineJointClient const&) = delete;
        Ros1Dsr_msgsMoveSplineJointClient(Ros1Dsr_msgsMoveSplineJointClient&&) = delete;

        ~Ros1Dsr_msgsMoveSplineJointClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveSplineJoint server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveSplineJointServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveSplineJointResponse(Ros1Dsr_msgsMoveSplineJointRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveSplineJointRequest;
        using Response = Ros1Dsr_msgsMoveSplineJointResponse;

        Ros1Dsr_msgsMoveSplineJointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveSplineTask client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveSplineTaskClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveSplineTaskRequest;
        using Response = Ros1Dsr_msgsMoveSplineTaskResponse;

        Ros1Dsr_msgsMoveSplineTaskClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveSplineTaskClient(Ros1Dsr_msgsMoveSplineTaskClient const&) = delete;
        Ros1Dsr_msgsMoveSplineTaskClient& operator= (Ros1Dsr_msgsMoveSplineTaskClient const&) = delete;
        Ros1Dsr_msgsMoveSplineTaskClient(Ros1Dsr_msgsMoveSplineTaskClient&&) = delete;

        ~Ros1Dsr_msgsMoveSplineTaskClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveSplineTask_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveSplineTask server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveSplineTaskServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveSplineTaskResponse(Ros1Dsr_msgsMoveSplineTaskRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveSplineTaskRequest;
        using Response = Ros1Dsr_msgsMoveSplineTaskResponse;

        Ros1Dsr_msgsMoveSplineTaskServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveSplineTask_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveSplineTask_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveSplineTask_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveSplineTask_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveStop client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveStopClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveStopRequest;
        using Response = Ros1Dsr_msgsMoveStopResponse;

        Ros1Dsr_msgsMoveStopClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveStopClient(Ros1Dsr_msgsMoveStopClient const&) = delete;
        Ros1Dsr_msgsMoveStopClient& operator= (Ros1Dsr_msgsMoveStopClient const&) = delete;
        Ros1Dsr_msgsMoveStopClient(Ros1Dsr_msgsMoveStopClient&&) = delete;

        ~Ros1Dsr_msgsMoveStopClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveStop_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveStop server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveStopServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveStopResponse(Ros1Dsr_msgsMoveStopRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveStopRequest;
        using Response = Ros1Dsr_msgsMoveStopResponse;

        Ros1Dsr_msgsMoveStopServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveStop_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveStop_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveStop_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveStop_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/MoveWait client; default policy returns13 from construction. */
    class Ros1Dsr_msgsMoveWaitClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsMoveWaitRequest;
        using Response = Ros1Dsr_msgsMoveWaitResponse;

        Ros1Dsr_msgsMoveWaitClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsMoveWaitClient(Ros1Dsr_msgsMoveWaitClient const&) = delete;
        Ros1Dsr_msgsMoveWaitClient& operator= (Ros1Dsr_msgsMoveWaitClient const&) = delete;
        Ros1Dsr_msgsMoveWaitClient(Ros1Dsr_msgsMoveWaitClient&&) = delete;

        ~Ros1Dsr_msgsMoveWaitClient()
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
            return roswasmc_bounded_1_dsr_msgs_MoveWait_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/MoveWait server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsMoveWaitServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsMoveWaitResponse(Ros1Dsr_msgsMoveWaitRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsMoveWaitRequest;
        using Response = Ros1Dsr_msgsMoveWaitResponse;

        Ros1Dsr_msgsMoveWaitServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_MoveWait_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_MoveWait_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_MoveWait_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_MoveWait_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/OverwriteUserCartCoord client; default policy returns13 from construction. */
    class Ros1Dsr_msgsOverwriteUserCartCoordClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsOverwriteUserCartCoordRequest;
        using Response = Ros1Dsr_msgsOverwriteUserCartCoordResponse;

        Ros1Dsr_msgsOverwriteUserCartCoordClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsOverwriteUserCartCoordClient(Ros1Dsr_msgsOverwriteUserCartCoordClient const&) = delete;
        Ros1Dsr_msgsOverwriteUserCartCoordClient& operator= (Ros1Dsr_msgsOverwriteUserCartCoordClient const&) = delete;
        Ros1Dsr_msgsOverwriteUserCartCoordClient(Ros1Dsr_msgsOverwriteUserCartCoordClient&&) = delete;

        ~Ros1Dsr_msgsOverwriteUserCartCoordClient()
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
            return roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/OverwriteUserCartCoord server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsOverwriteUserCartCoordServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsOverwriteUserCartCoordResponse(Ros1Dsr_msgsOverwriteUserCartCoordRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsOverwriteUserCartCoordRequest;
        using Response = Ros1Dsr_msgsOverwriteUserCartCoordResponse;

        Ros1Dsr_msgsOverwriteUserCartCoordServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ParallelAxis1 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsParallelAxis1Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsParallelAxis1Request;
        using Response = Ros1Dsr_msgsParallelAxis1Response;

        Ros1Dsr_msgsParallelAxis1Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsParallelAxis1Client(Ros1Dsr_msgsParallelAxis1Client const&) = delete;
        Ros1Dsr_msgsParallelAxis1Client& operator= (Ros1Dsr_msgsParallelAxis1Client const&) = delete;
        Ros1Dsr_msgsParallelAxis1Client(Ros1Dsr_msgsParallelAxis1Client&&) = delete;

        ~Ros1Dsr_msgsParallelAxis1Client()
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
            return roswasmc_bounded_1_dsr_msgs_ParallelAxis1_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ParallelAxis1 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsParallelAxis1Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsParallelAxis1Response(Ros1Dsr_msgsParallelAxis1Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsParallelAxis1Request;
        using Response = Ros1Dsr_msgsParallelAxis1Response;

        Ros1Dsr_msgsParallelAxis1Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ParallelAxis1_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ParallelAxis1_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ParallelAxis1_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ParallelAxis1_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ParallelAxis2 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsParallelAxis2Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsParallelAxis2Request;
        using Response = Ros1Dsr_msgsParallelAxis2Response;

        Ros1Dsr_msgsParallelAxis2Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsParallelAxis2Client(Ros1Dsr_msgsParallelAxis2Client const&) = delete;
        Ros1Dsr_msgsParallelAxis2Client& operator= (Ros1Dsr_msgsParallelAxis2Client const&) = delete;
        Ros1Dsr_msgsParallelAxis2Client(Ros1Dsr_msgsParallelAxis2Client&&) = delete;

        ~Ros1Dsr_msgsParallelAxis2Client()
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
            return roswasmc_bounded_1_dsr_msgs_ParallelAxis2_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ParallelAxis2 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsParallelAxis2Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsParallelAxis2Response(Ros1Dsr_msgsParallelAxis2Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsParallelAxis2Request;
        using Response = Ros1Dsr_msgsParallelAxis2Response;

        Ros1Dsr_msgsParallelAxis2Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ParallelAxis2_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ParallelAxis2_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ParallelAxis2_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ParallelAxis2_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ReadDataRT client; default policy returns13 from construction. */
    class Ros1Dsr_msgsReadDataRTClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsReadDataRTRequest;
        using Response = Ros1Dsr_msgsReadDataRTResponse;

        Ros1Dsr_msgsReadDataRTClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsReadDataRTClient(Ros1Dsr_msgsReadDataRTClient const&) = delete;
        Ros1Dsr_msgsReadDataRTClient& operator= (Ros1Dsr_msgsReadDataRTClient const&) = delete;
        Ros1Dsr_msgsReadDataRTClient(Ros1Dsr_msgsReadDataRTClient&&) = delete;

        ~Ros1Dsr_msgsReadDataRTClient()
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
            return roswasmc_bounded_1_dsr_msgs_ReadDataRT_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ReadDataRT server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsReadDataRTServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsReadDataRTResponse(Ros1Dsr_msgsReadDataRTRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsReadDataRTRequest;
        using Response = Ros1Dsr_msgsReadDataRTResponse;

        Ros1Dsr_msgsReadDataRTServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ReadDataRT_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ReadDataRT_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ReadDataRT_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ReadDataRT_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ReleaseComplianceCtrl client; default policy returns13 from construction. */
    class Ros1Dsr_msgsReleaseComplianceCtrlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsReleaseComplianceCtrlRequest;
        using Response = Ros1Dsr_msgsReleaseComplianceCtrlResponse;

        Ros1Dsr_msgsReleaseComplianceCtrlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsReleaseComplianceCtrlClient(Ros1Dsr_msgsReleaseComplianceCtrlClient const&) = delete;
        Ros1Dsr_msgsReleaseComplianceCtrlClient& operator= (Ros1Dsr_msgsReleaseComplianceCtrlClient const&) = delete;
        Ros1Dsr_msgsReleaseComplianceCtrlClient(Ros1Dsr_msgsReleaseComplianceCtrlClient&&) = delete;

        ~Ros1Dsr_msgsReleaseComplianceCtrlClient()
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
            return roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ReleaseComplianceCtrl server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsReleaseComplianceCtrlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsReleaseComplianceCtrlResponse(Ros1Dsr_msgsReleaseComplianceCtrlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsReleaseComplianceCtrlRequest;
        using Response = Ros1Dsr_msgsReleaseComplianceCtrlResponse;

        Ros1Dsr_msgsReleaseComplianceCtrlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ReleaseForce client; default policy returns13 from construction. */
    class Ros1Dsr_msgsReleaseForceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsReleaseForceRequest;
        using Response = Ros1Dsr_msgsReleaseForceResponse;

        Ros1Dsr_msgsReleaseForceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsReleaseForceClient(Ros1Dsr_msgsReleaseForceClient const&) = delete;
        Ros1Dsr_msgsReleaseForceClient& operator= (Ros1Dsr_msgsReleaseForceClient const&) = delete;
        Ros1Dsr_msgsReleaseForceClient(Ros1Dsr_msgsReleaseForceClient&&) = delete;

        ~Ros1Dsr_msgsReleaseForceClient()
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
            return roswasmc_bounded_1_dsr_msgs_ReleaseForce_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ReleaseForce server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsReleaseForceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsReleaseForceResponse(Ros1Dsr_msgsReleaseForceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsReleaseForceRequest;
        using Response = Ros1Dsr_msgsReleaseForceResponse;

        Ros1Dsr_msgsReleaseForceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ReleaseForce_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ReleaseForce_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ReleaseForce_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ReleaseForce_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ReleaseProtectiveStop client; default policy returns13 from construction. */
    class Ros1Dsr_msgsReleaseProtectiveStopClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsReleaseProtectiveStopRequest;
        using Response = Ros1Dsr_msgsReleaseProtectiveStopResponse;

        Ros1Dsr_msgsReleaseProtectiveStopClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsReleaseProtectiveStopClient(Ros1Dsr_msgsReleaseProtectiveStopClient const&) = delete;
        Ros1Dsr_msgsReleaseProtectiveStopClient& operator= (Ros1Dsr_msgsReleaseProtectiveStopClient const&) = delete;
        Ros1Dsr_msgsReleaseProtectiveStopClient(Ros1Dsr_msgsReleaseProtectiveStopClient&&) = delete;

        ~Ros1Dsr_msgsReleaseProtectiveStopClient()
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
            return roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStop_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ReleaseProtectiveStop server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsReleaseProtectiveStopServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsReleaseProtectiveStopResponse(Ros1Dsr_msgsReleaseProtectiveStopRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsReleaseProtectiveStopRequest;
        using Response = Ros1Dsr_msgsReleaseProtectiveStopResponse;

        Ros1Dsr_msgsReleaseProtectiveStopServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStop_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStop_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStop_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStop_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/ResetWorkpieceWeight client; default policy returns13 from construction. */
    class Ros1Dsr_msgsResetWorkpieceWeightClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsResetWorkpieceWeightRequest;
        using Response = Ros1Dsr_msgsResetWorkpieceWeightResponse;

        Ros1Dsr_msgsResetWorkpieceWeightClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsResetWorkpieceWeightClient(Ros1Dsr_msgsResetWorkpieceWeightClient const&) = delete;
        Ros1Dsr_msgsResetWorkpieceWeightClient& operator= (Ros1Dsr_msgsResetWorkpieceWeightClient const&) = delete;
        Ros1Dsr_msgsResetWorkpieceWeightClient(Ros1Dsr_msgsResetWorkpieceWeightClient&&) = delete;

        ~Ros1Dsr_msgsResetWorkpieceWeightClient()
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
            return roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/ResetWorkpieceWeight server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsResetWorkpieceWeightServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsResetWorkpieceWeightResponse(Ros1Dsr_msgsResetWorkpieceWeightRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsResetWorkpieceWeightRequest;
        using Response = Ros1Dsr_msgsResetWorkpieceWeightResponse;

        Ros1Dsr_msgsResetWorkpieceWeightServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/Robotiq2FClose client; default policy returns13 from construction. */
    class Ros1Dsr_msgsRobotiq2FCloseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsRobotiq2FCloseRequest;
        using Response = Ros1Dsr_msgsRobotiq2FCloseResponse;

        Ros1Dsr_msgsRobotiq2FCloseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsRobotiq2FCloseClient(Ros1Dsr_msgsRobotiq2FCloseClient const&) = delete;
        Ros1Dsr_msgsRobotiq2FCloseClient& operator= (Ros1Dsr_msgsRobotiq2FCloseClient const&) = delete;
        Ros1Dsr_msgsRobotiq2FCloseClient(Ros1Dsr_msgsRobotiq2FCloseClient&&) = delete;

        ~Ros1Dsr_msgsRobotiq2FCloseClient()
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
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/Robotiq2FClose server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsRobotiq2FCloseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsRobotiq2FCloseResponse(Ros1Dsr_msgsRobotiq2FCloseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsRobotiq2FCloseRequest;
        using Response = Ros1Dsr_msgsRobotiq2FCloseResponse;

        Ros1Dsr_msgsRobotiq2FCloseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/Robotiq2FMove client; default policy returns13 from construction. */
    class Ros1Dsr_msgsRobotiq2FMoveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsRobotiq2FMoveRequest;
        using Response = Ros1Dsr_msgsRobotiq2FMoveResponse;

        Ros1Dsr_msgsRobotiq2FMoveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsRobotiq2FMoveClient(Ros1Dsr_msgsRobotiq2FMoveClient const&) = delete;
        Ros1Dsr_msgsRobotiq2FMoveClient& operator= (Ros1Dsr_msgsRobotiq2FMoveClient const&) = delete;
        Ros1Dsr_msgsRobotiq2FMoveClient(Ros1Dsr_msgsRobotiq2FMoveClient&&) = delete;

        ~Ros1Dsr_msgsRobotiq2FMoveClient()
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
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/Robotiq2FMove server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsRobotiq2FMoveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsRobotiq2FMoveResponse(Ros1Dsr_msgsRobotiq2FMoveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsRobotiq2FMoveRequest;
        using Response = Ros1Dsr_msgsRobotiq2FMoveResponse;

        Ros1Dsr_msgsRobotiq2FMoveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/Robotiq2FOpen client; default policy returns13 from construction. */
    class Ros1Dsr_msgsRobotiq2FOpenClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsRobotiq2FOpenRequest;
        using Response = Ros1Dsr_msgsRobotiq2FOpenResponse;

        Ros1Dsr_msgsRobotiq2FOpenClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsRobotiq2FOpenClient(Ros1Dsr_msgsRobotiq2FOpenClient const&) = delete;
        Ros1Dsr_msgsRobotiq2FOpenClient& operator= (Ros1Dsr_msgsRobotiq2FOpenClient const&) = delete;
        Ros1Dsr_msgsRobotiq2FOpenClient(Ros1Dsr_msgsRobotiq2FOpenClient&&) = delete;

        ~Ros1Dsr_msgsRobotiq2FOpenClient()
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
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/Robotiq2FOpen server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsRobotiq2FOpenServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsRobotiq2FOpenResponse(Ros1Dsr_msgsRobotiq2FOpenRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsRobotiq2FOpenRequest;
        using Response = Ros1Dsr_msgsRobotiq2FOpenResponse;

        Ros1Dsr_msgsRobotiq2FOpenServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SerialSendData client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSerialSendDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSerialSendDataRequest;
        using Response = Ros1Dsr_msgsSerialSendDataResponse;

        Ros1Dsr_msgsSerialSendDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSerialSendDataClient(Ros1Dsr_msgsSerialSendDataClient const&) = delete;
        Ros1Dsr_msgsSerialSendDataClient& operator= (Ros1Dsr_msgsSerialSendDataClient const&) = delete;
        Ros1Dsr_msgsSerialSendDataClient(Ros1Dsr_msgsSerialSendDataClient&&) = delete;

        ~Ros1Dsr_msgsSerialSendDataClient()
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
            return roswasmc_bounded_1_dsr_msgs_SerialSendData_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SerialSendData server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSerialSendDataServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSerialSendDataResponse(Ros1Dsr_msgsSerialSendDataRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSerialSendDataRequest;
        using Response = Ros1Dsr_msgsSerialSendDataResponse;

        Ros1Dsr_msgsSerialSendDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SerialSendData_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SerialSendData_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SerialSendData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SerialSendData_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetAccJRT client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetAccJRTClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetAccJRTRequest;
        using Response = Ros1Dsr_msgsSetAccJRTResponse;

        Ros1Dsr_msgsSetAccJRTClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetAccJRTClient(Ros1Dsr_msgsSetAccJRTClient const&) = delete;
        Ros1Dsr_msgsSetAccJRTClient& operator= (Ros1Dsr_msgsSetAccJRTClient const&) = delete;
        Ros1Dsr_msgsSetAccJRTClient(Ros1Dsr_msgsSetAccJRTClient&&) = delete;

        ~Ros1Dsr_msgsSetAccJRTClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetAccJRT_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetAccJRT server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetAccJRTServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetAccJRTResponse(Ros1Dsr_msgsSetAccJRTRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetAccJRTRequest;
        using Response = Ros1Dsr_msgsSetAccJRTResponse;

        Ros1Dsr_msgsSetAccJRTServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetAccJRT_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetAccJRT_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetAccJRT_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetAccJRT_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetAccXRT client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetAccXRTClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetAccXRTRequest;
        using Response = Ros1Dsr_msgsSetAccXRTResponse;

        Ros1Dsr_msgsSetAccXRTClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetAccXRTClient(Ros1Dsr_msgsSetAccXRTClient const&) = delete;
        Ros1Dsr_msgsSetAccXRTClient& operator= (Ros1Dsr_msgsSetAccXRTClient const&) = delete;
        Ros1Dsr_msgsSetAccXRTClient(Ros1Dsr_msgsSetAccXRTClient&&) = delete;

        ~Ros1Dsr_msgsSetAccXRTClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetAccXRT_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetAccXRT server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetAccXRTServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetAccXRTResponse(Ros1Dsr_msgsSetAccXRTRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetAccXRTRequest;
        using Response = Ros1Dsr_msgsSetAccXRTResponse;

        Ros1Dsr_msgsSetAccXRTServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetAccXRT_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetAccXRT_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetAccXRT_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetAccXRT_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetCtrlBoxAnalogInputType client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest;
        using Response = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse;

        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient const&) = delete;
        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient& operator= (Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient const&) = delete;
        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient&&) = delete;

        ~Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetCtrlBoxAnalogInputType server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest;
        using Response = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse;

        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetCtrlBoxAnalogOutput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest;
        using Response = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse;

        Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient(Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient const&) = delete;
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient& operator= (Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient const&) = delete;
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient(Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient&&) = delete;

        ~Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetCtrlBoxAnalogOutput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetCtrlBoxAnalogOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse(Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest;
        using Response = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse;

        Ros1Dsr_msgsSetCtrlBoxAnalogOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetCtrlBoxAnalogOutputType client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest;
        using Response = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse;

        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient const&) = delete;
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient& operator= (Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient const&) = delete;
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient&&) = delete;

        ~Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetCtrlBoxAnalogOutputType server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest;
        using Response = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse;

        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetCtrlBoxDigitalOutput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest;
        using Response = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse;

        Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient(Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient const&) = delete;
        Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient& operator= (Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient const&) = delete;
        Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient(Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient&&) = delete;

        ~Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetCtrlBoxDigitalOutput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetCtrlBoxDigitalOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse(Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest;
        using Response = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse;

        Ros1Dsr_msgsSetCtrlBoxDigitalOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetCurrentTcp client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetCurrentTcpClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetCurrentTcpRequest;
        using Response = Ros1Dsr_msgsSetCurrentTcpResponse;

        Ros1Dsr_msgsSetCurrentTcpClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetCurrentTcpClient(Ros1Dsr_msgsSetCurrentTcpClient const&) = delete;
        Ros1Dsr_msgsSetCurrentTcpClient& operator= (Ros1Dsr_msgsSetCurrentTcpClient const&) = delete;
        Ros1Dsr_msgsSetCurrentTcpClient(Ros1Dsr_msgsSetCurrentTcpClient&&) = delete;

        ~Ros1Dsr_msgsSetCurrentTcpClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetCurrentTcp server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetCurrentTcpServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetCurrentTcpResponse(Ros1Dsr_msgsSetCurrentTcpRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetCurrentTcpRequest;
        using Response = Ros1Dsr_msgsSetCurrentTcpResponse;

        Ros1Dsr_msgsSetCurrentTcpServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetCurrentTool client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetCurrentToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetCurrentToolRequest;
        using Response = Ros1Dsr_msgsSetCurrentToolResponse;

        Ros1Dsr_msgsSetCurrentToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetCurrentToolClient(Ros1Dsr_msgsSetCurrentToolClient const&) = delete;
        Ros1Dsr_msgsSetCurrentToolClient& operator= (Ros1Dsr_msgsSetCurrentToolClient const&) = delete;
        Ros1Dsr_msgsSetCurrentToolClient(Ros1Dsr_msgsSetCurrentToolClient&&) = delete;

        ~Ros1Dsr_msgsSetCurrentToolClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetCurrentTool_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetCurrentTool server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetCurrentToolServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetCurrentToolResponse(Ros1Dsr_msgsSetCurrentToolRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetCurrentToolRequest;
        using Response = Ros1Dsr_msgsSetCurrentToolResponse;

        Ros1Dsr_msgsSetCurrentToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetCurrentTool_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetCurrentTool_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetCurrentTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetCurrentTool_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetDesiredForce client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetDesiredForceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetDesiredForceRequest;
        using Response = Ros1Dsr_msgsSetDesiredForceResponse;

        Ros1Dsr_msgsSetDesiredForceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetDesiredForceClient(Ros1Dsr_msgsSetDesiredForceClient const&) = delete;
        Ros1Dsr_msgsSetDesiredForceClient& operator= (Ros1Dsr_msgsSetDesiredForceClient const&) = delete;
        Ros1Dsr_msgsSetDesiredForceClient(Ros1Dsr_msgsSetDesiredForceClient&&) = delete;

        ~Ros1Dsr_msgsSetDesiredForceClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetDesiredForce_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetDesiredForce server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetDesiredForceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetDesiredForceResponse(Ros1Dsr_msgsSetDesiredForceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetDesiredForceRequest;
        using Response = Ros1Dsr_msgsSetDesiredForceResponse;

        Ros1Dsr_msgsSetDesiredForceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetDesiredForce_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetDesiredForce_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetDesiredForce_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetDesiredForce_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetModbusOutput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetModbusOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetModbusOutputRequest;
        using Response = Ros1Dsr_msgsSetModbusOutputResponse;

        Ros1Dsr_msgsSetModbusOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetModbusOutputClient(Ros1Dsr_msgsSetModbusOutputClient const&) = delete;
        Ros1Dsr_msgsSetModbusOutputClient& operator= (Ros1Dsr_msgsSetModbusOutputClient const&) = delete;
        Ros1Dsr_msgsSetModbusOutputClient(Ros1Dsr_msgsSetModbusOutputClient&&) = delete;

        ~Ros1Dsr_msgsSetModbusOutputClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetModbusOutput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetModbusOutput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetModbusOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetModbusOutputResponse(Ros1Dsr_msgsSetModbusOutputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetModbusOutputRequest;
        using Response = Ros1Dsr_msgsSetModbusOutputResponse;

        Ros1Dsr_msgsSetModbusOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetModbusOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetModbusOutput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetModbusOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetModbusOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetRTControlInput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetRTControlInputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetRTControlInputRequest;
        using Response = Ros1Dsr_msgsSetRTControlInputResponse;

        Ros1Dsr_msgsSetRTControlInputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetRTControlInputClient(Ros1Dsr_msgsSetRTControlInputClient const&) = delete;
        Ros1Dsr_msgsSetRTControlInputClient& operator= (Ros1Dsr_msgsSetRTControlInputClient const&) = delete;
        Ros1Dsr_msgsSetRTControlInputClient(Ros1Dsr_msgsSetRTControlInputClient&&) = delete;

        ~Ros1Dsr_msgsSetRTControlInputClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetRTControlInput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetRTControlInput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetRTControlInputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetRTControlInputResponse(Ros1Dsr_msgsSetRTControlInputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetRTControlInputRequest;
        using Response = Ros1Dsr_msgsSetRTControlInputResponse;

        Ros1Dsr_msgsSetRTControlInputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetRTControlInput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetRTControlInput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetRTControlInput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetRTControlInput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetRTControlOutput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetRTControlOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetRTControlOutputRequest;
        using Response = Ros1Dsr_msgsSetRTControlOutputResponse;

        Ros1Dsr_msgsSetRTControlOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetRTControlOutputClient(Ros1Dsr_msgsSetRTControlOutputClient const&) = delete;
        Ros1Dsr_msgsSetRTControlOutputClient& operator= (Ros1Dsr_msgsSetRTControlOutputClient const&) = delete;
        Ros1Dsr_msgsSetRTControlOutputClient(Ros1Dsr_msgsSetRTControlOutputClient&&) = delete;

        ~Ros1Dsr_msgsSetRTControlOutputClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetRTControlOutput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetRTControlOutput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetRTControlOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetRTControlOutputResponse(Ros1Dsr_msgsSetRTControlOutputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetRTControlOutputRequest;
        using Response = Ros1Dsr_msgsSetRTControlOutputResponse;

        Ros1Dsr_msgsSetRTControlOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetRTControlOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetRTControlOutput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetRTControlOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetRTControlOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetRefCoord client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetRefCoordClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetRefCoordRequest;
        using Response = Ros1Dsr_msgsSetRefCoordResponse;

        Ros1Dsr_msgsSetRefCoordClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetRefCoordClient(Ros1Dsr_msgsSetRefCoordClient const&) = delete;
        Ros1Dsr_msgsSetRefCoordClient& operator= (Ros1Dsr_msgsSetRefCoordClient const&) = delete;
        Ros1Dsr_msgsSetRefCoordClient(Ros1Dsr_msgsSetRefCoordClient&&) = delete;

        ~Ros1Dsr_msgsSetRefCoordClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetRefCoord_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetRefCoord server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetRefCoordServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetRefCoordResponse(Ros1Dsr_msgsSetRefCoordRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetRefCoordRequest;
        using Response = Ros1Dsr_msgsSetRefCoordResponse;

        Ros1Dsr_msgsSetRefCoordServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetRefCoord_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetRefCoord_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetRefCoord_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetRefCoord_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetRobotControl client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetRobotControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetRobotControlRequest;
        using Response = Ros1Dsr_msgsSetRobotControlResponse;

        Ros1Dsr_msgsSetRobotControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetRobotControlClient(Ros1Dsr_msgsSetRobotControlClient const&) = delete;
        Ros1Dsr_msgsSetRobotControlClient& operator= (Ros1Dsr_msgsSetRobotControlClient const&) = delete;
        Ros1Dsr_msgsSetRobotControlClient(Ros1Dsr_msgsSetRobotControlClient&&) = delete;

        ~Ros1Dsr_msgsSetRobotControlClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetRobotControl_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetRobotControl server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetRobotControlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetRobotControlResponse(Ros1Dsr_msgsSetRobotControlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetRobotControlRequest;
        using Response = Ros1Dsr_msgsSetRobotControlResponse;

        Ros1Dsr_msgsSetRobotControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetRobotControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetRobotControl_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetRobotControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetRobotControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetRobotMode client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetRobotModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetRobotModeRequest;
        using Response = Ros1Dsr_msgsSetRobotModeResponse;

        Ros1Dsr_msgsSetRobotModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetRobotModeClient(Ros1Dsr_msgsSetRobotModeClient const&) = delete;
        Ros1Dsr_msgsSetRobotModeClient& operator= (Ros1Dsr_msgsSetRobotModeClient const&) = delete;
        Ros1Dsr_msgsSetRobotModeClient(Ros1Dsr_msgsSetRobotModeClient&&) = delete;

        ~Ros1Dsr_msgsSetRobotModeClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetRobotMode_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetRobotMode server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetRobotModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetRobotModeResponse(Ros1Dsr_msgsSetRobotModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetRobotModeRequest;
        using Response = Ros1Dsr_msgsSetRobotModeResponse;

        Ros1Dsr_msgsSetRobotModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetRobotMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetRobotMode_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetRobotMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetRobotMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetRobotSpeedMode client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetRobotSpeedModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetRobotSpeedModeRequest;
        using Response = Ros1Dsr_msgsSetRobotSpeedModeResponse;

        Ros1Dsr_msgsSetRobotSpeedModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetRobotSpeedModeClient(Ros1Dsr_msgsSetRobotSpeedModeClient const&) = delete;
        Ros1Dsr_msgsSetRobotSpeedModeClient& operator= (Ros1Dsr_msgsSetRobotSpeedModeClient const&) = delete;
        Ros1Dsr_msgsSetRobotSpeedModeClient(Ros1Dsr_msgsSetRobotSpeedModeClient&&) = delete;

        ~Ros1Dsr_msgsSetRobotSpeedModeClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetRobotSpeedMode server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetRobotSpeedModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetRobotSpeedModeResponse(Ros1Dsr_msgsSetRobotSpeedModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetRobotSpeedModeRequest;
        using Response = Ros1Dsr_msgsSetRobotSpeedModeResponse;

        Ros1Dsr_msgsSetRobotSpeedModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetRobotSystem client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetRobotSystemClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetRobotSystemRequest;
        using Response = Ros1Dsr_msgsSetRobotSystemResponse;

        Ros1Dsr_msgsSetRobotSystemClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetRobotSystemClient(Ros1Dsr_msgsSetRobotSystemClient const&) = delete;
        Ros1Dsr_msgsSetRobotSystemClient& operator= (Ros1Dsr_msgsSetRobotSystemClient const&) = delete;
        Ros1Dsr_msgsSetRobotSystemClient(Ros1Dsr_msgsSetRobotSystemClient&&) = delete;

        ~Ros1Dsr_msgsSetRobotSystemClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetRobotSystem_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetRobotSystem server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetRobotSystemServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetRobotSystemResponse(Ros1Dsr_msgsSetRobotSystemRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetRobotSystemRequest;
        using Response = Ros1Dsr_msgsSetRobotSystemResponse;

        Ros1Dsr_msgsSetRobotSystemServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetRobotSystem_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetRobotSystem_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetRobotSystem_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetRobotSystem_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetSafeStopResetType client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetSafeStopResetTypeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetSafeStopResetTypeRequest;
        using Response = Ros1Dsr_msgsSetSafeStopResetTypeResponse;

        Ros1Dsr_msgsSetSafeStopResetTypeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetSafeStopResetTypeClient(Ros1Dsr_msgsSetSafeStopResetTypeClient const&) = delete;
        Ros1Dsr_msgsSetSafeStopResetTypeClient& operator= (Ros1Dsr_msgsSetSafeStopResetTypeClient const&) = delete;
        Ros1Dsr_msgsSetSafeStopResetTypeClient(Ros1Dsr_msgsSetSafeStopResetTypeClient&&) = delete;

        ~Ros1Dsr_msgsSetSafeStopResetTypeClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetSafeStopResetType server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetSafeStopResetTypeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetSafeStopResetTypeResponse(Ros1Dsr_msgsSetSafeStopResetTypeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetSafeStopResetTypeRequest;
        using Response = Ros1Dsr_msgsSetSafeStopResetTypeResponse;

        Ros1Dsr_msgsSetSafeStopResetTypeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetSingularityHandling client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetSingularityHandlingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetSingularityHandlingRequest;
        using Response = Ros1Dsr_msgsSetSingularityHandlingResponse;

        Ros1Dsr_msgsSetSingularityHandlingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetSingularityHandlingClient(Ros1Dsr_msgsSetSingularityHandlingClient const&) = delete;
        Ros1Dsr_msgsSetSingularityHandlingClient& operator= (Ros1Dsr_msgsSetSingularityHandlingClient const&) = delete;
        Ros1Dsr_msgsSetSingularityHandlingClient(Ros1Dsr_msgsSetSingularityHandlingClient&&) = delete;

        ~Ros1Dsr_msgsSetSingularityHandlingClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetSingularityHandling server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetSingularityHandlingServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetSingularityHandlingResponse(Ros1Dsr_msgsSetSingularityHandlingRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetSingularityHandlingRequest;
        using Response = Ros1Dsr_msgsSetSingularityHandlingResponse;

        Ros1Dsr_msgsSetSingularityHandlingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetStiffnessx client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetStiffnessxClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetStiffnessxRequest;
        using Response = Ros1Dsr_msgsSetStiffnessxResponse;

        Ros1Dsr_msgsSetStiffnessxClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetStiffnessxClient(Ros1Dsr_msgsSetStiffnessxClient const&) = delete;
        Ros1Dsr_msgsSetStiffnessxClient& operator= (Ros1Dsr_msgsSetStiffnessxClient const&) = delete;
        Ros1Dsr_msgsSetStiffnessxClient(Ros1Dsr_msgsSetStiffnessxClient&&) = delete;

        ~Ros1Dsr_msgsSetStiffnessxClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetStiffnessx_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetStiffnessx server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetStiffnessxServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetStiffnessxResponse(Ros1Dsr_msgsSetStiffnessxRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetStiffnessxRequest;
        using Response = Ros1Dsr_msgsSetStiffnessxResponse;

        Ros1Dsr_msgsSetStiffnessxServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetStiffnessx_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetStiffnessx_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetStiffnessx_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetStiffnessx_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetToolDigitalOutput client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetToolDigitalOutputClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetToolDigitalOutputRequest;
        using Response = Ros1Dsr_msgsSetToolDigitalOutputResponse;

        Ros1Dsr_msgsSetToolDigitalOutputClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetToolDigitalOutputClient(Ros1Dsr_msgsSetToolDigitalOutputClient const&) = delete;
        Ros1Dsr_msgsSetToolDigitalOutputClient& operator= (Ros1Dsr_msgsSetToolDigitalOutputClient const&) = delete;
        Ros1Dsr_msgsSetToolDigitalOutputClient(Ros1Dsr_msgsSetToolDigitalOutputClient&&) = delete;

        ~Ros1Dsr_msgsSetToolDigitalOutputClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetToolDigitalOutput server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetToolDigitalOutputServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetToolDigitalOutputResponse(Ros1Dsr_msgsSetToolDigitalOutputRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetToolDigitalOutputRequest;
        using Response = Ros1Dsr_msgsSetToolDigitalOutputResponse;

        Ros1Dsr_msgsSetToolDigitalOutputServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetToolShape client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetToolShapeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetToolShapeRequest;
        using Response = Ros1Dsr_msgsSetToolShapeResponse;

        Ros1Dsr_msgsSetToolShapeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetToolShapeClient(Ros1Dsr_msgsSetToolShapeClient const&) = delete;
        Ros1Dsr_msgsSetToolShapeClient& operator= (Ros1Dsr_msgsSetToolShapeClient const&) = delete;
        Ros1Dsr_msgsSetToolShapeClient(Ros1Dsr_msgsSetToolShapeClient&&) = delete;

        ~Ros1Dsr_msgsSetToolShapeClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetToolShape_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetToolShape server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetToolShapeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetToolShapeResponse(Ros1Dsr_msgsSetToolShapeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetToolShapeRequest;
        using Response = Ros1Dsr_msgsSetToolShapeResponse;

        Ros1Dsr_msgsSetToolShapeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetToolShape_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetToolShape_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetToolShape_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetToolShape_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetUserCartCoord1 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetUserCartCoord1Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetUserCartCoord1Request;
        using Response = Ros1Dsr_msgsSetUserCartCoord1Response;

        Ros1Dsr_msgsSetUserCartCoord1Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetUserCartCoord1Client(Ros1Dsr_msgsSetUserCartCoord1Client const&) = delete;
        Ros1Dsr_msgsSetUserCartCoord1Client& operator= (Ros1Dsr_msgsSetUserCartCoord1Client const&) = delete;
        Ros1Dsr_msgsSetUserCartCoord1Client(Ros1Dsr_msgsSetUserCartCoord1Client&&) = delete;

        ~Ros1Dsr_msgsSetUserCartCoord1Client()
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
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetUserCartCoord1 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetUserCartCoord1Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetUserCartCoord1Response(Ros1Dsr_msgsSetUserCartCoord1Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetUserCartCoord1Request;
        using Response = Ros1Dsr_msgsSetUserCartCoord1Response;

        Ros1Dsr_msgsSetUserCartCoord1Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetUserCartCoord2 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetUserCartCoord2Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetUserCartCoord2Request;
        using Response = Ros1Dsr_msgsSetUserCartCoord2Response;

        Ros1Dsr_msgsSetUserCartCoord2Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetUserCartCoord2Client(Ros1Dsr_msgsSetUserCartCoord2Client const&) = delete;
        Ros1Dsr_msgsSetUserCartCoord2Client& operator= (Ros1Dsr_msgsSetUserCartCoord2Client const&) = delete;
        Ros1Dsr_msgsSetUserCartCoord2Client(Ros1Dsr_msgsSetUserCartCoord2Client&&) = delete;

        ~Ros1Dsr_msgsSetUserCartCoord2Client()
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
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetUserCartCoord2 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetUserCartCoord2Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetUserCartCoord2Response(Ros1Dsr_msgsSetUserCartCoord2Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetUserCartCoord2Request;
        using Response = Ros1Dsr_msgsSetUserCartCoord2Response;

        Ros1Dsr_msgsSetUserCartCoord2Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetUserCartCoord3 client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetUserCartCoord3Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetUserCartCoord3Request;
        using Response = Ros1Dsr_msgsSetUserCartCoord3Response;

        Ros1Dsr_msgsSetUserCartCoord3Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetUserCartCoord3Client(Ros1Dsr_msgsSetUserCartCoord3Client const&) = delete;
        Ros1Dsr_msgsSetUserCartCoord3Client& operator= (Ros1Dsr_msgsSetUserCartCoord3Client const&) = delete;
        Ros1Dsr_msgsSetUserCartCoord3Client(Ros1Dsr_msgsSetUserCartCoord3Client&&) = delete;

        ~Ros1Dsr_msgsSetUserCartCoord3Client()
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
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetUserCartCoord3 server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetUserCartCoord3Server : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetUserCartCoord3Response(Ros1Dsr_msgsSetUserCartCoord3Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetUserCartCoord3Request;
        using Response = Ros1Dsr_msgsSetUserCartCoord3Response;

        Ros1Dsr_msgsSetUserCartCoord3Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetVelJRT client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetVelJRTClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetVelJRTRequest;
        using Response = Ros1Dsr_msgsSetVelJRTResponse;

        Ros1Dsr_msgsSetVelJRTClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetVelJRTClient(Ros1Dsr_msgsSetVelJRTClient const&) = delete;
        Ros1Dsr_msgsSetVelJRTClient& operator= (Ros1Dsr_msgsSetVelJRTClient const&) = delete;
        Ros1Dsr_msgsSetVelJRTClient(Ros1Dsr_msgsSetVelJRTClient&&) = delete;

        ~Ros1Dsr_msgsSetVelJRTClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetVelJRT_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetVelJRT server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetVelJRTServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetVelJRTResponse(Ros1Dsr_msgsSetVelJRTRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetVelJRTRequest;
        using Response = Ros1Dsr_msgsSetVelJRTResponse;

        Ros1Dsr_msgsSetVelJRTServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetVelJRT_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetVelJRT_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetVelJRT_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetVelJRT_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/SetVelXRT client; default policy returns13 from construction. */
    class Ros1Dsr_msgsSetVelXRTClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsSetVelXRTRequest;
        using Response = Ros1Dsr_msgsSetVelXRTResponse;

        Ros1Dsr_msgsSetVelXRTClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsSetVelXRTClient(Ros1Dsr_msgsSetVelXRTClient const&) = delete;
        Ros1Dsr_msgsSetVelXRTClient& operator= (Ros1Dsr_msgsSetVelXRTClient const&) = delete;
        Ros1Dsr_msgsSetVelXRTClient(Ros1Dsr_msgsSetVelXRTClient&&) = delete;

        ~Ros1Dsr_msgsSetVelXRTClient()
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
            return roswasmc_bounded_1_dsr_msgs_SetVelXRT_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/SetVelXRT server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsSetVelXRTServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsSetVelXRTResponse(Ros1Dsr_msgsSetVelXRTRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsSetVelXRTRequest;
        using Response = Ros1Dsr_msgsSetVelXRTResponse;

        Ros1Dsr_msgsSetVelXRTServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_SetVelXRT_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_SetVelXRT_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_SetVelXRT_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_SetVelXRT_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/StartRTControl client; default policy returns13 from construction. */
    class Ros1Dsr_msgsStartRTControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsStartRTControlRequest;
        using Response = Ros1Dsr_msgsStartRTControlResponse;

        Ros1Dsr_msgsStartRTControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsStartRTControlClient(Ros1Dsr_msgsStartRTControlClient const&) = delete;
        Ros1Dsr_msgsStartRTControlClient& operator= (Ros1Dsr_msgsStartRTControlClient const&) = delete;
        Ros1Dsr_msgsStartRTControlClient(Ros1Dsr_msgsStartRTControlClient&&) = delete;

        ~Ros1Dsr_msgsStartRTControlClient()
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
            return roswasmc_bounded_1_dsr_msgs_StartRTControl_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/StartRTControl server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsStartRTControlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsStartRTControlResponse(Ros1Dsr_msgsStartRTControlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsStartRTControlRequest;
        using Response = Ros1Dsr_msgsStartRTControlResponse;

        Ros1Dsr_msgsStartRTControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_StartRTControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_StartRTControl_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_StartRTControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_StartRTControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/StopRTControl client; default policy returns13 from construction. */
    class Ros1Dsr_msgsStopRTControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsStopRTControlRequest;
        using Response = Ros1Dsr_msgsStopRTControlResponse;

        Ros1Dsr_msgsStopRTControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsStopRTControlClient(Ros1Dsr_msgsStopRTControlClient const&) = delete;
        Ros1Dsr_msgsStopRTControlClient& operator= (Ros1Dsr_msgsStopRTControlClient const&) = delete;
        Ros1Dsr_msgsStopRTControlClient(Ros1Dsr_msgsStopRTControlClient&&) = delete;

        ~Ros1Dsr_msgsStopRTControlClient()
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
            return roswasmc_bounded_1_dsr_msgs_StopRTControl_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/StopRTControl server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsStopRTControlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsStopRTControlResponse(Ros1Dsr_msgsStopRTControlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsStopRTControlRequest;
        using Response = Ros1Dsr_msgsStopRTControlResponse;

        Ros1Dsr_msgsStopRTControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_StopRTControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_StopRTControl_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_StopRTControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_StopRTControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/TaskComplianceCtrl client; default policy returns13 from construction. */
    class Ros1Dsr_msgsTaskComplianceCtrlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsTaskComplianceCtrlRequest;
        using Response = Ros1Dsr_msgsTaskComplianceCtrlResponse;

        Ros1Dsr_msgsTaskComplianceCtrlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsTaskComplianceCtrlClient(Ros1Dsr_msgsTaskComplianceCtrlClient const&) = delete;
        Ros1Dsr_msgsTaskComplianceCtrlClient& operator= (Ros1Dsr_msgsTaskComplianceCtrlClient const&) = delete;
        Ros1Dsr_msgsTaskComplianceCtrlClient(Ros1Dsr_msgsTaskComplianceCtrlClient&&) = delete;

        ~Ros1Dsr_msgsTaskComplianceCtrlClient()
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
            return roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/TaskComplianceCtrl server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsTaskComplianceCtrlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsTaskComplianceCtrlResponse(Ros1Dsr_msgsTaskComplianceCtrlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsTaskComplianceCtrlRequest;
        using Response = Ros1Dsr_msgsTaskComplianceCtrlResponse;

        Ros1Dsr_msgsTaskComplianceCtrlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/Trans client; default policy returns13 from construction. */
    class Ros1Dsr_msgsTransClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsTransRequest;
        using Response = Ros1Dsr_msgsTransResponse;

        Ros1Dsr_msgsTransClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsTransClient(Ros1Dsr_msgsTransClient const&) = delete;
        Ros1Dsr_msgsTransClient& operator= (Ros1Dsr_msgsTransClient const&) = delete;
        Ros1Dsr_msgsTransClient(Ros1Dsr_msgsTransClient&&) = delete;

        ~Ros1Dsr_msgsTransClient()
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
            return roswasmc_bounded_1_dsr_msgs_Trans_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/Trans server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsTransServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsTransResponse(Ros1Dsr_msgsTransRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsTransRequest;
        using Response = Ros1Dsr_msgsTransResponse;

        Ros1Dsr_msgsTransServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_Trans_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_Trans_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_Trans_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_Trans_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom dsr_msgs/WriteDataRT client; default policy returns13 from construction. */
    class Ros1Dsr_msgsWriteDataRTClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Dsr_msgsWriteDataRTRequest;
        using Response = Ros1Dsr_msgsWriteDataRTResponse;

        Ros1Dsr_msgsWriteDataRTClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
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

        Ros1Dsr_msgsWriteDataRTClient(Ros1Dsr_msgsWriteDataRTClient const&) = delete;
        Ros1Dsr_msgsWriteDataRTClient& operator= (Ros1Dsr_msgsWriteDataRTClient const&) = delete;
        Ros1Dsr_msgsWriteDataRTClient(Ros1Dsr_msgsWriteDataRTClient&&) = delete;

        ~Ros1Dsr_msgsWriteDataRTClient()
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
            return roswasmc_bounded_1_dsr_msgs_WriteDataRT_call(&cap_, &request, &response);
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

    /** Typed custom dsr_msgs/WriteDataRT server; advertise/respond stay separate authorities. */
    class Ros1Dsr_msgsWriteDataRTServer : public ServerOwners
    {
        using Handler = std::function<Ros1Dsr_msgsWriteDataRTResponse(Ros1Dsr_msgsWriteDataRTRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Dsr_msgsWriteDataRTRequest;
        using Response = Ros1Dsr_msgsWriteDataRTResponse;

        Ros1Dsr_msgsWriteDataRTServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_dsr_msgs_WriteDataRT_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_dsr_msgs_WriteDataRT_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_dsr_msgs_WriteDataRT_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_dsr_msgs_WriteDataRT_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
