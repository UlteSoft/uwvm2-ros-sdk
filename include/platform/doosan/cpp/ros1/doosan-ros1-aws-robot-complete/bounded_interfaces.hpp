/**
 * @file bounded_interfaces.hpp
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros1-aws-robot-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <doosan/c/ros1/doosan-ros1-aws-robot-complete/bounded_interfaces.h>
#include <doosan/cpp/ros1/doosan-ros1-aws-robot-complete/bounded_records.hpp>
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
}  // namespace uwvm_custom
