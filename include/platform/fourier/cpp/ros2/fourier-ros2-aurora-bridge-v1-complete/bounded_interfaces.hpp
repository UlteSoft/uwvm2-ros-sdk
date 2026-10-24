/**
 * @file bounded_interfaces.hpp
 * @brief Full fourier cpp codecs and original record metadata.
 * @details Complete fourier ros2_aurora_bridge_v1 values in cpp. 51 original records retain 138 fields and 28
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/fourier/en_US/catalog/.
 */
/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <platform/fourier/c/ros2/fourier-ros2-aurora-bridge-v1-complete/bounded_interfaces.h>
#include <platform/fourier/cpp/ros2/fourier-ros2-aurora-bridge-v1-complete/bounded_records.hpp>
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

    /** Complete custom uwvm_fourier_bridge/srv/ExecuteMove client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response;

        Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient(Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient& operator= (Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient(Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvExecuteMoveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/ExecuteMove server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvExecuteMoveServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response;

        Ros2Uwvm_fourier_bridgeSrvExecuteMoveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetBaseData client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response;

        Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient(Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient(Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetBaseDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetBaseData server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetBaseDataServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response;

        Ros2Uwvm_fourier_bridgeSrvGetBaseDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetCartesianState client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient(Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient(Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetCartesianStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetCartesianState server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetCartesianStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetCartesianStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetContactData client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetContactDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response;

        Ros2Uwvm_fourier_bridgeSrvGetContactDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetContactDataClient(Ros2Uwvm_fourier_bridgeSrvGetContactDataClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetContactDataClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetContactDataClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetContactDataClient(Ros2Uwvm_fourier_bridgeSrvGetContactDataClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetContactDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetContactData server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetContactDataServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(Ros2Uwvm_fourier_bridgeSrvGetContactData_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response;

        Ros2Uwvm_fourier_bridgeSrvGetContactDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetFsmName client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response;

        Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient(Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient(Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetFsmNameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetFsmName server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetFsmNameServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response;

        Ros2Uwvm_fourier_bridgeSrvGetFsmNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetFsmState client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient(Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient(Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetFsmStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetFsmState server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetFsmStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetFsmStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetGroupMotionState client; default policy returns13 from construction.
     */
    class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetGroupMotionState server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetGroupMotorCfg client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response;

        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetGroupMotorCfg server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response;

        Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetGroupState client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient(Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient(Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetGroupStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetGroupState server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetGroupStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetGroupStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetSnapshot client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response;

        Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient(Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient(Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetSnapshotClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetSnapshot server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetSnapshotServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response;

        Ros2Uwvm_fourier_bridgeSrvGetSnapshotServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetStandPose client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response;

        Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient(Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient(Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetStandPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetStandPose server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetStandPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response;

        Ros2Uwvm_fourier_bridgeSrvGetStandPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetUpperFsmName client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response;

        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetUpperFsmName server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response;

        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetUpperFsmState client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetUpperFsmState server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response;

        Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetVelocitySource client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response;

        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetVelocitySource server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response;

        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/GetVelocitySourceName client; default policy returns13 from
     * construction. */
    class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response;

        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient& operator= (Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/GetVelocitySourceName server; advertise/respond stay separate authorities.
     */
    class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response;

        Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/SetFsmState client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response;

        Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient(Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient& operator= (Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient(Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvSetFsmStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/SetFsmState server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvSetFsmStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response;

        Ros2Uwvm_fourier_bridgeSrvSetFsmStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/SetGroupCommand client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response;

        Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient(Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient& operator= (Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient(Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvSetGroupCommandClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/SetGroupCommand server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvSetGroupCommandServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response;

        Ros2Uwvm_fourier_bridgeSrvSetGroupCommandServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/SetMotorCfgPd client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response;

        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient& operator= (Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/SetMotorCfgPd server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response;

        Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/SetStandPose client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response;

        Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient(Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient& operator= (Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient(Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvSetStandPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/SetStandPose server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvSetStandPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response;

        Ros2Uwvm_fourier_bridgeSrvSetStandPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/SetUpperFsmState client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response;

        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient& operator= (Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/SetUpperFsmState server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response;

        Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/SetVelocity client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvSetVelocityClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response;

        Ros2Uwvm_fourier_bridgeSrvSetVelocityClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvSetVelocityClient(Ros2Uwvm_fourier_bridgeSrvSetVelocityClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetVelocityClient& operator= (Ros2Uwvm_fourier_bridgeSrvSetVelocityClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetVelocityClient(Ros2Uwvm_fourier_bridgeSrvSetVelocityClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvSetVelocityClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/SetVelocity server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvSetVelocityServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response;

        Ros2Uwvm_fourier_bridgeSrvSetVelocityServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/SetVelocitySource client; default policy returns13 from construction. */
    class Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response;

        Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient(Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient& operator= (Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient(Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/SetVelocitySource server; advertise/respond stay separate authorities. */
    class Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response;

        Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/srv/WaitGroupsMotionComplete client; default policy returns13 from
     * construction. */
    class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response;

        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient& operator= (Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient const&) = delete;
        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient&&) = delete;

        ~Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/srv/WaitGroupsMotionComplete server; advertise/respond stay separate
     * authorities. */
    class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteServer : public ServerOwners
    {
        using Handler =
            std::function<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request;
        using Response = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response;

        Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
