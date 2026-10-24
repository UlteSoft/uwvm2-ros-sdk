/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <platform/trossen/c/ros2/trossen-ros2-iron-complete/bounded_interfaces.h>
#include <platform/trossen/cpp/ros2/trossen-ros2-iron-complete/bounded_records.hpp>
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

    /** @brief Complete custom interbotix_slate_msgs/srv/SetLightState client; default policy returns13 from construction. */
    class Ros2Interbotix_slate_msgsSrvSetLightStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Interbotix_slate_msgsSrvSetLightState_Request;
        using Response = Ros2Interbotix_slate_msgsSrvSetLightState_Response;

        Ros2Interbotix_slate_msgsSrvSetLightStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Interbotix_slate_msgsSrvSetLightStateClient(Ros2Interbotix_slate_msgsSrvSetLightStateClient const&) = delete;
        Ros2Interbotix_slate_msgsSrvSetLightStateClient& operator= (Ros2Interbotix_slate_msgsSrvSetLightStateClient const&) = delete;
        Ros2Interbotix_slate_msgsSrvSetLightStateClient(Ros2Interbotix_slate_msgsSrvSetLightStateClient&&) = delete;

        ~Ros2Interbotix_slate_msgsSrvSetLightStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_slate_msgs/srv/SetLightState server; advertise/respond stay separate authorities. */
    class Ros2Interbotix_slate_msgsSrvSetLightStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Interbotix_slate_msgsSrvSetLightState_Response(Ros2Interbotix_slate_msgsSrvSetLightState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Interbotix_slate_msgsSrvSetLightState_Request;
        using Response = Ros2Interbotix_slate_msgsSrvSetLightState_Response;

        Ros2Interbotix_slate_msgsSrvSetLightStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_slate_msgs/srv/SetString client; default policy returns13 from construction. */
    class Ros2Interbotix_slate_msgsSrvSetStringClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Interbotix_slate_msgsSrvSetString_Request;
        using Response = Ros2Interbotix_slate_msgsSrvSetString_Response;

        Ros2Interbotix_slate_msgsSrvSetStringClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Interbotix_slate_msgsSrvSetStringClient(Ros2Interbotix_slate_msgsSrvSetStringClient const&) = delete;
        Ros2Interbotix_slate_msgsSrvSetStringClient& operator= (Ros2Interbotix_slate_msgsSrvSetStringClient const&) = delete;
        Ros2Interbotix_slate_msgsSrvSetStringClient(Ros2Interbotix_slate_msgsSrvSetStringClient&&) = delete;

        ~Ros2Interbotix_slate_msgsSrvSetStringClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_slate_msgs/srv/SetString server; advertise/respond stay separate authorities. */
    class Ros2Interbotix_slate_msgsSrvSetStringServer : public ServerOwners
    {
        using Handler = std::function<Ros2Interbotix_slate_msgsSrvSetString_Response(Ros2Interbotix_slate_msgsSrvSetString_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Interbotix_slate_msgsSrvSetString_Request;
        using Response = Ros2Interbotix_slate_msgsSrvSetString_Response;

        Ros2Interbotix_slate_msgsSrvSetStringServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/srv/MotorGains client; default policy returns13 from construction. */
    class Ros2Interbotix_xs_msgsSrvMotorGainsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Interbotix_xs_msgsSrvMotorGains_Request;
        using Response = Ros2Interbotix_xs_msgsSrvMotorGains_Response;

        Ros2Interbotix_xs_msgsSrvMotorGainsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Interbotix_xs_msgsSrvMotorGainsClient(Ros2Interbotix_xs_msgsSrvMotorGainsClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvMotorGainsClient& operator= (Ros2Interbotix_xs_msgsSrvMotorGainsClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvMotorGainsClient(Ros2Interbotix_xs_msgsSrvMotorGainsClient&&) = delete;

        ~Ros2Interbotix_xs_msgsSrvMotorGainsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/srv/MotorGains server; advertise/respond stay separate authorities. */
    class Ros2Interbotix_xs_msgsSrvMotorGainsServer : public ServerOwners
    {
        using Handler = std::function<Ros2Interbotix_xs_msgsSrvMotorGains_Response(Ros2Interbotix_xs_msgsSrvMotorGains_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Interbotix_xs_msgsSrvMotorGains_Request;
        using Response = Ros2Interbotix_xs_msgsSrvMotorGains_Response;

        Ros2Interbotix_xs_msgsSrvMotorGainsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/srv/OperatingModes client; default policy returns13 from construction. */
    class Ros2Interbotix_xs_msgsSrvOperatingModesClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Interbotix_xs_msgsSrvOperatingModes_Request;
        using Response = Ros2Interbotix_xs_msgsSrvOperatingModes_Response;

        Ros2Interbotix_xs_msgsSrvOperatingModesClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Interbotix_xs_msgsSrvOperatingModesClient(Ros2Interbotix_xs_msgsSrvOperatingModesClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvOperatingModesClient& operator= (Ros2Interbotix_xs_msgsSrvOperatingModesClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvOperatingModesClient(Ros2Interbotix_xs_msgsSrvOperatingModesClient&&) = delete;

        ~Ros2Interbotix_xs_msgsSrvOperatingModesClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/srv/OperatingModes server; advertise/respond stay separate authorities. */
    class Ros2Interbotix_xs_msgsSrvOperatingModesServer : public ServerOwners
    {
        using Handler = std::function<Ros2Interbotix_xs_msgsSrvOperatingModes_Response(Ros2Interbotix_xs_msgsSrvOperatingModes_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Interbotix_xs_msgsSrvOperatingModes_Request;
        using Response = Ros2Interbotix_xs_msgsSrvOperatingModes_Response;

        Ros2Interbotix_xs_msgsSrvOperatingModesServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/srv/Reboot client; default policy returns13 from construction. */
    class Ros2Interbotix_xs_msgsSrvRebootClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Interbotix_xs_msgsSrvReboot_Request;
        using Response = Ros2Interbotix_xs_msgsSrvReboot_Response;

        Ros2Interbotix_xs_msgsSrvRebootClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Interbotix_xs_msgsSrvRebootClient(Ros2Interbotix_xs_msgsSrvRebootClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvRebootClient& operator= (Ros2Interbotix_xs_msgsSrvRebootClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvRebootClient(Ros2Interbotix_xs_msgsSrvRebootClient&&) = delete;

        ~Ros2Interbotix_xs_msgsSrvRebootClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/srv/Reboot server; advertise/respond stay separate authorities. */
    class Ros2Interbotix_xs_msgsSrvRebootServer : public ServerOwners
    {
        using Handler = std::function<Ros2Interbotix_xs_msgsSrvReboot_Response(Ros2Interbotix_xs_msgsSrvReboot_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Interbotix_xs_msgsSrvReboot_Request;
        using Response = Ros2Interbotix_xs_msgsSrvReboot_Response;

        Ros2Interbotix_xs_msgsSrvRebootServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/srv/RegisterValues client; default policy returns13 from construction. */
    class Ros2Interbotix_xs_msgsSrvRegisterValuesClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Interbotix_xs_msgsSrvRegisterValues_Request;
        using Response = Ros2Interbotix_xs_msgsSrvRegisterValues_Response;

        Ros2Interbotix_xs_msgsSrvRegisterValuesClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Interbotix_xs_msgsSrvRegisterValuesClient(Ros2Interbotix_xs_msgsSrvRegisterValuesClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvRegisterValuesClient& operator= (Ros2Interbotix_xs_msgsSrvRegisterValuesClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvRegisterValuesClient(Ros2Interbotix_xs_msgsSrvRegisterValuesClient&&) = delete;

        ~Ros2Interbotix_xs_msgsSrvRegisterValuesClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/srv/RegisterValues server; advertise/respond stay separate authorities. */
    class Ros2Interbotix_xs_msgsSrvRegisterValuesServer : public ServerOwners
    {
        using Handler = std::function<Ros2Interbotix_xs_msgsSrvRegisterValues_Response(Ros2Interbotix_xs_msgsSrvRegisterValues_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Interbotix_xs_msgsSrvRegisterValues_Request;
        using Response = Ros2Interbotix_xs_msgsSrvRegisterValues_Response;

        Ros2Interbotix_xs_msgsSrvRegisterValuesServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/srv/RobotInfo client; default policy returns13 from construction. */
    class Ros2Interbotix_xs_msgsSrvRobotInfoClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Interbotix_xs_msgsSrvRobotInfo_Request;
        using Response = Ros2Interbotix_xs_msgsSrvRobotInfo_Response;

        Ros2Interbotix_xs_msgsSrvRobotInfoClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Interbotix_xs_msgsSrvRobotInfoClient(Ros2Interbotix_xs_msgsSrvRobotInfoClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvRobotInfoClient& operator= (Ros2Interbotix_xs_msgsSrvRobotInfoClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvRobotInfoClient(Ros2Interbotix_xs_msgsSrvRobotInfoClient&&) = delete;

        ~Ros2Interbotix_xs_msgsSrvRobotInfoClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/srv/RobotInfo server; advertise/respond stay separate authorities. */
    class Ros2Interbotix_xs_msgsSrvRobotInfoServer : public ServerOwners
    {
        using Handler = std::function<Ros2Interbotix_xs_msgsSrvRobotInfo_Response(Ros2Interbotix_xs_msgsSrvRobotInfo_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Interbotix_xs_msgsSrvRobotInfo_Request;
        using Response = Ros2Interbotix_xs_msgsSrvRobotInfo_Response;

        Ros2Interbotix_xs_msgsSrvRobotInfoServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/srv/TorqueEnable client; default policy returns13 from construction. */
    class Ros2Interbotix_xs_msgsSrvTorqueEnableClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request;
        using Response = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response;

        Ros2Interbotix_xs_msgsSrvTorqueEnableClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros2Interbotix_xs_msgsSrvTorqueEnableClient(Ros2Interbotix_xs_msgsSrvTorqueEnableClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvTorqueEnableClient& operator= (Ros2Interbotix_xs_msgsSrvTorqueEnableClient const&) = delete;
        Ros2Interbotix_xs_msgsSrvTorqueEnableClient(Ros2Interbotix_xs_msgsSrvTorqueEnableClient&&) = delete;

        ~Ros2Interbotix_xs_msgsSrvTorqueEnableClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/srv/TorqueEnable server; advertise/respond stay separate authorities. */
    class Ros2Interbotix_xs_msgsSrvTorqueEnableServer : public ServerOwners
    {
        using Handler = std::function<Ros2Interbotix_xs_msgsSrvTorqueEnable_Response(Ros2Interbotix_xs_msgsSrvTorqueEnable_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request;
        using Response = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response;

        Ros2Interbotix_xs_msgsSrvTorqueEnableServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
