/**
 * @file bounded_interfaces.hpp
 * @brief Full fourier cpp codecs and original record metadata.
 * @details Complete fourier ros1_aurora_bridge_v1 values in cpp. 51 original records retain 138 fields and 28
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
#include <platform/fourier/c/ros1/fourier-ros1-aurora-bridge-v1-complete/bounded_interfaces.h>
#include <platform/fourier/cpp/ros1/fourier-ros1-aurora-bridge-v1-complete/bounded_records.hpp>
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

    /** Complete custom uwvm_fourier_bridge/ExecuteMove client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeExecuteMoveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeExecuteMoveRequest;
        using Response = Ros1Uwvm_fourier_bridgeExecuteMoveResponse;

        Ros1Uwvm_fourier_bridgeExecuteMoveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeExecuteMoveClient(Ros1Uwvm_fourier_bridgeExecuteMoveClient const&) = delete;
        Ros1Uwvm_fourier_bridgeExecuteMoveClient& operator= (Ros1Uwvm_fourier_bridgeExecuteMoveClient const&) = delete;
        Ros1Uwvm_fourier_bridgeExecuteMoveClient(Ros1Uwvm_fourier_bridgeExecuteMoveClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeExecuteMoveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMove_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/ExecuteMove server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeExecuteMoveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeExecuteMoveResponse(Ros1Uwvm_fourier_bridgeExecuteMoveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeExecuteMoveRequest;
        using Response = Ros1Uwvm_fourier_bridgeExecuteMoveResponse;

        Ros1Uwvm_fourier_bridgeExecuteMoveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMove_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMove_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMove_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMove_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetBaseData client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetBaseDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetBaseDataRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetBaseDataResponse;

        Ros1Uwvm_fourier_bridgeGetBaseDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetBaseDataClient(Ros1Uwvm_fourier_bridgeGetBaseDataClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetBaseDataClient& operator= (Ros1Uwvm_fourier_bridgeGetBaseDataClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetBaseDataClient(Ros1Uwvm_fourier_bridgeGetBaseDataClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetBaseDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseData_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetBaseData server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetBaseDataServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetBaseDataResponse(Ros1Uwvm_fourier_bridgeGetBaseDataRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetBaseDataRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetBaseDataResponse;

        Ros1Uwvm_fourier_bridgeGetBaseDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseData_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseData_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseData_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetCartesianState client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetCartesianStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse;

        Ros1Uwvm_fourier_bridgeGetCartesianStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetCartesianStateClient(Ros1Uwvm_fourier_bridgeGetCartesianStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetCartesianStateClient& operator= (Ros1Uwvm_fourier_bridgeGetCartesianStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetCartesianStateClient(Ros1Uwvm_fourier_bridgeGetCartesianStateClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetCartesianStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetCartesianState server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetCartesianStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(Ros1Uwvm_fourier_bridgeGetCartesianStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse;

        Ros1Uwvm_fourier_bridgeGetCartesianStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetContactData client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetContactDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetContactDataRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetContactDataResponse;

        Ros1Uwvm_fourier_bridgeGetContactDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetContactDataClient(Ros1Uwvm_fourier_bridgeGetContactDataClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetContactDataClient& operator= (Ros1Uwvm_fourier_bridgeGetContactDataClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetContactDataClient(Ros1Uwvm_fourier_bridgeGetContactDataClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetContactDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactData_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetContactData server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetContactDataServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetContactDataResponse(Ros1Uwvm_fourier_bridgeGetContactDataRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetContactDataRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetContactDataResponse;

        Ros1Uwvm_fourier_bridgeGetContactDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactData_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactData_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetContactData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactData_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetFsmName client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetFsmNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetFsmNameRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetFsmNameResponse;

        Ros1Uwvm_fourier_bridgeGetFsmNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetFsmNameClient(Ros1Uwvm_fourier_bridgeGetFsmNameClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetFsmNameClient& operator= (Ros1Uwvm_fourier_bridgeGetFsmNameClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetFsmNameClient(Ros1Uwvm_fourier_bridgeGetFsmNameClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetFsmNameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetFsmName server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetFsmNameServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetFsmNameResponse(Ros1Uwvm_fourier_bridgeGetFsmNameRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetFsmNameRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetFsmNameResponse;

        Ros1Uwvm_fourier_bridgeGetFsmNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmName_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetFsmState client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetFsmStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetFsmStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetFsmStateResponse;

        Ros1Uwvm_fourier_bridgeGetFsmStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetFsmStateClient(Ros1Uwvm_fourier_bridgeGetFsmStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetFsmStateClient& operator= (Ros1Uwvm_fourier_bridgeGetFsmStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetFsmStateClient(Ros1Uwvm_fourier_bridgeGetFsmStateClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetFsmStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetFsmState server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetFsmStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetFsmStateResponse(Ros1Uwvm_fourier_bridgeGetFsmStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetFsmStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetFsmStateResponse;

        Ros1Uwvm_fourier_bridgeGetFsmStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetGroupMotionState client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse;

        Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient(Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient& operator= (Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient(Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetGroupMotionState server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetGroupMotionStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse;

        Ros1Uwvm_fourier_bridgeGetGroupMotionStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetGroupMotorCfg client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse;

        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient& operator= (Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfg_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetGroupMotorCfg server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse;

        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfg_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfg_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfg_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfg_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetGroupState client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetGroupStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetGroupStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetGroupStateResponse;

        Ros1Uwvm_fourier_bridgeGetGroupStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetGroupStateClient(Ros1Uwvm_fourier_bridgeGetGroupStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetGroupStateClient& operator= (Ros1Uwvm_fourier_bridgeGetGroupStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetGroupStateClient(Ros1Uwvm_fourier_bridgeGetGroupStateClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetGroupStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetGroupState server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetGroupStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetGroupStateResponse(Ros1Uwvm_fourier_bridgeGetGroupStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetGroupStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetGroupStateResponse;

        Ros1Uwvm_fourier_bridgeGetGroupStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetSnapshot client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetSnapshotClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetSnapshotRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetSnapshotResponse;

        Ros1Uwvm_fourier_bridgeGetSnapshotClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetSnapshotClient(Ros1Uwvm_fourier_bridgeGetSnapshotClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetSnapshotClient& operator= (Ros1Uwvm_fourier_bridgeGetSnapshotClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetSnapshotClient(Ros1Uwvm_fourier_bridgeGetSnapshotClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetSnapshotClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshot_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetSnapshot server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetSnapshotServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetSnapshotResponse(Ros1Uwvm_fourier_bridgeGetSnapshotRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetSnapshotRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetSnapshotResponse;

        Ros1Uwvm_fourier_bridgeGetSnapshotServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshot_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshot_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshot_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshot_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetStandPose client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetStandPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetStandPoseRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetStandPoseResponse;

        Ros1Uwvm_fourier_bridgeGetStandPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetStandPoseClient(Ros1Uwvm_fourier_bridgeGetStandPoseClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetStandPoseClient& operator= (Ros1Uwvm_fourier_bridgeGetStandPoseClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetStandPoseClient(Ros1Uwvm_fourier_bridgeGetStandPoseClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetStandPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetStandPose server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetStandPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetStandPoseResponse(Ros1Uwvm_fourier_bridgeGetStandPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetStandPoseRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetStandPoseResponse;

        Ros1Uwvm_fourier_bridgeGetStandPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetUpperFsmName client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse;

        Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient(Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient& operator= (Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient(Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetUpperFsmName server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetUpperFsmNameServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse;

        Ros1Uwvm_fourier_bridgeGetUpperFsmNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmName_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetUpperFsmState client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse;

        Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient(Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient& operator= (Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient(Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetUpperFsmState server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetUpperFsmStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse;

        Ros1Uwvm_fourier_bridgeGetUpperFsmStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetVelocitySource client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetVelocitySourceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse;

        Ros1Uwvm_fourier_bridgeGetVelocitySourceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetVelocitySourceClient(Ros1Uwvm_fourier_bridgeGetVelocitySourceClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetVelocitySourceClient& operator= (Ros1Uwvm_fourier_bridgeGetVelocitySourceClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetVelocitySourceClient(Ros1Uwvm_fourier_bridgeGetVelocitySourceClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetVelocitySourceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySource_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetVelocitySource server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetVelocitySourceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse;

        Ros1Uwvm_fourier_bridgeGetVelocitySourceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySource_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySource_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySource_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySource_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/GetVelocitySourceName client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse;

        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient& operator= (Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient const&) = delete;
        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/GetVelocitySourceName server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest;
        using Response = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse;

        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceName_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/SetFsmState client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeSetFsmStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetFsmStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetFsmStateResponse;

        Ros1Uwvm_fourier_bridgeSetFsmStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeSetFsmStateClient(Ros1Uwvm_fourier_bridgeSetFsmStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetFsmStateClient& operator= (Ros1Uwvm_fourier_bridgeSetFsmStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetFsmStateClient(Ros1Uwvm_fourier_bridgeSetFsmStateClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeSetFsmStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/SetFsmState server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeSetFsmStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeSetFsmStateResponse(Ros1Uwvm_fourier_bridgeSetFsmStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetFsmStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetFsmStateResponse;

        Ros1Uwvm_fourier_bridgeSetFsmStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/SetGroupCommand client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeSetGroupCommandClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse;

        Ros1Uwvm_fourier_bridgeSetGroupCommandClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeSetGroupCommandClient(Ros1Uwvm_fourier_bridgeSetGroupCommandClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetGroupCommandClient& operator= (Ros1Uwvm_fourier_bridgeSetGroupCommandClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetGroupCommandClient(Ros1Uwvm_fourier_bridgeSetGroupCommandClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeSetGroupCommandClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommand_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/SetGroupCommand server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeSetGroupCommandServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(Ros1Uwvm_fourier_bridgeSetGroupCommandRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse;

        Ros1Uwvm_fourier_bridgeSetGroupCommandServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommand_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommand_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommand_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommand_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/SetMotorCfgPd client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse;

        Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient(Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient& operator= (Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient(Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPd_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/SetMotorCfgPd server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeSetMotorCfgPdServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse;

        Ros1Uwvm_fourier_bridgeSetMotorCfgPdServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPd_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPd_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPd_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPd_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/SetStandPose client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeSetStandPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetStandPoseRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetStandPoseResponse;

        Ros1Uwvm_fourier_bridgeSetStandPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeSetStandPoseClient(Ros1Uwvm_fourier_bridgeSetStandPoseClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetStandPoseClient& operator= (Ros1Uwvm_fourier_bridgeSetStandPoseClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetStandPoseClient(Ros1Uwvm_fourier_bridgeSetStandPoseClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeSetStandPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/SetStandPose server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeSetStandPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeSetStandPoseResponse(Ros1Uwvm_fourier_bridgeSetStandPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetStandPoseRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetStandPoseResponse;

        Ros1Uwvm_fourier_bridgeSetStandPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/SetUpperFsmState client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse;

        Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient(Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient& operator= (Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient(Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/SetUpperFsmState server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeSetUpperFsmStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse;

        Ros1Uwvm_fourier_bridgeSetUpperFsmStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/SetVelocity client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeSetVelocityClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetVelocityRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetVelocityResponse;

        Ros1Uwvm_fourier_bridgeSetVelocityClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeSetVelocityClient(Ros1Uwvm_fourier_bridgeSetVelocityClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetVelocityClient& operator= (Ros1Uwvm_fourier_bridgeSetVelocityClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetVelocityClient(Ros1Uwvm_fourier_bridgeSetVelocityClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeSetVelocityClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocity_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/SetVelocity server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeSetVelocityServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeSetVelocityResponse(Ros1Uwvm_fourier_bridgeSetVelocityRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetVelocityRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetVelocityResponse;

        Ros1Uwvm_fourier_bridgeSetVelocityServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocity_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocity_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocity_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocity_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/SetVelocitySource client; default policy returns13 from construction. */
    class Ros1Uwvm_fourier_bridgeSetVelocitySourceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse;

        Ros1Uwvm_fourier_bridgeSetVelocitySourceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeSetVelocitySourceClient(Ros1Uwvm_fourier_bridgeSetVelocitySourceClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetVelocitySourceClient& operator= (Ros1Uwvm_fourier_bridgeSetVelocitySourceClient const&) = delete;
        Ros1Uwvm_fourier_bridgeSetVelocitySourceClient(Ros1Uwvm_fourier_bridgeSetVelocitySourceClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeSetVelocitySourceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySource_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/SetVelocitySource server; advertise/respond stay separate authorities. */
    class Ros1Uwvm_fourier_bridgeSetVelocitySourceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest;
        using Response = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse;

        Ros1Uwvm_fourier_bridgeSetVelocitySourceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySource_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySource_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySource_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySource_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom uwvm_fourier_bridge/WaitGroupsMotionComplete client; default policy returns13 from construction.
     */
    class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest;
        using Response = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse;

        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient const&) = delete;
        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient& operator= (Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient const&) = delete;
        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient&&) = delete;

        ~Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionComplete_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom uwvm_fourier_bridge/WaitGroupsMotionComplete server; advertise/respond stay separate authorities.
     */
    class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteServer : public ServerOwners
    {
        using Handler = std::function<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest;
        using Response = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse;

        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionComplete_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionComplete_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionComplete_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionComplete_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
