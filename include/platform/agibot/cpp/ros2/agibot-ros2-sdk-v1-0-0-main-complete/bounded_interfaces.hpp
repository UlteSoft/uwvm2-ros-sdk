/**
 * @file bounded_interfaces.hpp
 * @brief Full agibot cpp codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v1_0_0_main values in cpp. 120 original records retain 366 fields and 93
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/agibot/en_US/catalog/.
 */
/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <platform/agibot/c/ros2/agibot-ros2-sdk-v1-0-0-main-complete/bounded_interfaces.h>
#include <platform/agibot/cpp/ros2/agibot-ros2-sdk-v1-0-0-main-complete/bounded_records.hpp>
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
            {
                error_ = 22;
            }
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_)
            {
                error_ = action ? roswasmc_check_operation(&context_, ROSWASMC_ACTION_ADVERTISE) : (context_.backend->advertise_service ? 0 : 95);
            }
            if(!error_)
            {
                error_ = roswasmc_open(&advertise_, advertise.data(), advertise.size());
            }
            if(!error_)
            {
                error_ = roswasmc_open(&respond_, respond.data(), respond.size());
            }
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
                    {
                        error_ = 22;
                    }
                }
                else
                {
                    error_ = roswasmc_service_advertise(&advertise_);
                }
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
                        {
                            r.cleanup_error = code;
                        }
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

    /** Complete custom aimdk_msgs/srv/AbandonAudioFocus client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvAbandonAudioFocusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvAbandonAudioFocus_Request;
        using Response = Ros2Aimdk_msgsSrvAbandonAudioFocus_Response;

        Ros2Aimdk_msgsSrvAbandonAudioFocusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvAbandonAudioFocusClient(Ros2Aimdk_msgsSrvAbandonAudioFocusClient const&) = delete;
        Ros2Aimdk_msgsSrvAbandonAudioFocusClient& operator= (Ros2Aimdk_msgsSrvAbandonAudioFocusClient const&) = delete;
        Ros2Aimdk_msgsSrvAbandonAudioFocusClient(Ros2Aimdk_msgsSrvAbandonAudioFocusClient&&) = delete;

        ~Ros2Aimdk_msgsSrvAbandonAudioFocusClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/AbandonAudioFocus server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvAbandonAudioFocusServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvAbandonAudioFocus_Response(Ros2Aimdk_msgsSrvAbandonAudioFocus_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvAbandonAudioFocus_Request;
        using Response = Ros2Aimdk_msgsSrvAbandonAudioFocus_Response;

        Ros2Aimdk_msgsSrvAbandonAudioFocusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/ExecuteActionResource client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvExecuteActionResourceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvExecuteActionResource_Request;
        using Response = Ros2Aimdk_msgsSrvExecuteActionResource_Response;

        Ros2Aimdk_msgsSrvExecuteActionResourceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvExecuteActionResourceClient(Ros2Aimdk_msgsSrvExecuteActionResourceClient const&) = delete;
        Ros2Aimdk_msgsSrvExecuteActionResourceClient& operator= (Ros2Aimdk_msgsSrvExecuteActionResourceClient const&) = delete;
        Ros2Aimdk_msgsSrvExecuteActionResourceClient(Ros2Aimdk_msgsSrvExecuteActionResourceClient&&) = delete;

        ~Ros2Aimdk_msgsSrvExecuteActionResourceClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/ExecuteActionResource server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvExecuteActionResourceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvExecuteActionResource_Response(Ros2Aimdk_msgsSrvExecuteActionResource_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvExecuteActionResource_Request;
        using Response = Ros2Aimdk_msgsSrvExecuteActionResource_Response;

        Ros2Aimdk_msgsSrvExecuteActionResourceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetAllJointState client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetAllJointStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetAllJointState_Request;
        using Response = Ros2Aimdk_msgsSrvGetAllJointState_Response;

        Ros2Aimdk_msgsSrvGetAllJointStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetAllJointStateClient(Ros2Aimdk_msgsSrvGetAllJointStateClient const&) = delete;
        Ros2Aimdk_msgsSrvGetAllJointStateClient& operator= (Ros2Aimdk_msgsSrvGetAllJointStateClient const&) = delete;
        Ros2Aimdk_msgsSrvGetAllJointStateClient(Ros2Aimdk_msgsSrvGetAllJointStateClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetAllJointStateClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetAllJointState server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetAllJointStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetAllJointState_Response(Ros2Aimdk_msgsSrvGetAllJointState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetAllJointState_Request;
        using Response = Ros2Aimdk_msgsSrvGetAllJointState_Response;

        Ros2Aimdk_msgsSrvGetAllJointStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetCurrentInputSource client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetCurrentInputSourceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request;
        using Response = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response;

        Ros2Aimdk_msgsSrvGetCurrentInputSourceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetCurrentInputSourceClient(Ros2Aimdk_msgsSrvGetCurrentInputSourceClient const&) = delete;
        Ros2Aimdk_msgsSrvGetCurrentInputSourceClient& operator= (Ros2Aimdk_msgsSrvGetCurrentInputSourceClient const&) = delete;
        Ros2Aimdk_msgsSrvGetCurrentInputSourceClient(Ros2Aimdk_msgsSrvGetCurrentInputSourceClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetCurrentInputSourceClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetCurrentInputSource server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetCurrentInputSourceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(Ros2Aimdk_msgsSrvGetCurrentInputSource_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request;
        using Response = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response;

        Ros2Aimdk_msgsSrvGetCurrentInputSourceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetHandType client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetHandTypeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetHandType_Request;
        using Response = Ros2Aimdk_msgsSrvGetHandType_Response;

        Ros2Aimdk_msgsSrvGetHandTypeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetHandTypeClient(Ros2Aimdk_msgsSrvGetHandTypeClient const&) = delete;
        Ros2Aimdk_msgsSrvGetHandTypeClient& operator= (Ros2Aimdk_msgsSrvGetHandTypeClient const&) = delete;
        Ros2Aimdk_msgsSrvGetHandTypeClient(Ros2Aimdk_msgsSrvGetHandTypeClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetHandTypeClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetHandType server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetHandTypeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetHandType_Response(Ros2Aimdk_msgsSrvGetHandType_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetHandType_Request;
        using Response = Ros2Aimdk_msgsSrvGetHandType_Response;

        Ros2Aimdk_msgsSrvGetHandTypeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetMcAction client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetMcActionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetMcAction_Request;
        using Response = Ros2Aimdk_msgsSrvGetMcAction_Response;

        Ros2Aimdk_msgsSrvGetMcActionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetMcActionClient(Ros2Aimdk_msgsSrvGetMcActionClient const&) = delete;
        Ros2Aimdk_msgsSrvGetMcActionClient& operator= (Ros2Aimdk_msgsSrvGetMcActionClient const&) = delete;
        Ros2Aimdk_msgsSrvGetMcActionClient(Ros2Aimdk_msgsSrvGetMcActionClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetMcActionClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetMcAction server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetMcActionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetMcAction_Response(Ros2Aimdk_msgsSrvGetMcAction_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetMcAction_Request;
        using Response = Ros2Aimdk_msgsSrvGetMcAction_Response;

        Ros2Aimdk_msgsSrvGetMcActionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetMicSourceRequest client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetMicSourceRequestClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetMicSourceRequest_Request;
        using Response = Ros2Aimdk_msgsSrvGetMicSourceRequest_Response;

        Ros2Aimdk_msgsSrvGetMicSourceRequestClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetMicSourceRequestClient(Ros2Aimdk_msgsSrvGetMicSourceRequestClient const&) = delete;
        Ros2Aimdk_msgsSrvGetMicSourceRequestClient& operator= (Ros2Aimdk_msgsSrvGetMicSourceRequestClient const&) = delete;
        Ros2Aimdk_msgsSrvGetMicSourceRequestClient(Ros2Aimdk_msgsSrvGetMicSourceRequestClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetMicSourceRequestClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetMicSourceRequest server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetMicSourceRequestServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetMicSourceRequest_Response(Ros2Aimdk_msgsSrvGetMicSourceRequest_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetMicSourceRequest_Request;
        using Response = Ros2Aimdk_msgsSrvGetMicSourceRequest_Response;

        Ros2Aimdk_msgsSrvGetMicSourceRequestServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetMute client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetMuteClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetMute_Request;
        using Response = Ros2Aimdk_msgsSrvGetMute_Response;

        Ros2Aimdk_msgsSrvGetMuteClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetMuteClient(Ros2Aimdk_msgsSrvGetMuteClient const&) = delete;
        Ros2Aimdk_msgsSrvGetMuteClient& operator= (Ros2Aimdk_msgsSrvGetMuteClient const&) = delete;
        Ros2Aimdk_msgsSrvGetMuteClient(Ros2Aimdk_msgsSrvGetMuteClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetMuteClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetMute server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetMuteServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetMute_Response(Ros2Aimdk_msgsSrvGetMute_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetMute_Request;
        using Response = Ros2Aimdk_msgsSrvGetMute_Response;

        Ros2Aimdk_msgsSrvGetMuteServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetMute_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetRobotResources client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetRobotResourcesClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetRobotResources_Request;
        using Response = Ros2Aimdk_msgsSrvGetRobotResources_Response;

        Ros2Aimdk_msgsSrvGetRobotResourcesClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetRobotResourcesClient(Ros2Aimdk_msgsSrvGetRobotResourcesClient const&) = delete;
        Ros2Aimdk_msgsSrvGetRobotResourcesClient& operator= (Ros2Aimdk_msgsSrvGetRobotResourcesClient const&) = delete;
        Ros2Aimdk_msgsSrvGetRobotResourcesClient(Ros2Aimdk_msgsSrvGetRobotResourcesClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetRobotResourcesClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetRobotResources server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetRobotResourcesServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetRobotResources_Response(Ros2Aimdk_msgsSrvGetRobotResources_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetRobotResources_Request;
        using Response = Ros2Aimdk_msgsSrvGetRobotResources_Response;

        Ros2Aimdk_msgsSrvGetRobotResourcesServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetStoredMapByName client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetStoredMapByNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetStoredMapByName_Request;
        using Response = Ros2Aimdk_msgsSrvGetStoredMapByName_Response;

        Ros2Aimdk_msgsSrvGetStoredMapByNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetStoredMapByNameClient(Ros2Aimdk_msgsSrvGetStoredMapByNameClient const&) = delete;
        Ros2Aimdk_msgsSrvGetStoredMapByNameClient& operator= (Ros2Aimdk_msgsSrvGetStoredMapByNameClient const&) = delete;
        Ros2Aimdk_msgsSrvGetStoredMapByNameClient(Ros2Aimdk_msgsSrvGetStoredMapByNameClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetStoredMapByNameClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetStoredMapByName server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetStoredMapByNameServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetStoredMapByName_Response(Ros2Aimdk_msgsSrvGetStoredMapByName_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetStoredMapByName_Request;
        using Response = Ros2Aimdk_msgsSrvGetStoredMapByName_Response;

        Ros2Aimdk_msgsSrvGetStoredMapByNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetSystemState client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetSystemStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetSystemState_Request;
        using Response = Ros2Aimdk_msgsSrvGetSystemState_Response;

        Ros2Aimdk_msgsSrvGetSystemStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetSystemStateClient(Ros2Aimdk_msgsSrvGetSystemStateClient const&) = delete;
        Ros2Aimdk_msgsSrvGetSystemStateClient& operator= (Ros2Aimdk_msgsSrvGetSystemStateClient const&) = delete;
        Ros2Aimdk_msgsSrvGetSystemStateClient(Ros2Aimdk_msgsSrvGetSystemStateClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetSystemStateClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetSystemState server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetSystemStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetSystemState_Response(Ros2Aimdk_msgsSrvGetSystemState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetSystemState_Request;
        using Response = Ros2Aimdk_msgsSrvGetSystemState_Response;

        Ros2Aimdk_msgsSrvGetSystemStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/GetVolume client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvGetVolumeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvGetVolume_Request;
        using Response = Ros2Aimdk_msgsSrvGetVolume_Response;

        Ros2Aimdk_msgsSrvGetVolumeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvGetVolumeClient(Ros2Aimdk_msgsSrvGetVolumeClient const&) = delete;
        Ros2Aimdk_msgsSrvGetVolumeClient& operator= (Ros2Aimdk_msgsSrvGetVolumeClient const&) = delete;
        Ros2Aimdk_msgsSrvGetVolumeClient(Ros2Aimdk_msgsSrvGetVolumeClient&&) = delete;

        ~Ros2Aimdk_msgsSrvGetVolumeClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/GetVolume server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvGetVolumeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvGetVolume_Response(Ros2Aimdk_msgsSrvGetVolume_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvGetVolume_Request;
        using Response = Ros2Aimdk_msgsSrvGetVolume_Response;

        Ros2Aimdk_msgsSrvGetVolumeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/MigrateSystemState client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvMigrateSystemStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvMigrateSystemState_Request;
        using Response = Ros2Aimdk_msgsSrvMigrateSystemState_Response;

        Ros2Aimdk_msgsSrvMigrateSystemStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvMigrateSystemStateClient(Ros2Aimdk_msgsSrvMigrateSystemStateClient const&) = delete;
        Ros2Aimdk_msgsSrvMigrateSystemStateClient& operator= (Ros2Aimdk_msgsSrvMigrateSystemStateClient const&) = delete;
        Ros2Aimdk_msgsSrvMigrateSystemStateClient(Ros2Aimdk_msgsSrvMigrateSystemStateClient&&) = delete;

        ~Ros2Aimdk_msgsSrvMigrateSystemStateClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/MigrateSystemState server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvMigrateSystemStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvMigrateSystemState_Response(Ros2Aimdk_msgsSrvMigrateSystemState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvMigrateSystemState_Request;
        using Response = Ros2Aimdk_msgsSrvMigrateSystemState_Response;

        Ros2Aimdk_msgsSrvMigrateSystemStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/PlayAudioFile client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvPlayAudioFileClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvPlayAudioFile_Request;
        using Response = Ros2Aimdk_msgsSrvPlayAudioFile_Response;

        Ros2Aimdk_msgsSrvPlayAudioFileClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvPlayAudioFileClient(Ros2Aimdk_msgsSrvPlayAudioFileClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayAudioFileClient& operator= (Ros2Aimdk_msgsSrvPlayAudioFileClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayAudioFileClient(Ros2Aimdk_msgsSrvPlayAudioFileClient&&) = delete;

        ~Ros2Aimdk_msgsSrvPlayAudioFileClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/PlayAudioFile server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvPlayAudioFileServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvPlayAudioFile_Response(Ros2Aimdk_msgsSrvPlayAudioFile_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvPlayAudioFile_Request;
        using Response = Ros2Aimdk_msgsSrvPlayAudioFile_Response;

        Ros2Aimdk_msgsSrvPlayAudioFileServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/PlayEmoji client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvPlayEmojiClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvPlayEmoji_Request;
        using Response = Ros2Aimdk_msgsSrvPlayEmoji_Response;

        Ros2Aimdk_msgsSrvPlayEmojiClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvPlayEmojiClient(Ros2Aimdk_msgsSrvPlayEmojiClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayEmojiClient& operator= (Ros2Aimdk_msgsSrvPlayEmojiClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayEmojiClient(Ros2Aimdk_msgsSrvPlayEmojiClient&&) = delete;

        ~Ros2Aimdk_msgsSrvPlayEmojiClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/PlayEmoji server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvPlayEmojiServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvPlayEmoji_Response(Ros2Aimdk_msgsSrvPlayEmoji_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvPlayEmoji_Request;
        using Response = Ros2Aimdk_msgsSrvPlayEmoji_Response;

        Ros2Aimdk_msgsSrvPlayEmojiServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/PlayTts client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvPlayTtsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvPlayTts_Request;
        using Response = Ros2Aimdk_msgsSrvPlayTts_Response;

        Ros2Aimdk_msgsSrvPlayTtsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvPlayTtsClient(Ros2Aimdk_msgsSrvPlayTtsClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayTtsClient& operator= (Ros2Aimdk_msgsSrvPlayTtsClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayTtsClient(Ros2Aimdk_msgsSrvPlayTtsClient&&) = delete;

        ~Ros2Aimdk_msgsSrvPlayTtsClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/PlayTts server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvPlayTtsServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvPlayTts_Response(Ros2Aimdk_msgsSrvPlayTts_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvPlayTts_Request;
        using Response = Ros2Aimdk_msgsSrvPlayTts_Response;

        Ros2Aimdk_msgsSrvPlayTtsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/PlayVideo client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvPlayVideoClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvPlayVideo_Request;
        using Response = Ros2Aimdk_msgsSrvPlayVideo_Response;

        Ros2Aimdk_msgsSrvPlayVideoClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvPlayVideoClient(Ros2Aimdk_msgsSrvPlayVideoClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayVideoClient& operator= (Ros2Aimdk_msgsSrvPlayVideoClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayVideoClient(Ros2Aimdk_msgsSrvPlayVideoClient&&) = delete;

        ~Ros2Aimdk_msgsSrvPlayVideoClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/PlayVideo server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvPlayVideoServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvPlayVideo_Response(Ros2Aimdk_msgsSrvPlayVideo_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvPlayVideo_Request;
        using Response = Ros2Aimdk_msgsSrvPlayVideo_Response;

        Ros2Aimdk_msgsSrvPlayVideoServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/PlayVideoGroup client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvPlayVideoGroupClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvPlayVideoGroup_Request;
        using Response = Ros2Aimdk_msgsSrvPlayVideoGroup_Response;

        Ros2Aimdk_msgsSrvPlayVideoGroupClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvPlayVideoGroupClient(Ros2Aimdk_msgsSrvPlayVideoGroupClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayVideoGroupClient& operator= (Ros2Aimdk_msgsSrvPlayVideoGroupClient const&) = delete;
        Ros2Aimdk_msgsSrvPlayVideoGroupClient(Ros2Aimdk_msgsSrvPlayVideoGroupClient&&) = delete;

        ~Ros2Aimdk_msgsSrvPlayVideoGroupClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/PlayVideoGroup server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvPlayVideoGroupServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvPlayVideoGroup_Response(Ros2Aimdk_msgsSrvPlayVideoGroup_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvPlayVideoGroup_Request;
        using Response = Ros2Aimdk_msgsSrvPlayVideoGroup_Response;

        Ros2Aimdk_msgsSrvPlayVideoGroupServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/RequestAudioFocus client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvRequestAudioFocusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvRequestAudioFocus_Request;
        using Response = Ros2Aimdk_msgsSrvRequestAudioFocus_Response;

        Ros2Aimdk_msgsSrvRequestAudioFocusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvRequestAudioFocusClient(Ros2Aimdk_msgsSrvRequestAudioFocusClient const&) = delete;
        Ros2Aimdk_msgsSrvRequestAudioFocusClient& operator= (Ros2Aimdk_msgsSrvRequestAudioFocusClient const&) = delete;
        Ros2Aimdk_msgsSrvRequestAudioFocusClient(Ros2Aimdk_msgsSrvRequestAudioFocusClient&&) = delete;

        ~Ros2Aimdk_msgsSrvRequestAudioFocusClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/RequestAudioFocus server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvRequestAudioFocusServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvRequestAudioFocus_Response(Ros2Aimdk_msgsSrvRequestAudioFocus_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvRequestAudioFocus_Request;
        using Response = Ros2Aimdk_msgsSrvRequestAudioFocus_Response;

        Ros2Aimdk_msgsSrvRequestAudioFocusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/SetAgentPropertiesRequest client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request;
        using Response = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response;

        Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient(Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient const&) = delete;
        Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient& operator= (Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient const&) = delete;
        Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient(Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient&&) = delete;

        ~Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/SetAgentPropertiesRequest server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvSetAgentPropertiesRequestServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request;
        using Response = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response;

        Ros2Aimdk_msgsSrvSetAgentPropertiesRequestServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/SetMcAction client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvSetMcActionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvSetMcAction_Request;
        using Response = Ros2Aimdk_msgsSrvSetMcAction_Response;

        Ros2Aimdk_msgsSrvSetMcActionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvSetMcActionClient(Ros2Aimdk_msgsSrvSetMcActionClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMcActionClient& operator= (Ros2Aimdk_msgsSrvSetMcActionClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMcActionClient(Ros2Aimdk_msgsSrvSetMcActionClient&&) = delete;

        ~Ros2Aimdk_msgsSrvSetMcActionClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/SetMcAction server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvSetMcActionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvSetMcAction_Response(Ros2Aimdk_msgsSrvSetMcAction_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvSetMcAction_Request;
        using Response = Ros2Aimdk_msgsSrvSetMcAction_Response;

        Ros2Aimdk_msgsSrvSetMcActionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/SetMcInputSource client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvSetMcInputSourceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvSetMcInputSource_Request;
        using Response = Ros2Aimdk_msgsSrvSetMcInputSource_Response;

        Ros2Aimdk_msgsSrvSetMcInputSourceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvSetMcInputSourceClient(Ros2Aimdk_msgsSrvSetMcInputSourceClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMcInputSourceClient& operator= (Ros2Aimdk_msgsSrvSetMcInputSourceClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMcInputSourceClient(Ros2Aimdk_msgsSrvSetMcInputSourceClient&&) = delete;

        ~Ros2Aimdk_msgsSrvSetMcInputSourceClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/SetMcInputSource server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvSetMcInputSourceServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvSetMcInputSource_Response(Ros2Aimdk_msgsSrvSetMcInputSource_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvSetMcInputSource_Request;
        using Response = Ros2Aimdk_msgsSrvSetMcInputSource_Response;

        Ros2Aimdk_msgsSrvSetMcInputSourceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/SetMcPresetMotion client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvSetMcPresetMotionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request;
        using Response = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response;

        Ros2Aimdk_msgsSrvSetMcPresetMotionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvSetMcPresetMotionClient(Ros2Aimdk_msgsSrvSetMcPresetMotionClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMcPresetMotionClient& operator= (Ros2Aimdk_msgsSrvSetMcPresetMotionClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMcPresetMotionClient(Ros2Aimdk_msgsSrvSetMcPresetMotionClient&&) = delete;

        ~Ros2Aimdk_msgsSrvSetMcPresetMotionClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/SetMcPresetMotion server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvSetMcPresetMotionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(Ros2Aimdk_msgsSrvSetMcPresetMotion_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request;
        using Response = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response;

        Ros2Aimdk_msgsSrvSetMcPresetMotionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/SetMicSourceRequest client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvSetMicSourceRequestClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvSetMicSourceRequest_Request;
        using Response = Ros2Aimdk_msgsSrvSetMicSourceRequest_Response;

        Ros2Aimdk_msgsSrvSetMicSourceRequestClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvSetMicSourceRequestClient(Ros2Aimdk_msgsSrvSetMicSourceRequestClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMicSourceRequestClient& operator= (Ros2Aimdk_msgsSrvSetMicSourceRequestClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMicSourceRequestClient(Ros2Aimdk_msgsSrvSetMicSourceRequestClient&&) = delete;

        ~Ros2Aimdk_msgsSrvSetMicSourceRequestClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/SetMicSourceRequest server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvSetMicSourceRequestServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvSetMicSourceRequest_Response(Ros2Aimdk_msgsSrvSetMicSourceRequest_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvSetMicSourceRequest_Request;
        using Response = Ros2Aimdk_msgsSrvSetMicSourceRequest_Response;

        Ros2Aimdk_msgsSrvSetMicSourceRequestServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/SetMute client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvSetMuteClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvSetMute_Request;
        using Response = Ros2Aimdk_msgsSrvSetMute_Response;

        Ros2Aimdk_msgsSrvSetMuteClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvSetMuteClient(Ros2Aimdk_msgsSrvSetMuteClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMuteClient& operator= (Ros2Aimdk_msgsSrvSetMuteClient const&) = delete;
        Ros2Aimdk_msgsSrvSetMuteClient(Ros2Aimdk_msgsSrvSetMuteClient&&) = delete;

        ~Ros2Aimdk_msgsSrvSetMuteClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/SetMute server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvSetMuteServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvSetMute_Response(Ros2Aimdk_msgsSrvSetMute_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvSetMute_Request;
        using Response = Ros2Aimdk_msgsSrvSetMute_Response;

        Ros2Aimdk_msgsSrvSetMuteServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_SetMute_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/SetPmuLed client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvSetPmuLedClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvSetPmuLed_Request;
        using Response = Ros2Aimdk_msgsSrvSetPmuLed_Response;

        Ros2Aimdk_msgsSrvSetPmuLedClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvSetPmuLedClient(Ros2Aimdk_msgsSrvSetPmuLedClient const&) = delete;
        Ros2Aimdk_msgsSrvSetPmuLedClient& operator= (Ros2Aimdk_msgsSrvSetPmuLedClient const&) = delete;
        Ros2Aimdk_msgsSrvSetPmuLedClient(Ros2Aimdk_msgsSrvSetPmuLedClient&&) = delete;

        ~Ros2Aimdk_msgsSrvSetPmuLedClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/SetPmuLed server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvSetPmuLedServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvSetPmuLed_Response(Ros2Aimdk_msgsSrvSetPmuLed_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvSetPmuLed_Request;
        using Response = Ros2Aimdk_msgsSrvSetPmuLed_Response;

        Ros2Aimdk_msgsSrvSetPmuLedServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom aimdk_msgs/srv/SetVolume client; default policy returns13 from construction. */
    class Ros2Aimdk_msgsSrvSetVolumeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Aimdk_msgsSrvSetVolume_Request;
        using Response = Ros2Aimdk_msgsSrvSetVolume_Response;

        Ros2Aimdk_msgsSrvSetVolumeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        Ros2Aimdk_msgsSrvSetVolumeClient(Ros2Aimdk_msgsSrvSetVolumeClient const&) = delete;
        Ros2Aimdk_msgsSrvSetVolumeClient& operator= (Ros2Aimdk_msgsSrvSetVolumeClient const&) = delete;
        Ros2Aimdk_msgsSrvSetVolumeClient(Ros2Aimdk_msgsSrvSetVolumeClient&&) = delete;

        ~Ros2Aimdk_msgsSrvSetVolumeClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom aimdk_msgs/srv/SetVolume server; advertise/respond stay separate authorities. */
    class Ros2Aimdk_msgsSrvSetVolumeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Aimdk_msgsSrvSetVolume_Response(Ros2Aimdk_msgsSrvSetVolume_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Aimdk_msgsSrvSetVolume_Request;
        using Response = Ros2Aimdk_msgsSrvSetVolume_Response;

        Ros2Aimdk_msgsSrvSetVolumeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
