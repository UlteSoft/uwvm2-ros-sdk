/**
 * @file bounded_interfaces.hpp
 * @brief Full leju cpp codecs and original record metadata.
 * @details Complete leju ros1_main_platform values in cpp. 532 original records retain 1587 fields and 378
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/leju/en_US/catalog/.
 */
/** @file C++20 concrete custom typed RPC owners, independent of builtin factories.
 * Context/goal storage is stable inside a nonmoving owner. Each named role is explicit.
 * Use checked close/revoke before destruction to observe all cleanup errors. Native
 * permission, ticket ownership, deadlines, quotas and result kind remain host checks.
 * This synchronous caller-driven facade creates no thread, clock or implicit retry. */
#pragma once
#include <platform/leju/c/ros1/leju-ros1-main-platform-complete/bounded_interfaces.h>
#include <platform/leju/cpp/ros1/leju-ros1-main-platform-complete/bounded_records.hpp>
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

    /** Complete custom easy_handeye_msgs/CheckStartingPose client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsCheckStartingPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsCheckStartingPoseRequest;
        using Response = Ros1Easy_handeye_msgsCheckStartingPoseResponse;

        Ros1Easy_handeye_msgsCheckStartingPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsCheckStartingPoseClient(Ros1Easy_handeye_msgsCheckStartingPoseClient const&) = delete;
        Ros1Easy_handeye_msgsCheckStartingPoseClient& operator= (Ros1Easy_handeye_msgsCheckStartingPoseClient const&) = delete;
        Ros1Easy_handeye_msgsCheckStartingPoseClient(Ros1Easy_handeye_msgsCheckStartingPoseClient&&) = delete;

        ~Ros1Easy_handeye_msgsCheckStartingPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/CheckStartingPose server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsCheckStartingPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsCheckStartingPoseResponse(Ros1Easy_handeye_msgsCheckStartingPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsCheckStartingPoseRequest;
        using Response = Ros1Easy_handeye_msgsCheckStartingPoseResponse;

        Ros1Easy_handeye_msgsCheckStartingPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/ComputeCalibration client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsComputeCalibrationClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsComputeCalibrationRequest;
        using Response = Ros1Easy_handeye_msgsComputeCalibrationResponse;

        Ros1Easy_handeye_msgsComputeCalibrationClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsComputeCalibrationClient(Ros1Easy_handeye_msgsComputeCalibrationClient const&) = delete;
        Ros1Easy_handeye_msgsComputeCalibrationClient& operator= (Ros1Easy_handeye_msgsComputeCalibrationClient const&) = delete;
        Ros1Easy_handeye_msgsComputeCalibrationClient(Ros1Easy_handeye_msgsComputeCalibrationClient&&) = delete;

        ~Ros1Easy_handeye_msgsComputeCalibrationClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibration_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/ComputeCalibration server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsComputeCalibrationServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsComputeCalibrationResponse(Ros1Easy_handeye_msgsComputeCalibrationRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsComputeCalibrationRequest;
        using Response = Ros1Easy_handeye_msgsComputeCalibrationResponse;

        Ros1Easy_handeye_msgsComputeCalibrationServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibration_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibration_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibration_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibration_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/EnumerateTargetPoses client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsEnumerateTargetPosesClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsEnumerateTargetPosesRequest;
        using Response = Ros1Easy_handeye_msgsEnumerateTargetPosesResponse;

        Ros1Easy_handeye_msgsEnumerateTargetPosesClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsEnumerateTargetPosesClient(Ros1Easy_handeye_msgsEnumerateTargetPosesClient const&) = delete;
        Ros1Easy_handeye_msgsEnumerateTargetPosesClient& operator= (Ros1Easy_handeye_msgsEnumerateTargetPosesClient const&) = delete;
        Ros1Easy_handeye_msgsEnumerateTargetPosesClient(Ros1Easy_handeye_msgsEnumerateTargetPosesClient&&) = delete;

        ~Ros1Easy_handeye_msgsEnumerateTargetPosesClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPoses_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/EnumerateTargetPoses server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsEnumerateTargetPosesServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsEnumerateTargetPosesResponse(Ros1Easy_handeye_msgsEnumerateTargetPosesRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsEnumerateTargetPosesRequest;
        using Response = Ros1Easy_handeye_msgsEnumerateTargetPosesResponse;

        Ros1Easy_handeye_msgsEnumerateTargetPosesServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPoses_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPoses_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPoses_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPoses_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/ExecutePlan client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsExecutePlanClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsExecutePlanRequest;
        using Response = Ros1Easy_handeye_msgsExecutePlanResponse;

        Ros1Easy_handeye_msgsExecutePlanClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsExecutePlanClient(Ros1Easy_handeye_msgsExecutePlanClient const&) = delete;
        Ros1Easy_handeye_msgsExecutePlanClient& operator= (Ros1Easy_handeye_msgsExecutePlanClient const&) = delete;
        Ros1Easy_handeye_msgsExecutePlanClient(Ros1Easy_handeye_msgsExecutePlanClient&&) = delete;

        ~Ros1Easy_handeye_msgsExecutePlanClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_ExecutePlan_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/ExecutePlan server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsExecutePlanServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsExecutePlanResponse(Ros1Easy_handeye_msgsExecutePlanRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsExecutePlanRequest;
        using Response = Ros1Easy_handeye_msgsExecutePlanResponse;

        Ros1Easy_handeye_msgsExecutePlanServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_ExecutePlan_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_ExecutePlan_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_ExecutePlan_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_ExecutePlan_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/ListAlgorithms client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsListAlgorithmsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsListAlgorithmsRequest;
        using Response = Ros1Easy_handeye_msgsListAlgorithmsResponse;

        Ros1Easy_handeye_msgsListAlgorithmsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsListAlgorithmsClient(Ros1Easy_handeye_msgsListAlgorithmsClient const&) = delete;
        Ros1Easy_handeye_msgsListAlgorithmsClient& operator= (Ros1Easy_handeye_msgsListAlgorithmsClient const&) = delete;
        Ros1Easy_handeye_msgsListAlgorithmsClient(Ros1Easy_handeye_msgsListAlgorithmsClient&&) = delete;

        ~Ros1Easy_handeye_msgsListAlgorithmsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithms_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/ListAlgorithms server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsListAlgorithmsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsListAlgorithmsResponse(Ros1Easy_handeye_msgsListAlgorithmsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsListAlgorithmsRequest;
        using Response = Ros1Easy_handeye_msgsListAlgorithmsResponse;

        Ros1Easy_handeye_msgsListAlgorithmsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithms_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithms_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithms_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithms_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/PlanToSelectedTargetPose client; default policy returns13 from construction.
     */
    class Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest;
        using Response = Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse;

        Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient(Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient const&) = delete;
        Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient& operator= (Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient const&) = delete;
        Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient(Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient&&) = delete;

        ~Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/PlanToSelectedTargetPose server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsPlanToSelectedTargetPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse(Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest;
        using Response = Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse;

        Ros1Easy_handeye_msgsPlanToSelectedTargetPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/RemoveSample client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsRemoveSampleClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsRemoveSampleRequest;
        using Response = Ros1Easy_handeye_msgsRemoveSampleResponse;

        Ros1Easy_handeye_msgsRemoveSampleClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsRemoveSampleClient(Ros1Easy_handeye_msgsRemoveSampleClient const&) = delete;
        Ros1Easy_handeye_msgsRemoveSampleClient& operator= (Ros1Easy_handeye_msgsRemoveSampleClient const&) = delete;
        Ros1Easy_handeye_msgsRemoveSampleClient(Ros1Easy_handeye_msgsRemoveSampleClient&&) = delete;

        ~Ros1Easy_handeye_msgsRemoveSampleClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_RemoveSample_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/RemoveSample server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsRemoveSampleServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsRemoveSampleResponse(Ros1Easy_handeye_msgsRemoveSampleRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsRemoveSampleRequest;
        using Response = Ros1Easy_handeye_msgsRemoveSampleResponse;

        Ros1Easy_handeye_msgsRemoveSampleServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_RemoveSample_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_RemoveSample_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_RemoveSample_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_RemoveSample_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/SelectTargetPose client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsSelectTargetPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsSelectTargetPoseRequest;
        using Response = Ros1Easy_handeye_msgsSelectTargetPoseResponse;

        Ros1Easy_handeye_msgsSelectTargetPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsSelectTargetPoseClient(Ros1Easy_handeye_msgsSelectTargetPoseClient const&) = delete;
        Ros1Easy_handeye_msgsSelectTargetPoseClient& operator= (Ros1Easy_handeye_msgsSelectTargetPoseClient const&) = delete;
        Ros1Easy_handeye_msgsSelectTargetPoseClient(Ros1Easy_handeye_msgsSelectTargetPoseClient&&) = delete;

        ~Ros1Easy_handeye_msgsSelectTargetPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/SelectTargetPose server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsSelectTargetPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsSelectTargetPoseResponse(Ros1Easy_handeye_msgsSelectTargetPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsSelectTargetPoseRequest;
        using Response = Ros1Easy_handeye_msgsSelectTargetPoseResponse;

        Ros1Easy_handeye_msgsSelectTargetPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/SetAlgorithm client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsSetAlgorithmClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsSetAlgorithmRequest;
        using Response = Ros1Easy_handeye_msgsSetAlgorithmResponse;

        Ros1Easy_handeye_msgsSetAlgorithmClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsSetAlgorithmClient(Ros1Easy_handeye_msgsSetAlgorithmClient const&) = delete;
        Ros1Easy_handeye_msgsSetAlgorithmClient& operator= (Ros1Easy_handeye_msgsSetAlgorithmClient const&) = delete;
        Ros1Easy_handeye_msgsSetAlgorithmClient(Ros1Easy_handeye_msgsSetAlgorithmClient&&) = delete;

        ~Ros1Easy_handeye_msgsSetAlgorithmClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithm_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/SetAlgorithm server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsSetAlgorithmServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsSetAlgorithmResponse(Ros1Easy_handeye_msgsSetAlgorithmRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsSetAlgorithmRequest;
        using Response = Ros1Easy_handeye_msgsSetAlgorithmResponse;

        Ros1Easy_handeye_msgsSetAlgorithmServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithm_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithm_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithm_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithm_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom easy_handeye_msgs/TakeSample client; default policy returns13 from construction. */
    class Ros1Easy_handeye_msgsTakeSampleClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Easy_handeye_msgsTakeSampleRequest;
        using Response = Ros1Easy_handeye_msgsTakeSampleResponse;

        Ros1Easy_handeye_msgsTakeSampleClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Easy_handeye_msgsTakeSampleClient(Ros1Easy_handeye_msgsTakeSampleClient const&) = delete;
        Ros1Easy_handeye_msgsTakeSampleClient& operator= (Ros1Easy_handeye_msgsTakeSampleClient const&) = delete;
        Ros1Easy_handeye_msgsTakeSampleClient(Ros1Easy_handeye_msgsTakeSampleClient&&) = delete;

        ~Ros1Easy_handeye_msgsTakeSampleClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_TakeSample_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom easy_handeye_msgs/TakeSample server; advertise/respond stay separate authorities. */
    class Ros1Easy_handeye_msgsTakeSampleServer : public ServerOwners
    {
        using Handler = std::function<Ros1Easy_handeye_msgsTakeSampleResponse(Ros1Easy_handeye_msgsTakeSampleRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Easy_handeye_msgsTakeSampleRequest;
        using Response = Ros1Easy_handeye_msgsTakeSampleResponse;

        Ros1Easy_handeye_msgsTakeSampleServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_easy_handeye_msgs_TakeSample_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_easy_handeye_msgs_TakeSample_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_easy_handeye_msgs_TakeSample_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_easy_handeye_msgs_TakeSample_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom grid_map_msgs/GetGridMap client; default policy returns13 from construction. */
    class Ros1Grid_map_msgsGetGridMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Grid_map_msgsGetGridMapRequest;
        using Response = Ros1Grid_map_msgsGetGridMapResponse;

        Ros1Grid_map_msgsGetGridMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Grid_map_msgsGetGridMapClient(Ros1Grid_map_msgsGetGridMapClient const&) = delete;
        Ros1Grid_map_msgsGetGridMapClient& operator= (Ros1Grid_map_msgsGetGridMapClient const&) = delete;
        Ros1Grid_map_msgsGetGridMapClient(Ros1Grid_map_msgsGetGridMapClient&&) = delete;

        ~Ros1Grid_map_msgsGetGridMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_grid_map_msgs_GetGridMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom grid_map_msgs/GetGridMap server; advertise/respond stay separate authorities. */
    class Ros1Grid_map_msgsGetGridMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Grid_map_msgsGetGridMapResponse(Ros1Grid_map_msgsGetGridMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Grid_map_msgsGetGridMapRequest;
        using Response = Ros1Grid_map_msgsGetGridMapResponse;

        Ros1Grid_map_msgsGetGridMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_grid_map_msgs_GetGridMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_grid_map_msgs_GetGridMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_grid_map_msgs_GetGridMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_grid_map_msgs_GetGridMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom grid_map_msgs/GetGridMapInfo client; default policy returns13 from construction. */
    class Ros1Grid_map_msgsGetGridMapInfoClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Grid_map_msgsGetGridMapInfoRequest;
        using Response = Ros1Grid_map_msgsGetGridMapInfoResponse;

        Ros1Grid_map_msgsGetGridMapInfoClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Grid_map_msgsGetGridMapInfoClient(Ros1Grid_map_msgsGetGridMapInfoClient const&) = delete;
        Ros1Grid_map_msgsGetGridMapInfoClient& operator= (Ros1Grid_map_msgsGetGridMapInfoClient const&) = delete;
        Ros1Grid_map_msgsGetGridMapInfoClient(Ros1Grid_map_msgsGetGridMapInfoClient&&) = delete;

        ~Ros1Grid_map_msgsGetGridMapInfoClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_grid_map_msgs_GetGridMapInfo_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom grid_map_msgs/GetGridMapInfo server; advertise/respond stay separate authorities. */
    class Ros1Grid_map_msgsGetGridMapInfoServer : public ServerOwners
    {
        using Handler = std::function<Ros1Grid_map_msgsGetGridMapInfoResponse(Ros1Grid_map_msgsGetGridMapInfoRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Grid_map_msgsGetGridMapInfoRequest;
        using Response = Ros1Grid_map_msgsGetGridMapInfoResponse;

        Ros1Grid_map_msgsGetGridMapInfoServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_grid_map_msgs_GetGridMapInfo_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_grid_map_msgs_GetGridMapInfo_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_grid_map_msgs_GetGridMapInfo_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_grid_map_msgs_GetGridMapInfo_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom grid_map_msgs/ProcessFile client; default policy returns13 from construction. */
    class Ros1Grid_map_msgsProcessFileClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Grid_map_msgsProcessFileRequest;
        using Response = Ros1Grid_map_msgsProcessFileResponse;

        Ros1Grid_map_msgsProcessFileClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Grid_map_msgsProcessFileClient(Ros1Grid_map_msgsProcessFileClient const&) = delete;
        Ros1Grid_map_msgsProcessFileClient& operator= (Ros1Grid_map_msgsProcessFileClient const&) = delete;
        Ros1Grid_map_msgsProcessFileClient(Ros1Grid_map_msgsProcessFileClient&&) = delete;

        ~Ros1Grid_map_msgsProcessFileClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_grid_map_msgs_ProcessFile_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom grid_map_msgs/ProcessFile server; advertise/respond stay separate authorities. */
    class Ros1Grid_map_msgsProcessFileServer : public ServerOwners
    {
        using Handler = std::function<Ros1Grid_map_msgsProcessFileResponse(Ros1Grid_map_msgsProcessFileRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Grid_map_msgsProcessFileRequest;
        using Response = Ros1Grid_map_msgsProcessFileResponse;

        Ros1Grid_map_msgsProcessFileServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_grid_map_msgs_ProcessFile_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_grid_map_msgs_ProcessFile_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_grid_map_msgs_ProcessFile_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_grid_map_msgs_ProcessFile_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom grid_map_msgs/SetGridMap client; default policy returns13 from construction. */
    class Ros1Grid_map_msgsSetGridMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Grid_map_msgsSetGridMapRequest;
        using Response = Ros1Grid_map_msgsSetGridMapResponse;

        Ros1Grid_map_msgsSetGridMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Grid_map_msgsSetGridMapClient(Ros1Grid_map_msgsSetGridMapClient const&) = delete;
        Ros1Grid_map_msgsSetGridMapClient& operator= (Ros1Grid_map_msgsSetGridMapClient const&) = delete;
        Ros1Grid_map_msgsSetGridMapClient(Ros1Grid_map_msgsSetGridMapClient&&) = delete;

        ~Ros1Grid_map_msgsSetGridMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_grid_map_msgs_SetGridMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom grid_map_msgs/SetGridMap server; advertise/respond stay separate authorities. */
    class Ros1Grid_map_msgsSetGridMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Grid_map_msgsSetGridMapResponse(Ros1Grid_map_msgsSetGridMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Grid_map_msgsSetGridMapRequest;
        using Response = Ros1Grid_map_msgsSetGridMapResponse;

        Ros1Grid_map_msgsSetGridMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_grid_map_msgs_SetGridMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_grid_map_msgs_SetGridMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_grid_map_msgs_SetGridMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_grid_map_msgs_SetGridMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom h12pro_controller_node/ExecuteArmAction client; default policy returns13 from construction. */
    class Ros1H12pro_controller_nodeExecuteArmActionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1H12pro_controller_nodeExecuteArmActionRequest;
        using Response = Ros1H12pro_controller_nodeExecuteArmActionResponse;

        Ros1H12pro_controller_nodeExecuteArmActionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1H12pro_controller_nodeExecuteArmActionClient(Ros1H12pro_controller_nodeExecuteArmActionClient const&) = delete;
        Ros1H12pro_controller_nodeExecuteArmActionClient& operator= (Ros1H12pro_controller_nodeExecuteArmActionClient const&) = delete;
        Ros1H12pro_controller_nodeExecuteArmActionClient(Ros1H12pro_controller_nodeExecuteArmActionClient&&) = delete;

        ~Ros1H12pro_controller_nodeExecuteArmActionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_ExecuteArmAction_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom h12pro_controller_node/ExecuteArmAction server; advertise/respond stay separate authorities. */
    class Ros1H12pro_controller_nodeExecuteArmActionServer : public ServerOwners
    {
        using Handler = std::function<Ros1H12pro_controller_nodeExecuteArmActionResponse(Ros1H12pro_controller_nodeExecuteArmActionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1H12pro_controller_nodeExecuteArmActionRequest;
        using Response = Ros1H12pro_controller_nodeExecuteArmActionResponse;

        Ros1H12pro_controller_nodeExecuteArmActionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_h12pro_controller_node_ExecuteArmAction_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_ExecuteArmAction_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_h12pro_controller_node_ExecuteArmAction_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_h12pro_controller_node_ExecuteArmAction_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom h12pro_controller_node/changeAMBACCtrlMode client; default policy returns13 from construction.
     */
    class Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest;
        using Response = Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse;

        Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient(Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient const&) = delete;
        Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient& operator= (Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient const&) = delete;
        Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient(Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient&&) = delete;

        ~Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom h12pro_controller_node/changeAMBACCtrlMode server; advertise/respond stay separate authorities. */
    class Ros1H12pro_controller_nodeChangeAMBACCtrlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse(Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest;
        using Response = Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse;

        Ros1H12pro_controller_nodeChangeAMBACCtrlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom h12pro_controller_node/changeArmCtrlMode client; default policy returns13 from construction. */
    class Ros1H12pro_controller_nodeChangeArmCtrlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1H12pro_controller_nodeChangeArmCtrlModeRequest;
        using Response = Ros1H12pro_controller_nodeChangeArmCtrlModeResponse;

        Ros1H12pro_controller_nodeChangeArmCtrlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1H12pro_controller_nodeChangeArmCtrlModeClient(Ros1H12pro_controller_nodeChangeArmCtrlModeClient const&) = delete;
        Ros1H12pro_controller_nodeChangeArmCtrlModeClient& operator= (Ros1H12pro_controller_nodeChangeArmCtrlModeClient const&) = delete;
        Ros1H12pro_controller_nodeChangeArmCtrlModeClient(Ros1H12pro_controller_nodeChangeArmCtrlModeClient&&) = delete;

        ~Ros1H12pro_controller_nodeChangeArmCtrlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom h12pro_controller_node/changeArmCtrlMode server; advertise/respond stay separate authorities. */
    class Ros1H12pro_controller_nodeChangeArmCtrlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1H12pro_controller_nodeChangeArmCtrlModeResponse(Ros1H12pro_controller_nodeChangeArmCtrlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1H12pro_controller_nodeChangeArmCtrlModeRequest;
        using Response = Ros1H12pro_controller_nodeChangeArmCtrlModeResponse;

        Ros1H12pro_controller_nodeChangeArmCtrlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom h12pro_controller_node/changeHandArmPosesByConfigName client; default policy returns13 from
     * construction. */
    class Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest;
        using Response = Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse;

        Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient(Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient const&) = delete;
        Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient&
            operator= (Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient const&) = delete;
        Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient(Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient&&) = delete;

        ~Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom h12pro_controller_node/changeHandArmPosesByConfigName server; advertise/respond stay separate
     * authorities. */
    class Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameServer : public ServerOwners
    {
        using Handler = std::function<Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse(
            Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest;
        using Response = Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse;

        Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigName_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom h12pro_controller_node/playmusic client; default policy returns13 from construction. */
    class Ros1H12pro_controller_nodePlaymusicClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1H12pro_controller_nodePlaymusicRequest;
        using Response = Ros1H12pro_controller_nodePlaymusicResponse;

        Ros1H12pro_controller_nodePlaymusicClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1H12pro_controller_nodePlaymusicClient(Ros1H12pro_controller_nodePlaymusicClient const&) = delete;
        Ros1H12pro_controller_nodePlaymusicClient& operator= (Ros1H12pro_controller_nodePlaymusicClient const&) = delete;
        Ros1H12pro_controller_nodePlaymusicClient(Ros1H12pro_controller_nodePlaymusicClient&&) = delete;

        ~Ros1H12pro_controller_nodePlaymusicClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_playmusic_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom h12pro_controller_node/playmusic server; advertise/respond stay separate authorities. */
    class Ros1H12pro_controller_nodePlaymusicServer : public ServerOwners
    {
        using Handler = std::function<Ros1H12pro_controller_nodePlaymusicResponse(Ros1H12pro_controller_nodePlaymusicRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1H12pro_controller_nodePlaymusicRequest;
        using Response = Ros1H12pro_controller_nodePlaymusicResponse;

        Ros1H12pro_controller_nodePlaymusicServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_h12pro_controller_node_playmusic_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_playmusic_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_h12pro_controller_node_playmusic_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_h12pro_controller_node_playmusic_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom h12pro_controller_node/srvChangePhases client; default policy returns13 from construction. */
    class Ros1H12pro_controller_nodeSrvChangePhasesClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1H12pro_controller_nodeSrvChangePhasesRequest;
        using Response = Ros1H12pro_controller_nodeSrvChangePhasesResponse;

        Ros1H12pro_controller_nodeSrvChangePhasesClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1H12pro_controller_nodeSrvChangePhasesClient(Ros1H12pro_controller_nodeSrvChangePhasesClient const&) = delete;
        Ros1H12pro_controller_nodeSrvChangePhasesClient& operator= (Ros1H12pro_controller_nodeSrvChangePhasesClient const&) = delete;
        Ros1H12pro_controller_nodeSrvChangePhasesClient(Ros1H12pro_controller_nodeSrvChangePhasesClient&&) = delete;

        ~Ros1H12pro_controller_nodeSrvChangePhasesClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_srvChangePhases_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom h12pro_controller_node/srvChangePhases server; advertise/respond stay separate authorities. */
    class Ros1H12pro_controller_nodeSrvChangePhasesServer : public ServerOwners
    {
        using Handler = std::function<Ros1H12pro_controller_nodeSrvChangePhasesResponse(Ros1H12pro_controller_nodeSrvChangePhasesRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1H12pro_controller_nodeSrvChangePhasesRequest;
        using Response = Ros1H12pro_controller_nodeSrvChangePhasesResponse;

        Ros1H12pro_controller_nodeSrvChangePhasesServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_h12pro_controller_node_srvChangePhases_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_srvChangePhases_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_h12pro_controller_node_srvChangePhases_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_h12pro_controller_node_srvChangePhases_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom h12pro_controller_node/srvClearPositionCMD client; default policy returns13 from construction.
     */
    class Ros1H12pro_controller_nodeSrvClearPositionCMDClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1H12pro_controller_nodeSrvClearPositionCMDRequest;
        using Response = Ros1H12pro_controller_nodeSrvClearPositionCMDResponse;

        Ros1H12pro_controller_nodeSrvClearPositionCMDClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1H12pro_controller_nodeSrvClearPositionCMDClient(Ros1H12pro_controller_nodeSrvClearPositionCMDClient const&) = delete;
        Ros1H12pro_controller_nodeSrvClearPositionCMDClient& operator= (Ros1H12pro_controller_nodeSrvClearPositionCMDClient const&) = delete;
        Ros1H12pro_controller_nodeSrvClearPositionCMDClient(Ros1H12pro_controller_nodeSrvClearPositionCMDClient&&) = delete;

        ~Ros1H12pro_controller_nodeSrvClearPositionCMDClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMD_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom h12pro_controller_node/srvClearPositionCMD server; advertise/respond stay separate authorities. */
    class Ros1H12pro_controller_nodeSrvClearPositionCMDServer : public ServerOwners
    {
        using Handler = std::function<Ros1H12pro_controller_nodeSrvClearPositionCMDResponse(Ros1H12pro_controller_nodeSrvClearPositionCMDRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1H12pro_controller_nodeSrvClearPositionCMDRequest;
        using Response = Ros1H12pro_controller_nodeSrvClearPositionCMDResponse;

        Ros1H12pro_controller_nodeSrvClearPositionCMDServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMD_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMD_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMD_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMD_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom h12pro_controller_node/srvchangeCtlMode client; default policy returns13 from construction. */
    class Ros1H12pro_controller_nodeSrvchangeCtlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1H12pro_controller_nodeSrvchangeCtlModeRequest;
        using Response = Ros1H12pro_controller_nodeSrvchangeCtlModeResponse;

        Ros1H12pro_controller_nodeSrvchangeCtlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1H12pro_controller_nodeSrvchangeCtlModeClient(Ros1H12pro_controller_nodeSrvchangeCtlModeClient const&) = delete;
        Ros1H12pro_controller_nodeSrvchangeCtlModeClient& operator= (Ros1H12pro_controller_nodeSrvchangeCtlModeClient const&) = delete;
        Ros1H12pro_controller_nodeSrvchangeCtlModeClient(Ros1H12pro_controller_nodeSrvchangeCtlModeClient&&) = delete;

        ~Ros1H12pro_controller_nodeSrvchangeCtlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom h12pro_controller_node/srvchangeCtlMode server; advertise/respond stay separate authorities. */
    class Ros1H12pro_controller_nodeSrvchangeCtlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1H12pro_controller_nodeSrvchangeCtlModeResponse(Ros1H12pro_controller_nodeSrvchangeCtlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1H12pro_controller_nodeSrvchangeCtlModeRequest;
        using Response = Ros1H12pro_controller_nodeSrvchangeCtlModeResponse;

        Ros1H12pro_controller_nodeSrvchangeCtlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom handcontrollerdemorosnode/changeHandTrackingMode client; default policy returns13 from
     * construction. */
    class Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest;
        using Response = Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse;

        Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient(Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient const&) = delete;
        Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient& operator= (Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient const&) = delete;
        Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient(Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient&&) = delete;

        ~Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom handcontrollerdemorosnode/changeHandTrackingMode server; advertise/respond stay separate
     * authorities. */
    class Ros1HandcontrollerdemorosnodeChangeHandTrackingModeServer : public ServerOwners
    {
        using Handler =
            std::function<Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse(Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest;
        using Response = Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse;

        Ros1HandcontrollerdemorosnodeChangeHandTrackingModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom handcontrollerdemorosnode/controlEndHand client; default policy returns13 from construction. */
    class Ros1HandcontrollerdemorosnodeControlEndHandClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1HandcontrollerdemorosnodeControlEndHandRequest;
        using Response = Ros1HandcontrollerdemorosnodeControlEndHandResponse;

        Ros1HandcontrollerdemorosnodeControlEndHandClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1HandcontrollerdemorosnodeControlEndHandClient(Ros1HandcontrollerdemorosnodeControlEndHandClient const&) = delete;
        Ros1HandcontrollerdemorosnodeControlEndHandClient& operator= (Ros1HandcontrollerdemorosnodeControlEndHandClient const&) = delete;
        Ros1HandcontrollerdemorosnodeControlEndHandClient(Ros1HandcontrollerdemorosnodeControlEndHandClient&&) = delete;

        ~Ros1HandcontrollerdemorosnodeControlEndHandClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHand_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom handcontrollerdemorosnode/controlEndHand server; advertise/respond stay separate authorities. */
    class Ros1HandcontrollerdemorosnodeControlEndHandServer : public ServerOwners
    {
        using Handler = std::function<Ros1HandcontrollerdemorosnodeControlEndHandResponse(Ros1HandcontrollerdemorosnodeControlEndHandRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1HandcontrollerdemorosnodeControlEndHandRequest;
        using Response = Ros1HandcontrollerdemorosnodeControlEndHandResponse;

        Ros1HandcontrollerdemorosnodeControlEndHandServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHand_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHand_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHand_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHand_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom handcontrollerdemorosnode/srvArmIK client; default policy returns13 from construction. */
    class Ros1HandcontrollerdemorosnodeSrvArmIKClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1HandcontrollerdemorosnodeSrvArmIKRequest;
        using Response = Ros1HandcontrollerdemorosnodeSrvArmIKResponse;

        Ros1HandcontrollerdemorosnodeSrvArmIKClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1HandcontrollerdemorosnodeSrvArmIKClient(Ros1HandcontrollerdemorosnodeSrvArmIKClient const&) = delete;
        Ros1HandcontrollerdemorosnodeSrvArmIKClient& operator= (Ros1HandcontrollerdemorosnodeSrvArmIKClient const&) = delete;
        Ros1HandcontrollerdemorosnodeSrvArmIKClient(Ros1HandcontrollerdemorosnodeSrvArmIKClient&&) = delete;

        ~Ros1HandcontrollerdemorosnodeSrvArmIKClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIK_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom handcontrollerdemorosnode/srvArmIK server; advertise/respond stay separate authorities. */
    class Ros1HandcontrollerdemorosnodeSrvArmIKServer : public ServerOwners
    {
        using Handler = std::function<Ros1HandcontrollerdemorosnodeSrvArmIKResponse(Ros1HandcontrollerdemorosnodeSrvArmIKRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1HandcontrollerdemorosnodeSrvArmIKRequest;
        using Response = Ros1HandcontrollerdemorosnodeSrvArmIKResponse;

        Ros1HandcontrollerdemorosnodeSrvArmIKServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIK_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIK_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIK_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIK_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom humanoid_arm_control/armControl client; default policy returns13 from construction. */
    class Ros1Humanoid_arm_controlArmControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Humanoid_arm_controlArmControlRequest;
        using Response = Ros1Humanoid_arm_controlArmControlResponse;

        Ros1Humanoid_arm_controlArmControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Humanoid_arm_controlArmControlClient(Ros1Humanoid_arm_controlArmControlClient const&) = delete;
        Ros1Humanoid_arm_controlArmControlClient& operator= (Ros1Humanoid_arm_controlArmControlClient const&) = delete;
        Ros1Humanoid_arm_controlArmControlClient(Ros1Humanoid_arm_controlArmControlClient&&) = delete;

        ~Ros1Humanoid_arm_controlArmControlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_arm_control_armControl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom humanoid_arm_control/armControl server; advertise/respond stay separate authorities. */
    class Ros1Humanoid_arm_controlArmControlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Humanoid_arm_controlArmControlResponse(Ros1Humanoid_arm_controlArmControlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Humanoid_arm_controlArmControlRequest;
        using Response = Ros1Humanoid_arm_controlArmControlResponse;

        Ros1Humanoid_arm_controlArmControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_humanoid_arm_control_armControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_arm_control_armControl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_humanoid_arm_control_armControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_humanoid_arm_control_armControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom humanoid_arm_control/handUpAndGrab client; default policy returns13 from construction. */
    class Ros1Humanoid_arm_controlHandUpAndGrabClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Humanoid_arm_controlHandUpAndGrabRequest;
        using Response = Ros1Humanoid_arm_controlHandUpAndGrabResponse;

        Ros1Humanoid_arm_controlHandUpAndGrabClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Humanoid_arm_controlHandUpAndGrabClient(Ros1Humanoid_arm_controlHandUpAndGrabClient const&) = delete;
        Ros1Humanoid_arm_controlHandUpAndGrabClient& operator= (Ros1Humanoid_arm_controlHandUpAndGrabClient const&) = delete;
        Ros1Humanoid_arm_controlHandUpAndGrabClient(Ros1Humanoid_arm_controlHandUpAndGrabClient&&) = delete;

        ~Ros1Humanoid_arm_controlHandUpAndGrabClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_arm_control_handUpAndGrab_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom humanoid_arm_control/handUpAndGrab server; advertise/respond stay separate authorities. */
    class Ros1Humanoid_arm_controlHandUpAndGrabServer : public ServerOwners
    {
        using Handler = std::function<Ros1Humanoid_arm_controlHandUpAndGrabResponse(Ros1Humanoid_arm_controlHandUpAndGrabRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Humanoid_arm_controlHandUpAndGrabRequest;
        using Response = Ros1Humanoid_arm_controlHandUpAndGrabResponse;

        Ros1Humanoid_arm_controlHandUpAndGrabServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_humanoid_arm_control_handUpAndGrab_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_arm_control_handUpAndGrab_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_humanoid_arm_control_handUpAndGrab_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_humanoid_arm_control_handUpAndGrab_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom humanoid_plan_arm_trajectory/ExecuteArmAction client; default policy returns13 from
     * construction. */
    class Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest;
        using Response = Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse;

        Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient(Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient const&) = delete;
        Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient& operator= (Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient const&) = delete;
        Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient(Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient&&) = delete;

        ~Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmAction_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom humanoid_plan_arm_trajectory/ExecuteArmAction server; advertise/respond stay separate authorities.
     */
    class Ros1Humanoid_plan_arm_trajectoryExecuteArmActionServer : public ServerOwners
    {
        using Handler = std::function<Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse(Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest;
        using Response = Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse;

        Ros1Humanoid_plan_arm_trajectoryExecuteArmActionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmAction_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmAction_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmAction_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmAction_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve client; default policy returns13 from
     * construction. */
    class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest;
        using Response = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse;

        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient(roswasmc_context const& context, std::string_view selected) :
            context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient(Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient const&) = delete;
        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient&
            operator= (Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient const&) = delete;
        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient(Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient&&) = delete;

        ~Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurve_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve server; advertise/respond stay separate
     * authorities. */
    class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse(
            Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest;
        using Response = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse;

        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveServer(roswasmc_context const& context,
                                                                           std::string_view advertise,
                                                                           std::string_view respond) : ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurve_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurve_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurve_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurve_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline client; default policy returns13 from
     * construction. */
    class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest;
        using Response = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse;

        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient(roswasmc_context const& context, std::string_view selected) :
            context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient(Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient const&) = delete;
        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient&
            operator= (Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient const&) = delete;
        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient(Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient&&) = delete;

        ~Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSpline_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline server; advertise/respond stay separate
     * authorities. */
    class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineServer : public ServerOwners
    {
        using Handler = std::function<Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse(
            Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest;
        using Response = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse;

        Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineServer(roswasmc_context const& context,
                                                                           std::string_view advertise,
                                                                           std::string_view respond) : ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSpline_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSpline_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSpline_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSpline_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_audio_player/audio_status client; default policy returns13 from construction. */
    class Ros1Kuavo_audio_playerAudio_statusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_audio_playerAudio_statusRequest;
        using Response = Ros1Kuavo_audio_playerAudio_statusResponse;

        Ros1Kuavo_audio_playerAudio_statusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_audio_playerAudio_statusClient(Ros1Kuavo_audio_playerAudio_statusClient const&) = delete;
        Ros1Kuavo_audio_playerAudio_statusClient& operator= (Ros1Kuavo_audio_playerAudio_statusClient const&) = delete;
        Ros1Kuavo_audio_playerAudio_statusClient(Ros1Kuavo_audio_playerAudio_statusClient&&) = delete;

        ~Ros1Kuavo_audio_playerAudio_statusClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_audio_player_audio_status_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_audio_player/audio_status server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_audio_playerAudio_statusServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_audio_playerAudio_statusResponse(Ros1Kuavo_audio_playerAudio_statusRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_audio_playerAudio_statusRequest;
        using Response = Ros1Kuavo_audio_playerAudio_statusResponse;

        Ros1Kuavo_audio_playerAudio_statusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_audio_player_audio_status_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_audio_player_audio_status_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_audio_player_audio_status_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_audio_player_audio_status_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_audio_player/playmusic client; default policy returns13 from construction. */
    class Ros1Kuavo_audio_playerPlaymusicClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_audio_playerPlaymusicRequest;
        using Response = Ros1Kuavo_audio_playerPlaymusicResponse;

        Ros1Kuavo_audio_playerPlaymusicClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_audio_playerPlaymusicClient(Ros1Kuavo_audio_playerPlaymusicClient const&) = delete;
        Ros1Kuavo_audio_playerPlaymusicClient& operator= (Ros1Kuavo_audio_playerPlaymusicClient const&) = delete;
        Ros1Kuavo_audio_playerPlaymusicClient(Ros1Kuavo_audio_playerPlaymusicClient&&) = delete;

        ~Ros1Kuavo_audio_playerPlaymusicClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_audio_player_playmusic_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_audio_player/playmusic server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_audio_playerPlaymusicServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_audio_playerPlaymusicResponse(Ros1Kuavo_audio_playerPlaymusicRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_audio_playerPlaymusicRequest;
        using Response = Ros1Kuavo_audio_playerPlaymusicResponse;

        Ros1Kuavo_audio_playerPlaymusicServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_audio_player_playmusic_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_audio_player_playmusic_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_audio_player_playmusic_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_audio_player_playmusic_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/DeleteMap client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingDeleteMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingDeleteMapRequest;
        using Response = Ros1Kuavo_mappingDeleteMapResponse;

        Ros1Kuavo_mappingDeleteMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingDeleteMapClient(Ros1Kuavo_mappingDeleteMapClient const&) = delete;
        Ros1Kuavo_mappingDeleteMapClient& operator= (Ros1Kuavo_mappingDeleteMapClient const&) = delete;
        Ros1Kuavo_mappingDeleteMapClient(Ros1Kuavo_mappingDeleteMapClient&&) = delete;

        ~Ros1Kuavo_mappingDeleteMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_DeleteMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/DeleteMap server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingDeleteMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingDeleteMapResponse(Ros1Kuavo_mappingDeleteMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingDeleteMapRequest;
        using Response = Ros1Kuavo_mappingDeleteMapResponse;

        Ros1Kuavo_mappingDeleteMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_DeleteMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_DeleteMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_DeleteMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_DeleteMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/EditMap client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingEditMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingEditMapRequest;
        using Response = Ros1Kuavo_mappingEditMapResponse;

        Ros1Kuavo_mappingEditMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingEditMapClient(Ros1Kuavo_mappingEditMapClient const&) = delete;
        Ros1Kuavo_mappingEditMapClient& operator= (Ros1Kuavo_mappingEditMapClient const&) = delete;
        Ros1Kuavo_mappingEditMapClient(Ros1Kuavo_mappingEditMapClient&&) = delete;

        ~Ros1Kuavo_mappingEditMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_EditMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/EditMap server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingEditMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingEditMapResponse(Ros1Kuavo_mappingEditMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingEditMapRequest;
        using Response = Ros1Kuavo_mappingEditMapResponse;

        Ros1Kuavo_mappingEditMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_EditMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_EditMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_EditMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_EditMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/GetAllMaps client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingGetAllMapsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingGetAllMapsRequest;
        using Response = Ros1Kuavo_mappingGetAllMapsResponse;

        Ros1Kuavo_mappingGetAllMapsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingGetAllMapsClient(Ros1Kuavo_mappingGetAllMapsClient const&) = delete;
        Ros1Kuavo_mappingGetAllMapsClient& operator= (Ros1Kuavo_mappingGetAllMapsClient const&) = delete;
        Ros1Kuavo_mappingGetAllMapsClient(Ros1Kuavo_mappingGetAllMapsClient&&) = delete;

        ~Ros1Kuavo_mappingGetAllMapsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_GetAllMaps_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/GetAllMaps server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingGetAllMapsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingGetAllMapsResponse(Ros1Kuavo_mappingGetAllMapsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingGetAllMapsRequest;
        using Response = Ros1Kuavo_mappingGetAllMapsResponse;

        Ros1Kuavo_mappingGetAllMapsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_GetAllMaps_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_GetAllMaps_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_GetAllMaps_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_GetAllMaps_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/GetCurrentMap client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingGetCurrentMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingGetCurrentMapRequest;
        using Response = Ros1Kuavo_mappingGetCurrentMapResponse;

        Ros1Kuavo_mappingGetCurrentMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingGetCurrentMapClient(Ros1Kuavo_mappingGetCurrentMapClient const&) = delete;
        Ros1Kuavo_mappingGetCurrentMapClient& operator= (Ros1Kuavo_mappingGetCurrentMapClient const&) = delete;
        Ros1Kuavo_mappingGetCurrentMapClient(Ros1Kuavo_mappingGetCurrentMapClient&&) = delete;

        ~Ros1Kuavo_mappingGetCurrentMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_GetCurrentMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/GetCurrentMap server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingGetCurrentMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingGetCurrentMapResponse(Ros1Kuavo_mappingGetCurrentMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingGetCurrentMapRequest;
        using Response = Ros1Kuavo_mappingGetCurrentMapResponse;

        Ros1Kuavo_mappingGetCurrentMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_GetCurrentMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_GetCurrentMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_GetCurrentMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_GetCurrentMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/InitialPoseWithTaskPoint client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingInitialPoseWithTaskPointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingInitialPoseWithTaskPointRequest;
        using Response = Ros1Kuavo_mappingInitialPoseWithTaskPointResponse;

        Ros1Kuavo_mappingInitialPoseWithTaskPointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingInitialPoseWithTaskPointClient(Ros1Kuavo_mappingInitialPoseWithTaskPointClient const&) = delete;
        Ros1Kuavo_mappingInitialPoseWithTaskPointClient& operator= (Ros1Kuavo_mappingInitialPoseWithTaskPointClient const&) = delete;
        Ros1Kuavo_mappingInitialPoseWithTaskPointClient(Ros1Kuavo_mappingInitialPoseWithTaskPointClient&&) = delete;

        ~Ros1Kuavo_mappingInitialPoseWithTaskPointClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPoint_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/InitialPoseWithTaskPoint server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingInitialPoseWithTaskPointServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingInitialPoseWithTaskPointResponse(Ros1Kuavo_mappingInitialPoseWithTaskPointRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingInitialPoseWithTaskPointRequest;
        using Response = Ros1Kuavo_mappingInitialPoseWithTaskPointResponse;

        Ros1Kuavo_mappingInitialPoseWithTaskPointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPoint_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/LoadMap client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingLoadMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingLoadMapRequest;
        using Response = Ros1Kuavo_mappingLoadMapResponse;

        Ros1Kuavo_mappingLoadMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingLoadMapClient(Ros1Kuavo_mappingLoadMapClient const&) = delete;
        Ros1Kuavo_mappingLoadMapClient& operator= (Ros1Kuavo_mappingLoadMapClient const&) = delete;
        Ros1Kuavo_mappingLoadMapClient(Ros1Kuavo_mappingLoadMapClient&&) = delete;

        ~Ros1Kuavo_mappingLoadMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_LoadMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/LoadMap server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingLoadMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingLoadMapResponse(Ros1Kuavo_mappingLoadMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingLoadMapRequest;
        using Response = Ros1Kuavo_mappingLoadMapResponse;

        Ros1Kuavo_mappingLoadMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_LoadMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_LoadMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_LoadMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_LoadMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/NavigateToTaskPoint client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingNavigateToTaskPointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingNavigateToTaskPointRequest;
        using Response = Ros1Kuavo_mappingNavigateToTaskPointResponse;

        Ros1Kuavo_mappingNavigateToTaskPointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingNavigateToTaskPointClient(Ros1Kuavo_mappingNavigateToTaskPointClient const&) = delete;
        Ros1Kuavo_mappingNavigateToTaskPointClient& operator= (Ros1Kuavo_mappingNavigateToTaskPointClient const&) = delete;
        Ros1Kuavo_mappingNavigateToTaskPointClient(Ros1Kuavo_mappingNavigateToTaskPointClient&&) = delete;

        ~Ros1Kuavo_mappingNavigateToTaskPointClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPoint_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/NavigateToTaskPoint server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingNavigateToTaskPointServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingNavigateToTaskPointResponse(Ros1Kuavo_mappingNavigateToTaskPointRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingNavigateToTaskPointRequest;
        using Response = Ros1Kuavo_mappingNavigateToTaskPointResponse;

        Ros1Kuavo_mappingNavigateToTaskPointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPoint_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/RenameMap client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingRenameMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingRenameMapRequest;
        using Response = Ros1Kuavo_mappingRenameMapResponse;

        Ros1Kuavo_mappingRenameMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingRenameMapClient(Ros1Kuavo_mappingRenameMapClient const&) = delete;
        Ros1Kuavo_mappingRenameMapClient& operator= (Ros1Kuavo_mappingRenameMapClient const&) = delete;
        Ros1Kuavo_mappingRenameMapClient(Ros1Kuavo_mappingRenameMapClient&&) = delete;

        ~Ros1Kuavo_mappingRenameMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_RenameMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/RenameMap server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingRenameMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingRenameMapResponse(Ros1Kuavo_mappingRenameMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingRenameMapRequest;
        using Response = Ros1Kuavo_mappingRenameMapResponse;

        Ros1Kuavo_mappingRenameMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_RenameMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_RenameMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_RenameMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_RenameMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/SaveMap client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingSaveMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingSaveMapRequest;
        using Response = Ros1Kuavo_mappingSaveMapResponse;

        Ros1Kuavo_mappingSaveMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingSaveMapClient(Ros1Kuavo_mappingSaveMapClient const&) = delete;
        Ros1Kuavo_mappingSaveMapClient& operator= (Ros1Kuavo_mappingSaveMapClient const&) = delete;
        Ros1Kuavo_mappingSaveMapClient(Ros1Kuavo_mappingSaveMapClient&&) = delete;

        ~Ros1Kuavo_mappingSaveMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_SaveMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/SaveMap server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingSaveMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingSaveMapResponse(Ros1Kuavo_mappingSaveMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingSaveMapRequest;
        using Response = Ros1Kuavo_mappingSaveMapResponse;

        Ros1Kuavo_mappingSaveMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_SaveMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_SaveMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_SaveMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_SaveMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/SetInitialPose client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingSetInitialPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingSetInitialPoseRequest;
        using Response = Ros1Kuavo_mappingSetInitialPoseResponse;

        Ros1Kuavo_mappingSetInitialPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingSetInitialPoseClient(Ros1Kuavo_mappingSetInitialPoseClient const&) = delete;
        Ros1Kuavo_mappingSetInitialPoseClient& operator= (Ros1Kuavo_mappingSetInitialPoseClient const&) = delete;
        Ros1Kuavo_mappingSetInitialPoseClient(Ros1Kuavo_mappingSetInitialPoseClient&&) = delete;

        ~Ros1Kuavo_mappingSetInitialPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_SetInitialPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/SetInitialPose server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingSetInitialPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingSetInitialPoseResponse(Ros1Kuavo_mappingSetInitialPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingSetInitialPoseRequest;
        using Response = Ros1Kuavo_mappingSetInitialPoseResponse;

        Ros1Kuavo_mappingSetInitialPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_SetInitialPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_SetInitialPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_SetInitialPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_SetInitialPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/StartMapping client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingStartMappingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingStartMappingRequest;
        using Response = Ros1Kuavo_mappingStartMappingResponse;

        Ros1Kuavo_mappingStartMappingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingStartMappingClient(Ros1Kuavo_mappingStartMappingClient const&) = delete;
        Ros1Kuavo_mappingStartMappingClient& operator= (Ros1Kuavo_mappingStartMappingClient const&) = delete;
        Ros1Kuavo_mappingStartMappingClient(Ros1Kuavo_mappingStartMappingClient&&) = delete;

        ~Ros1Kuavo_mappingStartMappingClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_StartMapping_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/StartMapping server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingStartMappingServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingStartMappingResponse(Ros1Kuavo_mappingStartMappingRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingStartMappingRequest;
        using Response = Ros1Kuavo_mappingStartMappingResponse;

        Ros1Kuavo_mappingStartMappingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_StartMapping_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_StartMapping_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_StartMapping_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_StartMapping_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/StopMapping client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingStopMappingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingStopMappingRequest;
        using Response = Ros1Kuavo_mappingStopMappingResponse;

        Ros1Kuavo_mappingStopMappingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingStopMappingClient(Ros1Kuavo_mappingStopMappingClient const&) = delete;
        Ros1Kuavo_mappingStopMappingClient& operator= (Ros1Kuavo_mappingStopMappingClient const&) = delete;
        Ros1Kuavo_mappingStopMappingClient(Ros1Kuavo_mappingStopMappingClient&&) = delete;

        ~Ros1Kuavo_mappingStopMappingClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_StopMapping_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/StopMapping server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingStopMappingServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingStopMappingResponse(Ros1Kuavo_mappingStopMappingRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingStopMappingRequest;
        using Response = Ros1Kuavo_mappingStopMappingResponse;

        Ros1Kuavo_mappingStopMappingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_StopMapping_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_StopMapping_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_StopMapping_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_StopMapping_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_mapping/TaskPointOperation client; default policy returns13 from construction. */
    class Ros1Kuavo_mappingTaskPointOperationClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_mappingTaskPointOperationRequest;
        using Response = Ros1Kuavo_mappingTaskPointOperationResponse;

        Ros1Kuavo_mappingTaskPointOperationClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_mappingTaskPointOperationClient(Ros1Kuavo_mappingTaskPointOperationClient const&) = delete;
        Ros1Kuavo_mappingTaskPointOperationClient& operator= (Ros1Kuavo_mappingTaskPointOperationClient const&) = delete;
        Ros1Kuavo_mappingTaskPointOperationClient(Ros1Kuavo_mappingTaskPointOperationClient&&) = delete;

        ~Ros1Kuavo_mappingTaskPointOperationClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_TaskPointOperation_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_mapping/TaskPointOperation server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_mappingTaskPointOperationServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_mappingTaskPointOperationResponse(Ros1Kuavo_mappingTaskPointOperationRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_mappingTaskPointOperationRequest;
        using Response = Ros1Kuavo_mappingTaskPointOperationResponse;

        Ros1Kuavo_mappingTaskPointOperationServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_mapping_TaskPointOperation_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_mapping_TaskPointOperation_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_mapping_TaskPointOperation_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_mapping_TaskPointOperation_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/CreatePath client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsCreatePathClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsCreatePathRequest;
        using Response = Ros1Kuavo_msgsCreatePathResponse;

        Ros1Kuavo_msgsCreatePathClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsCreatePathClient(Ros1Kuavo_msgsCreatePathClient const&) = delete;
        Ros1Kuavo_msgsCreatePathClient& operator= (Ros1Kuavo_msgsCreatePathClient const&) = delete;
        Ros1Kuavo_msgsCreatePathClient(Ros1Kuavo_msgsCreatePathClient&&) = delete;

        ~Ros1Kuavo_msgsCreatePathClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_CreatePath_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/CreatePath server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsCreatePathServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsCreatePathResponse(Ros1Kuavo_msgsCreatePathRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsCreatePathRequest;
        using Response = Ros1Kuavo_msgsCreatePathResponse;

        Ros1Kuavo_msgsCreatePathServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_CreatePath_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_CreatePath_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_CreatePath_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_CreatePath_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/ExecuteArmAction client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsExecuteArmActionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsExecuteArmActionRequest;
        using Response = Ros1Kuavo_msgsExecuteArmActionResponse;

        Ros1Kuavo_msgsExecuteArmActionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsExecuteArmActionClient(Ros1Kuavo_msgsExecuteArmActionClient const&) = delete;
        Ros1Kuavo_msgsExecuteArmActionClient& operator= (Ros1Kuavo_msgsExecuteArmActionClient const&) = delete;
        Ros1Kuavo_msgsExecuteArmActionClient(Ros1Kuavo_msgsExecuteArmActionClient&&) = delete;

        ~Ros1Kuavo_msgsExecuteArmActionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_ExecuteArmAction_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/ExecuteArmAction server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsExecuteArmActionServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsExecuteArmActionResponse(Ros1Kuavo_msgsExecuteArmActionRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsExecuteArmActionRequest;
        using Response = Ros1Kuavo_msgsExecuteArmActionResponse;

        Ros1Kuavo_msgsExecuteArmActionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_ExecuteArmAction_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_ExecuteArmAction_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_ExecuteArmAction_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_ExecuteArmAction_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/FallStandCommand client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsFallStandCommandClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsFallStandCommandRequest;
        using Response = Ros1Kuavo_msgsFallStandCommandResponse;

        Ros1Kuavo_msgsFallStandCommandClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsFallStandCommandClient(Ros1Kuavo_msgsFallStandCommandClient const&) = delete;
        Ros1Kuavo_msgsFallStandCommandClient& operator= (Ros1Kuavo_msgsFallStandCommandClient const&) = delete;
        Ros1Kuavo_msgsFallStandCommandClient(Ros1Kuavo_msgsFallStandCommandClient&&) = delete;

        ~Ros1Kuavo_msgsFallStandCommandClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_FallStandCommand_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/FallStandCommand server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsFallStandCommandServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsFallStandCommandResponse(Ros1Kuavo_msgsFallStandCommandRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsFallStandCommandRequest;
        using Response = Ros1Kuavo_msgsFallStandCommandResponse;

        Ros1Kuavo_msgsFallStandCommandServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_FallStandCommand_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_FallStandCommand_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_FallStandCommand_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_FallStandCommand_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/GetAllMaps client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetAllMapsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetAllMapsRequest;
        using Response = Ros1Kuavo_msgsGetAllMapsResponse;

        Ros1Kuavo_msgsGetAllMapsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetAllMapsClient(Ros1Kuavo_msgsGetAllMapsClient const&) = delete;
        Ros1Kuavo_msgsGetAllMapsClient& operator= (Ros1Kuavo_msgsGetAllMapsClient const&) = delete;
        Ros1Kuavo_msgsGetAllMapsClient(Ros1Kuavo_msgsGetAllMapsClient&&) = delete;

        ~Ros1Kuavo_msgsGetAllMapsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetAllMaps_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/GetAllMaps server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetAllMapsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetAllMapsResponse(Ros1Kuavo_msgsGetAllMapsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetAllMapsRequest;
        using Response = Ros1Kuavo_msgsGetAllMapsResponse;

        Ros1Kuavo_msgsGetAllMapsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_GetAllMaps_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetAllMaps_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_GetAllMaps_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_GetAllMaps_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/GetBatteryInfo client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetBatteryInfoClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetBatteryInfoRequest;
        using Response = Ros1Kuavo_msgsGetBatteryInfoResponse;

        Ros1Kuavo_msgsGetBatteryInfoClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetBatteryInfoClient(Ros1Kuavo_msgsGetBatteryInfoClient const&) = delete;
        Ros1Kuavo_msgsGetBatteryInfoClient& operator= (Ros1Kuavo_msgsGetBatteryInfoClient const&) = delete;
        Ros1Kuavo_msgsGetBatteryInfoClient(Ros1Kuavo_msgsGetBatteryInfoClient&&) = delete;

        ~Ros1Kuavo_msgsGetBatteryInfoClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetBatteryInfo_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/GetBatteryInfo server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetBatteryInfoServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetBatteryInfoResponse(Ros1Kuavo_msgsGetBatteryInfoRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetBatteryInfoRequest;
        using Response = Ros1Kuavo_msgsGetBatteryInfoResponse;

        Ros1Kuavo_msgsGetBatteryInfoServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_GetBatteryInfo_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetBatteryInfo_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_GetBatteryInfo_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_GetBatteryInfo_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/GetCurrentMap client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetCurrentMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetCurrentMapRequest;
        using Response = Ros1Kuavo_msgsGetCurrentMapResponse;

        Ros1Kuavo_msgsGetCurrentMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetCurrentMapClient(Ros1Kuavo_msgsGetCurrentMapClient const&) = delete;
        Ros1Kuavo_msgsGetCurrentMapClient& operator= (Ros1Kuavo_msgsGetCurrentMapClient const&) = delete;
        Ros1Kuavo_msgsGetCurrentMapClient(Ros1Kuavo_msgsGetCurrentMapClient&&) = delete;

        ~Ros1Kuavo_msgsGetCurrentMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetCurrentMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/GetCurrentMap server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetCurrentMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetCurrentMapResponse(Ros1Kuavo_msgsGetCurrentMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetCurrentMapRequest;
        using Response = Ros1Kuavo_msgsGetCurrentMapResponse;

        Ros1Kuavo_msgsGetCurrentMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_GetCurrentMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetCurrentMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_GetCurrentMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_GetCurrentMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/GetPowerBoardStatus client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetPowerBoardStatusClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetPowerBoardStatusRequest;
        using Response = Ros1Kuavo_msgsGetPowerBoardStatusResponse;

        Ros1Kuavo_msgsGetPowerBoardStatusClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetPowerBoardStatusClient(Ros1Kuavo_msgsGetPowerBoardStatusClient const&) = delete;
        Ros1Kuavo_msgsGetPowerBoardStatusClient& operator= (Ros1Kuavo_msgsGetPowerBoardStatusClient const&) = delete;
        Ros1Kuavo_msgsGetPowerBoardStatusClient(Ros1Kuavo_msgsGetPowerBoardStatusClient&&) = delete;

        ~Ros1Kuavo_msgsGetPowerBoardStatusClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatus_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/GetPowerBoardStatus server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetPowerBoardStatusServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetPowerBoardStatusResponse(Ros1Kuavo_msgsGetPowerBoardStatusRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetPowerBoardStatusRequest;
        using Response = Ros1Kuavo_msgsGetPowerBoardStatusResponse;

        Ros1Kuavo_msgsGetPowerBoardStatusServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatus_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatus_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatus_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatus_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/GetStringList client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetStringListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetStringListRequest;
        using Response = Ros1Kuavo_msgsGetStringListResponse;

        Ros1Kuavo_msgsGetStringListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetStringListClient(Ros1Kuavo_msgsGetStringListClient const&) = delete;
        Ros1Kuavo_msgsGetStringListClient& operator= (Ros1Kuavo_msgsGetStringListClient const&) = delete;
        Ros1Kuavo_msgsGetStringListClient(Ros1Kuavo_msgsGetStringListClient&&) = delete;

        ~Ros1Kuavo_msgsGetStringListClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetStringList_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/GetStringList server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetStringListServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetStringListResponse(Ros1Kuavo_msgsGetStringListRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetStringListRequest;
        using Response = Ros1Kuavo_msgsGetStringListResponse;

        Ros1Kuavo_msgsGetStringListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_GetStringList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetStringList_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_GetStringList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_GetStringList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/GetTargetPartPoseInCamera client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetTargetPartPoseInCameraClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest;
        using Response = Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse;

        Ros1Kuavo_msgsGetTargetPartPoseInCameraClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetTargetPartPoseInCameraClient(Ros1Kuavo_msgsGetTargetPartPoseInCameraClient const&) = delete;
        Ros1Kuavo_msgsGetTargetPartPoseInCameraClient& operator= (Ros1Kuavo_msgsGetTargetPartPoseInCameraClient const&) = delete;
        Ros1Kuavo_msgsGetTargetPartPoseInCameraClient(Ros1Kuavo_msgsGetTargetPartPoseInCameraClient&&) = delete;

        ~Ros1Kuavo_msgsGetTargetPartPoseInCameraClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCamera_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/GetTargetPartPoseInCamera server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetTargetPartPoseInCameraServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse(Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest;
        using Response = Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse;

        Ros1Kuavo_msgsGetTargetPartPoseInCameraServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCamera_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCamera_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCamera_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCamera_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/InitialPoseWithTaskPoint client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsInitialPoseWithTaskPointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsInitialPoseWithTaskPointRequest;
        using Response = Ros1Kuavo_msgsInitialPoseWithTaskPointResponse;

        Ros1Kuavo_msgsInitialPoseWithTaskPointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsInitialPoseWithTaskPointClient(Ros1Kuavo_msgsInitialPoseWithTaskPointClient const&) = delete;
        Ros1Kuavo_msgsInitialPoseWithTaskPointClient& operator= (Ros1Kuavo_msgsInitialPoseWithTaskPointClient const&) = delete;
        Ros1Kuavo_msgsInitialPoseWithTaskPointClient(Ros1Kuavo_msgsInitialPoseWithTaskPointClient&&) = delete;

        ~Ros1Kuavo_msgsInitialPoseWithTaskPointClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPoint_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/InitialPoseWithTaskPoint server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsInitialPoseWithTaskPointServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsInitialPoseWithTaskPointResponse(Ros1Kuavo_msgsInitialPoseWithTaskPointRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsInitialPoseWithTaskPointRequest;
        using Response = Ros1Kuavo_msgsInitialPoseWithTaskPointResponse;

        Ros1Kuavo_msgsInitialPoseWithTaskPointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPoint_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/LoadMap client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsLoadMapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsLoadMapRequest;
        using Response = Ros1Kuavo_msgsLoadMapResponse;

        Ros1Kuavo_msgsLoadMapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsLoadMapClient(Ros1Kuavo_msgsLoadMapClient const&) = delete;
        Ros1Kuavo_msgsLoadMapClient& operator= (Ros1Kuavo_msgsLoadMapClient const&) = delete;
        Ros1Kuavo_msgsLoadMapClient(Ros1Kuavo_msgsLoadMapClient&&) = delete;

        ~Ros1Kuavo_msgsLoadMapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_LoadMap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/LoadMap server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsLoadMapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsLoadMapResponse(Ros1Kuavo_msgsLoadMapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsLoadMapRequest;
        using Response = Ros1Kuavo_msgsLoadMapResponse;

        Ros1Kuavo_msgsLoadMapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_LoadMap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_LoadMap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_LoadMap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_LoadMap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/NavigateToTaskPoint client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsNavigateToTaskPointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsNavigateToTaskPointRequest;
        using Response = Ros1Kuavo_msgsNavigateToTaskPointResponse;

        Ros1Kuavo_msgsNavigateToTaskPointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsNavigateToTaskPointClient(Ros1Kuavo_msgsNavigateToTaskPointClient const&) = delete;
        Ros1Kuavo_msgsNavigateToTaskPointClient& operator= (Ros1Kuavo_msgsNavigateToTaskPointClient const&) = delete;
        Ros1Kuavo_msgsNavigateToTaskPointClient(Ros1Kuavo_msgsNavigateToTaskPointClient&&) = delete;

        ~Ros1Kuavo_msgsNavigateToTaskPointClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPoint_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/NavigateToTaskPoint server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsNavigateToTaskPointServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsNavigateToTaskPointResponse(Ros1Kuavo_msgsNavigateToTaskPointRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsNavigateToTaskPointRequest;
        using Response = Ros1Kuavo_msgsNavigateToTaskPointResponse;

        Ros1Kuavo_msgsNavigateToTaskPointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPoint_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/PlayMusicImmediate client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsPlayMusicImmediateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsPlayMusicImmediateRequest;
        using Response = Ros1Kuavo_msgsPlayMusicImmediateResponse;

        Ros1Kuavo_msgsPlayMusicImmediateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsPlayMusicImmediateClient(Ros1Kuavo_msgsPlayMusicImmediateClient const&) = delete;
        Ros1Kuavo_msgsPlayMusicImmediateClient& operator= (Ros1Kuavo_msgsPlayMusicImmediateClient const&) = delete;
        Ros1Kuavo_msgsPlayMusicImmediateClient(Ros1Kuavo_msgsPlayMusicImmediateClient&&) = delete;

        ~Ros1Kuavo_msgsPlayMusicImmediateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediate_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/PlayMusicImmediate server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsPlayMusicImmediateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsPlayMusicImmediateResponse(Ros1Kuavo_msgsPlayMusicImmediateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsPlayMusicImmediateRequest;
        using Response = Ros1Kuavo_msgsPlayMusicImmediateResponse;

        Ros1Kuavo_msgsPlayMusicImmediateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediate_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediate_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediate_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediate_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/RelaySelectChannel client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsRelaySelectChannelClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsRelaySelectChannelRequest;
        using Response = Ros1Kuavo_msgsRelaySelectChannelResponse;

        Ros1Kuavo_msgsRelaySelectChannelClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsRelaySelectChannelClient(Ros1Kuavo_msgsRelaySelectChannelClient const&) = delete;
        Ros1Kuavo_msgsRelaySelectChannelClient& operator= (Ros1Kuavo_msgsRelaySelectChannelClient const&) = delete;
        Ros1Kuavo_msgsRelaySelectChannelClient(Ros1Kuavo_msgsRelaySelectChannelClient&&) = delete;

        ~Ros1Kuavo_msgsRelaySelectChannelClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_RelaySelectChannel_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/RelaySelectChannel server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsRelaySelectChannelServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsRelaySelectChannelResponse(Ros1Kuavo_msgsRelaySelectChannelRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsRelaySelectChannelRequest;
        using Response = Ros1Kuavo_msgsRelaySelectChannelResponse;

        Ros1Kuavo_msgsRelaySelectChannelServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_RelaySelectChannel_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_RelaySelectChannel_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_RelaySelectChannel_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_RelaySelectChannel_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/RepublishTFs client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsRepublishTFsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsRepublishTFsRequest;
        using Response = Ros1Kuavo_msgsRepublishTFsResponse;

        Ros1Kuavo_msgsRepublishTFsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsRepublishTFsClient(Ros1Kuavo_msgsRepublishTFsClient const&) = delete;
        Ros1Kuavo_msgsRepublishTFsClient& operator= (Ros1Kuavo_msgsRepublishTFsClient const&) = delete;
        Ros1Kuavo_msgsRepublishTFsClient(Ros1Kuavo_msgsRepublishTFsClient&&) = delete;

        ~Ros1Kuavo_msgsRepublishTFsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_RepublishTFs_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/RepublishTFs server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsRepublishTFsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsRepublishTFsResponse(Ros1Kuavo_msgsRepublishTFsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsRepublishTFsRequest;
        using Response = Ros1Kuavo_msgsRepublishTFsResponse;

        Ros1Kuavo_msgsRepublishTFsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_RepublishTFs_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_RepublishTFs_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_RepublishTFs_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_RepublishTFs_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/SetHeadControlMode client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetHeadControlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetHeadControlModeRequest;
        using Response = Ros1Kuavo_msgsSetHeadControlModeResponse;

        Ros1Kuavo_msgsSetHeadControlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetHeadControlModeClient(Ros1Kuavo_msgsSetHeadControlModeClient const&) = delete;
        Ros1Kuavo_msgsSetHeadControlModeClient& operator= (Ros1Kuavo_msgsSetHeadControlModeClient const&) = delete;
        Ros1Kuavo_msgsSetHeadControlModeClient(Ros1Kuavo_msgsSetHeadControlModeClient&&) = delete;

        ~Ros1Kuavo_msgsSetHeadControlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetHeadControlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/SetHeadControlMode server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetHeadControlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetHeadControlModeResponse(Ros1Kuavo_msgsSetHeadControlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetHeadControlModeRequest;
        using Response = Ros1Kuavo_msgsSetHeadControlModeResponse;

        Ros1Kuavo_msgsSetHeadControlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_SetHeadControlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetHeadControlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_SetHeadControlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_SetHeadControlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/SetIncrementalArmTrajLink client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest;
        using Response = Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse;

        Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient(Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient const&) = delete;
        Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient& operator= (Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient const&) = delete;
        Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient(Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient&&) = delete;

        ~Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLink_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/SetIncrementalArmTrajLink server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetIncrementalArmTrajLinkServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse(Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest;
        using Response = Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse;

        Ros1Kuavo_msgsSetIncrementalArmTrajLinkServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLink_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLink_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLink_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLink_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/SetInitialPose client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetInitialPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetInitialPoseRequest;
        using Response = Ros1Kuavo_msgsSetInitialPoseResponse;

        Ros1Kuavo_msgsSetInitialPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetInitialPoseClient(Ros1Kuavo_msgsSetInitialPoseClient const&) = delete;
        Ros1Kuavo_msgsSetInitialPoseClient& operator= (Ros1Kuavo_msgsSetInitialPoseClient const&) = delete;
        Ros1Kuavo_msgsSetInitialPoseClient(Ros1Kuavo_msgsSetInitialPoseClient&&) = delete;

        ~Ros1Kuavo_msgsSetInitialPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetInitialPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/SetInitialPose server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetInitialPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetInitialPoseResponse(Ros1Kuavo_msgsSetInitialPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetInitialPoseRequest;
        using Response = Ros1Kuavo_msgsSetInitialPoseResponse;

        Ros1Kuavo_msgsSetInitialPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_SetInitialPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetInitialPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_SetInitialPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_SetInitialPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/SetJoyTopic client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetJoyTopicClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetJoyTopicRequest;
        using Response = Ros1Kuavo_msgsSetJoyTopicResponse;

        Ros1Kuavo_msgsSetJoyTopicClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetJoyTopicClient(Ros1Kuavo_msgsSetJoyTopicClient const&) = delete;
        Ros1Kuavo_msgsSetJoyTopicClient& operator= (Ros1Kuavo_msgsSetJoyTopicClient const&) = delete;
        Ros1Kuavo_msgsSetJoyTopicClient(Ros1Kuavo_msgsSetJoyTopicClient&&) = delete;

        ~Ros1Kuavo_msgsSetJoyTopicClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetJoyTopic_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/SetJoyTopic server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetJoyTopicServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetJoyTopicResponse(Ros1Kuavo_msgsSetJoyTopicRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetJoyTopicRequest;
        using Response = Ros1Kuavo_msgsSetJoyTopicResponse;

        Ros1Kuavo_msgsSetJoyTopicServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_SetJoyTopic_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetJoyTopic_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_SetJoyTopic_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_SetJoyTopic_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/SetLEDMode client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetLEDModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetLEDModeRequest;
        using Response = Ros1Kuavo_msgsSetLEDModeResponse;

        Ros1Kuavo_msgsSetLEDModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetLEDModeClient(Ros1Kuavo_msgsSetLEDModeClient const&) = delete;
        Ros1Kuavo_msgsSetLEDModeClient& operator= (Ros1Kuavo_msgsSetLEDModeClient const&) = delete;
        Ros1Kuavo_msgsSetLEDModeClient(Ros1Kuavo_msgsSetLEDModeClient&&) = delete;

        ~Ros1Kuavo_msgsSetLEDModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/SetLEDMode server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetLEDModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetLEDModeResponse(Ros1Kuavo_msgsSetLEDModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetLEDModeRequest;
        using Response = Ros1Kuavo_msgsSetLEDModeResponse;

        Ros1Kuavo_msgsSetLEDModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_SetLEDMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/SetLEDMode_free client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetLEDMode_freeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetLEDMode_freeRequest;
        using Response = Ros1Kuavo_msgsSetLEDMode_freeResponse;

        Ros1Kuavo_msgsSetLEDMode_freeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetLEDMode_freeClient(Ros1Kuavo_msgsSetLEDMode_freeClient const&) = delete;
        Ros1Kuavo_msgsSetLEDMode_freeClient& operator= (Ros1Kuavo_msgsSetLEDMode_freeClient const&) = delete;
        Ros1Kuavo_msgsSetLEDMode_freeClient(Ros1Kuavo_msgsSetLEDMode_freeClient&&) = delete;

        ~Ros1Kuavo_msgsSetLEDMode_freeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_free_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/SetLEDMode_free server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetLEDMode_freeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetLEDMode_freeResponse(Ros1Kuavo_msgsSetLEDMode_freeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetLEDMode_freeRequest;
        using Response = Ros1Kuavo_msgsSetLEDMode_freeResponse;

        Ros1Kuavo_msgsSetLEDMode_freeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_free_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_free_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_SetLEDMode_free_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_free_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/SetString client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetStringClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetStringRequest;
        using Response = Ros1Kuavo_msgsSetStringResponse;

        Ros1Kuavo_msgsSetStringClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetStringClient(Ros1Kuavo_msgsSetStringClient const&) = delete;
        Ros1Kuavo_msgsSetStringClient& operator= (Ros1Kuavo_msgsSetStringClient const&) = delete;
        Ros1Kuavo_msgsSetStringClient(Ros1Kuavo_msgsSetStringClient&&) = delete;

        ~Ros1Kuavo_msgsSetStringClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetString_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/SetString server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetStringServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetStringResponse(Ros1Kuavo_msgsSetStringRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetStringRequest;
        using Response = Ros1Kuavo_msgsSetStringResponse;

        Ros1Kuavo_msgsSetStringServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_SetString_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SetString_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_SetString_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_SetString_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/SpeechSynthesis client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSpeechSynthesisClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSpeechSynthesisRequest;
        using Response = Ros1Kuavo_msgsSpeechSynthesisResponse;

        Ros1Kuavo_msgsSpeechSynthesisClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSpeechSynthesisClient(Ros1Kuavo_msgsSpeechSynthesisClient const&) = delete;
        Ros1Kuavo_msgsSpeechSynthesisClient& operator= (Ros1Kuavo_msgsSpeechSynthesisClient const&) = delete;
        Ros1Kuavo_msgsSpeechSynthesisClient(Ros1Kuavo_msgsSpeechSynthesisClient&&) = delete;

        ~Ros1Kuavo_msgsSpeechSynthesisClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SpeechSynthesis_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/SpeechSynthesis server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSpeechSynthesisServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSpeechSynthesisResponse(Ros1Kuavo_msgsSpeechSynthesisRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSpeechSynthesisRequest;
        using Response = Ros1Kuavo_msgsSpeechSynthesisResponse;

        Ros1Kuavo_msgsSpeechSynthesisServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_SpeechSynthesis_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_SpeechSynthesis_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_SpeechSynthesis_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_SpeechSynthesis_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/TaskPointOperation client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsTaskPointOperationClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsTaskPointOperationRequest;
        using Response = Ros1Kuavo_msgsTaskPointOperationResponse;

        Ros1Kuavo_msgsTaskPointOperationClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsTaskPointOperationClient(Ros1Kuavo_msgsTaskPointOperationClient const&) = delete;
        Ros1Kuavo_msgsTaskPointOperationClient& operator= (Ros1Kuavo_msgsTaskPointOperationClient const&) = delete;
        Ros1Kuavo_msgsTaskPointOperationClient(Ros1Kuavo_msgsTaskPointOperationClient&&) = delete;

        ~Ros1Kuavo_msgsTaskPointOperationClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_TaskPointOperation_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/TaskPointOperation server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsTaskPointOperationServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsTaskPointOperationResponse(Ros1Kuavo_msgsTaskPointOperationRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsTaskPointOperationRequest;
        using Response = Ros1Kuavo_msgsTaskPointOperationResponse;

        Ros1Kuavo_msgsTaskPointOperationServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_TaskPointOperation_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_TaskPointOperation_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_TaskPointOperation_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_TaskPointOperation_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/TransportModeCommand client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsTransportModeCommandClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsTransportModeCommandRequest;
        using Response = Ros1Kuavo_msgsTransportModeCommandResponse;

        Ros1Kuavo_msgsTransportModeCommandClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsTransportModeCommandClient(Ros1Kuavo_msgsTransportModeCommandClient const&) = delete;
        Ros1Kuavo_msgsTransportModeCommandClient& operator= (Ros1Kuavo_msgsTransportModeCommandClient const&) = delete;
        Ros1Kuavo_msgsTransportModeCommandClient(Ros1Kuavo_msgsTransportModeCommandClient&&) = delete;

        ~Ros1Kuavo_msgsTransportModeCommandClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_TransportModeCommand_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/TransportModeCommand server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsTransportModeCommandServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsTransportModeCommandResponse(Ros1Kuavo_msgsTransportModeCommandRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsTransportModeCommandRequest;
        using Response = Ros1Kuavo_msgsTransportModeCommandResponse;

        Ros1Kuavo_msgsTransportModeCommandServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_TransportModeCommand_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_TransportModeCommand_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_TransportModeCommand_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_TransportModeCommand_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/accessIkSolve client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsAccessIkSolveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsAccessIkSolveRequest;
        using Response = Ros1Kuavo_msgsAccessIkSolveResponse;

        Ros1Kuavo_msgsAccessIkSolveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsAccessIkSolveClient(Ros1Kuavo_msgsAccessIkSolveClient const&) = delete;
        Ros1Kuavo_msgsAccessIkSolveClient& operator= (Ros1Kuavo_msgsAccessIkSolveClient const&) = delete;
        Ros1Kuavo_msgsAccessIkSolveClient(Ros1Kuavo_msgsAccessIkSolveClient&&) = delete;

        ~Ros1Kuavo_msgsAccessIkSolveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_accessIkSolve_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/accessIkSolve server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsAccessIkSolveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsAccessIkSolveResponse(Ros1Kuavo_msgsAccessIkSolveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsAccessIkSolveRequest;
        using Response = Ros1Kuavo_msgsAccessIkSolveResponse;

        Ros1Kuavo_msgsAccessIkSolveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_accessIkSolve_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_accessIkSolve_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_accessIkSolve_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_accessIkSolve_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/adjustZeroPoint client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsAdjustZeroPointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsAdjustZeroPointRequest;
        using Response = Ros1Kuavo_msgsAdjustZeroPointResponse;

        Ros1Kuavo_msgsAdjustZeroPointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsAdjustZeroPointClient(Ros1Kuavo_msgsAdjustZeroPointClient const&) = delete;
        Ros1Kuavo_msgsAdjustZeroPointClient& operator= (Ros1Kuavo_msgsAdjustZeroPointClient const&) = delete;
        Ros1Kuavo_msgsAdjustZeroPointClient(Ros1Kuavo_msgsAdjustZeroPointClient&&) = delete;

        ~Ros1Kuavo_msgsAdjustZeroPointClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_adjustZeroPoint_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/adjustZeroPoint server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsAdjustZeroPointServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsAdjustZeroPointResponse(Ros1Kuavo_msgsAdjustZeroPointRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsAdjustZeroPointRequest;
        using Response = Ros1Kuavo_msgsAdjustZeroPointResponse;

        Ros1Kuavo_msgsAdjustZeroPointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_adjustZeroPoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_adjustZeroPoint_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_adjustZeroPoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_adjustZeroPoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/changeArmCtrlMode client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsChangeArmCtrlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsChangeArmCtrlModeRequest;
        using Response = Ros1Kuavo_msgsChangeArmCtrlModeResponse;

        Ros1Kuavo_msgsChangeArmCtrlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsChangeArmCtrlModeClient(Ros1Kuavo_msgsChangeArmCtrlModeClient const&) = delete;
        Ros1Kuavo_msgsChangeArmCtrlModeClient& operator= (Ros1Kuavo_msgsChangeArmCtrlModeClient const&) = delete;
        Ros1Kuavo_msgsChangeArmCtrlModeClient(Ros1Kuavo_msgsChangeArmCtrlModeClient&&) = delete;

        ~Ros1Kuavo_msgsChangeArmCtrlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/changeArmCtrlMode server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsChangeArmCtrlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsChangeArmCtrlModeResponse(Ros1Kuavo_msgsChangeArmCtrlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsChangeArmCtrlModeRequest;
        using Response = Ros1Kuavo_msgsChangeArmCtrlModeResponse;

        Ros1Kuavo_msgsChangeArmCtrlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_changeArmCtrlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/changeArmCtrlModeKuavo client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest;
        using Response = Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse;

        Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient(Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient const&) = delete;
        Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient& operator= (Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient const&) = delete;
        Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient(Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient&&) = delete;

        ~Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavo_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/changeArmCtrlModeKuavo server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsChangeArmCtrlModeKuavoServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse(Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest;
        using Response = Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse;

        Ros1Kuavo_msgsChangeArmCtrlModeKuavoServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavo_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavo_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavo_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavo_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/changeLbMpcObsUpdateModeSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest;
        using Response = Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse;

        Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient(Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient const&) = delete;
        Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient& operator= (Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient const&) = delete;
        Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient(Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient&&) = delete;

        ~Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/changeLbMpcObsUpdateModeSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse(Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest;
        using Response = Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse;

        Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/changeLbQuickModeSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsChangeLbQuickModeSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsChangeLbQuickModeSrvRequest;
        using Response = Ros1Kuavo_msgsChangeLbQuickModeSrvResponse;

        Ros1Kuavo_msgsChangeLbQuickModeSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsChangeLbQuickModeSrvClient(Ros1Kuavo_msgsChangeLbQuickModeSrvClient const&) = delete;
        Ros1Kuavo_msgsChangeLbQuickModeSrvClient& operator= (Ros1Kuavo_msgsChangeLbQuickModeSrvClient const&) = delete;
        Ros1Kuavo_msgsChangeLbQuickModeSrvClient(Ros1Kuavo_msgsChangeLbQuickModeSrvClient&&) = delete;

        ~Ros1Kuavo_msgsChangeLbQuickModeSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/changeLbQuickModeSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsChangeLbQuickModeSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsChangeLbQuickModeSrvResponse(Ros1Kuavo_msgsChangeLbQuickModeSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsChangeLbQuickModeSrvRequest;
        using Response = Ros1Kuavo_msgsChangeLbQuickModeSrvResponse;

        Ros1Kuavo_msgsChangeLbQuickModeSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/changeMotorParam client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsChangeMotorParamClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsChangeMotorParamRequest;
        using Response = Ros1Kuavo_msgsChangeMotorParamResponse;

        Ros1Kuavo_msgsChangeMotorParamClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsChangeMotorParamClient(Ros1Kuavo_msgsChangeMotorParamClient const&) = delete;
        Ros1Kuavo_msgsChangeMotorParamClient& operator= (Ros1Kuavo_msgsChangeMotorParamClient const&) = delete;
        Ros1Kuavo_msgsChangeMotorParamClient(Ros1Kuavo_msgsChangeMotorParamClient&&) = delete;

        ~Ros1Kuavo_msgsChangeMotorParamClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeMotorParam_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/changeMotorParam server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsChangeMotorParamServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsChangeMotorParamResponse(Ros1Kuavo_msgsChangeMotorParamRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsChangeMotorParamRequest;
        using Response = Ros1Kuavo_msgsChangeMotorParamResponse;

        Ros1Kuavo_msgsChangeMotorParamServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_changeMotorParam_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeMotorParam_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_changeMotorParam_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_changeMotorParam_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/changeTorsoCtrlMode client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsChangeTorsoCtrlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsChangeTorsoCtrlModeRequest;
        using Response = Ros1Kuavo_msgsChangeTorsoCtrlModeResponse;

        Ros1Kuavo_msgsChangeTorsoCtrlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsChangeTorsoCtrlModeClient(Ros1Kuavo_msgsChangeTorsoCtrlModeClient const&) = delete;
        Ros1Kuavo_msgsChangeTorsoCtrlModeClient& operator= (Ros1Kuavo_msgsChangeTorsoCtrlModeClient const&) = delete;
        Ros1Kuavo_msgsChangeTorsoCtrlModeClient(Ros1Kuavo_msgsChangeTorsoCtrlModeClient&&) = delete;

        ~Ros1Kuavo_msgsChangeTorsoCtrlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/changeTorsoCtrlMode server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsChangeTorsoCtrlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsChangeTorsoCtrlModeResponse(Ros1Kuavo_msgsChangeTorsoCtrlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsChangeTorsoCtrlModeRequest;
        using Response = Ros1Kuavo_msgsChangeTorsoCtrlModeResponse;

        Ros1Kuavo_msgsChangeTorsoCtrlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/changeWaistCtrlMode client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsChangeWaistCtrlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsChangeWaistCtrlModeRequest;
        using Response = Ros1Kuavo_msgsChangeWaistCtrlModeResponse;

        Ros1Kuavo_msgsChangeWaistCtrlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsChangeWaistCtrlModeClient(Ros1Kuavo_msgsChangeWaistCtrlModeClient const&) = delete;
        Ros1Kuavo_msgsChangeWaistCtrlModeClient& operator= (Ros1Kuavo_msgsChangeWaistCtrlModeClient const&) = delete;
        Ros1Kuavo_msgsChangeWaistCtrlModeClient(Ros1Kuavo_msgsChangeWaistCtrlModeClient&&) = delete;

        ~Ros1Kuavo_msgsChangeWaistCtrlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/changeWaistCtrlMode server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsChangeWaistCtrlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsChangeWaistCtrlModeResponse(Ros1Kuavo_msgsChangeWaistCtrlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsChangeWaistCtrlModeRequest;
        using Response = Ros1Kuavo_msgsChangeWaistCtrlModeResponse;

        Ros1Kuavo_msgsChangeWaistCtrlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/chassisPoseCmdSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsChassisPoseCmdSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsChassisPoseCmdSrvRequest;
        using Response = Ros1Kuavo_msgsChassisPoseCmdSrvResponse;

        Ros1Kuavo_msgsChassisPoseCmdSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsChassisPoseCmdSrvClient(Ros1Kuavo_msgsChassisPoseCmdSrvClient const&) = delete;
        Ros1Kuavo_msgsChassisPoseCmdSrvClient& operator= (Ros1Kuavo_msgsChassisPoseCmdSrvClient const&) = delete;
        Ros1Kuavo_msgsChassisPoseCmdSrvClient(Ros1Kuavo_msgsChassisPoseCmdSrvClient&&) = delete;

        ~Ros1Kuavo_msgsChassisPoseCmdSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/chassisPoseCmdSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsChassisPoseCmdSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsChassisPoseCmdSrvResponse(Ros1Kuavo_msgsChassisPoseCmdSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsChassisPoseCmdSrvRequest;
        using Response = Ros1Kuavo_msgsChassisPoseCmdSrvResponse;

        Ros1Kuavo_msgsChassisPoseCmdSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/controlLejuClaw client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsControlLejuClawClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsControlLejuClawRequest;
        using Response = Ros1Kuavo_msgsControlLejuClawResponse;

        Ros1Kuavo_msgsControlLejuClawClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsControlLejuClawClient(Ros1Kuavo_msgsControlLejuClawClient const&) = delete;
        Ros1Kuavo_msgsControlLejuClawClient& operator= (Ros1Kuavo_msgsControlLejuClawClient const&) = delete;
        Ros1Kuavo_msgsControlLejuClawClient(Ros1Kuavo_msgsControlLejuClawClient&&) = delete;

        ~Ros1Kuavo_msgsControlLejuClawClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_controlLejuClaw_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/controlLejuClaw server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsControlLejuClawServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsControlLejuClawResponse(Ros1Kuavo_msgsControlLejuClawRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsControlLejuClawRequest;
        using Response = Ros1Kuavo_msgsControlLejuClawResponse;

        Ros1Kuavo_msgsControlLejuClawServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_controlLejuClaw_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_controlLejuClaw_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_controlLejuClaw_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_controlLejuClaw_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/eePoseReachError client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsEePoseReachErrorClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsEePoseReachErrorRequest;
        using Response = Ros1Kuavo_msgsEePoseReachErrorResponse;

        Ros1Kuavo_msgsEePoseReachErrorClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsEePoseReachErrorClient(Ros1Kuavo_msgsEePoseReachErrorClient const&) = delete;
        Ros1Kuavo_msgsEePoseReachErrorClient& operator= (Ros1Kuavo_msgsEePoseReachErrorClient const&) = delete;
        Ros1Kuavo_msgsEePoseReachErrorClient(Ros1Kuavo_msgsEePoseReachErrorClient&&) = delete;

        ~Ros1Kuavo_msgsEePoseReachErrorClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_eePoseReachError_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/eePoseReachError server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsEePoseReachErrorServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsEePoseReachErrorResponse(Ros1Kuavo_msgsEePoseReachErrorRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsEePoseReachErrorRequest;
        using Response = Ros1Kuavo_msgsEePoseReachErrorResponse;

        Ros1Kuavo_msgsEePoseReachErrorServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_eePoseReachError_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_eePoseReachError_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_eePoseReachError_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_eePoseReachError_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/enableHandTouchSensor client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsEnableHandTouchSensorClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsEnableHandTouchSensorRequest;
        using Response = Ros1Kuavo_msgsEnableHandTouchSensorResponse;

        Ros1Kuavo_msgsEnableHandTouchSensorClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsEnableHandTouchSensorClient(Ros1Kuavo_msgsEnableHandTouchSensorClient const&) = delete;
        Ros1Kuavo_msgsEnableHandTouchSensorClient& operator= (Ros1Kuavo_msgsEnableHandTouchSensorClient const&) = delete;
        Ros1Kuavo_msgsEnableHandTouchSensorClient(Ros1Kuavo_msgsEnableHandTouchSensorClient&&) = delete;

        ~Ros1Kuavo_msgsEnableHandTouchSensorClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensor_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/enableHandTouchSensor server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsEnableHandTouchSensorServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsEnableHandTouchSensorResponse(Ros1Kuavo_msgsEnableHandTouchSensorRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsEnableHandTouchSensorRequest;
        using Response = Ros1Kuavo_msgsEnableHandTouchSensorResponse;

        Ros1Kuavo_msgsEnableHandTouchSensorServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensor_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensor_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensor_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensor_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/fkSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsFkSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsFkSrvRequest;
        using Response = Ros1Kuavo_msgsFkSrvResponse;

        Ros1Kuavo_msgsFkSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsFkSrvClient(Ros1Kuavo_msgsFkSrvClient const&) = delete;
        Ros1Kuavo_msgsFkSrvClient& operator= (Ros1Kuavo_msgsFkSrvClient const&) = delete;
        Ros1Kuavo_msgsFkSrvClient(Ros1Kuavo_msgsFkSrvClient&&) = delete;

        ~Ros1Kuavo_msgsFkSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_fkSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/fkSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsFkSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsFkSrvResponse(Ros1Kuavo_msgsFkSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsFkSrvRequest;
        using Response = Ros1Kuavo_msgsFkSrvResponse;

        Ros1Kuavo_msgsFkSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_fkSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_fkSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_fkSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_fkSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/fkSrvWithReferFrame client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsFkSrvWithReferFrameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsFkSrvWithReferFrameRequest;
        using Response = Ros1Kuavo_msgsFkSrvWithReferFrameResponse;

        Ros1Kuavo_msgsFkSrvWithReferFrameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsFkSrvWithReferFrameClient(Ros1Kuavo_msgsFkSrvWithReferFrameClient const&) = delete;
        Ros1Kuavo_msgsFkSrvWithReferFrameClient& operator= (Ros1Kuavo_msgsFkSrvWithReferFrameClient const&) = delete;
        Ros1Kuavo_msgsFkSrvWithReferFrameClient(Ros1Kuavo_msgsFkSrvWithReferFrameClient&&) = delete;

        ~Ros1Kuavo_msgsFkSrvWithReferFrameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrame_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/fkSrvWithReferFrame server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsFkSrvWithReferFrameServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsFkSrvWithReferFrameResponse(Ros1Kuavo_msgsFkSrvWithReferFrameRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsFkSrvWithReferFrameRequest;
        using Response = Ros1Kuavo_msgsFkSrvWithReferFrameResponse;

        Ros1Kuavo_msgsFkSrvWithReferFrameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrame_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrame_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrame_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrame_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/footPose6DTargetTrajectoriesSrv client; default policy returns13 from construction.
     */
    class Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest;
        using Response = Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse;

        Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient(Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient const&) = delete;
        Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient& operator= (Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient const&) = delete;
        Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient(Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient&&) = delete;

        ~Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/footPose6DTargetTrajectoriesSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse(Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest;
        using Response = Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse;

        Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/footPoseTargetTrajectoriesSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest;
        using Response = Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse;

        Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient(Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient const&) = delete;
        Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient& operator= (Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient const&) = delete;
        Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient(Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient&&) = delete;

        ~Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/footPoseTargetTrajectoriesSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse(Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest;
        using Response = Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse;

        Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/gestureExecute client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGestureExecuteClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGestureExecuteRequest;
        using Response = Ros1Kuavo_msgsGestureExecuteResponse;

        Ros1Kuavo_msgsGestureExecuteClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGestureExecuteClient(Ros1Kuavo_msgsGestureExecuteClient const&) = delete;
        Ros1Kuavo_msgsGestureExecuteClient& operator= (Ros1Kuavo_msgsGestureExecuteClient const&) = delete;
        Ros1Kuavo_msgsGestureExecuteClient(Ros1Kuavo_msgsGestureExecuteClient&&) = delete;

        ~Ros1Kuavo_msgsGestureExecuteClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_gestureExecute_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/gestureExecute server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGestureExecuteServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGestureExecuteResponse(Ros1Kuavo_msgsGestureExecuteRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGestureExecuteRequest;
        using Response = Ros1Kuavo_msgsGestureExecuteResponse;

        Ros1Kuavo_msgsGestureExecuteServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_gestureExecute_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_gestureExecute_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_gestureExecute_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_gestureExecute_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/gestureExecuteState client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGestureExecuteStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGestureExecuteStateRequest;
        using Response = Ros1Kuavo_msgsGestureExecuteStateResponse;

        Ros1Kuavo_msgsGestureExecuteStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGestureExecuteStateClient(Ros1Kuavo_msgsGestureExecuteStateClient const&) = delete;
        Ros1Kuavo_msgsGestureExecuteStateClient& operator= (Ros1Kuavo_msgsGestureExecuteStateClient const&) = delete;
        Ros1Kuavo_msgsGestureExecuteStateClient(Ros1Kuavo_msgsGestureExecuteStateClient&&) = delete;

        ~Ros1Kuavo_msgsGestureExecuteStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_gestureExecuteState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/gestureExecuteState server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGestureExecuteStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGestureExecuteStateResponse(Ros1Kuavo_msgsGestureExecuteStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGestureExecuteStateRequest;
        using Response = Ros1Kuavo_msgsGestureExecuteStateResponse;

        Ros1Kuavo_msgsGestureExecuteStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_gestureExecuteState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_gestureExecuteState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_gestureExecuteState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_gestureExecuteState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/gestureList client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGestureListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGestureListRequest;
        using Response = Ros1Kuavo_msgsGestureListResponse;

        Ros1Kuavo_msgsGestureListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGestureListClient(Ros1Kuavo_msgsGestureListClient const&) = delete;
        Ros1Kuavo_msgsGestureListClient& operator= (Ros1Kuavo_msgsGestureListClient const&) = delete;
        Ros1Kuavo_msgsGestureListClient(Ros1Kuavo_msgsGestureListClient&&) = delete;

        ~Ros1Kuavo_msgsGestureListClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_gestureList_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/gestureList server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGestureListServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGestureListResponse(Ros1Kuavo_msgsGestureListRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGestureListRequest;
        using Response = Ros1Kuavo_msgsGestureListResponse;

        Ros1Kuavo_msgsGestureListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_gestureList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_gestureList_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_gestureList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_gestureList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/getControllerList client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetControllerListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetControllerListRequest;
        using Response = Ros1Kuavo_msgsGetControllerListResponse;

        Ros1Kuavo_msgsGetControllerListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetControllerListClient(Ros1Kuavo_msgsGetControllerListClient const&) = delete;
        Ros1Kuavo_msgsGetControllerListClient& operator= (Ros1Kuavo_msgsGetControllerListClient const&) = delete;
        Ros1Kuavo_msgsGetControllerListClient(Ros1Kuavo_msgsGetControllerListClient&&) = delete;

        ~Ros1Kuavo_msgsGetControllerListClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getControllerList_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/getControllerList server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetControllerListServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetControllerListResponse(Ros1Kuavo_msgsGetControllerListRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetControllerListRequest;
        using Response = Ros1Kuavo_msgsGetControllerListResponse;

        Ros1Kuavo_msgsGetControllerListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_getControllerList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getControllerList_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_getControllerList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_getControllerList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/getCurrentGaitName client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetCurrentGaitNameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetCurrentGaitNameRequest;
        using Response = Ros1Kuavo_msgsGetCurrentGaitNameResponse;

        Ros1Kuavo_msgsGetCurrentGaitNameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetCurrentGaitNameClient(Ros1Kuavo_msgsGetCurrentGaitNameClient const&) = delete;
        Ros1Kuavo_msgsGetCurrentGaitNameClient& operator= (Ros1Kuavo_msgsGetCurrentGaitNameClient const&) = delete;
        Ros1Kuavo_msgsGetCurrentGaitNameClient(Ros1Kuavo_msgsGetCurrentGaitNameClient&&) = delete;

        ~Ros1Kuavo_msgsGetCurrentGaitNameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getCurrentGaitName_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/getCurrentGaitName server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetCurrentGaitNameServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetCurrentGaitNameResponse(Ros1Kuavo_msgsGetCurrentGaitNameRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetCurrentGaitNameRequest;
        using Response = Ros1Kuavo_msgsGetCurrentGaitNameResponse;

        Ros1Kuavo_msgsGetCurrentGaitNameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_getCurrentGaitName_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getCurrentGaitName_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_getCurrentGaitName_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_getCurrentGaitName_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/getLbTorsoInitialPose client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetLbTorsoInitialPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest;
        using Response = Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse;

        Ros1Kuavo_msgsGetLbTorsoInitialPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetLbTorsoInitialPoseClient(Ros1Kuavo_msgsGetLbTorsoInitialPoseClient const&) = delete;
        Ros1Kuavo_msgsGetLbTorsoInitialPoseClient& operator= (Ros1Kuavo_msgsGetLbTorsoInitialPoseClient const&) = delete;
        Ros1Kuavo_msgsGetLbTorsoInitialPoseClient(Ros1Kuavo_msgsGetLbTorsoInitialPoseClient&&) = delete;

        ~Ros1Kuavo_msgsGetLbTorsoInitialPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/getLbTorsoInitialPose server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetLbTorsoInitialPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse(Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest;
        using Response = Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse;

        Ros1Kuavo_msgsGetLbTorsoInitialPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/getMotorParam client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetMotorParamClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetMotorParamRequest;
        using Response = Ros1Kuavo_msgsGetMotorParamResponse;

        Ros1Kuavo_msgsGetMotorParamClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetMotorParamClient(Ros1Kuavo_msgsGetMotorParamClient const&) = delete;
        Ros1Kuavo_msgsGetMotorParamClient& operator= (Ros1Kuavo_msgsGetMotorParamClient const&) = delete;
        Ros1Kuavo_msgsGetMotorParamClient(Ros1Kuavo_msgsGetMotorParamClient&&) = delete;

        ~Ros1Kuavo_msgsGetMotorParamClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getMotorParam_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/getMotorParam server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetMotorParamServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetMotorParamResponse(Ros1Kuavo_msgsGetMotorParamRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetMotorParamRequest;
        using Response = Ros1Kuavo_msgsGetMotorParamResponse;

        Ros1Kuavo_msgsGetMotorParamServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_getMotorParam_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getMotorParam_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_getMotorParam_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_getMotorParam_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/getMotorZeroPoints client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGetMotorZeroPointsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGetMotorZeroPointsRequest;
        using Response = Ros1Kuavo_msgsGetMotorZeroPointsResponse;

        Ros1Kuavo_msgsGetMotorZeroPointsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGetMotorZeroPointsClient(Ros1Kuavo_msgsGetMotorZeroPointsClient const&) = delete;
        Ros1Kuavo_msgsGetMotorZeroPointsClient& operator= (Ros1Kuavo_msgsGetMotorZeroPointsClient const&) = delete;
        Ros1Kuavo_msgsGetMotorZeroPointsClient(Ros1Kuavo_msgsGetMotorZeroPointsClient&&) = delete;

        ~Ros1Kuavo_msgsGetMotorZeroPointsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getMotorZeroPoints_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/getMotorZeroPoints server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGetMotorZeroPointsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGetMotorZeroPointsResponse(Ros1Kuavo_msgsGetMotorZeroPointsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGetMotorZeroPointsRequest;
        using Response = Ros1Kuavo_msgsGetMotorZeroPointsResponse;

        Ros1Kuavo_msgsGetMotorZeroPointsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_getMotorZeroPoints_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_getMotorZeroPoints_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_getMotorZeroPoints_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_getMotorZeroPoints_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/goToZeroPoint client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsGoToZeroPointClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsGoToZeroPointRequest;
        using Response = Ros1Kuavo_msgsGoToZeroPointResponse;

        Ros1Kuavo_msgsGoToZeroPointClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsGoToZeroPointClient(Ros1Kuavo_msgsGoToZeroPointClient const&) = delete;
        Ros1Kuavo_msgsGoToZeroPointClient& operator= (Ros1Kuavo_msgsGoToZeroPointClient const&) = delete;
        Ros1Kuavo_msgsGoToZeroPointClient(Ros1Kuavo_msgsGoToZeroPointClient&&) = delete;

        ~Ros1Kuavo_msgsGoToZeroPointClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_goToZeroPoint_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/goToZeroPoint server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsGoToZeroPointServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsGoToZeroPointResponse(Ros1Kuavo_msgsGoToZeroPointRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsGoToZeroPointRequest;
        using Response = Ros1Kuavo_msgsGoToZeroPointResponse;

        Ros1Kuavo_msgsGoToZeroPointServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_goToZeroPoint_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_goToZeroPoint_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_goToZeroPoint_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_goToZeroPoint_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/handForceLevel client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsHandForceLevelClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsHandForceLevelRequest;
        using Response = Ros1Kuavo_msgsHandForceLevelResponse;

        Ros1Kuavo_msgsHandForceLevelClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsHandForceLevelClient(Ros1Kuavo_msgsHandForceLevelClient const&) = delete;
        Ros1Kuavo_msgsHandForceLevelClient& operator= (Ros1Kuavo_msgsHandForceLevelClient const&) = delete;
        Ros1Kuavo_msgsHandForceLevelClient(Ros1Kuavo_msgsHandForceLevelClient&&) = delete;

        ~Ros1Kuavo_msgsHandForceLevelClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_handForceLevel_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/handForceLevel server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsHandForceLevelServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsHandForceLevelResponse(Ros1Kuavo_msgsHandForceLevelRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsHandForceLevelRequest;
        using Response = Ros1Kuavo_msgsHandForceLevelResponse;

        Ros1Kuavo_msgsHandForceLevelServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_handForceLevel_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_handForceLevel_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_handForceLevel_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_handForceLevel_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/jointMoveTo client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsJointMoveToClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsJointMoveToRequest;
        using Response = Ros1Kuavo_msgsJointMoveToResponse;

        Ros1Kuavo_msgsJointMoveToClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsJointMoveToClient(Ros1Kuavo_msgsJointMoveToClient const&) = delete;
        Ros1Kuavo_msgsJointMoveToClient& operator= (Ros1Kuavo_msgsJointMoveToClient const&) = delete;
        Ros1Kuavo_msgsJointMoveToClient(Ros1Kuavo_msgsJointMoveToClient&&) = delete;

        ~Ros1Kuavo_msgsJointMoveToClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_jointMoveTo_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/jointMoveTo server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsJointMoveToServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsJointMoveToResponse(Ros1Kuavo_msgsJointMoveToRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsJointMoveToRequest;
        using Response = Ros1Kuavo_msgsJointMoveToResponse;

        Ros1Kuavo_msgsJointMoveToServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_jointMoveTo_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_jointMoveTo_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_jointMoveTo_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_jointMoveTo_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/lbBaseLinkPoseCmdSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest;
        using Response = Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse;

        Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient(Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient const&) = delete;
        Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient& operator= (Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient const&) = delete;
        Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient(Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient&&) = delete;

        ~Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/lbBaseLinkPoseCmdSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse(Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest;
        using Response = Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse;

        Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/lbLegControlSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsLbLegControlSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsLbLegControlSrvRequest;
        using Response = Ros1Kuavo_msgsLbLegControlSrvResponse;

        Ros1Kuavo_msgsLbLegControlSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsLbLegControlSrvClient(Ros1Kuavo_msgsLbLegControlSrvClient const&) = delete;
        Ros1Kuavo_msgsLbLegControlSrvClient& operator= (Ros1Kuavo_msgsLbLegControlSrvClient const&) = delete;
        Ros1Kuavo_msgsLbLegControlSrvClient(Ros1Kuavo_msgsLbLegControlSrvClient&&) = delete;

        ~Ros1Kuavo_msgsLbLegControlSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbLegControlSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/lbLegControlSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsLbLegControlSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsLbLegControlSrvResponse(Ros1Kuavo_msgsLbLegControlSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsLbLegControlSrvRequest;
        using Response = Ros1Kuavo_msgsLbLegControlSrvResponse;

        Ros1Kuavo_msgsLbLegControlSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_lbLegControlSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbLegControlSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_lbLegControlSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_lbLegControlSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/lbMultiTimedOfflineTraj client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest;
        using Response = Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse;

        Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient(Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient const&) = delete;
        Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient& operator= (Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient const&) = delete;
        Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient(Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient&&) = delete;

        ~Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTraj_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/lbMultiTimedOfflineTraj server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsLbMultiTimedOfflineTrajServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse(Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest;
        using Response = Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse;

        Ros1Kuavo_msgsLbMultiTimedOfflineTrajServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTraj_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTraj_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTraj_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTraj_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/lbMultiTimedPosCmd client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsLbMultiTimedPosCmdClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsLbMultiTimedPosCmdRequest;
        using Response = Ros1Kuavo_msgsLbMultiTimedPosCmdResponse;

        Ros1Kuavo_msgsLbMultiTimedPosCmdClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsLbMultiTimedPosCmdClient(Ros1Kuavo_msgsLbMultiTimedPosCmdClient const&) = delete;
        Ros1Kuavo_msgsLbMultiTimedPosCmdClient& operator= (Ros1Kuavo_msgsLbMultiTimedPosCmdClient const&) = delete;
        Ros1Kuavo_msgsLbMultiTimedPosCmdClient(Ros1Kuavo_msgsLbMultiTimedPosCmdClient&&) = delete;

        ~Ros1Kuavo_msgsLbMultiTimedPosCmdClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmd_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/lbMultiTimedPosCmd server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsLbMultiTimedPosCmdServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsLbMultiTimedPosCmdResponse(Ros1Kuavo_msgsLbMultiTimedPosCmdRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsLbMultiTimedPosCmdRequest;
        using Response = Ros1Kuavo_msgsLbMultiTimedPosCmdResponse;

        Ros1Kuavo_msgsLbMultiTimedPosCmdServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmd_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmd_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmd_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmd_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/lbTimedPosCmd client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsLbTimedPosCmdClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsLbTimedPosCmdRequest;
        using Response = Ros1Kuavo_msgsLbTimedPosCmdResponse;

        Ros1Kuavo_msgsLbTimedPosCmdClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsLbTimedPosCmdClient(Ros1Kuavo_msgsLbTimedPosCmdClient const&) = delete;
        Ros1Kuavo_msgsLbTimedPosCmdClient& operator= (Ros1Kuavo_msgsLbTimedPosCmdClient const&) = delete;
        Ros1Kuavo_msgsLbTimedPosCmdClient(Ros1Kuavo_msgsLbTimedPosCmdClient&&) = delete;

        ~Ros1Kuavo_msgsLbTimedPosCmdClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmd_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/lbTimedPosCmd server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsLbTimedPosCmdServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsLbTimedPosCmdResponse(Ros1Kuavo_msgsLbTimedPosCmdRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsLbTimedPosCmdRequest;
        using Response = Ros1Kuavo_msgsLbTimedPosCmdResponse;

        Ros1Kuavo_msgsLbTimedPosCmdServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmd_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmd_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmd_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmd_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/lejuClawRecovery client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsLejuClawRecoveryClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsLejuClawRecoveryRequest;
        using Response = Ros1Kuavo_msgsLejuClawRecoveryResponse;

        Ros1Kuavo_msgsLejuClawRecoveryClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsLejuClawRecoveryClient(Ros1Kuavo_msgsLejuClawRecoveryClient const&) = delete;
        Ros1Kuavo_msgsLejuClawRecoveryClient& operator= (Ros1Kuavo_msgsLejuClawRecoveryClient const&) = delete;
        Ros1Kuavo_msgsLejuClawRecoveryClient(Ros1Kuavo_msgsLejuClawRecoveryClient&&) = delete;

        ~Ros1Kuavo_msgsLejuClawRecoveryClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lejuClawRecovery_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/lejuClawRecovery server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsLejuClawRecoveryServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsLejuClawRecoveryResponse(Ros1Kuavo_msgsLejuClawRecoveryRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsLejuClawRecoveryRequest;
        using Response = Ros1Kuavo_msgsLejuClawRecoveryResponse;

        Ros1Kuavo_msgsLejuClawRecoveryServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_lejuClawRecovery_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_lejuClawRecovery_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_lejuClawRecovery_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_lejuClawRecovery_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/planArmTrajectoryBezierCurve client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest;
        using Response = Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse;

        Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient(Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient const&) = delete;
        Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient& operator= (Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient const&) = delete;
        Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient(Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient&&) = delete;

        ~Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurve_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/planArmTrajectoryBezierCurve server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse(Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest;
        using Response = Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse;

        Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurve_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurve_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurve_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurve_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/planArmTrajectoryCubicSpline client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest;
        using Response = Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse;

        Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient(Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient const&) = delete;
        Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient& operator= (Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient const&) = delete;
        Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient(Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient&&) = delete;

        ~Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSpline_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/planArmTrajectoryCubicSpline server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse(Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest;
        using Response = Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse;

        Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSpline_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSpline_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSpline_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSpline_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/playmusic client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsPlaymusicClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsPlaymusicRequest;
        using Response = Ros1Kuavo_msgsPlaymusicResponse;

        Ros1Kuavo_msgsPlaymusicClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsPlaymusicClient(Ros1Kuavo_msgsPlaymusicClient const&) = delete;
        Ros1Kuavo_msgsPlaymusicClient& operator= (Ros1Kuavo_msgsPlaymusicClient const&) = delete;
        Ros1Kuavo_msgsPlaymusicClient(Ros1Kuavo_msgsPlaymusicClient&&) = delete;

        ~Ros1Kuavo_msgsPlaymusicClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_playmusic_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/playmusic server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsPlaymusicServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsPlaymusicResponse(Ros1Kuavo_msgsPlaymusicRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsPlaymusicRequest;
        using Response = Ros1Kuavo_msgsPlaymusicResponse;

        Ros1Kuavo_msgsPlaymusicServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_playmusic_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_playmusic_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_playmusic_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_playmusic_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/recordmusic client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsRecordmusicClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsRecordmusicRequest;
        using Response = Ros1Kuavo_msgsRecordmusicResponse;

        Ros1Kuavo_msgsRecordmusicClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsRecordmusicClient(Ros1Kuavo_msgsRecordmusicClient const&) = delete;
        Ros1Kuavo_msgsRecordmusicClient& operator= (Ros1Kuavo_msgsRecordmusicClient const&) = delete;
        Ros1Kuavo_msgsRecordmusicClient(Ros1Kuavo_msgsRecordmusicClient&&) = delete;

        ~Ros1Kuavo_msgsRecordmusicClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_recordmusic_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/recordmusic server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsRecordmusicServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsRecordmusicResponse(Ros1Kuavo_msgsRecordmusicRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsRecordmusicRequest;
        using Response = Ros1Kuavo_msgsRecordmusicResponse;

        Ros1Kuavo_msgsRecordmusicServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_recordmusic_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_recordmusic_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_recordmusic_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_recordmusic_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/robotSwitchPose client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsRobotSwitchPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsRobotSwitchPoseRequest;
        using Response = Ros1Kuavo_msgsRobotSwitchPoseResponse;

        Ros1Kuavo_msgsRobotSwitchPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsRobotSwitchPoseClient(Ros1Kuavo_msgsRobotSwitchPoseClient const&) = delete;
        Ros1Kuavo_msgsRobotSwitchPoseClient& operator= (Ros1Kuavo_msgsRobotSwitchPoseClient const&) = delete;
        Ros1Kuavo_msgsRobotSwitchPoseClient(Ros1Kuavo_msgsRobotSwitchPoseClient&&) = delete;

        ~Ros1Kuavo_msgsRobotSwitchPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_robotSwitchPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/robotSwitchPose server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsRobotSwitchPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsRobotSwitchPoseResponse(Ros1Kuavo_msgsRobotSwitchPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsRobotSwitchPoseRequest;
        using Response = Ros1Kuavo_msgsRobotSwitchPoseResponse;

        Ros1Kuavo_msgsRobotSwitchPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_robotSwitchPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_robotSwitchPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_robotSwitchPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_robotSwitchPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/setContactForceInterpParams client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetContactForceInterpParamsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetContactForceInterpParamsRequest;
        using Response = Ros1Kuavo_msgsSetContactForceInterpParamsResponse;

        Ros1Kuavo_msgsSetContactForceInterpParamsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetContactForceInterpParamsClient(Ros1Kuavo_msgsSetContactForceInterpParamsClient const&) = delete;
        Ros1Kuavo_msgsSetContactForceInterpParamsClient& operator= (Ros1Kuavo_msgsSetContactForceInterpParamsClient const&) = delete;
        Ros1Kuavo_msgsSetContactForceInterpParamsClient(Ros1Kuavo_msgsSetContactForceInterpParamsClient&&) = delete;

        ~Ros1Kuavo_msgsSetContactForceInterpParamsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParams_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/setContactForceInterpParams server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetContactForceInterpParamsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetContactForceInterpParamsResponse(Ros1Kuavo_msgsSetContactForceInterpParamsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetContactForceInterpParamsRequest;
        using Response = Ros1Kuavo_msgsSetContactForceInterpParamsResponse;

        Ros1Kuavo_msgsSetContactForceInterpParamsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParams_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParams_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParams_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParams_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/setHwIntialState client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetHwIntialStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetHwIntialStateRequest;
        using Response = Ros1Kuavo_msgsSetHwIntialStateResponse;

        Ros1Kuavo_msgsSetHwIntialStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetHwIntialStateClient(Ros1Kuavo_msgsSetHwIntialStateClient const&) = delete;
        Ros1Kuavo_msgsSetHwIntialStateClient& operator= (Ros1Kuavo_msgsSetHwIntialStateClient const&) = delete;
        Ros1Kuavo_msgsSetHwIntialStateClient(Ros1Kuavo_msgsSetHwIntialStateClient&&) = delete;

        ~Ros1Kuavo_msgsSetHwIntialStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setHwIntialState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/setHwIntialState server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetHwIntialStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetHwIntialStateResponse(Ros1Kuavo_msgsSetHwIntialStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetHwIntialStateRequest;
        using Response = Ros1Kuavo_msgsSetHwIntialStateResponse;

        Ros1Kuavo_msgsSetHwIntialStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_setHwIntialState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setHwIntialState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_setHwIntialState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_setHwIntialState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/setMmCtrlFrame client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetMmCtrlFrameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetMmCtrlFrameRequest;
        using Response = Ros1Kuavo_msgsSetMmCtrlFrameResponse;

        Ros1Kuavo_msgsSetMmCtrlFrameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetMmCtrlFrameClient(Ros1Kuavo_msgsSetMmCtrlFrameClient const&) = delete;
        Ros1Kuavo_msgsSetMmCtrlFrameClient& operator= (Ros1Kuavo_msgsSetMmCtrlFrameClient const&) = delete;
        Ros1Kuavo_msgsSetMmCtrlFrameClient(Ros1Kuavo_msgsSetMmCtrlFrameClient&&) = delete;

        ~Ros1Kuavo_msgsSetMmCtrlFrameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrame_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/setMmCtrlFrame server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetMmCtrlFrameServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetMmCtrlFrameResponse(Ros1Kuavo_msgsSetMmCtrlFrameRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetMmCtrlFrameRequest;
        using Response = Ros1Kuavo_msgsSetMmCtrlFrameResponse;

        Ros1Kuavo_msgsSetMmCtrlFrameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrame_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrame_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrame_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrame_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/setMotorEncoderRoundService client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest;
        using Response = Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse;

        Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient(Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient const&) = delete;
        Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient& operator= (Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient const&) = delete;
        Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient(Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient&&) = delete;

        ~Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundService_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/setMotorEncoderRoundService server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetMotorEncoderRoundServiceServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse(Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest;
        using Response = Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse;

        Ros1Kuavo_msgsSetMotorEncoderRoundServiceServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundService_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundService_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundService_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundService_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/setRuckigPlannerParams client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetRuckigPlannerParamsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetRuckigPlannerParamsRequest;
        using Response = Ros1Kuavo_msgsSetRuckigPlannerParamsResponse;

        Ros1Kuavo_msgsSetRuckigPlannerParamsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetRuckigPlannerParamsClient(Ros1Kuavo_msgsSetRuckigPlannerParamsClient const&) = delete;
        Ros1Kuavo_msgsSetRuckigPlannerParamsClient& operator= (Ros1Kuavo_msgsSetRuckigPlannerParamsClient const&) = delete;
        Ros1Kuavo_msgsSetRuckigPlannerParamsClient(Ros1Kuavo_msgsSetRuckigPlannerParamsClient&&) = delete;

        ~Ros1Kuavo_msgsSetRuckigPlannerParamsClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParams_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/setRuckigPlannerParams server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetRuckigPlannerParamsServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetRuckigPlannerParamsResponse(Ros1Kuavo_msgsSetRuckigPlannerParamsRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetRuckigPlannerParamsRequest;
        using Response = Ros1Kuavo_msgsSetRuckigPlannerParamsResponse;

        Ros1Kuavo_msgsSetRuckigPlannerParamsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParams_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParams_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParams_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParams_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/setTagId client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSetTagIdClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSetTagIdRequest;
        using Response = Ros1Kuavo_msgsSetTagIdResponse;

        Ros1Kuavo_msgsSetTagIdClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSetTagIdClient(Ros1Kuavo_msgsSetTagIdClient const&) = delete;
        Ros1Kuavo_msgsSetTagIdClient& operator= (Ros1Kuavo_msgsSetTagIdClient const&) = delete;
        Ros1Kuavo_msgsSetTagIdClient(Ros1Kuavo_msgsSetTagIdClient&&) = delete;

        ~Ros1Kuavo_msgsSetTagIdClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setTagId_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/setTagId server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSetTagIdServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSetTagIdResponse(Ros1Kuavo_msgsSetTagIdRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSetTagIdRequest;
        using Response = Ros1Kuavo_msgsSetTagIdResponse;

        Ros1Kuavo_msgsSetTagIdServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_setTagId_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_setTagId_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_setTagId_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_setTagId_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/singleStepControl client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSingleStepControlClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSingleStepControlRequest;
        using Response = Ros1Kuavo_msgsSingleStepControlResponse;

        Ros1Kuavo_msgsSingleStepControlClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSingleStepControlClient(Ros1Kuavo_msgsSingleStepControlClient const&) = delete;
        Ros1Kuavo_msgsSingleStepControlClient& operator= (Ros1Kuavo_msgsSingleStepControlClient const&) = delete;
        Ros1Kuavo_msgsSingleStepControlClient(Ros1Kuavo_msgsSingleStepControlClient&&) = delete;

        ~Ros1Kuavo_msgsSingleStepControlClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_singleStepControl_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/singleStepControl server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSingleStepControlServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSingleStepControlResponse(Ros1Kuavo_msgsSingleStepControlRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSingleStepControlRequest;
        using Response = Ros1Kuavo_msgsSingleStepControlResponse;

        Ros1Kuavo_msgsSingleStepControlServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_singleStepControl_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_singleStepControl_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_singleStepControl_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_singleStepControl_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/stairAlignmentSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsStairAlignmentSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsStairAlignmentSrvRequest;
        using Response = Ros1Kuavo_msgsStairAlignmentSrvResponse;

        Ros1Kuavo_msgsStairAlignmentSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsStairAlignmentSrvClient(Ros1Kuavo_msgsStairAlignmentSrvClient const&) = delete;
        Ros1Kuavo_msgsStairAlignmentSrvClient& operator= (Ros1Kuavo_msgsStairAlignmentSrvClient const&) = delete;
        Ros1Kuavo_msgsStairAlignmentSrvClient(Ros1Kuavo_msgsStairAlignmentSrvClient&&) = delete;

        ~Ros1Kuavo_msgsStairAlignmentSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/stairAlignmentSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsStairAlignmentSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsStairAlignmentSrvResponse(Ros1Kuavo_msgsStairAlignmentSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsStairAlignmentSrvRequest;
        using Response = Ros1Kuavo_msgsStairAlignmentSrvResponse;

        Ros1Kuavo_msgsStairAlignmentSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/switchController client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSwitchControllerClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSwitchControllerRequest;
        using Response = Ros1Kuavo_msgsSwitchControllerResponse;

        Ros1Kuavo_msgsSwitchControllerClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSwitchControllerClient(Ros1Kuavo_msgsSwitchControllerClient const&) = delete;
        Ros1Kuavo_msgsSwitchControllerClient& operator= (Ros1Kuavo_msgsSwitchControllerClient const&) = delete;
        Ros1Kuavo_msgsSwitchControllerClient(Ros1Kuavo_msgsSwitchControllerClient&&) = delete;

        ~Ros1Kuavo_msgsSwitchControllerClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_switchController_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/switchController server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSwitchControllerServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSwitchControllerResponse(Ros1Kuavo_msgsSwitchControllerRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSwitchControllerRequest;
        using Response = Ros1Kuavo_msgsSwitchControllerResponse;

        Ros1Kuavo_msgsSwitchControllerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_switchController_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_switchController_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_switchController_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_switchController_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/switchToNextController client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsSwitchToNextControllerClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsSwitchToNextControllerRequest;
        using Response = Ros1Kuavo_msgsSwitchToNextControllerResponse;

        Ros1Kuavo_msgsSwitchToNextControllerClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsSwitchToNextControllerClient(Ros1Kuavo_msgsSwitchToNextControllerClient const&) = delete;
        Ros1Kuavo_msgsSwitchToNextControllerClient& operator= (Ros1Kuavo_msgsSwitchToNextControllerClient const&) = delete;
        Ros1Kuavo_msgsSwitchToNextControllerClient(Ros1Kuavo_msgsSwitchToNextControllerClient&&) = delete;

        ~Ros1Kuavo_msgsSwitchToNextControllerClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_switchToNextController_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/switchToNextController server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsSwitchToNextControllerServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsSwitchToNextControllerResponse(Ros1Kuavo_msgsSwitchToNextControllerRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsSwitchToNextControllerRequest;
        using Response = Ros1Kuavo_msgsSwitchToNextControllerResponse;

        Ros1Kuavo_msgsSwitchToNextControllerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_switchToNextController_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_switchToNextController_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_switchToNextController_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_switchToNextController_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/twoArmHandPoseCmdFreeSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest;
        using Response = Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse;

        Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient(Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient const&) = delete;
        Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient& operator= (Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient const&) = delete;
        Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient(Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient&&) = delete;

        ~Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/twoArmHandPoseCmdFreeSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse(Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest;
        using Response = Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse;

        Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_msgs/twoArmHandPoseCmdSrv client; default policy returns13 from construction. */
    class Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest;
        using Response = Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse;

        Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient(Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient const&) = delete;
        Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient& operator= (Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient const&) = delete;
        Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient(Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient&&) = delete;

        ~Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrv_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_msgs/twoArmHandPoseCmdSrv server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_msgsTwoArmHandPoseCmdSrvServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse(Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest;
        using Response = Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse;

        Ros1Kuavo_msgsTwoArmHandPoseCmdSrvServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrv_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrv_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrv_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrv_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_pico_gmr/AmpJoyRoute client; default policy returns13 from construction. */
    class Ros1Kuavo_pico_gmrAmpJoyRouteClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_pico_gmrAmpJoyRouteRequest;
        using Response = Ros1Kuavo_pico_gmrAmpJoyRouteResponse;

        Ros1Kuavo_pico_gmrAmpJoyRouteClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_pico_gmrAmpJoyRouteClient(Ros1Kuavo_pico_gmrAmpJoyRouteClient const&) = delete;
        Ros1Kuavo_pico_gmrAmpJoyRouteClient& operator= (Ros1Kuavo_pico_gmrAmpJoyRouteClient const&) = delete;
        Ros1Kuavo_pico_gmrAmpJoyRouteClient(Ros1Kuavo_pico_gmrAmpJoyRouteClient&&) = delete;

        ~Ros1Kuavo_pico_gmrAmpJoyRouteClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRoute_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_pico_gmr/AmpJoyRoute server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_pico_gmrAmpJoyRouteServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_pico_gmrAmpJoyRouteResponse(Ros1Kuavo_pico_gmrAmpJoyRouteRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_pico_gmrAmpJoyRouteRequest;
        using Response = Ros1Kuavo_pico_gmrAmpJoyRouteResponse;

        Ros1Kuavo_pico_gmrAmpJoyRouteServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRoute_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRoute_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRoute_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRoute_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_ros_interfaces/ocs2ChangeArmCtrlMode client; default policy returns13 from construction.
     */
    class Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest;
        using Response = Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse;

        Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient(Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient const&) = delete;
        Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient& operator= (Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient const&) = delete;
        Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient(Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient&&) = delete;

        ~Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_ros_interfaces/ocs2ChangeArmCtrlMode server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse(Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest;
        using Response = Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse;

        Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_ros_interfaces/planArmTrajectoryBezierCurve client; default policy returns13 from
     * construction. */
    class Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest;
        using Response = Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse;

        Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient(Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient const&) = delete;
        Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient& operator= (Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient const&) = delete;
        Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient(Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient&&) = delete;

        ~Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurve_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_ros_interfaces/planArmTrajectoryBezierCurve server; advertise/respond stay separate
     * authorities. */
    class Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveServer : public ServerOwners
    {
        using Handler =
            std::function<Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse(Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest;
        using Response = Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse;

        Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurve_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurve_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurve_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurve_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom kuavo_ros_interfaces/stopPlanArmTrajectory client; default policy returns13 from construction.
     */
    class Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest;
        using Response = Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse;

        Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient(Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient const&) = delete;
        Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient& operator= (Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient const&) = delete;
        Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient(Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient&&) = delete;

        ~Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectory_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom kuavo_ros_interfaces/stopPlanArmTrajectory server; advertise/respond stay separate authorities. */
    class Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryServer : public ServerOwners
    {
        using Handler = std::function<Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse(Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest;
        using Response = Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse;

        Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectory_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectory_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectory_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectory_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/BaseMove client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsBaseMoveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsBaseMoveRequest;
        using Response = Ros1Leju_mobile_base_msgsBaseMoveResponse;

        Ros1Leju_mobile_base_msgsBaseMoveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsBaseMoveClient(Ros1Leju_mobile_base_msgsBaseMoveClient const&) = delete;
        Ros1Leju_mobile_base_msgsBaseMoveClient& operator= (Ros1Leju_mobile_base_msgsBaseMoveClient const&) = delete;
        Ros1Leju_mobile_base_msgsBaseMoveClient(Ros1Leju_mobile_base_msgsBaseMoveClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsBaseMoveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_BaseMove_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/BaseMove server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsBaseMoveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsBaseMoveResponse(Ros1Leju_mobile_base_msgsBaseMoveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsBaseMoveRequest;
        using Response = Ros1Leju_mobile_base_msgsBaseMoveResponse;

        Ros1Leju_mobile_base_msgsBaseMoveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_BaseMove_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_BaseMove_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_BaseMove_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_BaseMove_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/CheckArrived client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsCheckArrivedClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsCheckArrivedRequest;
        using Response = Ros1Leju_mobile_base_msgsCheckArrivedResponse;

        Ros1Leju_mobile_base_msgsCheckArrivedClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsCheckArrivedClient(Ros1Leju_mobile_base_msgsCheckArrivedClient const&) = delete;
        Ros1Leju_mobile_base_msgsCheckArrivedClient& operator= (Ros1Leju_mobile_base_msgsCheckArrivedClient const&) = delete;
        Ros1Leju_mobile_base_msgsCheckArrivedClient(Ros1Leju_mobile_base_msgsCheckArrivedClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsCheckArrivedClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrived_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/CheckArrived server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsCheckArrivedServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsCheckArrivedResponse(Ros1Leju_mobile_base_msgsCheckArrivedRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsCheckArrivedRequest;
        using Response = Ros1Leju_mobile_base_msgsCheckArrivedResponse;

        Ros1Leju_mobile_base_msgsCheckArrivedServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrived_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrived_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrived_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrived_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/ControlLaserScan client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsControlLaserScanClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsControlLaserScanRequest;
        using Response = Ros1Leju_mobile_base_msgsControlLaserScanResponse;

        Ros1Leju_mobile_base_msgsControlLaserScanClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsControlLaserScanClient(Ros1Leju_mobile_base_msgsControlLaserScanClient const&) = delete;
        Ros1Leju_mobile_base_msgsControlLaserScanClient& operator= (Ros1Leju_mobile_base_msgsControlLaserScanClient const&) = delete;
        Ros1Leju_mobile_base_msgsControlLaserScanClient(Ros1Leju_mobile_base_msgsControlLaserScanClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsControlLaserScanClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScan_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/ControlLaserScan server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsControlLaserScanServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsControlLaserScanResponse(Ros1Leju_mobile_base_msgsControlLaserScanRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsControlLaserScanRequest;
        using Response = Ros1Leju_mobile_base_msgsControlLaserScanResponse;

        Ros1Leju_mobile_base_msgsControlLaserScanServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScan_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScan_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScan_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScan_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/DispatchMove client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsDispatchMoveClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsDispatchMoveRequest;
        using Response = Ros1Leju_mobile_base_msgsDispatchMoveResponse;

        Ros1Leju_mobile_base_msgsDispatchMoveClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsDispatchMoveClient(Ros1Leju_mobile_base_msgsDispatchMoveClient const&) = delete;
        Ros1Leju_mobile_base_msgsDispatchMoveClient& operator= (Ros1Leju_mobile_base_msgsDispatchMoveClient const&) = delete;
        Ros1Leju_mobile_base_msgsDispatchMoveClient(Ros1Leju_mobile_base_msgsDispatchMoveClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsDispatchMoveClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMove_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/DispatchMove server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsDispatchMoveServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsDispatchMoveResponse(Ros1Leju_mobile_base_msgsDispatchMoveRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsDispatchMoveRequest;
        using Response = Ros1Leju_mobile_base_msgsDispatchMoveResponse;

        Ros1Leju_mobile_base_msgsDispatchMoveServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMove_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMove_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMove_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMove_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/ExecTask client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsExecTaskClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsExecTaskRequest;
        using Response = Ros1Leju_mobile_base_msgsExecTaskResponse;

        Ros1Leju_mobile_base_msgsExecTaskClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsExecTaskClient(Ros1Leju_mobile_base_msgsExecTaskClient const&) = delete;
        Ros1Leju_mobile_base_msgsExecTaskClient& operator= (Ros1Leju_mobile_base_msgsExecTaskClient const&) = delete;
        Ros1Leju_mobile_base_msgsExecTaskClient(Ros1Leju_mobile_base_msgsExecTaskClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsExecTaskClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_ExecTask_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/ExecTask server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsExecTaskServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsExecTaskResponse(Ros1Leju_mobile_base_msgsExecTaskRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsExecTaskRequest;
        using Response = Ros1Leju_mobile_base_msgsExecTaskResponse;

        Ros1Leju_mobile_base_msgsExecTaskServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_ExecTask_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_ExecTask_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_ExecTask_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_ExecTask_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/GetGlobalOdometer client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsGetGlobalOdometerClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest;
        using Response = Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse;

        Ros1Leju_mobile_base_msgsGetGlobalOdometerClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsGetGlobalOdometerClient(Ros1Leju_mobile_base_msgsGetGlobalOdometerClient const&) = delete;
        Ros1Leju_mobile_base_msgsGetGlobalOdometerClient& operator= (Ros1Leju_mobile_base_msgsGetGlobalOdometerClient const&) = delete;
        Ros1Leju_mobile_base_msgsGetGlobalOdometerClient(Ros1Leju_mobile_base_msgsGetGlobalOdometerClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsGetGlobalOdometerClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometer_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/GetGlobalOdometer server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsGetGlobalOdometerServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse(Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest;
        using Response = Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse;

        Ros1Leju_mobile_base_msgsGetGlobalOdometerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometer_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometer_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometer_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometer_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/GetLaserScanList client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsGetLaserScanListClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsGetLaserScanListRequest;
        using Response = Ros1Leju_mobile_base_msgsGetLaserScanListResponse;

        Ros1Leju_mobile_base_msgsGetLaserScanListClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsGetLaserScanListClient(Ros1Leju_mobile_base_msgsGetLaserScanListClient const&) = delete;
        Ros1Leju_mobile_base_msgsGetLaserScanListClient& operator= (Ros1Leju_mobile_base_msgsGetLaserScanListClient const&) = delete;
        Ros1Leju_mobile_base_msgsGetLaserScanListClient(Ros1Leju_mobile_base_msgsGetLaserScanListClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsGetLaserScanListClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanList_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/GetLaserScanList server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsGetLaserScanListServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsGetLaserScanListResponse(Ros1Leju_mobile_base_msgsGetLaserScanListRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsGetLaserScanListRequest;
        using Response = Ros1Leju_mobile_base_msgsGetLaserScanListResponse;

        Ros1Leju_mobile_base_msgsGetLaserScanListServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanList_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanList_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanList_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanList_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/MoveToTarget client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsMoveToTargetClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsMoveToTargetRequest;
        using Response = Ros1Leju_mobile_base_msgsMoveToTargetResponse;

        Ros1Leju_mobile_base_msgsMoveToTargetClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsMoveToTargetClient(Ros1Leju_mobile_base_msgsMoveToTargetClient const&) = delete;
        Ros1Leju_mobile_base_msgsMoveToTargetClient& operator= (Ros1Leju_mobile_base_msgsMoveToTargetClient const&) = delete;
        Ros1Leju_mobile_base_msgsMoveToTargetClient(Ros1Leju_mobile_base_msgsMoveToTargetClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsMoveToTargetClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTarget_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/MoveToTarget server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsMoveToTargetServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsMoveToTargetResponse(Ros1Leju_mobile_base_msgsMoveToTargetRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsMoveToTargetRequest;
        using Response = Ros1Leju_mobile_base_msgsMoveToTargetResponse;

        Ros1Leju_mobile_base_msgsMoveToTargetServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTarget_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTarget_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTarget_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTarget_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/ResetTemporaryOdometer client; default policy returns13 from construction.
     */
    class Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest;
        using Response = Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse;

        Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient(Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient const&) = delete;
        Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient& operator= (Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient const&) = delete;
        Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient(Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometer_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/ResetTemporaryOdometer server; advertise/respond stay separate authorities.
     */
    class Ros1Leju_mobile_base_msgsResetTemporaryOdometerServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse(Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest;
        using Response = Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse;

        Ros1Leju_mobile_base_msgsResetTemporaryOdometerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometer_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometer_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometer_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometer_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/SetDispatchMode client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsSetDispatchModeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsSetDispatchModeRequest;
        using Response = Ros1Leju_mobile_base_msgsSetDispatchModeResponse;

        Ros1Leju_mobile_base_msgsSetDispatchModeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsSetDispatchModeClient(Ros1Leju_mobile_base_msgsSetDispatchModeClient const&) = delete;
        Ros1Leju_mobile_base_msgsSetDispatchModeClient& operator= (Ros1Leju_mobile_base_msgsSetDispatchModeClient const&) = delete;
        Ros1Leju_mobile_base_msgsSetDispatchModeClient(Ros1Leju_mobile_base_msgsSetDispatchModeClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsSetDispatchModeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchMode_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/SetDispatchMode server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsSetDispatchModeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsSetDispatchModeResponse(Ros1Leju_mobile_base_msgsSetDispatchModeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsSetDispatchModeRequest;
        using Response = Ros1Leju_mobile_base_msgsSetDispatchModeResponse;

        Ros1Leju_mobile_base_msgsSetDispatchModeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchMode_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchMode_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchMode_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchMode_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/SetMapServer client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsSetMapServerClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsSetMapServerRequest;
        using Response = Ros1Leju_mobile_base_msgsSetMapServerResponse;

        Ros1Leju_mobile_base_msgsSetMapServerClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsSetMapServerClient(Ros1Leju_mobile_base_msgsSetMapServerClient const&) = delete;
        Ros1Leju_mobile_base_msgsSetMapServerClient& operator= (Ros1Leju_mobile_base_msgsSetMapServerClient const&) = delete;
        Ros1Leju_mobile_base_msgsSetMapServerClient(Ros1Leju_mobile_base_msgsSetMapServerClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsSetMapServerClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServer_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/SetMapServer server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsSetMapServerServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsSetMapServerResponse(Ros1Leju_mobile_base_msgsSetMapServerRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsSetMapServerRequest;
        using Response = Ros1Leju_mobile_base_msgsSetMapServerResponse;

        Ros1Leju_mobile_base_msgsSetMapServerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServer_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServer_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServer_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServer_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/StartLocalization client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsStartLocalizationClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsStartLocalizationRequest;
        using Response = Ros1Leju_mobile_base_msgsStartLocalizationResponse;

        Ros1Leju_mobile_base_msgsStartLocalizationClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsStartLocalizationClient(Ros1Leju_mobile_base_msgsStartLocalizationClient const&) = delete;
        Ros1Leju_mobile_base_msgsStartLocalizationClient& operator= (Ros1Leju_mobile_base_msgsStartLocalizationClient const&) = delete;
        Ros1Leju_mobile_base_msgsStartLocalizationClient(Ros1Leju_mobile_base_msgsStartLocalizationClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsStartLocalizationClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalization_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/StartLocalization server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsStartLocalizationServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsStartLocalizationResponse(Ros1Leju_mobile_base_msgsStartLocalizationRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsStartLocalizationRequest;
        using Response = Ros1Leju_mobile_base_msgsStartLocalizationResponse;

        Ros1Leju_mobile_base_msgsStartLocalizationServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalization_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalization_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalization_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalization_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom leju_mobile_base_msgs/SyncCostmap client; default policy returns13 from construction. */
    class Ros1Leju_mobile_base_msgsSyncCostmapClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Leju_mobile_base_msgsSyncCostmapRequest;
        using Response = Ros1Leju_mobile_base_msgsSyncCostmapResponse;

        Ros1Leju_mobile_base_msgsSyncCostmapClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Leju_mobile_base_msgsSyncCostmapClient(Ros1Leju_mobile_base_msgsSyncCostmapClient const&) = delete;
        Ros1Leju_mobile_base_msgsSyncCostmapClient& operator= (Ros1Leju_mobile_base_msgsSyncCostmapClient const&) = delete;
        Ros1Leju_mobile_base_msgsSyncCostmapClient(Ros1Leju_mobile_base_msgsSyncCostmapClient&&) = delete;

        ~Ros1Leju_mobile_base_msgsSyncCostmapClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmap_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom leju_mobile_base_msgs/SyncCostmap server; advertise/respond stay separate authorities. */
    class Ros1Leju_mobile_base_msgsSyncCostmapServer : public ServerOwners
    {
        using Handler = std::function<Ros1Leju_mobile_base_msgsSyncCostmapResponse(Ros1Leju_mobile_base_msgsSyncCostmapRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Leju_mobile_base_msgsSyncCostmapRequest;
        using Response = Ros1Leju_mobile_base_msgsSyncCostmapResponse;

        Ros1Leju_mobile_base_msgsSyncCostmapServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmap_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmap_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmap_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmap_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom network_monitor/NetworkPing client; default policy returns13 from construction. */
    class Ros1Network_monitorNetworkPingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Network_monitorNetworkPingRequest;
        using Response = Ros1Network_monitorNetworkPingResponse;

        Ros1Network_monitorNetworkPingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Network_monitorNetworkPingClient(Ros1Network_monitorNetworkPingClient const&) = delete;
        Ros1Network_monitorNetworkPingClient& operator= (Ros1Network_monitorNetworkPingClient const&) = delete;
        Ros1Network_monitorNetworkPingClient(Ros1Network_monitorNetworkPingClient&&) = delete;

        ~Ros1Network_monitorNetworkPingClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_network_monitor_NetworkPing_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom network_monitor/NetworkPing server; advertise/respond stay separate authorities. */
    class Ros1Network_monitorNetworkPingServer : public ServerOwners
    {
        using Handler = std::function<Ros1Network_monitorNetworkPingResponse(Ros1Network_monitorNetworkPingRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Network_monitorNetworkPingRequest;
        using Response = Ros1Network_monitorNetworkPingResponse;

        Ros1Network_monitorNetworkPingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_network_monitor_NetworkPing_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_network_monitor_NetworkPing_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_network_monitor_NetworkPing_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_network_monitor_NetworkPing_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom ocs2_msgs/pause_resume client; default policy returns13 from construction. */
    class Ros1Ocs2_msgsPause_resumeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Ocs2_msgsPause_resumeRequest;
        using Response = Ros1Ocs2_msgsPause_resumeResponse;

        Ros1Ocs2_msgsPause_resumeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Ocs2_msgsPause_resumeClient(Ros1Ocs2_msgsPause_resumeClient const&) = delete;
        Ros1Ocs2_msgsPause_resumeClient& operator= (Ros1Ocs2_msgsPause_resumeClient const&) = delete;
        Ros1Ocs2_msgsPause_resumeClient(Ros1Ocs2_msgsPause_resumeClient&&) = delete;

        ~Ros1Ocs2_msgsPause_resumeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_ocs2_msgs_pause_resume_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom ocs2_msgs/pause_resume server; advertise/respond stay separate authorities. */
    class Ros1Ocs2_msgsPause_resumeServer : public ServerOwners
    {
        using Handler = std::function<Ros1Ocs2_msgsPause_resumeResponse(Ros1Ocs2_msgsPause_resumeRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Ocs2_msgsPause_resumeRequest;
        using Response = Ros1Ocs2_msgsPause_resumeResponse;

        Ros1Ocs2_msgsPause_resumeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_ocs2_msgs_pause_resume_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_ocs2_msgs_pause_resume_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_ocs2_msgs_pause_resume_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_ocs2_msgs_pause_resume_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom ocs2_msgs/reset client; default policy returns13 from construction. */
    class Ros1Ocs2_msgsResetClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Ocs2_msgsResetRequest;
        using Response = Ros1Ocs2_msgsResetResponse;

        Ros1Ocs2_msgsResetClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Ocs2_msgsResetClient(Ros1Ocs2_msgsResetClient const&) = delete;
        Ros1Ocs2_msgsResetClient& operator= (Ros1Ocs2_msgsResetClient const&) = delete;
        Ros1Ocs2_msgsResetClient(Ros1Ocs2_msgsResetClient&&) = delete;

        ~Ros1Ocs2_msgsResetClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_ocs2_msgs_reset_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom ocs2_msgs/reset server; advertise/respond stay separate authorities. */
    class Ros1Ocs2_msgsResetServer : public ServerOwners
    {
        using Handler = std::function<Ros1Ocs2_msgsResetResponse(Ros1Ocs2_msgsResetRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Ocs2_msgsResetRequest;
        using Response = Ros1Ocs2_msgsResetResponse;

        Ros1Ocs2_msgsResetServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_ocs2_msgs_reset_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_ocs2_msgs_reset_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_ocs2_msgs_reset_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_ocs2_msgs_reset_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom ocs2_switched_model_msgs/trajectory_request client; default policy returns13 from construction.
     */
    class Ros1Ocs2_switched_model_msgsTrajectory_requestClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Ocs2_switched_model_msgsTrajectory_requestRequest;
        using Response = Ros1Ocs2_switched_model_msgsTrajectory_requestResponse;

        Ros1Ocs2_switched_model_msgsTrajectory_requestClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Ocs2_switched_model_msgsTrajectory_requestClient(Ros1Ocs2_switched_model_msgsTrajectory_requestClient const&) = delete;
        Ros1Ocs2_switched_model_msgsTrajectory_requestClient& operator= (Ros1Ocs2_switched_model_msgsTrajectory_requestClient const&) = delete;
        Ros1Ocs2_switched_model_msgsTrajectory_requestClient(Ros1Ocs2_switched_model_msgsTrajectory_requestClient&&) = delete;

        ~Ros1Ocs2_switched_model_msgsTrajectory_requestClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_request_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom ocs2_switched_model_msgs/trajectory_request server; advertise/respond stay separate authorities. */
    class Ros1Ocs2_switched_model_msgsTrajectory_requestServer : public ServerOwners
    {
        using Handler = std::function<Ros1Ocs2_switched_model_msgsTrajectory_requestResponse(Ros1Ocs2_switched_model_msgsTrajectory_requestRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Ocs2_switched_model_msgsTrajectory_requestRequest;
        using Response = Ros1Ocs2_switched_model_msgsTrajectory_requestResponse;

        Ros1Ocs2_switched_model_msgsTrajectory_requestServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_request_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_request_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_request_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_request_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete owned custom robot_calibration_msgs/GripperLedCommand Action client with four separate roles. */
    class Ros1Robot_calibration_msgsGripperLedCommandClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros1Robot_calibration_msgsGripperLedCommandGoal;
        using Result = Ros1Robot_calibration_msgsGripperLedCommandResult;
        using Feedback = Ros1Robot_calibration_msgsGripperLedCommandFeedback;

        Ros1Robot_calibration_msgsGripperLedCommandClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        Ros1Robot_calibration_msgsGripperLedCommandClient(Ros1Robot_calibration_msgsGripperLedCommandClient const&) = delete;
        Ros1Robot_calibration_msgsGripperLedCommandClient& operator= (Ros1Robot_calibration_msgsGripperLedCommandClient const&) = delete;
        Ros1Robot_calibration_msgsGripperLedCommandClient(Ros1Robot_calibration_msgsGripperLedCommandClient&&) = delete;

        ~Ros1Robot_calibration_msgsGripperLedCommandClient()
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
            return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_send(&bundle_, &value, &id);
        }

        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_feedback(&bundle_, id, &value);
        }

        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_result(&bundle_, id, &kind, &value);
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

    /** Typed custom robot_calibration_msgs/GripperLedCommand server with explicit feedback/terminal component codecs.
     */
    class Ros1Robot_calibration_msgsGripperLedCommandServer : public ServerOwners
    {
    public:
        using Goal = Ros1Robot_calibration_msgsGripperLedCommandGoal;
        using Result = Ros1Robot_calibration_msgsGripperLedCommandResult;
        using Feedback = Ros1Robot_calibration_msgsGripperLedCommandFeedback;

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
        Ros1Robot_calibration_msgsGripperLedCommandServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
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
            return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_poll(&advertise_, &id, &goal);
        }

        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_respond_feedback(&respond_, id, &value);
        }

        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_respond_result(&respond_, id, kind, &value);
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
            auto r = roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result
                       ? roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_respond_result(&respond_, id, replies.kind, &replies.result).error
                       : 0;
        }
    };

    /** Complete custom robot_localization/FromLL client; default policy returns13 from construction. */
    class Ros1Robot_localizationFromLLClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Robot_localizationFromLLRequest;
        using Response = Ros1Robot_localizationFromLLResponse;

        Ros1Robot_localizationFromLLClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Robot_localizationFromLLClient(Ros1Robot_localizationFromLLClient const&) = delete;
        Ros1Robot_localizationFromLLClient& operator= (Ros1Robot_localizationFromLLClient const&) = delete;
        Ros1Robot_localizationFromLLClient(Ros1Robot_localizationFromLLClient&&) = delete;

        ~Ros1Robot_localizationFromLLClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_FromLL_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom robot_localization/FromLL server; advertise/respond stay separate authorities. */
    class Ros1Robot_localizationFromLLServer : public ServerOwners
    {
        using Handler = std::function<Ros1Robot_localizationFromLLResponse(Ros1Robot_localizationFromLLRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Robot_localizationFromLLRequest;
        using Response = Ros1Robot_localizationFromLLResponse;

        Ros1Robot_localizationFromLLServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_robot_localization_FromLL_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_FromLL_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_robot_localization_FromLL_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_robot_localization_FromLL_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom robot_localization/GetState client; default policy returns13 from construction. */
    class Ros1Robot_localizationGetStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Robot_localizationGetStateRequest;
        using Response = Ros1Robot_localizationGetStateResponse;

        Ros1Robot_localizationGetStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Robot_localizationGetStateClient(Ros1Robot_localizationGetStateClient const&) = delete;
        Ros1Robot_localizationGetStateClient& operator= (Ros1Robot_localizationGetStateClient const&) = delete;
        Ros1Robot_localizationGetStateClient(Ros1Robot_localizationGetStateClient&&) = delete;

        ~Ros1Robot_localizationGetStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_GetState_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom robot_localization/GetState server; advertise/respond stay separate authorities. */
    class Ros1Robot_localizationGetStateServer : public ServerOwners
    {
        using Handler = std::function<Ros1Robot_localizationGetStateResponse(Ros1Robot_localizationGetStateRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Robot_localizationGetStateRequest;
        using Response = Ros1Robot_localizationGetStateResponse;

        Ros1Robot_localizationGetStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_robot_localization_GetState_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_GetState_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_robot_localization_GetState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_robot_localization_GetState_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom robot_localization/SetDatum client; default policy returns13 from construction. */
    class Ros1Robot_localizationSetDatumClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Robot_localizationSetDatumRequest;
        using Response = Ros1Robot_localizationSetDatumResponse;

        Ros1Robot_localizationSetDatumClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Robot_localizationSetDatumClient(Ros1Robot_localizationSetDatumClient const&) = delete;
        Ros1Robot_localizationSetDatumClient& operator= (Ros1Robot_localizationSetDatumClient const&) = delete;
        Ros1Robot_localizationSetDatumClient(Ros1Robot_localizationSetDatumClient&&) = delete;

        ~Ros1Robot_localizationSetDatumClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_SetDatum_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom robot_localization/SetDatum server; advertise/respond stay separate authorities. */
    class Ros1Robot_localizationSetDatumServer : public ServerOwners
    {
        using Handler = std::function<Ros1Robot_localizationSetDatumResponse(Ros1Robot_localizationSetDatumRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Robot_localizationSetDatumRequest;
        using Response = Ros1Robot_localizationSetDatumResponse;

        Ros1Robot_localizationSetDatumServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_robot_localization_SetDatum_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_SetDatum_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_robot_localization_SetDatum_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_robot_localization_SetDatum_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom robot_localization/SetPose client; default policy returns13 from construction. */
    class Ros1Robot_localizationSetPoseClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Robot_localizationSetPoseRequest;
        using Response = Ros1Robot_localizationSetPoseResponse;

        Ros1Robot_localizationSetPoseClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Robot_localizationSetPoseClient(Ros1Robot_localizationSetPoseClient const&) = delete;
        Ros1Robot_localizationSetPoseClient& operator= (Ros1Robot_localizationSetPoseClient const&) = delete;
        Ros1Robot_localizationSetPoseClient(Ros1Robot_localizationSetPoseClient&&) = delete;

        ~Ros1Robot_localizationSetPoseClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_SetPose_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom robot_localization/SetPose server; advertise/respond stay separate authorities. */
    class Ros1Robot_localizationSetPoseServer : public ServerOwners
    {
        using Handler = std::function<Ros1Robot_localizationSetPoseResponse(Ros1Robot_localizationSetPoseRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Robot_localizationSetPoseRequest;
        using Response = Ros1Robot_localizationSetPoseResponse;

        Ros1Robot_localizationSetPoseServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_robot_localization_SetPose_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_SetPose_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_robot_localization_SetPose_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_robot_localization_SetPose_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom robot_localization/SetUTMZone client; default policy returns13 from construction. */
    class Ros1Robot_localizationSetUTMZoneClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Robot_localizationSetUTMZoneRequest;
        using Response = Ros1Robot_localizationSetUTMZoneResponse;

        Ros1Robot_localizationSetUTMZoneClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Robot_localizationSetUTMZoneClient(Ros1Robot_localizationSetUTMZoneClient const&) = delete;
        Ros1Robot_localizationSetUTMZoneClient& operator= (Ros1Robot_localizationSetUTMZoneClient const&) = delete;
        Ros1Robot_localizationSetUTMZoneClient(Ros1Robot_localizationSetUTMZoneClient&&) = delete;

        ~Ros1Robot_localizationSetUTMZoneClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_SetUTMZone_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom robot_localization/SetUTMZone server; advertise/respond stay separate authorities. */
    class Ros1Robot_localizationSetUTMZoneServer : public ServerOwners
    {
        using Handler = std::function<Ros1Robot_localizationSetUTMZoneResponse(Ros1Robot_localizationSetUTMZoneRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Robot_localizationSetUTMZoneRequest;
        using Response = Ros1Robot_localizationSetUTMZoneResponse;

        Ros1Robot_localizationSetUTMZoneServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_robot_localization_SetUTMZone_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_SetUTMZone_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_robot_localization_SetUTMZone_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_robot_localization_SetUTMZone_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom robot_localization/ToLL client; default policy returns13 from construction. */
    class Ros1Robot_localizationToLLClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Robot_localizationToLLRequest;
        using Response = Ros1Robot_localizationToLLResponse;

        Ros1Robot_localizationToLLClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Robot_localizationToLLClient(Ros1Robot_localizationToLLClient const&) = delete;
        Ros1Robot_localizationToLLClient& operator= (Ros1Robot_localizationToLLClient const&) = delete;
        Ros1Robot_localizationToLLClient(Ros1Robot_localizationToLLClient&&) = delete;

        ~Ros1Robot_localizationToLLClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_ToLL_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom robot_localization/ToLL server; advertise/respond stay separate authorities. */
    class Ros1Robot_localizationToLLServer : public ServerOwners
    {
        using Handler = std::function<Ros1Robot_localizationToLLResponse(Ros1Robot_localizationToLLRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Robot_localizationToLLRequest;
        using Response = Ros1Robot_localizationToLLResponse;

        Ros1Robot_localizationToLLServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_robot_localization_ToLL_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_ToLL_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_robot_localization_ToLL_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_robot_localization_ToLL_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom robot_localization/ToggleFilterProcessing client; default policy returns13 from construction. */
    class Ros1Robot_localizationToggleFilterProcessingClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Robot_localizationToggleFilterProcessingRequest;
        using Response = Ros1Robot_localizationToggleFilterProcessingResponse;

        Ros1Robot_localizationToggleFilterProcessingClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Robot_localizationToggleFilterProcessingClient(Ros1Robot_localizationToggleFilterProcessingClient const&) = delete;
        Ros1Robot_localizationToggleFilterProcessingClient& operator= (Ros1Robot_localizationToggleFilterProcessingClient const&) = delete;
        Ros1Robot_localizationToggleFilterProcessingClient(Ros1Robot_localizationToggleFilterProcessingClient&&) = delete;

        ~Ros1Robot_localizationToggleFilterProcessingClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_ToggleFilterProcessing_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom robot_localization/ToggleFilterProcessing server; advertise/respond stay separate authorities. */
    class Ros1Robot_localizationToggleFilterProcessingServer : public ServerOwners
    {
        using Handler = std::function<Ros1Robot_localizationToggleFilterProcessingResponse(Ros1Robot_localizationToggleFilterProcessingRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Robot_localizationToggleFilterProcessingRequest;
        using Response = Ros1Robot_localizationToggleFilterProcessingResponse;

        Ros1Robot_localizationToggleFilterProcessingServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_robot_localization_ToggleFilterProcessing_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_robot_localization_ToggleFilterProcessing_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_robot_localization_ToggleFilterProcessing_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_robot_localization_ToggleFilterProcessing_respond(&respond_, ticket, &response).error;
        }
    };

    /** Complete custom taiji_trigger_node/PerformTaiji client; default policy returns13 from construction. */
    class Ros1Taiji_trigger_nodePerformTaijiClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros1Taiji_trigger_nodePerformTaijiRequest;
        using Response = Ros1Taiji_trigger_nodePerformTaijiResponse;

        Ros1Taiji_trigger_nodePerformTaijiClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        Ros1Taiji_trigger_nodePerformTaijiClient(Ros1Taiji_trigger_nodePerformTaijiClient const&) = delete;
        Ros1Taiji_trigger_nodePerformTaijiClient& operator= (Ros1Taiji_trigger_nodePerformTaijiClient const&) = delete;
        Ros1Taiji_trigger_nodePerformTaijiClient(Ros1Taiji_trigger_nodePerformTaijiClient&&) = delete;

        ~Ros1Taiji_trigger_nodePerformTaijiClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_taiji_trigger_node_PerformTaiji_call(&cap_, &request, &response);
        }

        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /** Typed custom taiji_trigger_node/PerformTaiji server; advertise/respond stay separate authorities. */
    class Ros1Taiji_trigger_nodePerformTaijiServer : public ServerOwners
    {
        using Handler = std::function<Ros1Taiji_trigger_nodePerformTaijiResponse(Ros1Taiji_trigger_nodePerformTaijiRequest const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros1Taiji_trigger_nodePerformTaijiRequest;
        using Response = Ros1Taiji_trigger_nodePerformTaijiResponse;

        Ros1Taiji_trigger_nodePerformTaijiServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /** Replacement applies next pass; the same mutable functor object survives current dispatch. */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_1_taiji_trigger_node_PerformTaiji_poll(&advertise_, &ticket, &request);
        }

        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_1_taiji_trigger_node_PerformTaiji_respond(&respond_, ticket, &response);
        }

        /** One bounded poll/decode/callback/respond pass. Idle11 is returned unchanged. */
        /** One caller-driven executor pass; Idle11 preserves pending owners. */
        uint32_t poll_once()
        {
            return process_once();
        }

        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_1_taiji_trigger_node_PerformTaiji_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_1_taiji_trigger_node_PerformTaiji_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
