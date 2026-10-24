/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <platform/trossen/c/ros1/trossen-ros1-noetic-complete/bounded_interfaces.h>
#include <platform/trossen/cpp/ros1/trossen-ros1-noetic-complete/bounded_records.hpp>
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

    /** @brief Complete custom interbotix_slate_msgs/SetString client; default policy returns13 from construction. */
    class Ros1Interbotix_slate_msgsSetStringClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Interbotix_slate_msgsSetStringRequest;
        using Response = Ros1Interbotix_slate_msgsSetStringResponse;

        Ros1Interbotix_slate_msgsSetStringClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Interbotix_slate_msgsSetStringClient(Ros1Interbotix_slate_msgsSetStringClient const&) = delete;
        Ros1Interbotix_slate_msgsSetStringClient& operator= (Ros1Interbotix_slate_msgsSetStringClient const&) = delete;
        Ros1Interbotix_slate_msgsSetStringClient(Ros1Interbotix_slate_msgsSetStringClient&&) = delete;

        ~Ros1Interbotix_slate_msgsSetStringClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_slate_msgs_SetString_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_slate_msgs/SetString server; advertise/respond stay separate authorities. */
    class Ros1Interbotix_slate_msgsSetStringServer : public ServerOwners
    {
        using Handler = std::function<Ros1Interbotix_slate_msgsSetStringResponse(Ros1Interbotix_slate_msgsSetStringRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Interbotix_slate_msgsSetStringRequest;
        using Response = Ros1Interbotix_slate_msgsSetStringResponse;

        Ros1Interbotix_slate_msgsSetStringServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_interbotix_slate_msgs_SetString_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_slate_msgs_SetString_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_interbotix_slate_msgs_SetString_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_interbotix_slate_msgs_SetString_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/MotorGains client; default policy returns13 from construction. */
    class Ros1Interbotix_xs_msgsMotorGainsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Interbotix_xs_msgsMotorGainsRequest;
        using Response = Ros1Interbotix_xs_msgsMotorGainsResponse;

        Ros1Interbotix_xs_msgsMotorGainsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Interbotix_xs_msgsMotorGainsClient(Ros1Interbotix_xs_msgsMotorGainsClient const&) = delete;
        Ros1Interbotix_xs_msgsMotorGainsClient& operator= (Ros1Interbotix_xs_msgsMotorGainsClient const&) = delete;
        Ros1Interbotix_xs_msgsMotorGainsClient(Ros1Interbotix_xs_msgsMotorGainsClient&&) = delete;

        ~Ros1Interbotix_xs_msgsMotorGainsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/MotorGains server; advertise/respond stay separate authorities. */
    class Ros1Interbotix_xs_msgsMotorGainsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Interbotix_xs_msgsMotorGainsResponse(Ros1Interbotix_xs_msgsMotorGainsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Interbotix_xs_msgsMotorGainsRequest;
        using Response = Ros1Interbotix_xs_msgsMotorGainsResponse;

        Ros1Interbotix_xs_msgsMotorGainsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/OperatingModes client; default policy returns13 from construction. */
    class Ros1Interbotix_xs_msgsOperatingModesClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Interbotix_xs_msgsOperatingModesRequest;
        using Response = Ros1Interbotix_xs_msgsOperatingModesResponse;

        Ros1Interbotix_xs_msgsOperatingModesClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Interbotix_xs_msgsOperatingModesClient(Ros1Interbotix_xs_msgsOperatingModesClient const&) = delete;
        Ros1Interbotix_xs_msgsOperatingModesClient& operator= (Ros1Interbotix_xs_msgsOperatingModesClient const&) = delete;
        Ros1Interbotix_xs_msgsOperatingModesClient(Ros1Interbotix_xs_msgsOperatingModesClient&&) = delete;

        ~Ros1Interbotix_xs_msgsOperatingModesClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/OperatingModes server; advertise/respond stay separate authorities. */
    class Ros1Interbotix_xs_msgsOperatingModesServer : public ServerOwners
    {
        using Handler = std::function<Ros1Interbotix_xs_msgsOperatingModesResponse(Ros1Interbotix_xs_msgsOperatingModesRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Interbotix_xs_msgsOperatingModesRequest;
        using Response = Ros1Interbotix_xs_msgsOperatingModesResponse;

        Ros1Interbotix_xs_msgsOperatingModesServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/Reboot client; default policy returns13 from construction. */
    class Ros1Interbotix_xs_msgsRebootClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Interbotix_xs_msgsRebootRequest;
        using Response = Ros1Interbotix_xs_msgsRebootResponse;

        Ros1Interbotix_xs_msgsRebootClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Interbotix_xs_msgsRebootClient(Ros1Interbotix_xs_msgsRebootClient const&) = delete;
        Ros1Interbotix_xs_msgsRebootClient& operator= (Ros1Interbotix_xs_msgsRebootClient const&) = delete;
        Ros1Interbotix_xs_msgsRebootClient(Ros1Interbotix_xs_msgsRebootClient&&) = delete;

        ~Ros1Interbotix_xs_msgsRebootClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_Reboot_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/Reboot server; advertise/respond stay separate authorities. */
    class Ros1Interbotix_xs_msgsRebootServer : public ServerOwners
    {
        using Handler = std::function<Ros1Interbotix_xs_msgsRebootResponse(Ros1Interbotix_xs_msgsRebootRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Interbotix_xs_msgsRebootRequest;
        using Response = Ros1Interbotix_xs_msgsRebootResponse;

        Ros1Interbotix_xs_msgsRebootServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_interbotix_xs_msgs_Reboot_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_Reboot_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_interbotix_xs_msgs_Reboot_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_interbotix_xs_msgs_Reboot_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/RegisterValues client; default policy returns13 from construction. */
    class Ros1Interbotix_xs_msgsRegisterValuesClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Interbotix_xs_msgsRegisterValuesRequest;
        using Response = Ros1Interbotix_xs_msgsRegisterValuesResponse;

        Ros1Interbotix_xs_msgsRegisterValuesClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Interbotix_xs_msgsRegisterValuesClient(Ros1Interbotix_xs_msgsRegisterValuesClient const&) = delete;
        Ros1Interbotix_xs_msgsRegisterValuesClient& operator= (Ros1Interbotix_xs_msgsRegisterValuesClient const&) = delete;
        Ros1Interbotix_xs_msgsRegisterValuesClient(Ros1Interbotix_xs_msgsRegisterValuesClient&&) = delete;

        ~Ros1Interbotix_xs_msgsRegisterValuesClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/RegisterValues server; advertise/respond stay separate authorities. */
    class Ros1Interbotix_xs_msgsRegisterValuesServer : public ServerOwners
    {
        using Handler = std::function<Ros1Interbotix_xs_msgsRegisterValuesResponse(Ros1Interbotix_xs_msgsRegisterValuesRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Interbotix_xs_msgsRegisterValuesRequest;
        using Response = Ros1Interbotix_xs_msgsRegisterValuesResponse;

        Ros1Interbotix_xs_msgsRegisterValuesServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/RobotInfo client; default policy returns13 from construction. */
    class Ros1Interbotix_xs_msgsRobotInfoClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Interbotix_xs_msgsRobotInfoRequest;
        using Response = Ros1Interbotix_xs_msgsRobotInfoResponse;

        Ros1Interbotix_xs_msgsRobotInfoClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Interbotix_xs_msgsRobotInfoClient(Ros1Interbotix_xs_msgsRobotInfoClient const&) = delete;
        Ros1Interbotix_xs_msgsRobotInfoClient& operator= (Ros1Interbotix_xs_msgsRobotInfoClient const&) = delete;
        Ros1Interbotix_xs_msgsRobotInfoClient(Ros1Interbotix_xs_msgsRobotInfoClient&&) = delete;

        ~Ros1Interbotix_xs_msgsRobotInfoClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/RobotInfo server; advertise/respond stay separate authorities. */
    class Ros1Interbotix_xs_msgsRobotInfoServer : public ServerOwners
    {
        using Handler = std::function<Ros1Interbotix_xs_msgsRobotInfoResponse(Ros1Interbotix_xs_msgsRobotInfoRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Interbotix_xs_msgsRobotInfoRequest;
        using Response = Ros1Interbotix_xs_msgsRobotInfoResponse;

        Ros1Interbotix_xs_msgsRobotInfoServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom interbotix_xs_msgs/TorqueEnable client; default policy returns13 from construction. */
    class Ros1Interbotix_xs_msgsTorqueEnableClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Interbotix_xs_msgsTorqueEnableRequest;
        using Response = Ros1Interbotix_xs_msgsTorqueEnableResponse;

        Ros1Interbotix_xs_msgsTorqueEnableClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Interbotix_xs_msgsTorqueEnableClient(Ros1Interbotix_xs_msgsTorqueEnableClient const&) = delete;
        Ros1Interbotix_xs_msgsTorqueEnableClient& operator= (Ros1Interbotix_xs_msgsTorqueEnableClient const&) = delete;
        Ros1Interbotix_xs_msgsTorqueEnableClient(Ros1Interbotix_xs_msgsTorqueEnableClient&&) = delete;

        ~Ros1Interbotix_xs_msgsTorqueEnableClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom interbotix_xs_msgs/TorqueEnable server; advertise/respond stay separate authorities. */
    class Ros1Interbotix_xs_msgsTorqueEnableServer : public ServerOwners
    {
        using Handler = std::function<Ros1Interbotix_xs_msgsTorqueEnableResponse(Ros1Interbotix_xs_msgsTorqueEnableRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Interbotix_xs_msgsTorqueEnableRequest;
        using Response = Ros1Interbotix_xs_msgsTorqueEnableResponse;

        Ros1Interbotix_xs_msgsTorqueEnableServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/ClearErr client; default policy returns13 from construction. */
    class Ros1Xarm_msgsClearErrClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsClearErrRequest;
        using Response = Ros1Xarm_msgsClearErrResponse;

        Ros1Xarm_msgsClearErrClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsClearErrClient(Ros1Xarm_msgsClearErrClient const&) = delete;
        Ros1Xarm_msgsClearErrClient& operator= (Ros1Xarm_msgsClearErrClient const&) = delete;
        Ros1Xarm_msgsClearErrClient(Ros1Xarm_msgsClearErrClient&&) = delete;

        ~Ros1Xarm_msgsClearErrClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_ClearErr_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/ClearErr server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsClearErrServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsClearErrResponse(Ros1Xarm_msgsClearErrRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsClearErrRequest;
        using Response = Ros1Xarm_msgsClearErrResponse;

        Ros1Xarm_msgsClearErrServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_ClearErr_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_ClearErr_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_ClearErr_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_ClearErr_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/ConfigToolModbus client; default policy returns13 from construction. */
    class Ros1Xarm_msgsConfigToolModbusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsConfigToolModbusRequest;
        using Response = Ros1Xarm_msgsConfigToolModbusResponse;

        Ros1Xarm_msgsConfigToolModbusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsConfigToolModbusClient(Ros1Xarm_msgsConfigToolModbusClient const&) = delete;
        Ros1Xarm_msgsConfigToolModbusClient& operator= (Ros1Xarm_msgsConfigToolModbusClient const&) = delete;
        Ros1Xarm_msgsConfigToolModbusClient(Ros1Xarm_msgsConfigToolModbusClient&&) = delete;

        ~Ros1Xarm_msgsConfigToolModbusClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/ConfigToolModbus server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsConfigToolModbusServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsConfigToolModbusResponse(Ros1Xarm_msgsConfigToolModbusRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsConfigToolModbusRequest;
        using Response = Ros1Xarm_msgsConfigToolModbusResponse;

        Ros1Xarm_msgsConfigToolModbusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/GetAnalogIO client; default policy returns13 from construction. */
    class Ros1Xarm_msgsGetAnalogIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsGetAnalogIORequest;
        using Response = Ros1Xarm_msgsGetAnalogIOResponse;

        Ros1Xarm_msgsGetAnalogIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsGetAnalogIOClient(Ros1Xarm_msgsGetAnalogIOClient const&) = delete;
        Ros1Xarm_msgsGetAnalogIOClient& operator= (Ros1Xarm_msgsGetAnalogIOClient const&) = delete;
        Ros1Xarm_msgsGetAnalogIOClient(Ros1Xarm_msgsGetAnalogIOClient&&) = delete;

        ~Ros1Xarm_msgsGetAnalogIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GetAnalogIO_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/GetAnalogIO server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsGetAnalogIOServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsGetAnalogIOResponse(Ros1Xarm_msgsGetAnalogIORequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsGetAnalogIORequest;
        using Response = Ros1Xarm_msgsGetAnalogIOResponse;

        Ros1Xarm_msgsGetAnalogIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_GetAnalogIO_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GetAnalogIO_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_GetAnalogIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_GetAnalogIO_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/GetControllerDigitalIO client; default policy returns13 from construction. */
    class Ros1Xarm_msgsGetControllerDigitalIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsGetControllerDigitalIORequest;
        using Response = Ros1Xarm_msgsGetControllerDigitalIOResponse;

        Ros1Xarm_msgsGetControllerDigitalIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsGetControllerDigitalIOClient(Ros1Xarm_msgsGetControllerDigitalIOClient const&) = delete;
        Ros1Xarm_msgsGetControllerDigitalIOClient& operator= (Ros1Xarm_msgsGetControllerDigitalIOClient const&) = delete;
        Ros1Xarm_msgsGetControllerDigitalIOClient(Ros1Xarm_msgsGetControllerDigitalIOClient&&) = delete;

        ~Ros1Xarm_msgsGetControllerDigitalIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/GetControllerDigitalIO server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsGetControllerDigitalIOServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsGetControllerDigitalIOResponse(Ros1Xarm_msgsGetControllerDigitalIORequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsGetControllerDigitalIORequest;
        using Response = Ros1Xarm_msgsGetControllerDigitalIOResponse;

        Ros1Xarm_msgsGetControllerDigitalIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/GetDigitalIO client; default policy returns13 from construction. */
    class Ros1Xarm_msgsGetDigitalIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsGetDigitalIORequest;
        using Response = Ros1Xarm_msgsGetDigitalIOResponse;

        Ros1Xarm_msgsGetDigitalIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsGetDigitalIOClient(Ros1Xarm_msgsGetDigitalIOClient const&) = delete;
        Ros1Xarm_msgsGetDigitalIOClient& operator= (Ros1Xarm_msgsGetDigitalIOClient const&) = delete;
        Ros1Xarm_msgsGetDigitalIOClient(Ros1Xarm_msgsGetDigitalIOClient&&) = delete;

        ~Ros1Xarm_msgsGetDigitalIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GetDigitalIO_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/GetDigitalIO server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsGetDigitalIOServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsGetDigitalIOResponse(Ros1Xarm_msgsGetDigitalIORequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsGetDigitalIORequest;
        using Response = Ros1Xarm_msgsGetDigitalIOResponse;

        Ros1Xarm_msgsGetDigitalIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_GetDigitalIO_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GetDigitalIO_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_GetDigitalIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_GetDigitalIO_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/GetErr client; default policy returns13 from construction. */
    class Ros1Xarm_msgsGetErrClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsGetErrRequest;
        using Response = Ros1Xarm_msgsGetErrResponse;

        Ros1Xarm_msgsGetErrClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsGetErrClient(Ros1Xarm_msgsGetErrClient const&) = delete;
        Ros1Xarm_msgsGetErrClient& operator= (Ros1Xarm_msgsGetErrClient const&) = delete;
        Ros1Xarm_msgsGetErrClient(Ros1Xarm_msgsGetErrClient&&) = delete;

        ~Ros1Xarm_msgsGetErrClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GetErr_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/GetErr server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsGetErrServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsGetErrResponse(Ros1Xarm_msgsGetErrRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsGetErrRequest;
        using Response = Ros1Xarm_msgsGetErrResponse;

        Ros1Xarm_msgsGetErrServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_GetErr_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GetErr_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_GetErr_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_GetErr_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/GripperConfig client; default policy returns13 from construction. */
    class Ros1Xarm_msgsGripperConfigClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsGripperConfigRequest;
        using Response = Ros1Xarm_msgsGripperConfigResponse;

        Ros1Xarm_msgsGripperConfigClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsGripperConfigClient(Ros1Xarm_msgsGripperConfigClient const&) = delete;
        Ros1Xarm_msgsGripperConfigClient& operator= (Ros1Xarm_msgsGripperConfigClient const&) = delete;
        Ros1Xarm_msgsGripperConfigClient(Ros1Xarm_msgsGripperConfigClient&&) = delete;

        ~Ros1Xarm_msgsGripperConfigClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GripperConfig_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/GripperConfig server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsGripperConfigServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsGripperConfigResponse(Ros1Xarm_msgsGripperConfigRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsGripperConfigRequest;
        using Response = Ros1Xarm_msgsGripperConfigResponse;

        Ros1Xarm_msgsGripperConfigServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_GripperConfig_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GripperConfig_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_GripperConfig_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_GripperConfig_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/GripperMove client; default policy returns13 from construction. */
    class Ros1Xarm_msgsGripperMoveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsGripperMoveRequest;
        using Response = Ros1Xarm_msgsGripperMoveResponse;

        Ros1Xarm_msgsGripperMoveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsGripperMoveClient(Ros1Xarm_msgsGripperMoveClient const&) = delete;
        Ros1Xarm_msgsGripperMoveClient& operator= (Ros1Xarm_msgsGripperMoveClient const&) = delete;
        Ros1Xarm_msgsGripperMoveClient(Ros1Xarm_msgsGripperMoveClient&&) = delete;

        ~Ros1Xarm_msgsGripperMoveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GripperMove_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/GripperMove server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsGripperMoveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsGripperMoveResponse(Ros1Xarm_msgsGripperMoveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsGripperMoveRequest;
        using Response = Ros1Xarm_msgsGripperMoveResponse;

        Ros1Xarm_msgsGripperMoveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_GripperMove_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GripperMove_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_GripperMove_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_GripperMove_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/GripperState client; default policy returns13 from construction. */
    class Ros1Xarm_msgsGripperStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsGripperStateRequest;
        using Response = Ros1Xarm_msgsGripperStateResponse;

        Ros1Xarm_msgsGripperStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsGripperStateClient(Ros1Xarm_msgsGripperStateClient const&) = delete;
        Ros1Xarm_msgsGripperStateClient& operator= (Ros1Xarm_msgsGripperStateClient const&) = delete;
        Ros1Xarm_msgsGripperStateClient(Ros1Xarm_msgsGripperStateClient&&) = delete;

        ~Ros1Xarm_msgsGripperStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GripperState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/GripperState server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsGripperStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsGripperStateResponse(Ros1Xarm_msgsGripperStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsGripperStateRequest;
        using Response = Ros1Xarm_msgsGripperStateResponse;

        Ros1Xarm_msgsGripperStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_GripperState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_GripperState_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_GripperState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_GripperState_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/Move client; default policy returns13 from construction. */
    class Ros1Xarm_msgsMoveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsMoveRequest;
        using Response = Ros1Xarm_msgsMoveResponse;

        Ros1Xarm_msgsMoveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsMoveClient(Ros1Xarm_msgsMoveClient const&) = delete;
        Ros1Xarm_msgsMoveClient& operator= (Ros1Xarm_msgsMoveClient const&) = delete;
        Ros1Xarm_msgsMoveClient(Ros1Xarm_msgsMoveClient&&) = delete;

        ~Ros1Xarm_msgsMoveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_Move_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/Move server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsMoveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsMoveResponse(Ros1Xarm_msgsMoveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsMoveRequest;
        using Response = Ros1Xarm_msgsMoveResponse;

        Ros1Xarm_msgsMoveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_Move_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_Move_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_Move_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_Move_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/SetAxis client; default policy returns13 from construction. */
    class Ros1Xarm_msgsSetAxisClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsSetAxisRequest;
        using Response = Ros1Xarm_msgsSetAxisResponse;

        Ros1Xarm_msgsSetAxisClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsSetAxisClient(Ros1Xarm_msgsSetAxisClient const&) = delete;
        Ros1Xarm_msgsSetAxisClient& operator= (Ros1Xarm_msgsSetAxisClient const&) = delete;
        Ros1Xarm_msgsSetAxisClient(Ros1Xarm_msgsSetAxisClient&&) = delete;

        ~Ros1Xarm_msgsSetAxisClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetAxis_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/SetAxis server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsSetAxisServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsSetAxisResponse(Ros1Xarm_msgsSetAxisRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsSetAxisRequest;
        using Response = Ros1Xarm_msgsSetAxisResponse;

        Ros1Xarm_msgsSetAxisServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_SetAxis_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetAxis_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_SetAxis_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_SetAxis_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/SetDigitalIO client; default policy returns13 from construction. */
    class Ros1Xarm_msgsSetDigitalIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsSetDigitalIORequest;
        using Response = Ros1Xarm_msgsSetDigitalIOResponse;

        Ros1Xarm_msgsSetDigitalIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsSetDigitalIOClient(Ros1Xarm_msgsSetDigitalIOClient const&) = delete;
        Ros1Xarm_msgsSetDigitalIOClient& operator= (Ros1Xarm_msgsSetDigitalIOClient const&) = delete;
        Ros1Xarm_msgsSetDigitalIOClient(Ros1Xarm_msgsSetDigitalIOClient&&) = delete;

        ~Ros1Xarm_msgsSetDigitalIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetDigitalIO_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/SetDigitalIO server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsSetDigitalIOServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsSetDigitalIOResponse(Ros1Xarm_msgsSetDigitalIORequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsSetDigitalIORequest;
        using Response = Ros1Xarm_msgsSetDigitalIOResponse;

        Ros1Xarm_msgsSetDigitalIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_SetDigitalIO_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetDigitalIO_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_SetDigitalIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_SetDigitalIO_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/SetInt16 client; default policy returns13 from construction. */
    class Ros1Xarm_msgsSetInt16Client
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsSetInt16Request;
        using Response = Ros1Xarm_msgsSetInt16Response;

        Ros1Xarm_msgsSetInt16Client(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsSetInt16Client(Ros1Xarm_msgsSetInt16Client const&) = delete;
        Ros1Xarm_msgsSetInt16Client& operator= (Ros1Xarm_msgsSetInt16Client const&) = delete;
        Ros1Xarm_msgsSetInt16Client(Ros1Xarm_msgsSetInt16Client&&) = delete;

        ~Ros1Xarm_msgsSetInt16Client()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetInt16_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/SetInt16 server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsSetInt16Server : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsSetInt16Response(Ros1Xarm_msgsSetInt16Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsSetInt16Request;
        using Response = Ros1Xarm_msgsSetInt16Response;

        Ros1Xarm_msgsSetInt16Server(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_SetInt16_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetInt16_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_SetInt16_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_SetInt16_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/SetLoad client; default policy returns13 from construction. */
    class Ros1Xarm_msgsSetLoadClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsSetLoadRequest;
        using Response = Ros1Xarm_msgsSetLoadResponse;

        Ros1Xarm_msgsSetLoadClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsSetLoadClient(Ros1Xarm_msgsSetLoadClient const&) = delete;
        Ros1Xarm_msgsSetLoadClient& operator= (Ros1Xarm_msgsSetLoadClient const&) = delete;
        Ros1Xarm_msgsSetLoadClient(Ros1Xarm_msgsSetLoadClient&&) = delete;

        ~Ros1Xarm_msgsSetLoadClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetLoad_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/SetLoad server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsSetLoadServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsSetLoadResponse(Ros1Xarm_msgsSetLoadRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsSetLoadRequest;
        using Response = Ros1Xarm_msgsSetLoadResponse;

        Ros1Xarm_msgsSetLoadServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_SetLoad_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetLoad_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_SetLoad_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_SetLoad_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/SetToolModbus client; default policy returns13 from construction. */
    class Ros1Xarm_msgsSetToolModbusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsSetToolModbusRequest;
        using Response = Ros1Xarm_msgsSetToolModbusResponse;

        Ros1Xarm_msgsSetToolModbusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsSetToolModbusClient(Ros1Xarm_msgsSetToolModbusClient const&) = delete;
        Ros1Xarm_msgsSetToolModbusClient& operator= (Ros1Xarm_msgsSetToolModbusClient const&) = delete;
        Ros1Xarm_msgsSetToolModbusClient(Ros1Xarm_msgsSetToolModbusClient&&) = delete;

        ~Ros1Xarm_msgsSetToolModbusClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetToolModbus_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/SetToolModbus server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsSetToolModbusServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsSetToolModbusResponse(Ros1Xarm_msgsSetToolModbusRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsSetToolModbusRequest;
        using Response = Ros1Xarm_msgsSetToolModbusResponse;

        Ros1Xarm_msgsSetToolModbusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_SetToolModbus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_SetToolModbus_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_SetToolModbus_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_SetToolModbus_respond(&respond_, ticket, &response).error;
        }
    };

    /** @brief Complete custom xarm_msgs/TCPOffset client; default policy returns13 from construction. */
    class Ros1Xarm_msgsTCPOffsetClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Xarm_msgsTCPOffsetRequest;
        using Response = Ros1Xarm_msgsTCPOffsetResponse;

        Ros1Xarm_msgsTCPOffsetClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Xarm_msgsTCPOffsetClient(Ros1Xarm_msgsTCPOffsetClient const&) = delete;
        Ros1Xarm_msgsTCPOffsetClient& operator= (Ros1Xarm_msgsTCPOffsetClient const&) = delete;
        Ros1Xarm_msgsTCPOffsetClient(Ros1Xarm_msgsTCPOffsetClient&&) = delete;

        ~Ros1Xarm_msgsTCPOffsetClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_TCPOffset_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** @brief Typed custom xarm_msgs/TCPOffset server; advertise/respond stay separate authorities. */
    class Ros1Xarm_msgsTCPOffsetServer : public ServerOwners
    {
        using Handler = std::function<Ros1Xarm_msgsTCPOffsetResponse(Ros1Xarm_msgsTCPOffsetRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Xarm_msgsTCPOffsetRequest;
        using Response = Ros1Xarm_msgsTCPOffsetResponse;

        Ros1Xarm_msgsTCPOffsetServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_xarm_msgs_TCPOffset_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_xarm_msgs_TCPOffset_respond(&respond_, ticket, &response);
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
            auto r = roswasmc_bounded_1_xarm_msgs_TCPOffset_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_xarm_msgs_TCPOffset_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
