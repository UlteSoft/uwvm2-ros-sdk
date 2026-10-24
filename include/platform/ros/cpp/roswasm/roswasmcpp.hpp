/** @file
 * @brief Standard-selected Node, typed resources, and guest-driven execution.
 *
 * @details Select imports explicitly with ros1.h or ros2.h before creating a Node. This
 * is a standalone capability API inspired by familiar ROS programming patterns;
 * it is not source/binary compatible with rclcpp or roscpp. It creates no native
 * thread and performs no hidden retries. The host controls endpoints, types,
 * QoS, quotas, transitions, severity, frames, and rights through alias grants.
 * Use abi/ros1_freestanding.hpp or abi/ros2_freestanding.hpp for allocation-free
 * raw byte ownership. WASI tutorials use -fno-exceptions: ROS
 * refusals still use numeric errors, while allocation exhaustion follows the
 * target standard library's termination policy. Callbacks must not throw in
 * that profile. Exception-enabled native applications retain normal unwinding.
 * The C++20-or-newer Capability borrows its original C context object: keep
 * that stationary context and its backend table alive through owner cleanup.
 * Node and Session therefore outlive resources that borrow their contexts.
 * Serialize mutation of shared owners and callback state; this API provides
 * no native thread synchronization. Returned owning values copy/move complete
 * fields, while views and callback references retain their documented borrows.
 * @see roswasmcpp::Capability
 * @see roswasmcpp::Node
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <platform/ros/cpp/roswasm/views.hpp>
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3 || ROSWASM_CPP_STANDARD < 20
# include <platform/ros/cpp/roswasm/detail/portable.hpp>
#else
# include <platform/ros/c/roswasm/roswasmc.h>
# include <platform/ros/c/roswasm/session.h>
# include <platform/ros/c/roswasm/action_bundle.h>
# include <platform/ros/cpp/roswasm/scheduler.hpp>
# include <platform/ros/cpp/roswasm/codec.hpp>
# include <functional>
# include <utility>
# include <algorithm>
# include <deque>

/** @brief C++ capability API. Resource objects own handles and must stay in their guest instance. */
# include <platform/ros/c/roswasm/events.h>

namespace roswasmcpp
{
    /** @brief Borrowed immutable byte range for C++20 and newer profiles.
     * @details std::span transfers no storage ownership. Keep backing bytes live
     * and unchanged through each consumer; the count is bytes, without framing.
     * @see roswasmcpp::wire
     */
    using ByteView = std::span<unsigned char const>;
    /** @brief Borrowed counted character bytes for C++20 and newer profiles.
     * @details std::string_view implies neither a terminator nor UTF-8 validation.
     * Retained views require the original storage to outlive all consumers.
     * @see roswasmcpp::ByteView
     */
    using StringView = std::string_view;
    /** @brief Canonical C++20 bytes, complete values and structural codecs.
     * @details Aliases uwvm_ros without changing its public types or framing.
     * Structural helpers do not replace typed validation or host capability policy.
     * @see roswasmcpp::Codec
     */
    namespace wire = ::uwvm_ros;
    /** @brief Numeric resource result with explicit byte-length validity.
     * @details length is meaningful only when has_length is true. A size/error
     * result cannot authorize replay of a possibly consumed request or event.
     * @see roswasmc_result
     */
    using Result = ::roswasmc_result;

    /** @brief Complete owning topic message values for typed resource codecs.
     * @details Host aliases fix canonical/native type identity and endpoint rights.
     * @see roswasmcpp::Codec
     */
    namespace msg
    {
        /** @brief Owning UTF-8 String topic payload.
         * @details Scalar text permits embedded U+0000 under the canonical String
         * contract and is independent of any encode/decode buffer.
         * @see roswasmcpp::Codec<roswasmcpp::msg::String>
         */
        struct String
        {
            /** @brief Complete owning scalar String content bytes.
             * @details Codec bounds content to 4193782 bytes and validates UTF-8.
             * @see roswasmcpp::Codec<roswasmcpp::msg::String>
             */
            std::string data;
        };

        /** @brief Owning Bool topic payload initialized false.
         * @details Uses one canonical byte equal to 0 or 1, not native bool layout.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Bool>
         */
        struct Bool
        {
            /** @brief Boolean topic value, initially false.
             * @details true maps to canonical byte 1 and false to byte 0.
             * @see roswasmcpp::Codec<roswasmcpp::msg::Bool>
             */
            bool data{};
        };

        /** @brief Complete linear/angular Twist value initialized to zero.
         * @details All six binary64 components must be finite; no motion grant,
         * physical limit conversion or frame selection follows from construction.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Twist>
         */
        struct Twist
        {
            /** @brief Finite linear XYZ velocity in metres/second.
             * @details Stored in canonical XYZ order without implicit conversion.
             * @see Twist::angular
             */
            std::array<double, 3> linear{};
            /** @brief Finite angular XYZ velocity in radians/second.
             * @details Physical motion bounds remain host policy.
             * @see Twist::linear
             */
            std::array<double, 3> angular{};
        };

        /** @brief Complete owning Image value using canonical wire fields.
         * @details Includes sequence even for ROS2's sequence-free native Header;
         * Strings and pixel bytes own storage. Encoding/stride interpretation and
         * backend timestamp semantics are checked separately by the host.
         * @see uwvm_ros::image
         */
        using Image = wire::image;
        /** @brief Complete owning timestamped parent-to-child transform value.
         * @details Includes both frame names, XYZ translation in metres and XYZW
         * quaternion. Typed Codec requires finite doubles without normalizing them.
         * @see uwvm_ros::transform
         */
        using Transform = wire::transform;
        /** @brief Owning legacy String-valued parameter-event envelope.
         * @details Carries complete timestamp, kind, node/name and text. Event-source
         * visibility is controlled by an explicit host subscription grant.
         * @see uwvm_ros::parameter_event
         */
        using ParameterEvent = wire::parameter_event;
        /** @brief Owning typed/deletion-only parameter event with all value fields.
         * @details Discriminant selects one scalar/array for kinds 1/2; deletion kind
         * 3 carries no value payload. Unselected owning fields are ignored by encoding.
         * @see uwvm_ros::typed_parameter_event
         */
        using TypedParameterEvent = wire::typed_parameter_event;
    }  // namespace msg

    /** @brief Supported owning service definitions with canonical body codecs.
     * @details Requests/responses are values, not native ROS objects or handles.
     * @see roswasmcpp::ServiceCodec
     */
    namespace srv
    {
        /** @brief Trigger definition with an empty request and success/message response.
         * @details Body framing is separate from server request correlation envelopes.
         * @see roswasmcpp::ServiceCodec<roswasmcpp::srv::Trigger>
         */
        struct Trigger
        {
            /** @brief Empty Trigger request value.
             * @details Canonical body is exactly zero bytes; no native layout is copied.
             * @see Trigger::Response
             */
            struct Request
            {
            };

            /** @brief Complete owning Trigger success/message response body.
             * @details Does not include the service server's request-ID envelope.
             * @see uwvm_ros::service_response
             */
            using Response = wire::service_response;
        };

        /** @brief SetBool definition with Boolean request and success/message response.
         * @details Actual state mutation requires the independently granted host alias.
         * @see roswasmcpp::ServiceCodec<roswasmcpp::srv::SetBool>
         */
        struct SetBool
        {
            /** @brief Complete single-Boolean SetBool request.
             * @details Encodes exactly one 0/1 byte without native structure padding.
             * @see SetBool::Response
             */
            struct Request
            {
                /** @brief Requested Boolean setting, initially false.
                 * @details Encoding this field performs no host mutation by itself.
                 * @see roswasmcpp::ServiceCodec<roswasmcpp::srv::SetBool>
                 */
                bool data{};
            };

            /** @brief Complete owning SetBool success/message response body.
             * @details Uses the same Bool-plus-String representation as Trigger.
             * @see uwvm_ros::service_response
             */
            using Response = wire::service_response;
        };
    }  // namespace srv
    /** @brief Specialization point for complete typed message conversions.
     * @details Supported specializations convert fields explicitly, returning false
     * on validation failure before committing the owning destination. Allocation
     * failures follow standard-library exception/termination policy. Local codecs
     * are synchronous and grant no publication/subscription permission.
     * @tparam T Complete owning message type with an explicit specialization.
     * @see roswasmcpp::Publisher
     */
    template <class T>
    struct Codec;

    /** @brief Canonical scalar UTF-8 String message codec.
     * @details Uses a uint32 byte count and content, allowing embedded U+0000.
     * @see roswasmcpp::msg::String
     */
    template <>
    struct Codec<msg::String>
    {
        /** @brief Encode a complete bounded UTF-8 String into owning bytes.
         * @details Checks UTF-8 and at most 4193782 content bytes before commit.
         * Empty text is valid and encodes as a four-byte zero count.
         * @param[in] value Owning text read only during this synchronous call.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete canonical String encoding.
         * @see Codec<msg::String>::decode
         */
        static bool encode(msg::String const& value, wire::bytes& out)
        {
            if(value.data.size() > 4193782u || !wire::parameter_array_detail::text_valid(value.data, true))
            {
                return false;
            }
            out = wire::string(value.data);
            return true;
        }

        /** @brief Decode exact UTF-8 String bytes into independent owning text.
         * @details Rejects bad framing/trailing bytes and invalid UTF-8. The input
         * is borrowed only during the call; no source view is retained.
         * @param[in] bytes Borrowed complete counted String payload.
         * @param[out] out Owning message destination, unchanged on false.
         * @return True after complete canonical validation and copying.
         * @see wire::decode_string
         */
        static bool decode(std::span<unsigned char const> bytes, msg::String& out)
        {
            msg::String next;
            if(!wire::decode_string(bytes, next.data) || !wire::parameter_array_detail::text_valid(next.data, true))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }
    };

    /** @brief Canonical one-byte Bool topic codec.
     * @details Exactly 0 and 1 are valid wire bytes, independent of native bool.
     * @see roswasmcpp::msg::Bool
     */
    template <>
    struct Codec<msg::Bool>
    {
        /** @brief Encode one Boolean as an owning 0/1 byte.
         * @details Every C++ bool value is representable; no host import occurs.
         * @param[in] value Complete Boolean message for this call.
         * @param[out] out Replaced by the one-byte canonical payload.
         * @return True after commit; allocation failures use library policy.
         * @see Codec<msg::Bool>::decode
         */
        static bool encode(msg::Bool const& value, wire::bytes& out)
        {
            out = wire::boolean(value.data);
            return true;
        }

        /** @brief Decode exactly one canonical Boolean byte.
         * @details Rejects any byte other than 0/1 and all non-one-byte extents.
         * @param[in] bytes Borrowed complete Bool payload.
         * @param[out] out Boolean destination, unchanged on false.
         * @return True for exact canonical Boolean framing/value.
         * @see wire::decode_boolean
         */
        static bool decode(std::span<unsigned char const> bytes, msg::Bool& out)
        {
            return wire::decode_boolean(bytes, out.data);
        }
    };

    /** @brief Typed codec for six finite Twist binary64 components.
     * @details Linear XYZ uses metres/second; angular XYZ uses radians/second.
     * Physical limits and motion grants remain host decisions.
     * @see roswasmcpp::msg::Twist
     */
    template <>
    struct Codec<msg::Twist>
    {
        /** @brief Encode all six finite Twist components in canonical order.
         * @details Validates every component before producing the 48-byte payload.
         * @param[in] value Complete owning linear/angular fields for this call.
         * @param[out] out Owning byte destination, unchanged on false.
         * @return True for six finite values; false for a nonfinite component.
         * @see wire::twist
         */
        static bool encode(msg::Twist const& value, wire::bytes& out)
        {
            std::array<double, 6> fields{};
            for(unsigned i = 0; i < 3; ++i)
            {
                fields[i] = value.linear[i];
                fields[i + 3] = value.angular[i];
            }
            for(auto field: fields)
            {
                if(!std::isfinite(field))
                {
                    return false;
                }
            }
            out = wire::twist(fields);
            return true;
        }

        /** @brief Decode an exact finite Twist into complete owning fields.
         * @details Requires 48 bytes and explicitly rejects every nonfinite
         * component before committing the destination.
         * @param[in] bytes Borrowed complete canonical Twist payload.
         * @param[out] out Owning destination in the original units, unchanged on false.
         * @return True for exact framing and six finite components.
         * @see wire::decode_twist
         */
        static bool decode(std::span<unsigned char const> bytes, msg::Twist& out)
        {
            std::array<double, 6> fields{};
            if(!wire::decode_twist(bytes, fields))
            {
                return false;
            }
            for(auto field: fields)
            {
                if(!std::isfinite(field))
                {
                    return false;
                }
            }
            msg::Twist next;
            for(unsigned i = 0; i < 3; ++i)
            {
                next.linear[i] = fields[i];
                next.angular[i] = fields[i + 3];
            }
            out = next;
            return true;
        }
    };

    /** @brief Complete Image structural codec with owning results.
     * @details Preserves all canonical fields; host admission separately checks
     * encoding/stride/time meaning, identity and per-alias byte limits.
     * @see uwvm_ros::image
     */
    template <>
    struct Codec<msg::Image>
    {
        /** @brief Encode complete Image metadata and exact pixel bytes.
         * @details Uses the wire helper's uint32 length checks; no pixel conversion,
         * metadata inference or additional host-size admission occurs locally.
         * @param[in] value Complete owning Image read only for this call.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete structural encoding, false on wire size failure.
         * @see wire::encode
         */
        static bool encode(msg::Image const& value, wire::bytes& out)
        {
            auto next = wire::encode(value);
            if(next.empty())
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /** @brief Decode complete Image framing into independent owning storage.
         * @details Rejects truncation/trailing bytes and an invalid endian Boolean.
         * Pixel/native metadata semantics remain caller/host responsibilities.
         * @param[in] bytes Borrowed complete canonical Image encoding.
         * @param[out] out Owning metadata/data destination, unchanged on false.
         * @return True for exact supported Image framing.
         * @see wire::decode
         */
        static bool decode(std::span<unsigned char const> bytes, msg::Image& out)
        {
            return wire::decode(bytes, out);
        }
    };

    /** @brief Complete timestamped-transform codec with finite-number validation.
     * @details Preserves both frame names, translation in metres and XYZW order.
     * No quaternion normalization, frame permission or geometric admission occurs.
     * @see roswasmcpp::msg::Transform
     */
    template <>
    struct Codec<msg::Transform>
    {
        /** @brief Encode all transform fields after validating seven finite doubles.
         * @details Host policy separately enforces frame names, translation bounds,
         * quaternion norm and total payload quota; local wire lengths are uint32.
         * @param[in] value Complete owning timestamp/frame/translation/quaternion.
         * @param[out] out Owning byte destination, unchanged on false.
         * @return True for finite components and complete structural encoding.
         * @see wire::encode
         */
        static bool encode(msg::Transform const& value, wire::bytes& out)
        {
            for(auto number: value.translation)
            {
                if(!std::isfinite(number))
                {
                    return false;
                }
            }
            for(auto number: value.quaternion)
            {
                if(!std::isfinite(number))
                {
                    return false;
                }
            }
            auto next = wire::encode(value);
            if(next.empty())
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /** @brief Decode a complete transform and reject nonfinite components.
         * @details Validates structural framing, then all seven doubles in a
         * temporary before transferring owning Strings and numeric fields.
         * @param[in] bytes Borrowed exact canonical transform payload.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete finite transform without host admission.
         * @see wire::decode
         */
        static bool decode(std::span<unsigned char const> bytes, msg::Transform& out)
        {
            msg::Transform next;
            if(!wire::decode(bytes, next))
            {
                return false;
            }
            for(auto number: next.translation)
            {
                if(!std::isfinite(number))
                {
                    return false;
                }
            }
            for(auto number: next.quaternion)
            {
                if(!std::isfinite(number))
                {
                    return false;
                }
            }
            out = std::move(next);
            return true;
        }
    };

    /** @brief Decode-only legacy String parameter-event message adapter.
     * @details Wraps the complete wire decoder for event subscriptions. Host source
     * visibility/type authority is independent of this local conversion.
     * @see roswasmcpp::msg::ParameterEvent
     */
    template <>
    struct Codec<msg::ParameterEvent>
    {
        /** @brief Decode all legacy parameter-event fields into owning storage.
         * @details Uses exact wire framing/kind checks; this adapter does not add
         * typed-event name/time validation or a host mutation operation.
         * @param[in] bytes Borrowed complete legacy event payload.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for complete supported legacy event framing.
         * @see wire::decode
         */
        static bool decode(std::span<unsigned char const> bytes, msg::ParameterEvent& out)
        {
            return wire::decode(bytes, out);
        }
    };

    /** @brief Complete owning typed/deletion-only parameter-event codec.
     * @details Uses canonical time/name/kind/tag validation and complete selected
     * scalar/array fields, with no host parameter read/write by local conversion.
     * @see roswasmcpp::msg::TypedParameterEvent
     */
    template <>
    struct Codec<msg::TypedParameterEvent>
    {
        /** @brief Encode the selected complete typed event payload and metadata.
         * @details Enforces signed-32-bit nonnegative seconds, normalized nanos,
         * names, event kind and tag-specific bounds; deletion has no value payload.
         * @param[in] value Owning event with its selected field initialized.
         * @param[out] out Owning bytes, unchanged on false.
         * @return True after full canonical event validation and encoding.
         * @see wire::encode_typed_parameter_event
         */
        static bool encode(msg::TypedParameterEvent const& value, wire::bytes& out)
        {
            return wire::encode_typed_parameter_event(value, out);
        }

        /** @brief Decode a complete typed/deletion event into owning fields.
         * @details Validates exact framing, time/name/kind/tag and selected payload;
         * unselected fields retain defaults and no input views escape the call.
         * @param[in] bytes Borrowed complete event payload.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete canonical typed/deletion-only event.
         * @see wire::decode_typed_parameter_event
         */
        static bool decode(std::span<unsigned char const> bytes, msg::TypedParameterEvent& out)
        {
            return wire::decode_typed_parameter_event(bytes, out);
        }
    };

    /** @brief Move-only C++20 capability borrowing one stationary C context.
     * @details Owns a handle but retains the original context pointer: the context
     * and immutable backend table must outlive cleanup. Moves transfer the handle
     * without rebinding that borrow. An actual close/revoke import clears the local
     * handle even on transport error; a missing local callback retains it. Callers
     * serialize access. Raw methods return their fresh C result without substituting
     * the cached acquisition error; typed wrappers inspect error() explicitly.
     * @see Capability::close
     */
    class Capability
    {
        friend class EventStream;
        friend class ServiceAvailability;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        /** @brief Create an empty owner without a context or host operation.
         * @details error() initially returns zero while is_open() returns false.
         * Raw operations on an empty owner return the applicable C handle error.
         * @see Capability::is_open
         */
        Capability() = default;

        /** @brief Attempt one explicit alias acquisition using a borrowed context.
         * @details C open checks backend/ABI/alias and host policy. Retains no alias
         * text, but the stationary context object and backend table must outlive
         * this owner. Inspect error() before typed use.
         * @param[in] context Stable caller-owned C context borrowed through cleanup.
         * @param[in] alias Exact granted alias bytes, borrowed only for this call.
         * @see roswasmc_open
         */
        Capability(roswasmc_context const& context, std::string_view alias)
        {
            roswasmc_capability_init(&cap_, &context);
            error_ = roswasmc_open(&cap_, alias.data(), alias.size());
        }

        /** @brief Acquire a request alias only after local role/operation validation.
         * @details Invalid role yields INVALID, excessive byte bound TOO_LARGE and
         * absent operation support its exact local error, without importing open.
         * Successful prechecks still require the exact host alias grant.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact request alias for this acquisition.
         * @param[in] operation Required canonical request operation.
         * @param[in] valid_role Caller-computed validity predicate, default true.
         * @param[in] maximum_bytes Byte bound in 0..4193786, default 4193786.
         * @see roswasmc_check_operation
         */
        Capability(roswasmc_context const& context,
                   std::string_view alias,
                   roswasmc_operation operation,
                   bool valid_role = true,
                   size_t maximum_bytes = 4193786u)
        {
            roswasmc_capability_init(&cap_, &context);
            error_ = !valid_role                ? static_cast<uint32_t>(UWVM_ROS_INVALID)
                     : maximum_bytes > 4193786u ? static_cast<uint32_t>(UWVM_ROS_TOO_LARGE)
                                                : roswasmc_check_operation(&context, operation);
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, alias.data(), alias.size());
            }
        }

        /** @brief Build an alias owner after a caller-supplied validation status.
         * @details Zero validation performs ordinary acquisition; nonzero validation
         * retains that error and a borrowed context without importing open.
         * @param[in] context Stationary C context/backend borrowed by the result.
         * @param[in] alias Exact alias, read only when acquisition is attempted.
         * @param[in] validation_error Precomputed local error, zero to attempt open.
         * @return Move-only owner containing acquisition or validation status.
         * @see Capability::error
         */
        static Capability checked(roswasmc_context const& context, std::string_view alias, uint32_t validation_error)
        {
            if(!validation_error)
            {
                return Capability{context, alias};
            }
            Capability result;
            roswasmc_capability_init(&result.cap_, &context);
            result.error_ = validation_error;
            return result;
        }

        /** @brief Reject copying a capability owner at compile time.
         * @details The unnamed source cannot duplicate a handle or its cleanup duty.
         * @see Capability::Capability(Capability&&)
         */
        Capability(Capability const&) = delete;
        /** @brief Reject copy replacement of a capability owner at compile time.
         * @details The unnamed source cannot create shared handle ownership.
         * @see Capability::replace_checked
         */
        Capability& operator= (Capability const&) = delete;

        /** @brief Transfer a handle/error while preserving the original context borrow.
         * @details Clears the source handle without importing cleanup. Moving an
         * actively borrowed owner is a lifetime error; borrowers must first detach.
         * @param[in,out] other Idle owner to consume, left with handle zero.
         * @see Capability::replace_checked
         */
        Capability(Capability&& other) noexcept : cap_{other.cap_}, error_{other.error_}
        {
            other.cap_.handle = 0;
        }

        /** @brief Move-replace this owner, discarding the prior cleanup status.
         * @details Calls replace_checked; use that method when cleanup status must
         * be retained. Self-assignment is a no-op.
         * @param[in,out] other Idle owner to consume unless it is this object.
         * @return Reference to this destination owner.
         * @see Capability::replace_checked
         */
        Capability& operator= (Capability&& other) noexcept
        {
            replace_checked(std::move(other));
            return *this;
        }

        /** @brief Move-replace this owner and expose one prior close result.
         * @details Attempts close if the destination has a handle, then overwrites
         * it regardless of that result. In particular, a locally unsupported close
         * can retain the old C handle before it is overwritten here; callers needing
         * recovery must explicitly close and inspect status before replacement.
         * @param[in,out] other Owner consumed and left with handle zero.
         * @return Prior close status, or zero for an empty destination/self-assignment.
         * @see Capability::close
         */
        uint32_t replace_checked(Capability&& other) noexcept
        {
            if(this == &other)
            {
                return 0;
            }
            uint32_t code = cap_.handle ? roswasmc_close(&cap_) : 0;
            cap_ = other.cap_;
            error_ = other.error_;
            other.cap_.handle = 0;
            return code;
        }

        /** @brief Attempt one close of a retained handle before destruction.
         * @details Discards status and performs no retry. Context/backend must remain
         * alive through the attempt; use explicit close to retain cleanup failures.
         * @see Capability::close
         */
        ~Capability()
        {
            if(cap_.handle)
            {
                roswasmc_close(&cap_);
            }
        }

        /** @brief Inspect the cached construction/validation error.
         * @details Does not query host liveness or replace later raw C operation
         * results. An empty default owner has zero error but no acquired handle.
         * @return Stored acquisition/precheck status.
         * @see Capability::is_open
         */
        uint32_t error() const noexcept
        {
            return error_;
        }

        /** @brief Inspect the opaque instance-owned handle without transfer.
         * @details Numeric bits cannot duplicate lifetime/rights or confer authority
         * in another guest instance. Zero means locally empty.
         * @return Current handle bits.
         * @see Capability::is_open
         */
        uint64_t handle() const noexcept
        {
            return cap_.handle;
        }

        /** @brief Inspect whether a nonzero local handle remains.
         * @details Does not query host-side revocation, expiry or readiness.
         * @return True for a nonzero local capability handle.
         * @see Capability::handle
         */
        bool is_open() const noexcept
        {
            return cap_.handle != 0;
        }

        /** @brief Attempt one close and retire an actually imported handle.
         * @details C local BAD_HANDLE/UNSUPPORTED rejection retains ownership. Once
         * a close callback runs, local handle is zeroed even on transport failure.
         * @return Exact local/host cleanup status, without retries.
         * @see roswasmc_close
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /** @brief Attempt independently authorized alias revocation once.
         * @details Host policy controls revocation. A missing local callback returns
         * UNSUPPORTED while retaining the handle for possible ordinary close; an
         * actual revoke callback retires local ownership even on an error.
         * @return Exact C/local/host revocation status.
         * @see roswasmc_revoke
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }

        /** @brief Publish one complete canonical topic payload without encoding.
         * @details Uses the current C owner rather than its cached open error.
         * Host alias/type/endpoint/size policy remains authoritative; no retry occurs.
         * @param[in] bytes Borrowed complete payload for this synchronous call.
         * @return Exact C/local/host publication status.
         * @see roswasmc_publish
         */
        uint32_t publish_bytes(std::span<unsigned char const> bytes) const
        {
            return roswasmc_publish(&cap_, bytes.data(), bytes.size());
        }

        /** @brief Activate the explicitly granted topic subscription queue once.
         * @details Uses the current owner and backend subscribe callback, without
         * polling, installing a worker or inheriting publication rights.
         * @return Exact C/local/host subscribe status.
         * @see roswasmc_subscribe
         */
        uint32_t subscribe() const
        {
            return roswasmc_subscribe(&cap_);
        }

        /** @brief Activate the owned service-advertise role once.
         * @details Does not grant the independent response role or install a thread.
         * @return Exact current-owner C/local/host advertise status.
         * @see roswasmc_service_advertise
         */
        uint32_t advertise_service() const
        {
            return roswasmc_service_advertise(&cap_);
        }

        /** @brief Activate an explicitly granted parameter-event queue.
         * @details Backend support and node/name visibility remain host policy;
         * unsupported backends return their actual error rather than emulated data.
         * @return Exact current-owner C/local/host activation status.
         * @see roswasmc_parameter_subscribe_events
         */
        uint32_t subscribe_parameter_events() const
        {
            return roswasmc_parameter_subscribe_events(&cap_);
        }

        /** @brief Attempt one bounded raw poll without resizing or replay.
         * @details Interpret payload only for a successful valid returned length;
         * a required-length report does not itself authorize retrying a consumed
         * event. Raw calls return current C status, not the cached acquisition error.
         * @param[out] output Borrowed writable byte range for this call.
         * @return Exact error/length/has_length result under C/host bounds.
         * @see roswasmc_poll
         */
        Result poll(std::span<unsigned char> output) const
        {
            return roswasmc_poll(&cap_, output.data(), output.size());
        }

        /** @brief Submit one explicit operation using bounded caller storage.
         * @details Host policy binds role/type/authority. An operation can consume
         * input or mutate state before a reply-size/transport failure; no error
         * triggers automatic resubmission. Obey C input/output nonoverlap rules.
         * @param[in] operation Canonical request operation selector.
         * @param[in] input Borrowed complete canonical request for this call.
         * @param[out] output Borrowed writable reply storage for this call.
         * @return Exact C result, with length usable only when has_length is true.
         * @see roswasmc_request
         */
        Result request(roswasmc_operation operation, std::span<unsigned char const> input, std::span<unsigned char> output) const
        {
            return roswasmc_request(&cap_, operation, input.data(), input.size(), output.data(), output.size());
        }

        /** @brief Pack a counted String and submit one host-authorized log operation.
         * @details The local wire helper checks uint32 length framing, not UTF-8;
         * supply valid text under the host's log policy. Current owner, host logger,
         * severity and quota govern admission. No cached open-error substitution.
         * @param[in] text Borrowed content bytes for this call; no terminator needed.
         * @return INVALID for local framing failure or exact C/local/host log status.
         * @see roswasmc_log
         */
        uint32_t log(std::string_view text) const
        {
            auto bytes = wire::string(text);
            if(bytes.empty())
            {
                return UWVM_ROS_INVALID;
            }
            return roswasmc_log(&cap_, reinterpret_cast<char const*>(bytes.data()), bytes.size());
        }
    };

    /** @brief Copied event-poll status and conditionally valid decoded header.
     * @details Returned by EventStream::poll. Interpret header only after successful
     * result status; payload remains in caller-owned output storage. Ordinary
     * default initialization alone does not initialize result or prove a poll ran.
     * @see roswasmcpp::EventStream::poll
     */
    struct EventPoll
    {
        /** @brief Exact event poll error and explicit byte-length validity.
         * @details Only an actual returned result supplies operation status; errors
         * never imply a valid payload or permission to replay it automatically.
         * @see roswasmc_result
         */
        Result result;
        /** @brief Complete decoded header, usable only for result.error zero.
         * @details Header owns metadata; its payload bytes remain separately in the
         * caller's poll buffer and must be copied before that buffer is reused.
         * @see roswasmc_event_header
         */
        roswasmc_event_header header{};
    };

    /** @brief Independent observer/source association with exact local audit binding.
     * @details Both Capability owners and the extension table must outlive this noncopyable
     * facade. It opens no aliases and grants no rights. Source cleanup leaves the
     * independently owned observer available for permitted closed/error metadata.
     * Use existing Session/Node ownership for grouped checked cleanup.
     * Serialize access and keep the original C contexts/backend alive through all
     * stream use. Dispatch is synchronous and creates no worker or retry loop.
     * @see roswasmc_event_watch
     */
    class EventStream
    {
        Capability& observer_;
        Capability& source_;
        roswasmc_event_backend const& api_;
        uint64_t source_handle_{}, correlation_{}, sequence_{}, instance_{}, session_{};
        uint32_t error_{};
        bool dispatching_{};

    public:
        /** @brief Bind independently owned observer/source roles once.
         * @details Owners must use the same stationary C context and distinct live
         * handles. Backend/version, alias authority and correlation support are
         * checked by the explicit C event watch. Inspect error() after construction.
         * @param[in,out] observer Borrowed stationary observer owner.
         * @param[in,out] source Borrowed stationary source owner.
         * @param[in] api Supported immutable event dispatch table, borrowed for lifetime.
         * @param[in] correlation Optional action correlation filter, zero by default.
         * @see roswasmc_event_watch
         */
        EventStream(Capability& observer, Capability& source, roswasmc_event_backend const& api, uint64_t correlation = 0) :
            observer_{observer}, source_{source}, api_{api}, source_handle_{source.handle()}, correlation_{correlation},
            error_{roswasmc_event_watch(&api_, &observer_.cap_, &source_.cap_, correlation)}
        {
        }

        /** @brief Reject copying a stream's borrowed ordered-event state.
         * @details The unnamed source cannot duplicate sequence/correlation tracking.
         * @see EventStream::EventStream
         */
        EventStream(EventStream const&) = delete;
        /** @brief Reject replacement by copying another event association.
         * @details The unnamed source cannot silently rebind live capability borrows.
         * @see EventStream::EventStream
         */
        EventStream& operator= (EventStream const&) = delete;

        /** @brief Inspect the recorded event-watch association status.
         * @details Does not reopen or query later host readiness/liveness.
         * @return Stored local/watch construction error.
         * @see EventStream::EventStream
         */
        uint32_t error() const noexcept
        {
            return error_;
        }

        /** @brief Poll and validate at most one complete ordered event envelope.
         * @details Uses explicit bounded storage once, then verifies backend/source,
         * contiguous sequence from 1 and stable instance/session. A configured
         * nonzero correlation rejects different nonzero event correlations; zero
         * event correlation is still accepted. Commits sequence state only after
         * complete validation. No callback or automatic repoll occurs here.
         * @param[out] output Borrowed writable envelope bytes, including its 64-byte
         * header; backend size limits still apply.
         * @return Exact status and conditionally valid header; AGAIN means idle,
         * CONFLICT means active dispatch, and payload is ignored on every error.
         * @see roswasmc_event_poll
         */
        EventPoll poll(std::span<unsigned char> output)
        {
            if(dispatching_)
            {
                return {
                    {UWVM_ROS_CONFLICT, 0, 0},
                    {}
                };
            }
            if(error_)
            {
                return {
                    {error_, 0, 0},
                    {}
                };
            }
            auto result = roswasmc_event_poll(&api_, &observer_.cap_, output.data(), output.size());
            EventPoll value{result, {}};
            if(result.error)
            {
                return value;
            }
            uint32_t error = roswasmc_event_decode(output.data(), result.length, &value.header);
            auto const& h = value.header;
            if(!error &&
               (h.backend != api_.version || h.source != source_handle_ || sequence_ == UINT64_MAX || h.sequence != sequence_ + 1 ||
                (instance_ && (h.instance != instance_ || h.session != session_)) || (correlation_ && h.correlation && h.correlation != correlation_)))
            {
                error = UWVM_ROS_INVALID;
            }
            if(error)
            {
                value.result.error = error;
                return value;
            }
            sequence_ = h.sequence;
            instance_ = h.instance;
            session_ = h.session;
            return value;
        }

        /** @brief Dispatch a complete bound event on the caller thread once.
         * @details The body span expires when the callback returns. Source/session/sequence
         * binding is committed first; callback exceptions propagate without replay.
         * The scope guard restores dispatch state on ordinary exception unwinding.
         * Owners must outlive the stream and must not be moved/retired directly
         * while borrowed. Facade poll/close/revoke refuse17 during this callback.
         * @param[out] output Writable complete-envelope storage, live through callback.
         * @param[in] callback Nonempty synchronous function; header/payload are borrowed
         * only during this invocation and retained references must be copied.
         * @return INVALID for empty callback, CONFLICT for reentry, exact poll error,
         * or zero after one invocation. Callback exceptions are not numeric results.
         * @see EventStream::poll
         */
        uint32_t dispatch(std::span<unsigned char> output, std::function<void(roswasmc_event_header const&, std::span<unsigned char const>)> const& callback)
        {
            if(dispatching_)
            {
                return UWVM_ROS_CONFLICT;
            }
            if(!callback)
            {
                return UWVM_ROS_INVALID;
            }
            auto event = poll(output);
            if(event.result.error)
            {
                return event.result.error;
            }

            struct Reset
            {
                bool& value;

                ~Reset()
                {
                    value = false;
                }
            };

            dispatching_ = true;
            Reset reset{dispatching_};
            callback(event.header, {output.data() + 64, static_cast<size_t>(event.header.payload_bytes)});
            return 0;
        }

        /** @brief Read one finite event-readiness snapshot without consuming data.
         * @details Readiness supplies no reserved credit or host grant; later submit
         * can still return AGAIN. No background poll or wait is started.
         * @param[out] out Complete readiness counters, interpreted only on success.
         * @return Stored watch error or exact C/backend readiness status.
         * @see roswasmc_event_ready
         */
        uint32_t ready(roswasmc_event_readiness& out) const
        {
            return error_ ? error_ : roswasmc_event_ready(&api_, &observer_.cap_, &out);
        }

        /** @brief Admit an asynchronous service request once; completion is an event.
         * @details Uses the explicit source/observer C association and service-submit
         * grant. Returns admission/correlation without waiting for completion; no
         * uncertain request is replayed automatically.
         * @param[in] input Borrowed complete canonical service body for this call.
         * @param[out] request_id Backend request correlation, interpreted only on success.
         * @return Stored watch error or exact C/local/host submit status.
         * @see roswasmc_service_submit
         */
        uint32_t submit(std::span<unsigned char const> input, uint64_t& request_id) const
        {
            return error_ ? error_ : roswasmc_service_submit(&api_, &source_.cap_, &observer_.cap_, input.data(), input.size(), &request_id);
        }

        /** @brief Close the explicit borrowed observer owner once while idle.
         * @details Active dispatch returns CONFLICT. Source lifetime/ownership stays
         * with its caller; local unsupported-close rules follow Capability.
         * @return CONFLICT or the exact observer close status.
         * @see Capability::close
         */
        uint32_t close_checked()
        {
            return dispatching_ ? static_cast<uint32_t>(UWVM_ROS_CONFLICT) : observer_.close();
        }

        /** @brief Revoke the observer alias through its independently granted role.
         * @details Active dispatch returns CONFLICT. No source or cancel-any role
         * is inferred by this observer cleanup operation.
         * @return CONFLICT or exact observer revoke status.
         * @see Capability::revoke
         */
        uint32_t revoke_checked()
        {
            return dispatching_ ? static_cast<uint32_t>(UWVM_ROS_CONFLICT) : observer_.revoke();
        }
    };

    /** @brief Unified event entity accepted by Executor::add without legacy polling.
     * @details Construct the stream from two explicitly opened owners first. This entity
     * borrows that stream and owns only fixed application-selected scratch/callback
     * state; it opens no resource. Remove its Executor registration before moving,
     * destroying or closing it. Service/Action bodies retain their existing codecs.
     * Callback snapshots survive replacement through the active synchronous pass;
     * borrowed captures and header/payload views retain caller-managed lifetimes.
     * @see roswasmcpp::EventStream
     */
    class EventSubscription
    {
        EventStream& stream_;
        wire::bytes buffer_;
        uint32_t error_{};
        using Callback = std::function<void(roswasmc_event_header const&, std::span<unsigned char const>)>;
        std::shared_ptr<Callback> callback_;

    public:
        /** @brief Allocate bounded envelope storage and retain one callback snapshot.
         * @details Capacity includes the 64-byte header and cannot enlarge host
         * quotas. Registration performs no poll; inspect error() before dispatch.
         * @param[in,out] stream Stationary borrowed association that outlives this entity.
         * @param[in] capacity Complete envelope bytes in 64..4194304.
         * @param[in] callback Function object to retain, possibly empty until replaced.
         * @see EventSubscription::on_event
         */
        EventSubscription(EventStream& stream, size_t capacity, Callback callback) :
            stream_{stream}, buffer_(capacity >= 64 && capacity <= 4194304u ? capacity : 0),
            error_{capacity < 64         ? static_cast<uint32_t>(UWVM_ROS_INVALID)
                   : capacity > 4194304u ? static_cast<uint32_t>(UWVM_ROS_TOO_LARGE)
                                         : stream.error()},
            callback_{callback ? std::make_shared<Callback>(std::move(callback)) : nullptr}
        {
        }

        /** @brief Reject copying the entity's stream borrow and dispatch storage.
         * @details The unnamed source cannot create a duplicate executor entity.
         * @see EventSubscription::EventSubscription
         */
        EventSubscription(EventSubscription const&) = delete;
        /** @brief Reject copy replacement while registration may retain this identity.
         * @details The unnamed source cannot silently rebind a borrowed EventStream.
         * @see EventSubscription::EventSubscription
         */
        EventSubscription& operator= (EventSubscription const&) = delete;

        /** @brief Inspect cached setup status and callback availability.
         * @details Returns INVALID for no callback; later dispatch/cleanup errors
         * are returned by their calls instead of changing this cached setup error.
         * @return Setup/stream error, INVALID for empty callback, or zero.
         * @see EventSubscription::poll_once
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : callback_ ? 0 : UWVM_ROS_INVALID;
        }

        /** @brief Replace the owning callback snapshot for future event passes.
         * @details Empty function clears future dispatch. The active shared snapshot
         * remains alive through invocation; borrowed captures remain caller-owned.
         * @param[in] callback Function object consumed for later synchronous dispatch.
         * @see EventSubscription::poll_once
         */
        void on_event(Callback callback)
        {
            callback_ = callback ? std::make_shared<Callback>(std::move(callback)) : nullptr;
        }

        /** @brief Dispatch at most one complete validated event with owned storage.
         * @details Pins the callback snapshot and delegates bounds/ordering/reentry
         * checks to EventStream. Header/payload references expire at callback return.
         * @return Setup error, exact dispatch/poll error such as AGAIN/TOO_LARGE,
         * or zero after one callback. No background work or retry occurs.
         * @see EventStream::dispatch
         */
        uint32_t poll_once()
        {
            if(error())
            {
                return error();
            }
            auto callback = callback_;
            return stream_.dispatch(buffer_, *callback);
        }

        /** @brief Attempt checked idle close of the stream's observer owner.
         * @details Remove executor registration before owner/entity destruction;
         * closing the observer does not destroy the borrowed stream object.
         * @return Exact checked-close status, including CONFLICT during dispatch.
         * @see EventStream::close_checked
         */
        uint32_t close()
        {
            return stream_.close_checked();
        }

        /** @brief Revoke the stream's observer alias through its explicit host grant.
         * @details Delegates checked idle cleanup without inferring source rights.
         * @return Exact checked-revoke status, including CONFLICT during dispatch.
         * @see EventStream::revoke_checked
         */
        uint32_t revoke()
        {
            return stream_.revoke_checked();
        }
    };

    /** @brief Shared local factory/cleanup helpers; no backend operation is simulated. */
    namespace detail
    {
        /** @brief Intrinsic polling lease independent of an Executor registration.
         * Entry is checked before construction; exception unwinding resets the guard.
         * Moving/destroying the active resource remains a caller lifetime error.
         */
        struct PollLease
        {
            bool& busy;

            explicit PollLease(bool& state) : busy{state}
            {
                busy = true;
            }

            ~PollLease()
            {
                busy = false;
            }

            PollLease(PollLease const&) = delete;
            PollLease& operator= (PollLease const&) = delete;
        };

        /** @brief Check a two-owner server transaction before any host open. */
        inline uint32_t server_validation(roswasmc_context const& context, std::string_view advertise, std::string_view respond, size_t capacity, bool service)
        {
            if(!context.backend || advertise.empty() || respond.empty() || advertise.size() > 255 || respond.size() > 255 || advertise == respond)
            {
                return UWVM_ROS_INVALID;
            }
            if(capacity > 4193786u)
            {
                return UWVM_ROS_TOO_LARGE;
            }
            if(!context.backend->poll || (service && !context.backend->advertise_service))
            {
                return UWVM_ROS_UNSUPPORTED;
            }
            auto error = roswasmc_check_operation(&context, service ? ROSWASMC_SERVICE_RESPOND : ROSWASMC_ACTION_ADVERTISE);
            if(error || service)
            {
                return error;
            }
            return roswasmc_check_operation(&context, ROSWASMC_ACTION_RESPOND);
        }

        /** @brief Retire one live C++ owner while retaining independent cleanup errors. */
        inline uint32_t close_owner(Capability& owner, roswasmc_cleanup_report& report)
        {
            if(!owner.is_open())
            {
                return 0;
            }
            auto code = owner.close();
            ++report.attempted;
            if(code)
            {
                ++report.failed;
                if(!report.cleanup_error)
                {
                    report.cleanup_error = code;
                }
            }
            return code;
        }

        /** @brief Explicit alias mutation, attempted once independently for each owner. */
        inline uint32_t revoke_owner(Capability& owner, roswasmc_cleanup_report& report)
        {
            if(!owner.is_open())
            {
                return 0;
            }
            auto code = owner.revoke();
            ++report.attempted;
            if(code)
            {
                ++report.failed;
                if(!report.cleanup_error)
                {
                    report.cleanup_error = code;
                }
            }
            return code;
        }
    }  // namespace detail

    /** @brief Bounded stable ownership session over an explicit backend.
     * @details Constructing it only reserves guest memory. It opens no aliases or native
     * node and inherits no rights. Session owns only the Capability slots returned
     * by open/open_for; typed Node resources remain independently owned.
     * Session/context must outlive borrowed slots. No session copy/move is allowed.
     * Maximum slot count is caller-selected rather than host permission. Serialize
     * use; allocation failure follows the selected standard-library policy.
     * @see Session::open
     */
    class Session
    {
        roswasmc_context context_;
        std::vector<Capability> owners_;
        size_t capacity_;
        Context* lifecycle_{};

    public:
        /** @brief Returned acquisition status and borrowed stable slot pointer.
         * @details owner is nonnull only on a successful returned open result.
         * Default initialization alone performs no acquisition or status assignment.
         * @see Session::open
         */
        struct OpenResult
        {
            /** @brief Exact local/host alias acquisition status.
             * @details Zero accompanies a successful returned borrowed owner pointer.
             * @see OpenResult::owner
             */
            uint32_t error;
            /** @brief Borrowed acquired slot, null on a returned failure.
             * @details Session::close or destruction invalidates every slot pointer;
             * individual owner cleanup can retire its handle earlier.
             * @see OpenResult::error
             */
            Capability* owner;
        };

        /** @brief Reserve an explicitly bounded number of owner slots; no ROS call.
         * @details Allocation failure follows the target standard library policy. The C
         * session.h variant uses caller storage when allocation must be avoided.
         * This overload has no borrowed Context shutdown gate.
         * @param[in] backend Immutable dispatch table borrowed for this session's life.
         * @param[in] maximum_owners Maximum retained slot count, including zero;
         * must fit vector capacity/allocation limits. No 1048576 local cap is applied
         * by this modern constructor; host resource quotas remain independent.
         * @see Session::open
         */
        explicit Session(roswasmc_backend const& backend, size_t maximum_owners) : context_{&backend}, capacity_{maximum_owners}
        {
            owners_.reserve(maximum_owners);
        }

        /** @brief Reserve slots associated with a borrowed local shutdown Context.
         * @details A stopped Context blocks later opens while existing handles keep
         * their cleanup path. Context/backend must outlive this stationary session.
         * @param[in,out] context Caller-owned Context borrowed for lifecycle checks.
         * @param[in] maximum_owners Slot bound subject to vector/allocation limits.
         * @see Session::Session(roswasmc_backend const&, size_t)
         */
        explicit Session(Context& context, size_t maximum_owners) : Session(context.backend(), maximum_owners)
        {
            lifecycle_ = &context;
        }

        /** @brief Reject copying stable session slots at compile time.
         * @details The unnamed source cannot duplicate owned capability handles.
         * @see Session::open
         */
        Session(Session const&) = delete;
        /** @brief Reject copy replacement of a stationary session.
         * @details The unnamed source cannot invalidate existing slot borrows.
         * @see Session::context
         */
        Session& operator= (Session const&) = delete;
        /** @brief Reject moving a session whose context/slots can be borrowed.
         * @details The unnamed source remains stationary by compile-time contract.
         * @see Session::context
         */
        Session(Session&&) = delete;
        /** @brief Reject move replacement of stable session/context storage.
         * @details The unnamed source cannot rebind existing slot users silently.
         * @see Session::context
         */
        Session& operator= (Session&&) = delete;

        /** @brief Borrow the stable selected inline dispatch context.
         * @details The reference and dependent Capability owners require this Session
         * to outlive their cleanup; its backend table remains externally owned.
         * @return Immutable context reference, with no authority transfer.
         * @see Session::Session
         */
        roswasmc_context const& context() const noexcept
        {
            return context_;
        }

        /** @brief Check exact core ABI v1 and the borrowed Context lifecycle gate.
         * @details Calls only the explicit ABI-version callback; does not acquire a
         * resource or prove any specific operation/host grant is supported.
         * @return REVOKED when stopped, UNSUPPORTED for absent/non-v1 ABI, or zero.
         * @see roswasmc_backend
         */
        uint32_t check_abi() const
        {
            return lifecycle_ && !lifecycle_->running()   ? UWVM_ROS_REVOKED
                   : !context_.backend->abi_version       ? UWVM_ROS_UNSUPPORTED
                   : context_.backend->abi_version() == 1 ? 0
                                                          : UWVM_ROS_UNSUPPORTED;
        }

        /** @brief Open one alias transactionally without exceeding reserved storage.
         * @details Capacity is checked before an import; a failed open exposes no owner.
         * Slots never move while alive, because reserve fixes maximum capacity.
         * Individually closing a slot does not reclaim it until Session::close.
         * @param[in] alias Exact granted alias bytes borrowed for this acquisition.
         * @return Exact status and a borrowed slot pointer, null on failure.
         * @see Session::OpenResult
         */
        OpenResult open(std::string_view alias)
        {
            if(lifecycle_ && !lifecycle_->running())
            {
                return {UWVM_ROS_REVOKED, nullptr};
            }
            if(owners_.size() >= capacity_)
            {
                return {UWVM_ROS_TOO_LARGE, nullptr};
            }
            Capability next{context_, alias};
            if(next.error())
            {
                return {next.error(), nullptr};
            }
            owners_.push_back(std::move(next));
            return {0, &owners_.back()};
        }

        /** @brief Check one request operation before opening its alias slot.
         * @details Context stop and operation support are checked before ordinary
         * open; supported dispatch still requires the exact host alias grant.
         * @param[in] alias Borrowed exact granted request alias.
         * @param[in] operation Required canonical request operation selector.
         * @return Exact check/open status and borrowed slot, null on failure.
         * @see roswasmc_check_operation
         */
        OpenResult open_for(std::string_view alias, roswasmc_operation operation)
        {
            if(lifecycle_ && !lifecycle_->running())
            {
                return {UWVM_ROS_REVOKED, nullptr};
            }
            auto code = roswasmc_check_operation(&context_, operation);
            return code ? OpenResult{code, nullptr} : open(alias);
        }

        /** @brief Close all live slots in reverse order and expose every requested status.
         * @details Undersized nonempty statuses fails before cleanup. Otherwise
         * attempts each live owner once through Capability::close, then clears all
         * slots even on reported failure and invalidates their pointers. Clearing
         * can also trigger best-effort Capability destruction for locally retained
         * unsupported handles; a report does not promise recoverable slot ownership.
         * Counts describe local owner attempts, not proof of actual host imports.
         * @param[out] statuses Optional independent writable array of at least size()
         * entries in acquisition order; empty requests aggregate reporting only.
         * @param[in] primary_error Existing primary failure retained independently.
         * @return Complete primary/cleanup status and attempted/failed owner counts.
         * @see roswasmc_cleanup_report
         */
        roswasmc_cleanup_report close(std::span<uint32_t> statuses = {}, uint32_t primary_error = 0)
        {
            auto report = roswasmc_cleanup_init(primary_error);
            if(!statuses.empty() && statuses.size() < owners_.size())
            {
                report.cleanup_error = UWVM_ROS_INVALID;
                return report;
            }
            for(size_t n = owners_.size(); n; --n)
            {
                auto code = detail::close_owner(owners_[n - 1], report);
                if(!statuses.empty())
                {
                    statuses[n - 1] = code;
                }
            }
            owners_.clear();
            return report;
        }

        /** @brief Count retained slots, including individually closed capabilities.
         * @details Per-slot close does not reclaim vector entries; Session::close
         * clears them together and invalidates all borrowed slot pointers.
         * @return Current retained slot count, at most the construction maximum.
         * @see Session::open
         */
        size_t size() const noexcept
        {
            return owners_.size();
        }
    };

    /** @brief Typed publisher backed by one explicitly granted capability.
     * @details Encodes a complete value before one host publication. Host policy
     * fixes topic/type/endpoint/QoS and bounds. Original C context/backend must
     * outlive the publisher; calls are synchronous and caller-serialized.
     * @tparam Message Complete owning message with a Codec specialization.
     * @see roswasmcpp::Codec
     */
    template <class Message>
    class Publisher
    {
        Capability capability_;

    public:
        /** @brief Check backend publish support and acquire one topic alias.
         * @details Local failure prevents open. Inspect error() before publication;
         * no endpoint is created or selected from the C++ message type alone.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact granted topic.publish alias.
         * @see Capability::checked
         */
        Publisher(roswasmc_context const& context, std::string_view alias) :
            capability_{Capability::checked(context,
                                            alias,
                                            !context.backend            ? UWVM_ROS_INVALID
                                            : !context.backend->publish ? UWVM_ROS_UNSUPPORTED
                                                                        : 0)}
        {
        }

        /** @brief Inspect cached publisher initialization/acquisition status.
         * @details Later publish/close results remain separate; this is not a host
         * liveness or current-permission query.
         * @return Stored local/open error.
         * @see Publisher::publish
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Encode one complete typed value and publish its canonical bytes.
         * @details Returns cached initialization error first. Codec refusal returns
         * INVALID without import; host permission and semantic bounds still apply
         * to accepted bytes. No publication is replayed automatically.
         * @param[in] message Complete owning value, read only during this call.
         * @return Stored initialization error, INVALID on codec refusal, or exact
         * C/local/host publication status.
         * @see roswasmcpp::Codec
         */
        uint32_t publish(Message const& message) const
        {
            if(error())
            {
                return error();
            }
            wire::bytes bytes;
            if(!Codec<Message>::encode(message, bytes))
            {
                return UWVM_ROS_INVALID;
            }
            return capability_.publish_bytes(bytes);
        }

        /** @brief Attempt one explicit close of the publisher capability.
         * @details Actual import retires local ownership even on transport error;
         * local missing-callback handling follows Capability's retention rules.
         * @return Exact C/local/host cleanup status.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current handle bits, zero after local retirement; no transfer.
         * @see Publisher::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a nonzero publisher handle remains locally.
         * @details Host revocation/expiry can still make a later publish fail.
         * @return Whether this owner retains a local capability handle.
         * @see Publisher::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief Typed event source. Storage is fixed by an explicit maximum at construction.
     * @details Size it to the host-granted complete event byte quota. An insufficient buffer
     * can consume an event; error90 is returned without an automatic grow/replay.
     * The original C context/backend must outlive the subscription. Callers
     * serialize access and keep the object stationary while borrowed by Executor
     * or a callback. Callback message references last only for that invocation.
     * @tparam Message Complete owning message type with a Codec specialization.
     * @see Subscription::poll_once
     */
    template <class Message>
    class Subscription
    {
        Capability capability_;
        wire::bytes buffer_;
        uint32_t error_{};
        uint32_t rollback_error_{};
        std::shared_ptr<std::function<void(Message const&)>> callback_;
        bool polling_{};

    public:
        /** @brief Open and activate one topic.subscribe or parameter-event alias.
         * @details Checks byte bound and poll/activation support before acquisition,
         * then activates once. Failure closes an acquired handle once and preserves
         * independent rollback status; no callback is installed by construction.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact topic/event alias for this acquisition.
         * @param[in] maximum_bytes Complete receive capacity in bytes, 0..4193786.
         * @param[in] parameter_events True selects separately granted parameter events,
         * false selects topic subscription by default.
         * @see Subscription::rollback_error
         */
        Subscription(roswasmc_context const& context, std::string_view alias, size_t maximum_bytes, bool parameter_events = false) :
            capability_{Capability::checked(
                context,
                alias,
                maximum_bytes > 4193786u ? UWVM_ROS_TOO_LARGE
                : !context.backend       ? UWVM_ROS_INVALID
                : (!context.backend->poll || (parameter_events ? !context.backend->subscribe_parameter_events : !context.backend->subscribe))
                    ? UWVM_ROS_UNSUPPORTED
                    : 0)},
            buffer_(maximum_bytes <= 4193786u ? maximum_bytes : 0)
        {
            error_ = capability_.error();
            if(!error_)
            {
                error_ = parameter_events ? capability_.subscribe_parameter_events() : capability_.subscribe();
            }
            if(error_ && capability_.is_open())
            {
                rollback_error_ = capability_.close();
            }
        }

        /** @brief Inspect immediate activation-failure rollback status.
         * @details Separate from the primary error; zero can mean no rollback was
         * needed. Does not include later explicit cleanup attempts.
         * @return Exact construction-time rollback close status.
         * @see Subscription::error
         */
        uint32_t rollback_error() const noexcept
        {
            return rollback_error_;
        }

        /** @brief Inspect setup status and local handle completeness.
         * @details Returns stored primary error first, otherwise BAD_HANDLE after
         * local retirement. Queue idleness is reported by poll_once, not this query.
         * @return Stored setup error, BAD_HANDLE for no local owner, or zero.
         * @see Subscription::poll_once
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : capability_.is_open() ? 0 : UWVM_ROS_BAD_HANDLE;
        }

        /** @brief Install a callback. Reassignment during invocation affects only
         * the next poll; the current poll holds a separate callable snapshot.
         * @details Owns the supplied function object in shared snapshot storage;
         * empty clears future dispatch. Captured references remain caller-owned.
         * Registration performs no poll, backend call or callback invocation.
         * @param[in] callback Function accepting a Message const& borrowed during
         * its synchronous invocation; must obey the selected exception profile.
         * @see Subscription::poll_once
         */
        void on_message(std::function<void(Message const&)> callback)
        {
            callback_ = callback ? std::make_shared<std::function<void(Message const&)>>(std::move(callback)) : nullptr;
        }

        /** @brief Poll/decode once. Direct nested poll/close/revoke returns17 before
         * imports/buffer mutation. The decoded message reference expires on return.
         * @details A callback exception propagates and resets the intrinsic busy
         * lease. Pins a callable snapshot before one poll and complete Codec decode.
         * Requires successful explicit length metadata and fixed-buffer fit; a
         * consumed malformed or oversized sample is never replayed here.
         * @return CONFLICT for reentry, setup/handle error, INVALID for missing
         * callback/bad result/codec refusal, exact poll error, or zero after one
         * invocation. Callback exceptions are not converted to ABI results.
         * @see roswasmcpp::Codec
         */
        uint32_t poll_once()
        {
            if(polling_)
            {
                return UWVM_ROS_CONFLICT;
            }
            detail::PollLease lease{polling_};
            if(error())
            {
                return error();
            }
            auto callback = callback_;
            if(!callback)
            {
                return UWVM_ROS_INVALID;
            }
            auto result = capability_.poll(buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > buffer_.size())
            {
                return UWVM_ROS_INVALID;
            }
            Message message;
            if(!Codec<Message>::decode(std::span<unsigned char const>{buffer_.data(), static_cast<size_t>(result.length)}, message))
            {
                return UWVM_ROS_INVALID;
            }
            (*callback)(message);
            return 0;
        }

        /** @brief Close the subscription once while outside active polling.
         * @details Busy dispatch returns CONFLICT without cleanup; otherwise uses
         * Capability's actual-attempt retirement/unsupported rules.
         * @return CONFLICT or exact capability close status.
         * @see Capability::close
         */
        uint32_t close()
        {
            return polling_ ? static_cast<uint32_t>(UWVM_ROS_CONFLICT) : capability_.close();
        }

        /** @brief Revoke the subscription alias through its explicit host grant.
         * @details Returns CONFLICT during polling/callback invocation. Refusal
         * creates no stronger role and never triggers implicit reopen/retry.
         * @return CONFLICT or exact capability revoke status.
         * @see Capability::revoke
         */
        uint32_t revoke()
        {
            return polling_ ? static_cast<uint32_t>(UWVM_ROS_CONFLICT) : capability_.revoke();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current handle bits, zero after local retirement; no transfer.
         * @see Subscription::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a nonzero subscription handle remains locally.
         * @details Does not probe host expiry/revocation or queued sample readiness.
         * @return Whether a local capability handle remains.
         * @see Subscription::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief Guest-driven executor with explicit registrations and bounded spin passes.
     * @details Registered resources must outlive their registration. Remove before destroying
     * or moving them. Callbacks never run on native ROS threads; errors are returned.
     * Owns deferred callable snapshots and shared future state, while captured
     * references/groups remain borrowed. Serialize all use. No clock, worker thread,
     * host permission or automatic RPC replay is created. Source/timer registration
     * storage is separate from the bounded pending-deferred queue.
     * @see Executor::post
     */
    class Executor
    {
        struct Task
        {
            size_t id;
            std::function<uint32_t()> poll;
        };

        std::vector<Task> tasks_;
        size_t next_id_{1};
        bool spinning_{};

        struct TimerTask
        {
            size_t id;
            Timer* timer;
        };

        std::vector<TimerTask> timers_;

        struct DeferredTask
        {
            std::function<bool()> pending;
            std::function<uint32_t()> execute;
            std::function<void()> cancel;
        };

        std::deque<DeferredTask> deferred_;
        Context* context_{};
        size_t maximum_pending_{64}, last_completions_{};
        bool stopped_{};

        struct SpinGuard
        {
            bool& flag;

            explicit SpinGuard(bool& value) : flag{value}
            {
                flag = true;
            }

            ~SpinGuard()
            {
                flag = false;
            }

            SpinGuard(SpinGuard const&) = delete;
            SpinGuard& operator= (SpinGuard const&) = delete;
        };

    public:
        /** @brief Initialize a local scheduler with a 64-entry pending-deferred bound.
         * @details Creates no Context borrow, clock, worker, registration or work item.
         * @see Executor::post
         */
        Executor() = default;

        /** @brief Bind a borrowed local Context and pending-deferred bound.
         * @details Context must outlive this stationary executor. Zero permits no
         * queued deferred work; vector/queue allocation limits still apply.
         * @param[in,out] context Borrowed dispatch/shutdown state.
         * @param[in] maximum_pending Pending deferred entry count, default 64; this
         * does not bound source/timer registrations or grant host resource quotas.
         * @see Executor::shutdown
         */
        explicit Executor(Context& context, size_t maximum_pending = 64) : context_{&context}, maximum_pending_{maximum_pending}
        {
        }

        /** @brief Reject copying the executor's queue and registration identity.
         * @details The unnamed source cannot duplicate borrowed dispatch state.
         * @see Executor::Executor
         */
        Executor(Executor const&) = delete;
        /** @brief Reject copy replacement of an executor with live borrowers.
         * @details The unnamed source cannot silently rebind registrations/context.
         * @see Executor::Executor
         */
        Executor& operator= (Executor const&) = delete;
        /** @brief Reject moving the executor's stable dispatch identity.
         * @details The unnamed source must stay stationary while future/callback
         * relationships may refer to its active pass.
         * @see Executor::Executor
         */
        Executor(Executor&&) = delete;
        /** @brief Reject move replacement of active registration/queue state.
         * @details The unnamed source cannot invalidate the stationary contract.
         * @see Executor::Executor
         */
        Executor& operator= (Executor&&) = delete;

        /** @brief Cancel/release unexecuted local queue snapshots on destruction.
         * @details Performs no host cleanup or operation callbacks. Destruction
         * during spin is a caller lifetime error; borrowed resources stay separately
         * owned and require their own explicit cleanup.
         * @see Executor::cancel_pending
         */
        ~Executor()
        {
            cancel_pending();
        }

        /** @brief Queue one callable; it executes once on a later caller-driven spin.
         * @details The callable returns an owned value plus its real RPC code. Its synchronous
         * SDK call has already returned/released borrowed response storage before
         * completion runs. Completion receives its own value copy, not a native or
         * SDK scratch borrow. Captured resource references must outlive the queued
         * task; cancel pending work before closing/destroying those resources.
         * Queue exhaustion90 and stopped Context125 perform no callable/import.
         * Rejection is returned as a ready error Future rather than thrown as an
         * ABI error. Allocation failure still follows standard-library policy.
         * A busy callback group leaves the entry pending for a later explicit spin;
         * operation errors complete the Future and never cause automatic retry.
         * @tparam T Complete owning result type supporting the scheduler's value
         * operations, or void for status-only work.
         * @param[in] callable Owning function snapshot returning actual status/value;
         * borrowed captures must remain live until queue release/completion.
         * @param[in] completion Optional owning function receiving its own completed
         * result value; obey the selected exception profile.
         * @param[in,out] group Optional stationary borrowed local CallbackGroup.
         * @return Shared-state Future for the queued work or ready local rejection.
         * @see roswasmcpp::Future
         */
        template <class T>
        Future<T> post(std::function<DeferredResult<T>()> callable, std::function<void(DeferredResult<T>)> completion = {}, CallbackGroup* group = nullptr)
        {
            auto data = std::make_shared<detail::FutureData<T>>();
            Future<T> future{data};
            auto rejection = !callable                                        ? UWVM_ROS_INVALID
                             : stopped_ || (context_ && !context_->running()) ? UWVM_ROS_REVOKED
                             : deferred_.size() >= maximum_pending_           ? UWVM_ROS_TOO_LARGE
                                                                              : 0;
            if(rejection)
            {
                data->phase = FutureState::ready;
                data->error = rejection;
                return future;
            }
            deferred_.push_back({[data] { return data->phase == FutureState::pending; },
                                 [data, callable = std::move(callable), completion = std::move(completion), group]() mutable -> uint32_t
                                 {
                                     if(data->phase != FutureState::pending)
                                     {
                                         return 0;
                                     }
                                     if(group && !group->enter())
                                     {
                                         return UWVM_ROS_CONFLICT;
                                     }
                                     detail::GroupLease group_lease{group};
                                     data->phase = FutureState::running;
                                     detail::RunningLease<T> running{data};
                                     auto result = callable();
                                     data->error = result.error;
                                     if(!result.error)
                                     {
                                         if constexpr(std::is_void_v<T>)
                                         {
                                             data->value = detail::Unit{};
                                         }
                                         else
                                         {
                                             data->value = result.value;
                                         }
                                     }
                                     data->phase = FutureState::ready;
                                     if(completion)
                                     {
                                         completion(std::move(result));
                                     }
                                     return 0;
                                 },
                                 [data]
                                 {
                                     if(data->phase == FutureState::pending)
                                     {
                                         data->phase = FutureState::cancelled;
                                         data->error = UWVM_ROS_REVOKED;
                                     }
                                 }});
            return future;
        }

        /** @brief Borrow one Timer. It ticks only through explicit-time spin_some_at.
         * @details Remove before destroying/moving a timer. Registration during spin,
         * after shutdown/Context stop, with bad timer setup or exhausted IDs is
         * refused; this method does not read a clock or execute the timer.
         * @param[in,out] timer Stationary initialized timer borrowed until removal.
         * @return Nonzero removable registration ID, or zero on local refusal.
         * @see Executor::spin_some_at
         */
        size_t add_timer(Timer& timer)
        {
            if(spinning_ || stopped_ || (context_ && !context_->running()) || !next_id_ || timer.error())
            {
                return 0;
            }
            auto id = next_id_++;
            timers_.push_back({id, &timer});
            return id;
        }

        /** @brief Cancel pending deferred states and release all queue snapshots.
         * @details Runs no operation/completion callback, does not interrupt the
         * current popped synchronous task and preserves source/timer registrations.
         * Captured owning callables are destroyed normally when the queue clears.
         * @see Executor::clear
         */
        void cancel_pending()
        {
            for(auto& task: deferred_)
            {
                task.cancel();
            }
            deferred_.clear();
        }

        /** @brief Stop this executor, its associated Context and pending local work.
         * @details Idempotently sets local stop and calls Context::shutdown when
         * associated. Current synchronous work returns before spin observes stop;
         * capability cleanup remains explicit and host effects are not undone.
         * @see Context::shutdown
         */
        void shutdown()
        {
            stopped_ = true;
            if(context_)
            {
                context_->shutdown();
            }
            cancel_pending();
        }

        /** @brief Completed deferred callables in the last pass, including actual RPC errors.
         * @details A completion that throws is excluded from this count even though its
         * Future is already ready. This is a scheduling count, not successful ROS
         * deliveries. Inspect each Future; no-exception builds require callbacks
         * that return normally.
         * @return Last started pass's completed-deferred count; early reentry/stop
         * rejection can leave the previous stored count.
         * @see Executor::spin_some
         */
        size_t completed_requests() const noexcept
        {
            return last_completions_;
        }

        /** @brief Borrow a source exposing poll_once; return a removable nonzero registration ID.
         * @details Return0 without insertion when called during a polling pass or after ID
         * exhaustion. Defer callback-originated registration changes until the pass ends.
         * Also refuses a stopped executor/Context. Source poll_once returns zero for
         * one delivery, AGAIN for idle and another numeric error to stop the pass.
         * @tparam Source Stable type supplying the described poll_once() contract.
         * @param[in,out] source Borrowed until explicit removal or clear/destruction.
         * @return Nonzero removable ID, or zero on local refusal.
         * @see Executor::remove
         */
        template <class Source>
        size_t add(Source& source)
        {
            if(spinning_ || stopped_ || (context_ && !context_->running()) || !next_id_)
            {
                return 0;
            }
            auto id = next_id_++;
            tasks_.push_back({id, [&source] { return source.poll_once(); }});
            return id;
        }

        /** @brief Remove before a source is moved/destroyed, after its entire polling pass ends.
         * @details Calls during a pass are ignored to keep the currently executing closure and
         * iterator alive. The application must perform deferred removal after spin_some.
         * Unknown IDs are no-ops; owned source/timer objects are never deleted here.
         * @param[in] id Source/timer registration ID to release.
         * @see Executor::add
         */
        void remove(size_t id)
        {
            if(spinning_)
            {
                return;
            }
            std::erase_if(tasks_, [id](Task const& task) { return task.id == id; });
            std::erase_if(timers_, [id](TimerTask const& task) { return task.id == id; });
        }

        /** @brief Release all source/timer borrows and cancel pending deferred work.
         * @details Busy calls are ignored without changing active dispatch storage.
         * Does not delete borrowed resources or close their capability handles.
         * @see Executor::cancel_pending
         */
        void clear()
        {
            if(!spinning_)
            {
                tasks_.clear();
                timers_.clear();
                cancel_pending();
            }
        }

        /** @brief Run one initial deferred snapshot and an unlimited source pass.
         * @details Each source is polled at most once, so spin_once can invoke
         * several callbacks. No timer is ticked, clock read or wait performed;
         * newly posted deferred work waits for a later pass.
         * @param[out] delivered Successful source deliveries, with spin_some's
         * partial-error semantics, independent of deferred completion count.
         * @return Exact dispatch status; operation errors remain in their Futures.
         * @see Executor::spin_some
         */
        uint32_t spin_once(size_t& delivered)
        {
            return spin_some(SIZE_MAX, delivered);
        }

        /** @brief Count registered sources plus timers without dispatching them.
         * @details Pending deferred queue entries are excluded from this count.
         * @return Current source/timer registration count.
         * @see Executor::add_timer
         */
        size_t size() const noexcept
        {
            return tasks_.size() + timers_.size();
        }

        /** @brief Execute the initial deferred queue, then a bounded source pass.
         * @details maximum_events limits successful source deliveries only; all
         * initial deferred entries can run even for zero. AGAIN sources are idle;
         * any other source/group error stops the pass. Reentry returns INVALID
         * before changing delivered; Context stop cancels pending work and returns
         * REVOKED. Exception unwinding resets busy state without replaying callbacks.
         * @param[in] maximum_events Maximum successful source deliveries this pass.
         * @param[out] delivered Zeroed after reentry/stop prechecks; partial successes
         * remain visible if a later dispatch error stops the pass.
         * @return Exact pass status, with deferred operation errors kept in Futures.
         * @see Executor::completed_requests
         */
        uint32_t spin_some(size_t maximum_events, size_t& delivered)
        {
            return spin_impl(false, 0, maximum_events, delivered);
        }

        /** @brief Spin with explicit caller time. Timers execute at most once each.
         * @details Without this overload timers remain untouched. Source/timer deliveries and
         * deferred request completions are counted separately; neither creates a clock.
         * Runs the initial deferred snapshot, then sources, then timers under the
         * shared successful-delivery budget. No missed-period catch-up occurs.
         * @param[in] now Monotonic nanoseconds in every registered timer's domain.
         * @param[in] maximum_events Successful source/timer delivery budget; zero
         * still permits execution of the initial deferred queue snapshot.
         * @param[out] delivered Delivery count with spin_some's partial-error rules.
         * @return Exact pass status; callback exceptions follow the selected profile.
         * @see Timer::tick
         */
        uint32_t spin_some_at(uint64_t now, size_t maximum_events, size_t& delivered)
        {
            return spin_impl(true, now, maximum_events, delivered);
        }

    private:
        uint32_t spin_impl(bool has_time, uint64_t now, size_t maximum_events, size_t& delivered)
        {
            if(spinning_)
            {
                return UWVM_ROS_INVALID;
            }
            if(stopped_ || (context_ && !context_->running()))
            {
                cancel_pending();
                return UWVM_ROS_REVOKED;
            }
            delivered = 0;
            last_completions_ = 0;
            SpinGuard guard{spinning_};
            auto pending_count = deferred_.size();
            for(size_t n = 0; n < pending_count && !deferred_.empty(); ++n)
            {
                auto task = std::move(deferred_.front());
                deferred_.pop_front();
                if(!task.pending())
                {
                    continue;
                }
                auto code = task.execute();
                if(code)
                {
                    deferred_.push_front(std::move(task));
                    return code;
                }
                ++last_completions_;
                if(stopped_ || (context_ && !context_->running()))
                {
                    cancel_pending();
                    return UWVM_ROS_REVOKED;
                }
            }
            for(auto const& task: tasks_)
            {
                if(delivered == maximum_events)
                {
                    break;
                }
                auto error = task.poll();
                if(error != UWVM_ROS_AGAIN)
                {
                    if(error)
                    {
                        return error;
                    }
                    ++delivered;
                }
                if(stopped_ || (context_ && !context_->running()))
                {
                    cancel_pending();
                    return UWVM_ROS_REVOKED;
                }
            }
            if(has_time)
            {
                for(auto const& task: timers_)
                {
                    if(delivered == maximum_events)
                    {
                        break;
                    }
                    auto error = task.timer->tick(now);
                    if(error != UWVM_ROS_AGAIN)
                    {
                        if(error)
                        {
                            return error;
                        }
                        ++delivered;
                    }
                    if(stopped_ || (context_ && !context_->running()))
                    {
                        cancel_pending();
                        return UWVM_ROS_REVOKED;
                    }
                }
            }
            return 0;
        }
    };
    /** @brief Specialization point for complete canonical service body conversion.
     * @details Request encode/decode are required. Generated definitions can also
     * supply response encode/decode; otherwise builtin success/message responses
     * use wire helpers. Bodies exclude server correlation IDs. No arbitrary native
     * layout is serialized and local conversion confers no service permission.
     * @tparam Service Definition with complete owning Request and Response types.
     * @see roswasmcpp::ServiceClient
     */
    template <class Service>
    struct ServiceCodec;

    /** @brief Exact zero-byte Trigger request body codec.
     * @details Empty encoding represents a valid request rather than a failure.
     * @see roswasmcpp::srv::Trigger
     */
    template <>
    struct ServiceCodec<srv::Trigger>
    {
        /** @brief Encode the fieldless Trigger request.
         * @details The unnamed input has no fields and is borrowed only for the call.
         * @return Empty owning bytes representing a successful complete request.
         * @see ServiceCodec<srv::Trigger>::decode
         */
        static wire::bytes encode(srv::Trigger::Request const&)
        {
            return {};
        }

        /** @brief Validate the exact empty Trigger request body.
         * @details The unnamed destination has no fields and is unchanged.
         * @param[in] bytes Borrowed complete body; only zero bytes are accepted.
         * @return True for an exact empty request.
         * @see roswasmcpp::srv::Trigger::Request
         */
        static bool decode(std::span<unsigned char const> bytes, srv::Trigger::Request&)
        {
            return bytes.empty();
        }
    };

    /** @brief Exact single-Boolean SetBool request body codec.
     * @details Maps the complete requested setting without native padding.
     * @see roswasmcpp::srv::SetBool
     */
    template <>
    struct ServiceCodec<srv::SetBool>
    {
        /** @brief Encode one complete requested Boolean setting.
         * @details Encoding does not authorize or perform a host state mutation.
         * @param[in] request Complete owning Boolean request for this call.
         * @return One owning canonical byte equal to 0 or 1.
         * @see wire::boolean
         */
        static wire::bytes encode(srv::SetBool::Request const& request)
        {
            return wire::boolean(request.data);
        }

        /** @brief Decode exactly one canonical 0/1 SetBool byte.
         * @details Rejects all other values/extents before changing the setting.
         * @param[in] bytes Borrowed complete request body.
         * @param[out] out Owning request destination, unchanged on false.
         * @return True for an exact canonical Boolean request.
         * @see wire::decode_boolean
         */
        static bool decode(std::span<unsigned char const> bytes, srv::SetBool::Request& out)
        {
            return wire::decode_boolean(bytes, out.data);
        }
    };

    /** @brief Typed service client with one fixed owning response buffer.
     * @details Performs one synchronous request per call under an explicit service
     * alias. Host timeout/type/quotas remain authoritative. Original C context and
     * backend must outlive the client; serialize buffer use and keep it stationary
     * while queued work or an EventStream borrows its address/owner.
     * @tparam Service Complete Request/Response definition with ServiceCodec support.
     * @see ServiceClient::call
     */
    template <class Service>
    class ServiceClient
    {
        wire::bytes buffer_;
        Capability capability_;

    public:
        /** @brief Check service-call support and acquire one bounded-response alias.
         * @details Inspect error() before use. Construction sends no service request
         * and retains no alias text, while borrowing the original context.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact granted service.call alias.
         * @param[in] response_capacity Complete reply capacity in bytes, 0..4193786.
         * @see Capability::Capability
         */
        ServiceClient(roswasmc_context const& context, std::string_view alias, size_t response_capacity) :
            buffer_(response_capacity <= 4193786u ? response_capacity : 0), capability_{context, alias, ROSWASMC_SERVICE_CALL, true, response_capacity}
        {
        }

        /** @brief Inspect cached service-client initialization/acquisition status.
         * @details Does not include later per-call or cleanup errors.
         * @return Stored capability open/precheck error.
         * @see ServiceClient::call
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Submit one complete typed service request and own its response.
         * @details Uses fixed reply storage once. Requires explicit valid/fitting
         * result length, then uses ServiceCodec::decode_response when supplied or
         * the builtin complete success/message decoder with UTF-8 validation.
         * Empty Trigger request encoding is valid. No timeout/size/transport error
         * causes automatic replay of a possibly consumed RPC.
         * @param[in] request Complete owning request read only during this call.
         * @param[out] response Complete owning response, unchanged on reported failure.
         * @return Stored initialization error, exact request error, INVALID for bad
         * result metadata/response, or zero for one complete decoded response.
         * @see roswasmcpp::ServiceCodec
         */
        uint32_t call(typename Service::Request const& request, typename Service::Response& response)
        {
            if(error())
            {
                return error();
            }
            auto bytes = ServiceCodec<Service>::encode(request);
            auto result = capability_.request(ROSWASMC_SERVICE_CALL, bytes, buffer_);
            if(result.error)
            {
                return result.error;
            }
            typename Service::Response next;
            if(!result.has_length || result.length > buffer_.size())
            {
                return UWVM_ROS_INVALID;
            }
            if constexpr(requires { ServiceCodec<Service>::decode_response(std::span<unsigned char const>{}, next); })
            {
                if(!ServiceCodec<Service>::decode_response({buffer_.data(), static_cast<size_t>(result.length)}, next))
                {
                    return UWVM_ROS_INVALID;
                }
            }
            else
            {
                if(!wire::decode({buffer_.data(), static_cast<size_t>(result.length)}, next) || !wire::parameter_array_detail::text_valid(next.message, true))
                {
                    return UWVM_ROS_INVALID;
                }
            }
            response = std::move(next);
            return 0;
        }

        /** @brief Defer one existing bounded synchronous call on a local Executor.
         * @details This client must outlive the task. The request is copied into guest-owned
         * task storage; one later spin executes call once and delivers an owned
         * response completion. This does not create a native asynchronous service,
         * deadline, thread, timer or retry. Host timeout/quota policy is unchanged.
         * Future cancellation prevents only pending local dispatch; once call()
         * starts, it is an ordinary synchronous operation with its actual result.
         * @param[in,out] executor Local caller-driven executor receiving the task.
         * @param[in] request Complete request owned by value, moved into task storage.
         * @param[in] completion Optional owning callback receiving completed status/value.
         * @param[in,out] group Optional stationary local group borrowed through release.
         * @return Shared-state response Future, including ready local queue rejection.
         * @see Executor::post
         */
        Future<typename Service::Response> async_call(Executor& executor,
                                                      typename Service::Request request,
                                                      std::function<void(DeferredResult<typename Service::Response>)> completion = {},
                                                      CallbackGroup* group = nullptr)
        {
            return executor.template post<typename Service::Response>(
                [this, request = std::move(request)]
                {
                    typename Service::Response response{};
                    auto code = call(request, response);
                    return DeferredResult<typename Service::Response>{code, std::move(response)};
                },
                std::move(completion),
                group);
        }

        /** @brief Attempt one explicit close of the service-call capability.
         * @details Actual callback execution retires local ownership even on transport
         * error; local missing-callback handling follows Capability. Finish/release
         * queued client borrows before destruction or context retirement.
         * @return Exact C/local/host cleanup status.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Borrow this stable source owner for the additive EventStream ABI.
         * @details The ServiceClient and its context must outlive that stream. This borrow
         * neither opens an observer nor grants submit/watch rights. Never move,
         * close or revoke the source while an event callback borrows it.
         * @return Mutable borrowed Capability reference, without ownership transfer.
         * @see roswasmcpp::EventStream
         */
        Capability& borrowed_event_source() noexcept
        {
            return capability_;
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current capability handle bits, zero when locally retired.
         * @see ServiceClient::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether the client retains a nonzero local handle.
         * @details Host-side expiry/revocation can still make a later call fail.
         * @return Whether a local capability handle remains.
         * @see ServiceClient::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief Typed service server with two explicitly granted owners and guest callbacks.
     * @details Request IDs originate from the gateway. The respond grant must match the
     * advertise resource/type; replying with another server's ID is denied.
     * Original C context/backend must outlive both owners. Keep this object
     * stationary while registered or dispatching, serialize use, and keep borrowed
     * callback captures alive. Each poll invokes at most one synchronous handler;
     * no native worker or automatic response retry is introduced.
     * @tparam Service Complete Request/Response definition with ServiceCodec support.
     * @see ServiceServer::poll_once
     */
    template <class Service>
    class ServiceServer
    {
        wire::bytes buffer_;
        Capability advertise_, respond_;
        uint32_t error_{};
        roswasmc_cleanup_report rollback_{};
        std::shared_ptr<std::function<typename Service::Response(typename Service::Request const&)>> callback_;
        bool polling_{};

    public:
        /** @brief Acquire distinct advertise/respond aliases and advertise once.
         * @details Validates backend/roles, nonempty distinct alias bounds and
         * receive capacity before opening. Failure attempts reverse-order cleanup
         * while retaining primary/rollback statuses; no handler is installed.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] advertise_alias Granted advertise alias, 1..255 canonical bytes.
         * @param[in] respond_alias Distinct granted response alias, 1..255 bytes.
         * @param[in] request_capacity Receive bytes in 0..4193786, including the
         * eight-byte request-correlation prefix.
         * @see ServiceServer::rollback_status
         */
        ServiceServer(roswasmc_context const& context, std::string_view advertise_alias, std::string_view respond_alias, size_t request_capacity) :
            buffer_(request_capacity <= 4193786u ? request_capacity : 0),
            advertise_{
                Capability::checked(context, advertise_alias, detail::server_validation(context, advertise_alias, respond_alias, request_capacity, true))}
        {
            error_ = advertise_.error();
            if(!error_)
            {
                respond_ = Capability{context, respond_alias, ROSWASMC_SERVICE_RESPOND};
                error_ = respond_.error();
            }
            if(!error_)
            {
                error_ = advertise_.advertise_service();
            }
            if(error_)
            {
                rollback_ = close_checked(nullptr, error_);
            }
        }

        /** @brief Inspect stored setup/advertisement status and two-owner completeness.
         * @details Returns stored primary error first, otherwise BAD_HANDLE if either
         * local role is missing; no host readiness query occurs.
         * @return Stored error, BAD_HANDLE or zero for both retained local roles.
         * @see ServiceServer::rollback_status
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : advertise_.is_open() && respond_.is_open() ? 0 : UWVM_ROS_BAD_HANDLE;
        }

        /** @brief Install a synchronous handler. Reassignment affects the next
         * invocation, never destroys the current callable snapshot.
         * @details Allocates shared owning function storage; an empty function clears
         * future dispatch. Request references are borrowed only until return, while
         * the handler returns a complete owning response. Captures remain subject to
         * their own lifetime rules and callbacks obey the selected exception profile.
         * @param[in] callback Owning Response(Request const&) function snapshot.
         * @see ServiceServer::poll_once
         */
        void on_request(std::function<typename Service::Response(typename Service::Request const&)> callback)
        {
            callback_ = callback ? std::make_shared<std::function<typename Service::Response(typename Service::Request const&)>>(std::move(callback)) : nullptr;
        }

        /** @brief Install an already allocated callable owner before any event is consumed.
         * @details The caller constructs this shared function before opening the server. This
         * setter performs only a nonthrowing shared-owner move, with no allocation.
         * Supply a nonempty function when the pointer is nonnull; this setter does
         * not inspect an empty pointed-to std::function. Serialize external mutation
         * of shared function storage; replacement affects future snapshots.
         * @param[in] callback Shared owning function pointer to consume, or null to
         * clear future dispatch; borrowed captures retain their original lifetimes.
         * @see ServiceServer::on_request
         */
        void on_request_shared(std::shared_ptr<std::function<typename Service::Response(typename Service::Request const&)>> callback) noexcept
        {
            callback_ = std::move(callback);
        }

        /** @brief Poll, decode, invoke and respond to at most one correlated request.
         * @details Requires a callback and both initialized roles. Validates fitting
         * result length, nonzero ID and the complete request body, then invokes the
         * pinned handler and encodes its owning response. Generated response codecs
         * are used when available; builtin bodies use success/message helpers with
         * UTF-8 checks. One response import returns its raw error; no consumed
         * request is replayed after decode/callback/send failure. Reentry/cleanup
         * is guarded and exception unwinding releases the busy lease.
         * @return CONFLICT for reentry, setup error, INVALID for missing handler or
         * failed local framing/codec checks, exact poll/respond error, or zero after
         * one response request. Callback exceptions remain language exceptions.
         * @see roswasmcpp::ServiceCodec
         */
        uint32_t poll_once()
        {
            if(polling_)
            {
                return UWVM_ROS_CONFLICT;
            }
            detail::PollLease lease{polling_};
            if(error())
            {
                return error();
            }
            auto callback = callback_;
            if(!callback)
            {
                return UWVM_ROS_INVALID;
            }
            auto result = advertise_.poll(buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length < 8 || result.length > buffer_.size())
            {
                return UWVM_ROS_INVALID;
            }
            auto id = uwvm_ros_load_u64(buffer_.data());
            if(!id)
            {
                return UWVM_ROS_INVALID;
            }
            typename Service::Request request;
            if(!ServiceCodec<Service>::decode({buffer_.data() + 8, static_cast<size_t>(result.length) - 8}, request))
            {
                return UWVM_ROS_INVALID;
            }
            auto response = (*callback)(request);
            if constexpr(requires(wire::bytes& payload) { ServiceCodec<Service>::encode_response(response, payload); })
            {
                wire::bytes payload;
                if(!ServiceCodec<Service>::encode_response(response, payload))
                {
                    return UWVM_ROS_INVALID;
                }
                auto bytes = wire::encode(wire::service_envelope{id, std::move(payload)});
                if(bytes.empty())
                {
                    return UWVM_ROS_INVALID;
                }
                return respond_.request(ROSWASMC_SERVICE_RESPOND, bytes, {}).error;
            }
            else
            {
                if(!wire::parameter_array_detail::text_valid(response.message, true))
                {
                    return UWVM_ROS_INVALID;
                }
                auto bytes = wire::service_reply(id, response);
                return respond_.request(ROSWASMC_SERVICE_RESPOND, bytes, {}).error;
            }
        }

        /** @brief Copy the construction-time rollback report.
         * @details Does not include later cleanup or replace the stored primary
         * setup error; zero counts can mean no rollback was required.
         * @return Preserved primary/cleanup errors and local attempt/failure counts.
         * @see ServiceServer::error
         */
        roswasmc_cleanup_report rollback_status() const noexcept
        {
            return rollback_;
        }

        /** @brief Raw ABI escape IDs; neither implies another operation grant.
         * @details Direct imported/backend calls bypass the local facade polling lease.
         * Do not close/revoke/poll these IDs during an active handler.
         * @return Advertisement-role handle bits, zero when locally retired.
         * @see ServiceServer::respond_handle
         */
        uint64_t advertise_handle() const noexcept
        {
            return advertise_.handle();
        }

        /** @brief Inspect the independently granted response-role handle.
         * @details Numeric inspection transfers no ownership or advertisement right;
         * direct raw calls must preserve active callback borrows.
         * @return Response-role handle bits, zero when locally retired.
         * @see ServiceServer::advertise_handle
         */
        uint64_t respond_handle() const noexcept
        {
            return respond_.handle();
        }

        /** @brief Close respond then advertise once, retaining both optional statuses.
         * @details statuses[0]/[1] correspond to advertise/respond. Empty owners are skipped;
         * the primary_error argument is retained separately from cleanup failures.
         * Busy dispatch returns CONFLICT without touching owners/status storage.
         * Attempts count nonempty local owner calls, not proof of host imports;
         * local unsupported callbacks can retain their Capability handle.
         * @param[out] statuses Optional independent writable array of at least two
         * entries, ordered advertise then respond.
         * @param[in] primary_error Existing primary failure to retain separately.
         * @return Full cleanup report, including partial failures and zero attempts.
         * @see Capability::close
         */
        roswasmc_cleanup_report close_checked(uint32_t* statuses = nullptr, uint32_t primary_error = 0)
        {
            auto report = roswasmc_cleanup_init(primary_error);
            if(polling_)
            {
                report.cleanup_error = UWVM_ROS_CONFLICT;
                return report;
            }
            auto response = detail::close_owner(respond_, report);
            auto advertise = detail::close_owner(advertise_, report);
            if(statuses)
            {
                statuses[0] = advertise;
                statuses[1] = response;
            }
            return report;
        }

        /** @brief Close both roles once and return an aggregate cleanup status.
         * @details Uses checked reverse-order cleanup; an already empty pair reports
         * BAD_HANDLE rather than a new cleanup success.
         * @return CONFLICT while polling, BAD_HANDLE for no attempts, or first
         * cleanup error/zero for the attempted pair.
         * @see ServiceServer::close_checked
         */
        uint32_t close()
        {
            if(polling_)
            {
                return UWVM_ROS_CONFLICT;
            }
            auto report = close_checked();
            return report.attempted ? report.cleanup_error : static_cast<uint32_t>(UWVM_ROS_BAD_HANDLE);
        }

        /** @brief Explicitly revoke both independent aliases, never an automatic
         * shutdown/timeout action. Busy17 leaves owners/status slots unchanged.
         * @details Attempts respond then advertise using their separate host grants.
         * A local missing callback can retain its owner; no alias is reopened and
         * later role attempts continue after a reported failure.
         * @param[out] statuses Optional independent writable array of two entries,
         * ordered advertise then respond.
         * @param[in] primary_error Existing primary status retained independently.
         * @return Full primary/cleanup report and local owner attempt counts.
         * @see Capability::revoke
         */
        roswasmc_cleanup_report revoke_checked(uint32_t* statuses = nullptr, uint32_t primary_error = 0)
        {
            auto report = roswasmc_cleanup_init(primary_error);
            if(polling_)
            {
                report.cleanup_error = UWVM_ROS_CONFLICT;
                return report;
            }
            auto response = detail::revoke_owner(respond_, report);
            auto advertise = detail::revoke_owner(advertise_, report);
            if(statuses)
            {
                statuses[0] = advertise;
                statuses[1] = response;
            }
            return report;
        }

        /** @brief Revoke the independently granted pair once with aggregate status.
         * @details Uses checked reverse-order revocation without implicit retry or
         * stronger permission; an empty pair reports BAD_HANDLE.
         * @return CONFLICT during polling, BAD_HANDLE for no attempts, or first
         * revocation error/zero for the attempted pair.
         * @see ServiceServer::revoke_checked
         */
        uint32_t revoke()
        {
            if(polling_)
            {
                return UWVM_ROS_CONFLICT;
            }
            auto report = revoke_checked();
            return report.attempted ? report.cleanup_error : static_cast<uint32_t>(UWVM_ROS_BAD_HANDLE);
        }
    };

    /** @brief Complete incoming Fibonacci action goal ID and signed order.
     * @details Delivered by an explicitly advertised server; construction alone
     * neither polls nor accepts a host goal.
     * @see roswasmcpp::ActionServer::poll_once
     */
    struct FibonacciGoal
    {
        /** @brief Nonzero host-correlated goal identifier after successful polling.
         * @details Default zero is an invalid sentinel and grants no ownership.
         * @see FibonacciGoal::order
         */
        uint64_t id{};
        /** @brief Signed 32-bit requested Fibonacci order.
         * @details Poll decoding preserves signed bits; application/host algorithm
         * limits are independent of this value container.
         * @see FibonacciGoal::id
         */
        int32_t order{};
    };

    /** @brief Supported Fibonacci action client; every operation takes its own alias.
     * @details Use separate Capability objects for send/cancel/feedback/result. This class
     * wraps one chosen operation without implicitly opening the other aliases.
     * Keeps no local goal table. Host ownership and role/type grants govern each
     * operation. Borrowed stationary C context/backend must outlive cleanup;
     * callers serialize fixed-buffer use and handle results without implicit replay.
     * @see roswasmcpp::ActionClientBundle
     */
    class ActionClient
    {
        Capability capability_;
        roswasmc_operation operation_;
        wire::bytes buffer_;

    public:
        /** @brief Bind one action-client selector and bounded reply storage.
         * @details Rejects selectors outside ACTION_SEND_GOAL through
         * ACTION_RECEIVE_RESULT locally before opening. Inspect error() before use.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact granted alias for this selected role.
         * @param[in] operation One canonical send/cancel/feedback/result selector.
         * @param[in] capacity Complete reply capacity in bytes, 0..4193786.
         * @see Capability::Capability
         */
        ActionClient(roswasmc_context const& context, std::string_view alias, roswasmc_operation operation, size_t capacity) :
            capability_{context, alias, operation, operation >= ROSWASMC_ACTION_SEND_GOAL && operation <= ROSWASMC_ACTION_RECEIVE_RESULT, capacity},
            operation_{operation}, buffer_(capacity <= 4193786u ? capacity : 0)
        {
        }

        /** @brief Inspect cached action-role initialization/acquisition status.
         * @details Does not include later per-operation/cleanup errors or probe
         * host-side goal/handle liveness.
         * @return Stored capability validation/open error.
         * @see ActionClient::send_goal
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Send one Fibonacci order and decode a nonzero correlated goal ID.
         * @details Requires ACTION_SEND_GOAL and an exact eight-byte nonzero reply.
         * Serializes the full int32 order domain without local algorithm bounds;
         * host policy validates supported order/authority. Sends once, with no local
         * ID-table insertion or automatic retry after an uncertain result.
         * @param[in] order Signed requested order, subject to host algorithm limits.
         * @param[out] goal Nonzero correlation ID, unchanged on reported failure.
         * @return Stored setup error, DENIED for a wrong role, exact request error,
         * INVALID for malformed ID response, or zero.
         * @see ActionClientBundle::send_goal
         */
        uint32_t send_goal(int32_t order, uint64_t& goal)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_ACTION_SEND_GOAL)
            {
                return UWVM_ROS_DENIED;
            }
            auto bytes = wire::fibonacci_goal(order);
            auto result = capability_.request(operation_, bytes, buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length != 8 || buffer_.size() < 8)
            {
                return UWVM_ROS_INVALID;
            }
            auto next = uwvm_ros_load_u64(buffer_.data());
            if(!next)
            {
                return UWVM_ROS_INVALID;
            }
            goal = next;
            return 0;
        }

        /** @brief Request cancellation through the selected own/any-goal role.
         * @details Host policy checks ownership and independent cancel-any rights.
         * Encodes the supplied ID once and decodes an exact Bool; true acceptance
         * does not imply terminal completion. This lightweight method keeps no
         * local goal table and does not locally reject zero before request.
         * @param[in] goal Nonzero one-goal ID; the explicit all-goals operation uses
         * zero only under the cancel-any protocol role.
         * @param[out] accepted Native acceptance Boolean, unchanged on reported failure.
         * @return Setup error, DENIED for a wrong role, exact request error,
         * INVALID for malformed Bool metadata/body, or zero (including false).
         * @see ActionClient::cancel_all
         */
        uint32_t cancel(uint64_t goal, bool& accepted)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_ACTION_CANCEL_OWN_GOAL && operation_ != ROSWASMC_ACTION_CANCEL_ANY_GOAL)
            {
                return UWVM_ROS_DENIED;
            }
            auto bytes = wire::goal_id(goal);
            auto result = capability_.request(operation_, bytes, buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > buffer_.size() || !wire::decode_boolean({buffer_.data(), static_cast<size_t>(result.length)}, accepted))
            {
                return UWVM_ROS_INVALID;
            }
            return 0;
        }

        /** @brief Cancel all goals only through the independently granted cancel-any operation.
         * @details The canonical request ID is zero for this operation. Cancel-own does not
         * imply this stronger authority and is refused before issuing an import.
         * Scope may include other owners under host policy; this helper cannot
         * establish that policy or undo effects of an already admitted operation.
         * @param[out] accepted Native acceptance Boolean, unchanged on failure.
         * @return DENIED for a non-cancel-any selector, otherwise cancel's status.
         * @see ActionClient::cancel
         */
        uint32_t cancel_all(bool& accepted)
        {
            if(operation_ != ROSWASMC_ACTION_CANCEL_ANY_GOAL)
            {
                return UWVM_ROS_DENIED;
            }
            return cancel(0, accepted);
        }

        /** @brief Receive and own one exact sequence correlated to the supplied goal.
         * @details Requires feedback/result role. Validates returned ID, at most
         * 48 elements, complete framing and terminal kinds 2..4 for results. This
         * lightweight owner has no local goal table to retire; host ownership stays
         * authoritative and a consumed receive is never replayed automatically.
         * @param[in] goal Expected nonzero host-owned goal correlation ID.
         * @param[out] sequence Complete owning sequence, unchanged on reported failure.
         * @return Setup error, DENIED for wrong role, exact request error such as
         * AGAIN, INVALID for bad framing/correlation/kind, or zero.
         * @see ActionClientBundle::receive_result
         */
        uint32_t receive(uint64_t goal, wire::action_sequence& sequence)
        {
            if(error())
            {
                return error();
            }
            bool result_kind = operation_ == ROSWASMC_ACTION_RECEIVE_RESULT;
            if(!result_kind && operation_ != ROSWASMC_ACTION_RECEIVE_FEEDBACK)
            {
                return UWVM_ROS_DENIED;
            }
            auto bytes = wire::goal_id(goal);
            auto result = capability_.request(operation_, bytes, buffer_);
            if(result.error)
            {
                return result.error;
            }
            wire::action_sequence next;
            if(!result.has_length || result.length > buffer_.size() || !wire::decode({buffer_.data(), static_cast<size_t>(result.length)}, next, result_kind) ||
               next.goal != goal || (result_kind && next.kind < 2))
            {
                return UWVM_ROS_INVALID;
            }
            sequence = std::move(next);
            return 0;
        }

        /** @brief Attempt one close of this independent action-role capability.
         * @details Actual callback execution retires local ownership even on error;
         * local unsupported handling follows Capability. Does not cancel a goal.
         * @return Exact capability cleanup status.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Revoke this single role alias through its explicit host grant.
         * @details Creates no rights to the other action roles and performs no
         * implicit goal cancellation or request retry.
         * @return Exact C/local/host revoke status.
         * @see Capability::revoke
         */
        uint32_t revoke()
        {
            return capability_.revoke();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current role handle bits, zero when locally retired.
         * @see ActionClient::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a nonzero action-role handle remains locally.
         * @details Does not probe host liveness or establish goal ownership.
         * @return Whether this role retains a local capability handle.
         * @see ActionClient::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief Caller-driven Fibonacci server with distinct advertise/respond grants.
     * @details Original stationary C context/backend must outlive both owners.
     * Keep the server stationary while registered/dispatching and serialize use;
     * handler references expire on return. Each poll consumes at most one goal and
     * response sends remain explicit, with no native worker or automatic retry.
     * @see ActionServer::respond
     */
    class ActionServer
    {
        Capability advertise_, respond_;
        wire::bytes buffer_;
        uint32_t error_{};
        roswasmc_cleanup_report rollback_{};
        std::shared_ptr<std::function<void(FibonacciGoal const&)>> callback_;
        bool polling_{};

    public:
        /** @brief Acquire distinct server roles and advertise with an empty request.
         * @details Prechecks roles/backend/alias bounds and receive size before
         * acquisition; failure attempts reverse cleanup and preserves rollback.
         * Installs no handler and receives no goal during construction.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] advertise_alias Nonempty granted advertise alias, 1..255 bytes.
         * @param[in] respond_alias Distinct granted response alias, 1..255 bytes.
         * @param[in] goal_capacity Complete incoming goal bytes in 0..4193786;
         * a Fibonacci goal envelope needs twelve bytes.
         * @see ActionServer::rollback_status
         */
        ActionServer(roswasmc_context const& context, std::string_view advertise_alias, std::string_view respond_alias, size_t goal_capacity) :
            advertise_{Capability::checked(context, advertise_alias, detail::server_validation(context, advertise_alias, respond_alias, goal_capacity, false))},
            buffer_(goal_capacity <= 4193786u ? goal_capacity : 0)
        {
            error_ = advertise_.error();
            if(!error_)
            {
                respond_ = Capability{context, respond_alias, ROSWASMC_ACTION_RESPOND};
                error_ = respond_.error();
            }
            if(!error_)
            {
                error_ = advertise_.request(ROSWASMC_ACTION_ADVERTISE, {}, {}).error;
            }
            if(error_)
            {
                rollback_ = close_checked(nullptr, error_);
            }
        }

        /** @brief Inspect stored action-server setup and local two-role completeness.
         * @details Returns setup error first, otherwise BAD_HANDLE when either
         * local role is missing. Does not query host readiness or goal ownership.
         * @return Setup error, BAD_HANDLE or zero for both retained roles.
         * @see ActionServer::rollback_status
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : advertise_.is_open() && respond_.is_open() ? 0 : UWVM_ROS_BAD_HANDLE;
        }

        /** @brief Install a callback; respond remains allowed inside the handler.
         * @details Reassignment affects the next poll and cannot destroy the active
         * shared snapshot. Empty clears future dispatch. Borrowed captures must
         * outlive use; the goal reference lasts only during callback invocation.
         * @param[in] callback Owning synchronous goal function, or empty to clear it.
         * @see ActionServer::poll_once
         */
        void on_goal(std::function<void(FibonacciGoal const&)> callback)
        {
            callback_ = callback ? std::make_shared<std::function<void(FibonacciGoal const&)>>(std::move(callback)) : nullptr;
        }

        /** @brief Poll/decode one complete goal and invoke its pinned handler once.
         * @details Requires a callback, both initialized roles, exact twelve-byte
         * envelope and nonzero ID. Preserves signed order bits without algorithm
         * validation. Reentrant poll/cleanup is refused; explicit respond remains
         * allowed during the handler. Exceptions unwind the intrinsic busy lease.
         * @return CONFLICT for reentry, setup/poll error, INVALID for missing
         * callback/bad goal framing, or zero after one callback. No repoll occurs.
         * @see FibonacciGoal
         */
        uint32_t poll_once()
        {
            if(polling_)
            {
                return UWVM_ROS_CONFLICT;
            }
            detail::PollLease lease{polling_};
            if(error())
            {
                return error();
            }
            auto callback = callback_;
            if(!callback)
            {
                return UWVM_ROS_INVALID;
            }
            auto result = advertise_.poll(buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length != 12 || buffer_.size() < 12)
            {
                return UWVM_ROS_INVALID;
            }
            wire::reader reader{
                {buffer_.data(), 12}
            };
            FibonacciGoal goal;
            uint32_t order;
            if(!reader.integer(goal.id, 8) || !goal.id || !reader.u32(order) || !reader.done())
            {
                return UWVM_ROS_INVALID;
            }
            goal.order = std::bit_cast<int32_t>(order);
            (*callback)(goal);
            return 0;
        }

        /** @brief Send one feedback or terminal sequence for an explicitly owned goal.
         * @details Requires nonzero goal, kind 1 feedback or terminal kind 2..4, and
         * at most 48 signed elements. Host checks advertisement correlation and
         * response authority. One response request is sent, including during an
         * active goal handler; its raw error is returned without replay.
         * @param[in] sequence Complete owning goal/kind/element fields for this call.
         * @return Setup error, INVALID for local goal/kind/count encoding refusal,
         * or exact ACTION_RESPOND request status.
         * @see wire::action_sequence
         */
        uint32_t respond(wire::action_sequence const& sequence)
        {
            if(error())
            {
                return error();
            }
            if(!sequence.goal || sequence.kind < 1 || sequence.kind > 4)
            {
                return UWVM_ROS_INVALID;
            }
            auto bytes = wire::encode(sequence, true);
            if(bytes.empty())
            {
                return UWVM_ROS_INVALID;
            }
            return respond_.request(ROSWASMC_ACTION_RESPOND, bytes, {}).error;
        }

        /** @brief Copy the construction-time action-server rollback report.
         * @details Primary setup error and per-owner cleanup failures remain
         * independent; later cleanup attempts do not update this report.
         * @return Preserved primary/cleanup status and local attempt/failure counts.
         * @see ActionServer::error
         */
        roswasmc_cleanup_report rollback_status() const noexcept
        {
            return rollback_;
        }

        /** @brief Raw ABI escape IDs; neither implies another operation grant.
         * @details Direct imported/backend calls bypass the local facade polling lease.
         * Do not close/revoke/poll these IDs during an active handler.
         * @return Advertisement-role handle bits, without ownership transfer.
         * @see ActionServer::respond_handle
         */
        uint64_t advertise_handle() const noexcept
        {
            return advertise_.handle();
        }

        /** @brief Inspect the independent action-response handle without transfer.
         * @details Does not establish advertisement or cancel-any rights; preserve
         * callback borrows when making any separately reviewed raw call.
         * @return Response-role handle bits, zero when locally retired.
         * @see ActionServer::advertise_handle
         */
        uint64_t respond_handle() const noexcept
        {
            return respond_.handle();
        }

        /** @brief Close respond then advertise once, retaining both optional statuses.
         * @details statuses[0]/[1] correspond to advertise/respond. Empty owners are skipped;
         * the primary_error argument is retained separately from cleanup failures.
         * Active dispatch returns CONFLICT without changing owners/status storage.
         * Local missing callbacks can retain individual capability handles.
         * @param[out] statuses Optional independent writable array of two entries,
         * ordered advertise then respond.
         * @param[in] primary_error Existing primary error retained independently.
         * @return Full primary/cleanup report and local owner attempt/failure counts.
         * @see Capability::close
         */
        roswasmc_cleanup_report close_checked(uint32_t* statuses = nullptr, uint32_t primary_error = 0)
        {
            auto report = roswasmc_cleanup_init(primary_error);
            if(polling_)
            {
                report.cleanup_error = UWVM_ROS_CONFLICT;
                return report;
            }
            auto response = detail::close_owner(respond_, report);
            auto advertise = detail::close_owner(advertise_, report);
            if(statuses)
            {
                statuses[0] = advertise;
                statuses[1] = response;
            }
            return report;
        }

        /** @brief Close both roles with one aggregate first-error result.
         * @details Uses checked reverse-order cleanup and reports BAD_HANDLE when
         * no local role remains to attempt.
         * @return CONFLICT during polling, BAD_HANDLE for no attempts, or first
         * cleanup error/zero for the attempted pair.
         * @see ActionServer::close_checked
         */
        uint32_t close()
        {
            if(polling_)
            {
                return UWVM_ROS_CONFLICT;
            }
            auto report = close_checked();
            return report.attempted ? report.cleanup_error : static_cast<uint32_t>(UWVM_ROS_BAD_HANDLE);
        }

        /** @brief Explicit pair alias revocation, refused17 during poll/handler.
         * @details Every live role is attempted once even after transport failure; it is
         * destructive policy mutation and is never part of RAII cleanup.
         * @param[out] statuses Optional independent writable two-entry array in
         * advertise/respond order; busy rejection leaves it unchanged.
         * @param[in] primary_error Existing primary failure retained independently.
         * @return Full primary/cleanup report and local owner attempt/failure counts.
         * @see Capability::revoke
         */
        roswasmc_cleanup_report revoke_checked(uint32_t* statuses = nullptr, uint32_t primary_error = 0)
        {
            auto report = roswasmc_cleanup_init(primary_error);
            if(polling_)
            {
                report.cleanup_error = UWVM_ROS_CONFLICT;
                return report;
            }
            auto response = detail::revoke_owner(respond_, report);
            auto advertise = detail::revoke_owner(advertise_, report);
            if(statuses)
            {
                statuses[0] = advertise;
                statuses[1] = response;
            }
            return report;
        }

        /** @brief Revoke both granted roles once with aggregate status.
         * @details Uses checked reverse-order cleanup, with no implicit retry or
         * stronger service/client role acquisition.
         * @return CONFLICT during polling, BAD_HANDLE for no attempts, or first
         * revocation error/zero for the attempted pair.
         * @see ActionServer::revoke_checked
         */
        uint32_t revoke()
        {
            if(polling_)
            {
                return UWVM_ROS_CONFLICT;
            }
            auto report = revoke_checked();
            return report.attempted ? report.cleanup_error : static_cast<uint32_t>(UWVM_ROS_BAD_HANDLE);
        }
    };

    /** @brief Four independent required aliases and one optional stronger alias.
     * @details No role has an implicit default alias. Empty cancel_any means no acquisition;
     * the other four must be distinct nonempty explicit views. Host policy still
     * controls the matching action resource/type, ownership and every quota/QoS.
     * Views are borrowed only through ActionClientBundle construction.
     * @see roswasmcpp::ActionClientBundle::ActionClientBundle
     */
    struct ActionClientAliases
    {
        /** @brief Required explicitly granted goal-send alias.
         * @details Must be nonempty and distinct from all selected other roles.
         * @see ActionClientBundle::send_goal
         */
        std::string_view send;
        /** @brief Required own-goal cancellation alias.
         * @details Does not imply the stronger cancel-any/all scope.
         * @see ActionClientBundle::cancel_own
         */
        std::string_view cancel_own;
        /** @brief Required feedback-receive alias.
         * @details Independently authorized from result reception.
         * @see ActionClientBundle::receive_feedback
         */
        std::string_view feedback;
        /** @brief Required terminal-result receive alias.
         * @details Validated terminal reception retires the matching local ID.
         * @see ActionClientBundle::receive_result
         */
        std::string_view result;
        /** @brief Optional stronger cancel-any/all alias, empty when absent.
         * @details Never synthesized from the four required role grants.
         * @see ActionClientBundle::cancel_any
         */
        std::string_view cancel_any{};
    };

    /** @brief Typed Fibonacci client owning an explicitly requested role bundle.
     * @details This facade groups send,
     * own-cancel, feedback and result while preserving four distinct capabilities.
     * Optional cancel-any is separately requested and never inferred. Construction
     * prechecks every role/alias, then acquires transactionally; failure rolls back
     * all acquired owners. Local goal IDs must originate from this bundle's valid
     * send result; unknown IDs are refused9 before import, and terminal results
     * retire only their matching local ID. Runtime ownership remains authoritative.
     *
     * This object is nonmoving: its C owners borrow its stable internal context and
     * bounded ID vector. Methods are caller-driven synchronous calls without replay.
     * Explicit checked close/revoke expose all role statuses; destruction performs
     * ordinary close only as a best-effort fallback, never native cancellation or
     * alias revocation. No rclcpp source/ABI or full native Action parity is claimed.
     * The context metadata is copied inline; its immutable backend table must
     * outlive the bundle. Serialize access and keep this stationary object alive
     * until queued callbacks release it.
     * @see roswasmc_action_bundle
     */
    class ActionClientBundle
    {
        roswasmc_context context_;
        std::vector<uint64_t> goals_;
        roswasmc_action_bundle bundle_{};
        wire::bytes receive_;
        uint32_t setup_error_{};
        Result last_{UWVM_ROS_BAD_HANDLE, 0, 0};

        uint32_t refusal(uint32_t code)
        {
            last_ = roswasmc_action_bundle_failure(code);
            return code;
        }

        uint32_t receive(uint64_t goal, wire::action_sequence& sequence, bool terminal)
        {
            if(error())
            {
                return refusal(error());
            }
            roswasmc_action_sequence view{};
            last_ = terminal ? roswasmc_action_bundle_result(&bundle_, goal, receive_.data(), receive_.size(), &view)
                             : roswasmc_action_bundle_feedback(&bundle_, goal, receive_.data(), receive_.size(), &view);
            if(last_.error)
            {
                return last_.error;
            }
            wire::action_sequence next;
            if(!last_.has_length || last_.length > receive_.size() || !wire::decode({receive_.data(), static_cast<size_t>(last_.length)}, next, terminal))
            {
                last_.error = UWVM_ROS_INVALID;
                return last_.error;
            }
            sequence = std::move(next);
            return 0;
        }

    public:
        /** @brief Reserve explicit local bounds and acquire only supplied aliases.
         * @details Goal capacity 1..1024 and complete reply bound <=4193786 are independent
         * of host quotas and cannot enlarge them. Allocation uses target C++ policy;
         * choose action_bundle.h caller storage when allocation must be avoided.
         * Opens four required distinct roles and the optional fifth role through
         * the C bundle's checked acquisition/rollback contract; inspect error().
         * @param[in] context Context metadata copied inline; backend outlives bundle.
         * @param[in] aliases Borrowed role views used only during acquisition.
         * @param[in] maximum_goals Concurrent tracked-ID count in 1..1024.
         * @param[in] maximum_reply_bytes Fixed receive capacity in bytes, 0..4193786.
         * @see roswasmc_action_bundle_init
         */
        ActionClientBundle(roswasmc_context const& context, ActionClientAliases aliases, size_t maximum_goals, size_t maximum_reply_bytes) :
            context_{context}, goals_(maximum_goals && maximum_goals <= 1024u ? maximum_goals : 0),
            receive_(maximum_reply_bytes <= 4193786u ? maximum_reply_bytes : 0)
        {
            if(!maximum_goals || maximum_goals > 1024u)
            {
                setup_error_ = UWVM_ROS_INVALID;
                return;
            }
            if(maximum_reply_bytes > 4193786u)
            {
                setup_error_ = UWVM_ROS_TOO_LARGE;
                return;
            }
            roswasmc_action_aliases selected{
                {aliases.send.data(),                                              aliases.send.size()      },
                {aliases.cancel_own.data(),                                        aliases.cancel_own.size()},
                {aliases.feedback.data(),                                          aliases.feedback.size()  },
                {aliases.result.data(),                                            aliases.result.size()    },
                {aliases.cancel_any.empty() ? nullptr : aliases.cancel_any.data(), aliases.cancel_any.size()}
            };
            setup_error_ = roswasmc_action_bundle_init(&context_, &bundle_, &selected, goals_.data(), goals_.size());
        }

        /** @brief Reject copying role handles and local goal ownership.
         * @details The unnamed source cannot duplicate the bundle's cleanup duty.
         * @see ActionClientBundle::ActionClientBundle
         */
        ActionClientBundle(ActionClientBundle const&) = delete;
        /** @brief Reject copy replacement of an existing role bundle.
         * @details The unnamed source cannot silently overwrite role/ID ownership.
         * @see ActionClientBundle::close_checked
         */
        ActionClientBundle& operator= (ActionClientBundle const&) = delete;
        /** @brief Reject moving the stable inline C context and goal table.
         * @details The unnamed source remains stationary so internal C pointers and
         * queued callback borrows cannot dangle after transfer.
         * @see ActionClientBundle::ActionClientBundle
         */
        ActionClientBundle(ActionClientBundle&&) = delete;
        /** @brief Reject move replacement of stable role/ID storage.
         * @details The unnamed source cannot rebind internal and external borrowers.
         * @see ActionClientBundle::close_checked
         */
        ActionClientBundle& operator= (ActionClientBundle&&) = delete;

        /** @brief Attempt one checked close of an active bundle before destruction.
         * @details Discards its report and never invokes native goal cancellation
         * or alias revocation. Use explicit checked cleanup to retain failures.
         * @see ActionClientBundle::close_checked
         */
        ~ActionClientBundle()
        {
            if(bundle_.active)
            {
                roswasmc_action_bundle_close_checked(&bundle_, 0, nullptr, 0);
            }
        }

        /** @brief Inspect setup and local C-bundle structural/active state.
         * @details Performs no Runtime dispatch; does not query host role expiry.
         * @return Stored setup error or exact C local check status, including
         * BAD_HANDLE when inactive and INVALID for malformed local structure.
         * @see roswasmc_action_bundle_check
         */
        uint32_t error() const noexcept
        {
            return setup_error_ ? setup_error_ : roswasmc_action_bundle_check(&bundle_);
        }

        /** @brief Inspect whether the local bundle check currently succeeds.
         * @details No host liveness or operation-readiness guarantee follows.
         * @return Whether error() is zero.
         * @see ActionClientBundle::error
         */
        bool is_open() const noexcept
        {
            return error() == 0;
        }

        /** @brief Copy construction-time primary/rollback status and counts.
         * @details Later explicit cleanup does not replace this construction report.
         * @return Preserved C rollback report, independent of setup error storage.
         * @see ActionClientBundle::rollback_codes
         */
        roswasmc_cleanup_report rollback_status() const noexcept
        {
            return bundle_.rollback;
        }

        /** @brief Copy per-role construction rollback errors in acquisition order.
         * @details Order is send, cancel-own, feedback, result, cancel-any; absent or
         * unattempted roles have their initialized zero status. Inspect the aggregate
         * rollback report to determine what actually required cleanup.
         * @return Five local role-status codes without additional cleanup attempts.
         * @see ActionClientBundle::rollback_status
         */
        std::array<uint32_t, 5> rollback_codes() const noexcept
        {
            return {bundle_.rollback_status[0], bundle_.rollback_status[1], bundle_.rollback_status[2], bundle_.rollback_status[3], bundle_.rollback_status[4]};
        }

        /** @brief Copy actual opaque handles in send/own/feedback/result/any order.
         * @details These IDs are diagnostic instance-local identities, not transferable rights.
         * Empty/retired role entries are zero and direct mutation through saved raw
         * IDs must respect the bundle's local ownership/callback lifetime contract.
         * @return Five handle-bit snapshots in acquisition order.
         * @see ActionClientAliases
         */
        std::array<uint64_t, 5> handles() const noexcept
        {
            return {bundle_.cap[0].handle, bundle_.cap[1].handle, bundle_.cap[2].handle, bundle_.cap[3].handle, bundle_.cap[4].handle};
        }

        /** @brief Inspect whether an active fifth cancel-any role was acquired.
         * @details Does not establish a new grant or guarantee host acceptance for
         * any particular goal/all-goals request.
         * @return True for a valid active bundle with a nonzero fifth-role handle.
         * @see ActionClientBundle::cancel_any
         */
        bool has_cancel_any() const noexcept
        {
            return is_open() && bundle_.roles == 5 && bundle_.cap[4].handle;
        }

        /** @brief Count locally tracked nonzero outstanding goal IDs.
         * @details Ordering is unspecified. Cancellation acknowledgments do not
         * remove entries; successful terminal reception or retirement does.
         * @return Current local count bounded by maximum_goals.
         * @see ActionClientBundle::receive_result
         */
        size_t goal_count() const noexcept
        {
            return bundle_.count;
        }

        /** @brief Test local goal-table provenance without a host request.
         * @details Runtime ownership/resource authorization remains independent.
         * @param[in] goal Identifier to inspect; zero cannot be a tracked goal.
         * @return Whether this bundle currently tracks the goal ID.
         * @see ActionClientBundle::goal_count
         */
        bool owns_goal(uint64_t goal) const noexcept
        {
            return roswasmc_action_bundle_owns(&bundle_, goal) != 0;
        }

        /** @brief Inspect the last dispatch/local refusal, including error90 length validity.
         * @details A required-length observation never permits automatic resize/replay.
         * Updated by send/cancel/receive operations, not construction/cleanup;
         * initially contains BAD_HANDLE with no valid length.
         * @return Copied exact C result; use length only when has_length is true.
         * @see roswasmc_result
         */
        Result last_result() const noexcept
        {
            return last_;
        }

        /** @brief Send one bounded Fibonacci goal and track its validated ID.
         * @details C bundle checks order 0..46 and a free slot before import, then
         * exact nonzero/unique returned ID before committing output/table. A failed
         * or uncertain native send is never replayed automatically.
         * @param[in] order Fibonacci order in 0..46.
         * @param[out] goal New tracked correlation ID, unchanged on reported failure.
         * @return Exact setup/local/C/host send status; last_result retains metadata.
         * @see roswasmc_action_bundle_send_goal
         */
        uint32_t send_goal(int32_t order, uint64_t& goal)
        {
            if(error())
            {
                return refusal(error());
            }
            last_ = roswasmc_action_bundle_send_goal(&bundle_, order, &goal);
            return last_.error;
        }

        /** @brief Request cancellation of one locally tracked goal exactly once.
         * @details Requires its nonzero local ID and the own-cancel role. Native
         * acceptance does not imply terminal completion or remove local tracking.
         * @param[in] goal Nonzero locally tracked goal identifier.
         * @param[out] accepted Actual native acceptance, unchanged on failure.
         * @return Exact C/local/host status; zero includes accepted=false.
         * @see roswasmc_action_bundle_cancel_own
         */
        uint32_t cancel_own(uint64_t goal, bool& accepted)
        {
            if(error())
            {
                return refusal(error());
            }
            int next = 0;
            last_ = roswasmc_action_bundle_cancel_own(&bundle_, goal, &next);
            if(!last_.error)
            {
                accepted = next != 0;
            }
            return last_.error;
        }

        /** @brief Receive one exact feedback sequence for a tracked goal.
         * @details C checks ownership/correlation and complete bounded framing;
         * C++ copies all elements. Feedback does not retire the tracked ID.
         * @param[in] goal Nonzero locally tracked correlation identifier.
         * @param[out] sequence Owning complete sequence, unchanged on reported failure.
         * @return Exact status such as AGAIN/TOO_LARGE, or zero for one feedback.
         * @see roswasmc_action_bundle_feedback
         */
        uint32_t receive_feedback(uint64_t goal, wire::action_sequence& sequence)
        {
            return receive(goal, sequence, false);
        }

        /** @brief Receive a validated terminal result and retire only its local ID.
         * @details C requires matching ID and terminal kind 2..4 before retirement,
         * then C++ copies complete owning elements. Allocation failure follows
         * library policy after C retirement and cannot authorize replaying receive.
         * @param[in] goal Nonzero locally tracked correlation identifier.
         * @param[out] sequence Owning terminal result, unchanged on reported failure.
         * @return Exact C/local/host receive status or zero for a complete result.
         * @see roswasmc_action_bundle_result
         */
        uint32_t receive_result(uint64_t goal, wire::action_sequence& sequence)
        {
            return receive(goal, sequence, true);
        }

        /** @brief Request all-goals cancellation through the explicit fifth role.
         * @details An absent optional role returns DENIED locally. Sends the zero-ID
         * protocol selector; host policy can allow scope beyond this owner's table.
         * Acceptance never removes local IDs or undoes prior admitted effects.
         * @param[out] accepted Native acceptance Boolean, unchanged on failure.
         * @return Exact C/local/host status; zero is distinct from acceptance=true.
         * @see roswasmc_action_bundle_cancel_all
         */
        uint32_t cancel_all(bool& accepted)
        {
            if(error())
            {
                return refusal(error());
            }
            int next = 0;
            last_ = roswasmc_action_bundle_cancel_all(&bundle_, &next);
            if(!last_.error)
            {
                accepted = next != 0;
            }
            return last_.error;
        }

        /** @brief Cancel a nonzero selected goal only through the explicit fifth role.
         * @details This stronger role can select a goal outside the local table; the Runtime
         * still enforces known-ID/resource/any-scope authority. Zero is refused22;
         * use cancel_all deliberately for the distinct all-goals request. No local
         * ID is retired from cancellation acknowledgement alone.
         * @param[in] goal Nonzero target goal identifier, not necessarily locally tracked.
         * @param[out] accepted Native acceptance Boolean, unchanged on failure.
         * @return Exact C/local/host status, including DENIED for no optional role
         * and INVALID for zero goal; last_result retains exact metadata.
         * @see roswasmc_action_bundle_cancel_any
         */
        uint32_t cancel_any(uint64_t goal, bool& accepted)
        {
            if(error())
            {
                return refusal(error());
            }
            int next = 0;
            last_ = roswasmc_action_bundle_cancel_any(&bundle_, goal, &next);
            if(!last_.error)
            {
                accepted = next != 0;
            }
            return last_.error;
        }

        /** @brief Queue one existing bounded synchronous send on a local Executor.
         * @details Bundle must outlive task; cancel pending work before close/destruction.
         * No native async thread, implicit timeout/clock or retry is introduced.
         * Queue rejection is a ready error Future; pending cancellation does not
         * interrupt an already executing synchronous native send.
         * @param[in,out] executor Local explicit-spin scheduler receiving the task.
         * @param[in] order Fibonacci order in 0..46, checked when send executes.
         * @param[in] completion Optional owning completed-ID/status callback.
         * @param[in,out] group Optional stationary group borrowed until task release.
         * @return Shared-state Future for the one deferred send or queue rejection.
         * @see Executor::post
         */
        Future<uint64_t>
            async_send_goal(Executor& executor, int32_t order, std::function<void(DeferredResult<uint64_t>)> completion = {}, CallbackGroup* group = nullptr)
        {
            return executor.post<uint64_t>(
                [this, order]
                {
                    uint64_t goal = 0;
                    auto code = send_goal(order, goal);
                    return DeferredResult<uint64_t>{code, goal};
                },
                std::move(completion),
                group);
        }

        /** @brief Close all live roles in reverse with acquisition-order statuses.
         * @details C checks nonoverlapping output storage and every required close
         * callback before retirement. Local unsupported cleanup preserves the bundle;
         * actual retirement clears tracked IDs and attempts each role once.
         * @param[out] statuses Optional independent writable 4/5-role status array,
         * at least the acquired role count when nonempty, in acquisition order.
         * @param[in] primary_error Existing primary status retained independently.
         * @return Full primary/cleanup report and attempt/failure counts.
         * @see roswasmc_action_bundle_close_checked
         */
        roswasmc_cleanup_report close_checked(std::span<uint32_t> statuses = {}, uint32_t primary_error = 0)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary_error, statuses.empty() ? nullptr : statuses.data(), statuses.size());
        }

        /** @brief Revoke all selected role aliases with complete checked reporting.
         * @details Uses independent host grants and the same destination/callback
         * prechecks as close_checked. Revocation is explicit; no implicit stronger
         * authority, ordinary-close fallback or cleanup retry is introduced.
         * @param[out] statuses Optional independent writable array of acquired role
         * count, ordered send/cancel-own/feedback/result/optional-cancel-any.
         * @param[in] primary_error Existing primary failure preserved separately.
         * @return Full checked revocation primary/cleanup report.
         * @see roswasmc_action_bundle_revoke_checked
         */
        roswasmc_cleanup_report revoke_checked(std::span<uint32_t> statuses = {}, uint32_t primary_error = 0)
        {
            return roswasmc_action_bundle_revoke_checked(&bundle_, primary_error, statuses.empty() ? nullptr : statuses.data(), statuses.size());
        }

        /** @brief Close the bundle through checked cleanup with aggregate status.
         * @details Use close_checked when per-role errors/counts must be retained.
         * @return First checked cleanup error or zero for successful retirement.
         * @see ActionClientBundle::close_checked
         */
        uint32_t close()
        {
            return close_checked().cleanup_error;
        }

        /** @brief Revoke all granted roles through checked cleanup with aggregate status.
         * @details Explicit reverse alias mutation is never a destructor action.
         * @return First checked revocation error or zero for successful retirement.
         * @see ActionClientBundle::revoke_checked
         */
        uint32_t revoke()
        {
            return revoke_checked().cleanup_error;
        }
    };
    /** @brief Specialization point for complete scalar/array parameter conversion.
     * @details Supported local codecs produce owning bytes or decode owning values
     * without reading/writing host parameters. Encode uses empty as validation
     * failure; valid empty Strings/arrays retain a nonempty count prefix. Decode
     * preserves destinations on false. Calls are synchronous and caller-serialized;
     * allocation exceptions/termination follow library policy, not numeric ROS errors.
     * @tparam T Explicitly supported scalar/vector type or BooleanArray.
     * @see roswasmcpp::Parameters
     */
    template <class T>
    struct ParameterCodec;

    /** @brief Canonical one-byte Boolean parameter codec.
     * @details Only 0/1 are accepted wire values; host type/rights are separate.
     * @see wire::parameter_bool
     */
    template <>
    struct ParameterCodec<bool>
    {
        /** @brief Encode one Boolean scalar as an owning canonical byte.
         * @details Every C++ bool is representable without native-layout copying.
         * @param[in] v Complete Boolean parameter value.
         * @return One owning byte, 0 for false or 1 for true.
         * @see ParameterCodec<bool>::decode
         */
        static wire::bytes encode(bool v)
        {
            return wire::parameter_bool(v);
        }

        /** @brief Decode exactly one canonical Boolean scalar.
         * @details Rejects other byte values and all non-one-byte extents.
         * @param[in] b Borrowed complete scalar payload.
         * @param[out] v Destination, unchanged on false.
         * @return True for exact 0/1 framing/value.
         * @see wire::decode_parameter_bool
         */
        static bool decode(std::span<unsigned char const> b, bool& v)
        {
            return wire::decode_parameter_bool(b, v);
        }
    };

    /** @brief Signed 32-bit scalar codec for the ROS1 parameter representation.
     * @details Local conversion preserves the full signed bit domain; native
     * backend parameter/type support is still host-selected.
     * @see wire::parameter_int32
     */
    template <>
    struct ParameterCodec<int32_t>
    {
        /** @brief Encode signed 32-bit parameter bits in little-endian order.
         * @details No physical-unit or range normalization occurs.
         * @param[in] v Full int32_t value in application-defined units.
         * @return Exactly four owning bytes.
         * @see ParameterCodec<int32_t>::decode
         */
        static wire::bytes encode(int32_t v)
        {
            return wire::parameter_int32(v);
        }

        /** @brief Decode an exact signed 32-bit scalar bit pattern.
         * @details Requires four bytes, without truncation or trailing bytes.
         * @param[in] b Borrowed complete little-endian payload.
         * @param[out] v Destination, unchanged on false.
         * @return True for an exact complete scalar.
         * @see wire::decode_parameter_int32
         */
        static bool decode(std::span<unsigned char const> b, int32_t& v)
        {
            return wire::decode_parameter_int32(b, v);
        }
    };

    /** @brief Signed 64-bit scalar codec for the ROS2 parameter representation.
     * @details Preserves all signed bits; native type availability/permission is
     * independently enforced by the selected host alias.
     * @see wire::parameter_int64
     */
    template <>
    struct ParameterCodec<int64_t>
    {
        /** @brief Encode a signed 64-bit value without changing its bits or units.
         * @details Uses eight little-endian bytes, independently of native padding.
         * @param[in] v Full int64_t value in application-defined units.
         * @return Exactly eight owning bytes.
         * @see ParameterCodec<int64_t>::decode
         */
        static wire::bytes encode(int64_t v)
        {
            return wire::parameter_int64(v);
        }

        /** @brief Decode an exact signed 64-bit scalar bit pattern.
         * @details Rejects every extent other than eight bytes before committing.
         * @param[in] b Borrowed complete little-endian payload.
         * @param[out] v Destination, unchanged on false.
         * @return True for an exact complete scalar.
         * @see wire::decode_parameter_int64
         */
        static bool decode(std::span<unsigned char const> b, int64_t& v)
        {
            return wire::decode_parameter_int64(b, v);
        }
    };

    /** @brief Finite binary64 parameter scalar codec.
     * @details Requires native eight-byte IEC559 doubles; nonfinite values are
     * rejected and finite signed-zero bits are preserved.
     * @see wire::parameter_float64
     */
    template <>
    struct ParameterCodec<double>
    {
        /** @brief Encode one finite binary64 parameter value.
         * @details Canonical encoding is little-endian and performs no unit conversion.
         * @param[in] v Finite scalar in application-defined units.
         * @return Eight owning bytes, or empty for NaN/infinity.
         * @see ParameterCodec<double>::decode
         */
        static wire::bytes encode(double v)
        {
            return wire::parameter_float64(v);
        }

        /** @brief Decode an exact finite binary64 scalar.
         * @details Requires eight bytes and a finite decoded value before commit.
         * @param[in] b Borrowed complete little-endian scalar payload.
         * @param[out] v Destination in encoded units, unchanged on false.
         * @return True for exact framing and a finite scalar.
         * @see wire::decode_parameter_float64
         */
        static bool decode(std::span<unsigned char const> b, double& v)
        {
            return wire::decode_parameter_float64(b, v);
        }
    };

    /** @brief Owning scalar UTF-8 String parameter codec with embedded-NUL support.
     * @details Counts content bytes with a uint32 prefix. Local conversion does
     * not establish native DDS/type availability or the host's smaller alias quota.
     * @see wire::string
     */
    template <>
    struct ParameterCodec<std::string>
    {
        /** @brief Encode complete UTF-8 scalar text, retaining embedded U+0000.
         * @details Validates text and uint32 content-length framing before returning
         * owning bytes; memory/allocation limits remain standard-library policy.
         * @param[in] value Owning text read only during this call.
         * @return Complete counted String bytes, or empty on validation failure.
         * @see ParameterCodec<std::string>::decode
         */
        static wire::bytes encode(std::string const& value)
        {
            if(!wire::parameter_array_detail::text_valid(value, true))
            {
                return {};
            }
            return wire::string(value);
        }

        /** @brief Decode exact UTF-8 scalar text into independent owning storage.
         * @details Rejects malformed/trailing framing and invalid UTF-8 before
         * committing. Embedded U+0000 follows the scalar-String contract.
         * @param[in] bytes Borrowed complete counted String payload.
         * @param[out] value Owning destination, unchanged on false.
         * @return True for complete canonical framing and valid scalar UTF-8.
         * @see wire::decode_string
         */
        static bool decode(std::span<unsigned char const> bytes, std::string& value)
        {
            std::string next;
            if(!wire::decode_string(bytes, next) || !wire::parameter_array_detail::text_valid(next, true))
            {
                return false;
            }
            value = std::move(next);
            return true;
        }
    };

    /** @brief Bounded owning unsigned-byte parameter-array codec.
     * @details All element values 0..255 are valid. Encoded bounds are at most
     * 1048576 elements and 4193786 bytes including the uint32 count.
     * @see wire::parameter_byte_array
     */
    template <>
    struct ParameterCodec<std::vector<uint8_t>>
    {
        /** @brief Encode one complete counted array of unsigned bytes.
         * @details Applies canonical array bounds without host type/permission changes.
         * @param[in] values Owning element storage read only for this call.
         * @return Complete owning bytes, or empty on bounds failure.
         * @see ParameterCodec<std::vector<uint8_t> >::decode
         */
        static wire::bytes encode(std::vector<uint8_t> const& values)
        {
            return wire::parameter_byte_array(values);
        }

        /** @brief Decode an exact bounded byte array into independent storage.
         * @details Count must match the entire payload and satisfy canonical bounds.
         * @param[in] bytes Borrowed complete count-prefixed encoding.
         * @param[out] values Owning byte destination, unchanged on false.
         * @return True for a complete valid array, including count zero.
         * @see wire::decode_parameter_byte_array
         */
        static bool decode(std::span<unsigned char const> bytes, std::vector<uint8_t>& values)
        {
            return wire::decode_parameter_byte_array(bytes, values);
        }
    };

    /** @brief Bounded owning signed 32-bit parameter-array codec.
     * @details Preserves signed bits, with at most 1048576 elements and 4193786
     * total bytes including the count; native support remains host-selected.
     * @see wire::parameter_int32_array
     */
    template <>
    struct ParameterCodec<std::vector<int32_t>>
    {
        /** @brief Encode a complete count-prefixed signed 32-bit array.
         * @details Each element uses four little-endian bytes; both canonical count
         * and aggregate byte bounds apply.
         * @param[in] values Owning signed elements read during this call.
         * @return Complete owning bytes, or empty on bounds failure.
         * @see ParameterCodec<std::vector<int32_t> >::decode
         */
        static wire::bytes encode(std::vector<int32_t> const& values)
        {
            return wire::parameter_int32_array(values);
        }

        /** @brief Decode every signed 32-bit element of an exact bounded array.
         * @details Rejects count/extent mismatches before committing the owning vector.
         * @param[in] bytes Borrowed complete little-endian array payload.
         * @param[out] values Owning destination, unchanged on false.
         * @return True for a complete canonical array.
         * @see wire::decode_parameter_int32_array
         */
        static bool decode(std::span<unsigned char const> bytes, std::vector<int32_t>& values)
        {
            return wire::decode_parameter_int32_array(bytes, values);
        }
    };

    /** @brief Bounded owning signed 64-bit parameter-array codec.
     * @details Uses a uint32 count and eight bytes per signed element, within
     * 1048576 elements and 4193786 total bytes; the byte bound can be stricter.
     * @see wire::parameter_int64_array
     */
    template <>
    struct ParameterCodec<std::vector<int64_t>>
    {
        /** @brief Encode complete signed 64-bit elements with exact bit preservation.
         * @details Applies count and byte bounds before returning the complete vector.
         * @param[in] values Owning signed elements read only for this call.
         * @return Complete owning bytes, or empty on canonical bounds failure.
         * @see ParameterCodec<std::vector<int64_t> >::decode
         */
        static wire::bytes encode(std::vector<int64_t> const& values)
        {
            return wire::parameter_int64_array(values);
        }

        /** @brief Decode an exact bounded signed 64-bit array.
         * @details Validates count, aggregate bytes and trailing extent before commit.
         * @param[in] bytes Borrowed complete count-prefixed little-endian payload.
         * @param[out] values Owning destination, unchanged on false.
         * @return True for the complete canonical array.
         * @see wire::decode_parameter_int64_array
         */
        static bool decode(std::span<unsigned char const> bytes, std::vector<int64_t>& values)
        {
            return wire::decode_parameter_int64_array(bytes, values);
        }
    };

    /** @brief Bounded owning array codec requiring finite binary64 elements.
     * @details Rejects NaN/infinity and bounds both element count to 1048576 and
     * total encoded bytes to 4193786, including the count prefix.
     * @see wire::parameter_float64_array
     */
    template <>
    struct ParameterCodec<std::vector<double>>
    {
        /** @brief Encode a complete finite binary64 array.
         * @details Every element is checked; no unit conversion or normalization occurs.
         * @param[in] values Owning finite doubles in application-defined units.
         * @return Complete owning bytes, or empty on element/count/byte failure.
         * @see ParameterCodec<std::vector<double> >::decode
         */
        static wire::bytes encode(std::vector<double> const& values)
        {
            return wire::parameter_float64_array(values);
        }

        /** @brief Decode all finite elements of an exact bounded binary64 array.
         * @details Rejects nonfinite values and malformed count/extent before commit.
         * @param[in] bytes Borrowed complete count-prefixed little-endian payload.
         * @param[out] values Owning doubles in encoded units, unchanged on false.
         * @return True for the complete finite array.
         * @see wire::decode_parameter_float64_array
         */
        static bool decode(std::span<unsigned char const> bytes, std::vector<double>& values)
        {
            return wire::decode_parameter_float64_array(bytes, values);
        }
    };

    /** @brief Bounded owning UTF-8 String-array parameter codec.
     * @details Elements reject embedded NULs. Count is at most 1048576 and every
     * String length prefix contributes to the 4193786-byte encoded bound.
     * @see wire::parameter_string_array
     */
    template <>
    struct ParameterCodec<std::vector<std::string>>
    {
        /** @brief Encode all validated no-NUL UTF-8 String elements.
         * @details Applies text, count and aggregate byte checks before commit.
         * @param[in] values Complete owning String elements for this call.
         * @return Complete owning array bytes, or empty on validation failure.
         * @see ParameterCodec<std::vector<std::string> >::decode
         */
        static wire::bytes encode(std::vector<std::string> const& values)
        {
            return wire::parameter_string_array(values);
        }

        /** @brief Decode an exact bounded UTF-8 String array into independent text.
         * @details Checks every length, UTF-8/no-NUL element and final extent before
         * committing complete owning Strings.
         * @param[in] bytes Borrowed complete canonical array payload.
         * @param[out] values Owning destination, unchanged on false.
         * @return True for the complete supported String array.
         * @see wire::decode_parameter_string_array
         */
        static bool decode(std::span<unsigned char const> bytes, std::vector<std::string>& values)
        {
            return wire::decode_parameter_string_array(bytes, values);
        }
    };

    /** @brief Owning Boolean array with explicit 0/1 bytes instead of vector<bool>.
     * @details Distinguishes Boolean semantics from unrestricted unsigned bytes.
     * @see roswasmcpp::ParameterCodec<roswasmcpp::BooleanArray>
     */
    struct BooleanArray
    {
        /** @brief Complete owning Boolean elements, each byte at most 1.
         * @details Canonical encoding checks every element and array bounds.
         * @see wire::parameter_bool_array
         */
        std::vector<uint8_t> values;
    };

    /** @brief Bounded canonical Boolean-array codec with 0/1 validation.
     * @details Uses a uint32 count and byte elements, within 1048576 elements and
     * 4193786 total encoded bytes; host native type support is independent.
     * @see wire::parameter_bool_array
     */
    template <>
    struct ParameterCodec<BooleanArray>
    {
        /** @brief Encode a complete Boolean array after validating every byte.
         * @details Rejects byte values above 1 and canonical count/byte-bound excess.
         * @param[in] value Complete owning 0/1 elements for this call.
         * @return Complete owning bytes, or empty on validation failure.
         * @see ParameterCodec<BooleanArray>::decode
         */
        static wire::bytes encode(BooleanArray const& value)
        {
            return wire::parameter_bool_array(value.values);
        }

        /** @brief Decode an exact bounded 0/1 array into owning byte storage.
         * @details Complete canonical validation precedes destination commit.
         * @param[in] bytes Borrowed complete count-prefixed Boolean payload.
         * @param[out] value Owning destination, unchanged on false.
         * @return True for a complete canonical Boolean array.
         * @see wire::decode_parameter_bool_array
         */
        static bool decode(std::span<unsigned char const> bytes, BooleanArray& value)
        {
            return wire::decode_parameter_bool_array(bytes, value.values);
        }
    };

    /** @brief One explicitly granted parameter operation over its fixed node/name/type.
     * @details Construct separate objects for get/set/declare/etc. Metadata aliases are not
     * value aliases, and value grants do not grant parameter-event subscription.
     * Original C context/backend must outlive cleanup. Serialize the owning reply
     * buffer; operations execute once synchronously without automatic mutation retry.
     * @see roswasmcpp::ParameterCodec
     */
    class Parameters
    {
        Capability capability_;
        roswasmc_operation operation_;
        wire::bytes buffer_;

    public:
        /** @brief Bind one parameter selector and fixed response capacity.
         * @details Rejects selectors outside PARAMETER_GET through PARAMETER_UNDECLARE
         * locally before acquisition; support never implies host name/type rights.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact granted parameter operation alias.
         * @param[in] operation Canonical value or metadata operation selector.
         * @param[in] capacity Complete reply bytes in 0..4193786.
         * @see Capability::Capability
         */
        Parameters(roswasmc_context const& context, std::string_view alias, roswasmc_operation operation, size_t capacity) :
            capability_{context, alias, operation, operation >= ROSWASMC_PARAMETER_GET && operation <= ROSWASMC_PARAMETER_UNDECLARE, capacity},
            operation_{operation}, buffer_(capacity <= 4193786u ? capacity : 0)
        {
        }

        /** @brief Inspect cached parameter-role validation/acquisition status.
         * @details Does not include later per-operation or cleanup errors.
         * @return Stored capability open/precheck error.
         * @see Parameters::get
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Read/decode one complete value through the parameter-get role.
         * @details Requires GET and the exact host type/read grant. Uses fixed
         * reply storage once and commits only after complete typed decoding.
         * @tparam T Supported default-constructible owning ParameterCodec value type.
         * @param[out] value Owning destination, unchanged on reported failure.
         * @return Setup error, DENIED for wrong role, exact request error, INVALID
         * for malformed result/codec bytes, or zero.
         * @see roswasmcpp::ParameterCodec
         */
        template <class T>
        uint32_t get(T& value)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_PARAMETER_GET)
            {
                return UWVM_ROS_DENIED;
            }
            auto result = capability_.request(operation_, {}, buffer_);
            if(result.error)
            {
                return result.error;
            }
            T next{};
            if(!result.has_length || result.length > buffer_.size() || !ParameterCodec<T>::decode({buffer_.data(), static_cast<size_t>(result.length)}, next))
            {
                return UWVM_ROS_INVALID;
            }
            value = std::move(next);
            return 0;
        }

        /** @brief Encode and submit one parameter set/declaration exactly once.
         * @details Requires SET/DECLARE and independent host mutation/type rights.
         * Invalid local encoding prevents import; successful request bytes do not
         * authorize automatic replay after reply-size/transport failure.
         * @tparam T Complete owning type with a supported ParameterCodec.
         * @param[in] value Complete parameter value read only during this call.
         * @return Setup error, DENIED for wrong role, INVALID for empty failed
         * encoding, or exact request status; reply bytes are not interpreted.
         * @see Capability::request
         */
        template <class T>
        uint32_t set(T const& value)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_PARAMETER_SET && operation_ != ROSWASMC_PARAMETER_DECLARE)
            {
                return UWVM_ROS_DENIED;
            }
            auto bytes = ParameterCodec<T>::encode(value);
            if(bytes.empty())
            {
                return UWVM_ROS_INVALID;
            }
            auto result = capability_.request(operation_, bytes, buffer_);
            return result.error;
        }

        /** @brief Read exact Boolean existence metadata through the selected role.
         * @details Requires PARAMETER_EXISTS before checking stored setup status;
         * native backend support/visibility remains host-selected. False is a
         * successful absence result, distinct from an operation error.
         * @param[out] value Existence result, unchanged on reported failure.
         * @return DENIED for wrong selector, setup/request error, INVALID for bad
         * Bool metadata/body, or zero (including value=false).
         * @see wire::decode_boolean
         */
        uint32_t exists(bool& value)
        {
            if(operation_ != ROSWASMC_PARAMETER_EXISTS)
            {
                return UWVM_ROS_DENIED;
            }
            return read_bool(value);
        }

        /** @brief Delete/undeclare the exact parameter fixed by the host alias.
         * @details Requires DELETE/UNDECLARE and a matching mutation grant; sends
         * empty input once. Does not interpret reply bytes or replay uncertain work.
         * @return Setup error, DENIED for wrong role, or exact request status.
         * @see Capability::request
         */
        uint32_t erase()
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_PARAMETER_DELETE && operation_ != ROSWASMC_PARAMETER_UNDECLARE)
            {
                return UWVM_ROS_DENIED;
            }
            return capability_.request(operation_, {}, buffer_).error;
        }

        /** @brief Read canonical String metadata for list/search/describe. Policy controls exact scope.
         * @details ROS1 parent search is available only when separately allowed by host policy.
         * Requires the corresponding LIST/SEARCH/DESCRIBE selector and exact fitting
         * String framing. This method adds no scalar UTF-8 validation beyond the
         * structural wire decoder; host text rules remain authoritative.
         * @param[out] value Owning metadata text, unchanged on reported failure.
         * @return Setup error, DENIED for wrong role, exact request error, INVALID
         * for malformed result/String framing, or zero.
         * @see wire::decode_string
         */
        uint32_t metadata(std::string& value)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_PARAMETER_LIST && operation_ != ROSWASMC_PARAMETER_SEARCH && operation_ != ROSWASMC_PARAMETER_DESCRIBE)
            {
                return UWVM_ROS_DENIED;
            }
            auto result = capability_.request(operation_, {}, buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > buffer_.size() || !wire::decode_string({buffer_.data(), static_cast<size_t>(result.length)}, value))
            {
                return UWVM_ROS_INVALID;
            }
            return 0;
        }

    private:
        uint32_t read_bool(bool& value)
        {
            if(error())
            {
                return error();
            }
            auto result = capability_.request(operation_, {}, buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > buffer_.size() || !wire::decode_boolean({buffer_.data(), static_cast<size_t>(result.length)}, value))
            {
                return UWVM_ROS_INVALID;
            }
            return 0;
        }

    public:
        /** @brief Attempt one explicit close of the parameter capability.
         * @details Actual callback execution retires local ownership even on an
         * error; local missing-callback retention follows Capability rules.
         * @return Exact capability cleanup status, without retries.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current parameter-role handle bits, without ownership transfer.
         * @see Parameters::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a nonzero parameter-role handle remains locally.
         * @details Does not establish current host value/type permission or readiness.
         * @return Whether a local capability handle remains.
         * @see Parameters::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief Read one host-filtered graph projection using a selected alias role.
     * @details Visibility/type scope belongs to host policy, not guest-provided
     * resource selectors. Original stationary C context/backend must outlive this
     * owner; serialize fixed-buffer use and handle errors without automatic retry.
     * @see Graph::inspect
     */
    class Graph
    {
        Capability capability_;
        roswasmc_operation operation_;
        wire::bytes buffer_;

    public:
        /** @brief Bind a graph inspect/list selector and fixed reply storage.
         * @details Rejects non-graph selectors before acquisition; no endpoint or
         * unfiltered discovery permission is created by construction.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact granted graph alias.
         * @param[in] operation GRAPH_INSPECT_TOPIC through GRAPH_LIST_SERVICES selector.
         * @param[in] capacity Complete metadata reply bytes in 0..4193786.
         * @see Capability::Capability
         */
        Graph(roswasmc_context const& context, std::string_view alias, roswasmc_operation operation, size_t capacity) :
            capability_{context, alias, operation, operation >= ROSWASMC_GRAPH_INSPECT_TOPIC && operation <= ROSWASMC_GRAPH_LIST_SERVICES, capacity},
            operation_{operation}, buffer_(capacity <= 4193786u ? capacity : 0)
        {
        }

        /** @brief Inspect cached graph-role validation/acquisition status.
         * @details Later inspect/cleanup errors remain separate.
         * @return Stored capability initialization error.
         * @see Graph::inspect
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Query one complete owning String projection using empty input.
         * @details Uses the fixed construction selector and exact reply length/
         * String framing. Adds no UTF-8 admission check beyond the structural
         * decoder; trusted host graph metadata remains subject to host text policy.
         * @param[out] text Owning projection, unchanged on reported failure.
         * @return Setup/request error, INVALID for selector/result/framing failure,
         * or zero for one complete projection.
         * @see wire::decode_string
         */
        uint32_t inspect(std::string& text)
        {
            if(error())
            {
                return error();
            }
            if(operation_ < ROSWASMC_GRAPH_INSPECT_TOPIC || operation_ > ROSWASMC_GRAPH_LIST_SERVICES)
            {
                return UWVM_ROS_INVALID;
            }
            auto result = capability_.request(operation_, {}, buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > buffer_.size() || !wire::decode_string({buffer_.data(), static_cast<size_t>(result.length)}, text))
            {
                return UWVM_ROS_INVALID;
            }
            return 0;
        }

        /** @brief Attempt one explicit close of the graph capability.
         * @details Uses Capability's actual-attempt retirement/unsupported rules.
         * @return Exact cleanup status without implicit retry.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current graph-role handle bits, zero after local retirement.
         * @see Graph::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a graph-role handle remains locally.
         * @details Host revocation/expiry can still make a later inspect fail.
         * @return Whether a nonzero capability handle remains.
         * @see Graph::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief One explicit host clock-read role, independent of WASI clock rights.
     * @details ROS, system and steady domains can have different origins. Original
     * stationary C context/backend must outlive cleanup; no background clock query,
     * conversion, waiting or scheduling permission is introduced.
     * @see Clock::now
     */
    class Clock
    {
        Capability capability_;
        roswasmc_operation operation_;

    public:
        /** @brief Bind one supported clock selector and acquire its explicit alias.
         * @details Non-time selectors fail locally; native support/permission remains
         * selected by backend and host policy. Construction reads no clock.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact time.read-* alias for acquisition.
         * @param[in] operation TIME_READ_ROS, TIME_READ_SYSTEM or TIME_READ_STEADY.
         * @see Capability::Capability
         */
        Clock(roswasmc_context const& context, std::string_view alias, roswasmc_operation operation) :
            capability_{context, alias, operation, operation >= ROSWASMC_TIME_READ_ROS && operation <= ROSWASMC_TIME_READ_STEADY}, operation_{operation}
        {
        }

        /** @brief Inspect cached clock-role validation/acquisition status.
         * @details Does not perform a time query or cache later read errors.
         * @return Stored capability initialization error.
         * @see Clock::now
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Read one exact unsigned nanosecond count in the selected domain.
         * @details Uses one request and requires exactly eight returned bytes.
         * No epoch conversion or cross-domain monotonicity assumption is applied.
         * @param[out] nanoseconds Complete uint64 count, unchanged on reported failure.
         * @return Setup/request error, INVALID for selector/result extent, or zero.
         * @see wire::nanoseconds
         */
        uint32_t now(uint64_t& nanoseconds)
        {
            if(error())
            {
                return error();
            }
            if(operation_ < ROSWASMC_TIME_READ_ROS || operation_ > ROSWASMC_TIME_READ_STEADY)
            {
                return UWVM_ROS_INVALID;
            }
            unsigned char bytes[8];
            auto result = capability_.request(operation_, {}, bytes);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length != 8)
            {
                return UWVM_ROS_INVALID;
            }
            nanoseconds = uwvm_ros_load_u64(bytes);
            return 0;
        }

        /** @brief Attempt one close of the explicit clock capability.
         * @details Uses Capability's actual-attempt retirement/unsupported rules.
         * @return Exact cleanup status without replay.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current clock-role handle bits, zero after local retirement.
         * @see Clock::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a nonzero clock-role handle remains locally.
         * @details Does not read time or query host grant liveness.
         * @return Whether a local capability handle remains.
         * @see Clock::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief Explicit host-selected logging identity and severity role.
     * @details Each severity grant is a separate alias. Original stationary C
     * context/backend must outlive cleanup; calls are synchronous and serialized
     * by the caller, without ambient stdout/stderr or logger fallback.
     * @see Logger::write
     */
    class Logger
    {
        Capability capability_;

    public:
        /** @brief Check log support and acquire one explicitly granted alias.
         * @details Local callback absence prevents open. Construction writes no log
         * record and retains no alias text; inspect error() before use.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact log.write alias.
         * @see Capability::checked
         */
        Logger(roswasmc_context const& context, std::string_view alias) :
            capability_{Capability::checked(context,
                                            alias,
                                            !context.backend        ? UWVM_ROS_INVALID
                                            : !context.backend->log ? UWVM_ROS_UNSUPPORTED
                                                                    : 0)}
        {
        }

        /** @brief Inspect cached logger validation/acquisition status.
         * @details Later write/cleanup errors remain independently returned.
         * @return Stored capability initialization error.
         * @see Logger::write
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Pack one counted String and submit a single log operation.
         * @details Returns cached setup error first. Local Capability framing checks
         * uint32 String length, not UTF-8; caller supplies text admitted by host
         * log policy, severity and byte quotas. No log is retried automatically.
         * @param[in] text Borrowed complete text bytes for this call.
         * @return Setup error, INVALID for local framing refusal, or exact log status.
         * @see Capability::log
         */
        uint32_t write(std::string_view text)
        {
            if(error())
            {
                return error();
            }
            return capability_.log(text);
        }

        /** @brief Attempt one explicit close of the logging capability.
         * @details Uses Capability's actual-attempt retirement/unsupported rules.
         * @return Exact cleanup status without replay.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current logger-role handle bits, zero after local retirement.
         * @see Logger::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a local logging-role handle remains.
         * @details Host expiry/revocation can still make a later write fail.
         * @return Whether a nonzero capability handle remains.
         * @see Logger::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief One transform lookup/broadcast role with independent frame authority.
     * @details Host policy fixes allowed frame pairing and numeric/geometric
     * bounds. Original stationary C context/backend must outlive cleanup; callers
     * serialize fixed-buffer operations without automatic lookup/mutation replay.
     * @see roswasmcpp::msg::Transform
     */
    class TF
    {
        Capability capability_;
        roswasmc_operation operation_;
        wire::bytes buffer_;

    public:
        /** @brief Bind a lookup/broadcast selector and fixed response capacity.
         * @details Other selectors fail locally before open; host grants remain
         * independent for lookup and frame-graph mutation.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact tf.lookup/tf.broadcast alias.
         * @param[in] operation TF_LOOKUP or TF_BROADCAST.
         * @param[in] capacity Complete reply storage bytes in 0..4193786.
         * @see Capability::Capability
         */
        TF(roswasmc_context const& context, std::string_view alias, roswasmc_operation operation, size_t capacity) :
            capability_{context, alias, operation, operation == ROSWASMC_TF_LOOKUP || operation == ROSWASMC_TF_BROADCAST, capacity}, operation_{operation},
            buffer_(capacity <= 4193786u ? capacity : 0)
        {
        }

        /** @brief Inspect cached transform-role validation/acquisition status.
         * @details Later operation/cleanup results remain separately returned.
         * @return Stored capability initialization error.
         * @see TF::lookup
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Query one complete finite transform for the alias's frame pair.
         * @details Requires TF_LOOKUP and one exact fitting response decoded through
         * Codec<msg::Transform>. No frame scope or clock permission is inferred.
         * @param[in] nanoseconds Host lookup-domain timestamp; zero selects latest.
         * @param[out] transform Complete owning result, unchanged on reported failure.
         * @return Setup error, DENIED for wrong role, exact request error, INVALID
         * for malformed metadata/transform, or zero.
         * @see Codec<msg::Transform>
         */
        uint32_t lookup(uint64_t nanoseconds, msg::Transform& transform)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_TF_LOOKUP)
            {
                return UWVM_ROS_DENIED;
            }
            auto bytes = wire::lookup_time(nanoseconds);
            auto result = capability_.request(operation_, bytes, buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > buffer_.size() ||
               !Codec<msg::Transform>::decode({buffer_.data(), static_cast<size_t>(result.length)}, transform))
            {
                return UWVM_ROS_INVALID;
            }
            return 0;
        }

        /** @brief Encode and broadcast one complete timestamped transform once.
         * @details Requires TF_BROADCAST and explicit frame mutation authority.
         * Typed encoding validates finite doubles; host checks frame names,
         * translation bounds and quaternion norm. No normalization or retry occurs.
         * @param[in] transform Complete owning frame/time/metres/XYZW fields.
         * @return Setup error, DENIED for wrong role, INVALID for codec refusal, or
         * exact request status; reply bytes are not interpreted.
         * @see Codec<msg::Transform>
         */
        uint32_t broadcast(msg::Transform const& transform)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_TF_BROADCAST)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes bytes;
            if(!Codec<msg::Transform>::encode(transform, bytes))
            {
                return UWVM_ROS_INVALID;
            }
            return capability_.request(operation_, bytes, buffer_).error;
        }

        /** @brief Attempt one explicit close of the transform capability.
         * @details Uses Capability's actual-attempt retirement/unsupported rules.
         * @return Exact cleanup status, without replay.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current transform-role handle bits, zero after local retirement.
         * @see TF::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a nonzero transform-role handle remains locally.
         * @details Does not query host frame readiness, expiry or revocation.
         * @return Whether a local capability handle remains.
         * @see TF::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief Complete owning lifecycle state identifier and descriptive label.
     * @details Represents a query result rather than transition permission; no
     * state machine or host operation is created by value construction.
     * @see Lifecycle::get_state
     */
    struct LifecycleState
    {
        /** @brief Native lifecycle state identifier byte, initially zero.
         * @details Preserves values 0..255 without guessing unsupported transitions.
         * @see LifecycleState::label
         */
        uint8_t id{};
        /** @brief Owning state label supplied under the host's text contract.
         * @details Expected canonical UTF-8; get_state checks String framing rather
         * than adding a separate UTF-8 validator.
         * @see Lifecycle::get_state
         */
        std::string label;
    };

    /** @brief One explicitly granted ROS2 lifecycle operation; ROS1 returns95.
     * @details Change-state has an empty request: the one permitted transition belongs to
     * host policy, so a guest cannot choose an arbitrary transition ID.
     * Original stationary C context/backend must outlive cleanup. Operations use
     * one bounded buffer synchronously; callers serialize access and never replay
     * an uncertain transition automatically.
     * @see Lifecycle::change_state
     */
    class Lifecycle
    {
        Capability capability_;
        roswasmc_operation operation_;
        wire::bytes buffer_;

    public:
        /** @brief Bind one lifecycle selector and fixed response capacity.
         * @details Rejects other selectors locally. Backend support and independently
         * allowed transition/read scope remain explicit host policy decisions.
         * @param[in] context Stationary C context/backend borrowed through cleanup.
         * @param[in] alias Borrowed exact granted lifecycle operation alias.
         * @param[in] operation LIFECYCLE_GET_STATE or LIFECYCLE_CHANGE_STATE.
         * @param[in] capacity Complete reply bytes in 0..4193786; change needs one byte.
         * @see Capability::Capability
         */
        Lifecycle(roswasmc_context const& context, std::string_view alias, roswasmc_operation operation, size_t capacity) :
            capability_{context, alias, operation, operation == ROSWASMC_LIFECYCLE_GET_STATE || operation == ROSWASMC_LIFECYCLE_CHANGE_STATE, capacity},
            operation_{operation}, buffer_(capacity <= 4193786u ? capacity : 0)
        {
        }

        /** @brief Inspect cached lifecycle-role validation/acquisition status.
         * @details Does not query native state or replace later operation errors.
         * @return Stored capability initialization error.
         * @see Lifecycle::get_state
         */
        uint32_t error() const noexcept
        {
            return capability_.error();
        }

        /** @brief Query one complete state byte and owning counted label.
         * @details Requires GET_STATE, at least five returned bytes and exact String
         * framing before commit. Label bytes are copied without an added UTF-8 check;
         * trusted host text semantics remain independent of local framing.
         * @param[out] state Owning complete destination, unchanged on reported failure.
         * @return Setup error, DENIED for wrong role, exact request error, INVALID
         * for malformed result/label framing, or zero.
         * @see LifecycleState
         */
        uint32_t get_state(LifecycleState& state)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_LIFECYCLE_GET_STATE)
            {
                return UWVM_ROS_DENIED;
            }
            auto result = capability_.request(operation_, {}, buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length < 5 || result.length > buffer_.size())
            {
                return UWVM_ROS_INVALID;
            }
            LifecycleState next;
            next.id = buffer_[0];
            if(!wire::decode_string({buffer_.data() + 1, static_cast<size_t>(result.length) - 1}, next.label))
            {
                return UWVM_ROS_INVALID;
            }
            state = std::move(next);
            return 0;
        }

        /** @brief Submit the one host-granted transition and decode native acceptance.
         * @details Requires CHANGE_STATE and sends an empty canonical request once.
         * Transition selection belongs to the alias policy; guest supplies no native
         * transition ID. True acceptance is distinct from a transport success code.
         * @param[out] accepted Actual native acceptance, unchanged on reported failure.
         * @return Setup error, DENIED for wrong role, exact request error, INVALID
         * for malformed Bool result/body, or zero (including accepted=false).
         * @see roswasmc_lifecycle_change_state
         */
        uint32_t change_state(bool& accepted)
        {
            if(error())
            {
                return error();
            }
            if(operation_ != ROSWASMC_LIFECYCLE_CHANGE_STATE)
            {
                return UWVM_ROS_DENIED;
            }
            auto result = capability_.request(operation_, {}, buffer_);
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > buffer_.size() || !wire::decode_boolean({buffer_.data(), static_cast<size_t>(result.length)}, accepted))
            {
                return UWVM_ROS_INVALID;
            }
            return 0;
        }

        /** @brief Attempt one close of the explicit lifecycle capability.
         * @details Uses Capability's actual-attempt retirement/unsupported rules.
         * Does not undo an admitted transition or emulate native state cleanup.
         * @return Exact cleanup status without retry.
         * @see Capability::close
         */
        uint32_t close()
        {
            return capability_.close();
        }

        /** @brief Borrow the actual opaque instance-owned handle for reviewed raw calls.
         * @details Never fabricate/transfer it or retain authority after close. A closed
         * facade returns zero; a saved old ID remains stale at the runtime. Raw ABI
         * calls operate outside typed borrow guards; never close/revoke/poll an ID
         * that is actively borrowed by a typed resource callback.
         * @return Current lifecycle-role handle bits, without ownership transfer.
         * @see Lifecycle::is_open
         */
        uint64_t handle() const noexcept
        {
            return capability_.handle();
        }

        /** @brief Inspect whether a nonzero lifecycle-role handle remains locally.
         * @details Does not query current native state or host grant liveness.
         * @return Whether a local capability handle remains.
         * @see Lifecycle::handle
         */
        bool is_open() const noexcept
        {
            return capability_.is_open();
        }
    };

    /** @brief Local construction context for typed resources, with an optional diagnostic label.
     * @details The label is not a native node name. Native endpoint identities are supplied
     * only by host policy. Node must outlive its dependent resources; moving/copying
     * Node is disabled so stored context references cannot silently dangle.
     * Backend and optional Context must outlive this stationary Node. Resource
     * owners borrowing its inline C context require Node to outlive their cleanup;
     * ActionClientBundle instead copies metadata and documents its own backend
     * borrow. Factories are synchronous, caller-serialized and create no implicit
     * permissions, native node, background thread or operation retry.
     * @see Node::context
     */
    class Node
    {
        roswasmc_context context_;
        std::string label_;
        Context const* lifecycle_{};
        roswasmc_context stopped_context_{nullptr};

    public:
        /** @brief Select a borrowed backend and copy an optional diagnostic label.
         * @details Opens no alias or native node and has no external Context gate.
         * The label has no endpoint/permission meaning.
         * @param[in] backend Immutable dispatch table borrowed through dependent use.
         * @param[in] label Borrowed live bytes copied into owned storage, default empty.
         * @see Node::label
         */
        explicit Node(roswasmc_backend const& backend, std::string_view label = {}) : context_{&backend}, label_{label}
        {
        }

        /** @brief Associate controlled local shutdown. New factories reject after stop.
         * @details Existing owners remain explicitly closeable and retain their original
         * stable context. Shutdown grants/revokes no native authority by itself.
         * @param[in] context Stationary local Context/backend borrowed for Node lifetime.
         * @param[in] label Borrowed diagnostic bytes to copy, default empty.
         * @see Node::context
         */
        explicit Node(Context const& context, std::string_view label = {}) : context_{&context.backend()}, label_{label}, lifecycle_{&context}
        {
        }

        /** @brief Reject copying the Node's stable inline context identity.
         * @details The unnamed source cannot duplicate existing context borrows.
         * @see Node::context
         */
        Node(Node const&) = delete;
        /** @brief Reject copy replacement of a Node with possible context borrowers.
         * @details The unnamed source cannot silently rebind dependent resources.
         * @see Node::context
         */
        Node& operator= (Node const&) = delete;
        /** @brief Reject moving the stationary context/factory identity.
         * @details The unnamed source remains fixed so capability pointers stay valid.
         * @see Node::context
         */
        Node(Node&&) = delete;
        /** @brief Reject move replacement that could invalidate dependent context pointers.
         * @details The unnamed source cannot overwrite a live stationary Node identity.
         * @see Node::context
         */
        Node& operator= (Node&&) = delete;

        /** @brief Borrow the locally owned diagnostic label bytes.
         * @details Valid until Node destruction; no native ROS identity or host
         * metadata query is implied by the returned text.
         * @return Immutable counted view of the owned label.
         * @see Node::Node
         */
        std::string_view label() const noexcept
        {
            return label_;
        }

        /** @brief Borrow the current inline C context for explicit resource factories.
         * @details Returns normal metadata while its optional Context runs, otherwise
         * an inline null-backend context causing new acquisition to fail. Both
         * references belong to this Node and require its lifetime through cleanup.
         * @return Borrowed immutable current factory context, without a host grant.
         * @see Node::Node
         */
        roswasmc_context const& context() const noexcept
        {
            return lifecycle_ && !lifecycle_->running() ? stopped_context_ : context_;
        }

        /** @brief Construct one typed publisher from an explicit alias.
         * @details Topic/type/QoS remain host-selected. Returned owner borrows this
         * Node's C context; inspect its error() before use.
         * @tparam Message Complete owning message type with a Codec specialization.
         * @param[in] alias Borrowed exact granted topic.publish alias.
         * @return Publisher owner carrying acquisition status and possible handle.
         * @see Publisher::Publisher
         */
        template <class Message>
        Publisher<Message> create_publisher(std::string_view alias)
        {
            return {context(), alias};
        }

        /** @brief Construct/activate one bounded typed topic subscription.
         * @details Returned owner borrows this Node's context and installs no callback.
         * Inspect primary and rollback status before registering/dispatching it.
         * @tparam Message Complete owning message with a Codec specialization.
         * @param[in] alias Borrowed exact granted topic.subscribe alias.
         * @param[in] capacity Complete receive storage bytes in 0..4193786.
         * @return Subscription owner with fixed storage and explicit setup status.
         * @see Subscription::Subscription
         */
        template <class Message>
        Subscription<Message> create_subscription(std::string_view alias, size_t capacity)
        {
            return {context(), alias, capacity};
        }

        /** @brief Construct/activate an explicitly granted typed parameter-event stream.
         * @details Selects parameter-event activation without a callback or inferred
         * value/mutation permission. Backend support is returned honestly.
         * @tparam Event Supported complete event Codec type, default TypedParameterEvent.
         * @param[in] alias Borrowed exact granted parameter-event alias.
         * @param[in] capacity Complete receive bytes in 0..4193786.
         * @return Subscription borrowing this Node's context, with setup/rollback status.
         * @see Subscription::Subscription
         */
        template <class Event = msg::TypedParameterEvent>
        Subscription<Event> create_parameter_events(std::string_view alias, size_t capacity)
        {
            return {context(), alias, capacity, true};
        }

        /** @brief Construct a bounded synchronous typed service client.
         * @details Borrows this Node's C context and sends no request during
         * construction; inspect returned error() before calling.
         * @tparam Service Complete service definition with ServiceCodec support.
         * @param[in] alias Borrowed exact granted service.call alias.
         * @param[in] capacity Complete response storage bytes in 0..4193786.
         * @return Client owner with fixed reply capacity and acquisition status.
         * @see ServiceClient::ServiceClient
         */
        template <class Service>
        ServiceClient<Service> create_client(std::string_view alias, size_t capacity)
        {
            return {context(), alias, capacity};
        }

        /** @brief Construct a typed server with distinct advertise/respond roles.
         * @details Borrows this Node's context, advertises once and retains rollback
         * after failed setup. Caller installs a handler before dispatch.
         * @tparam Service Complete Request/Response definition with ServiceCodec support.
         * @param[in] advertise Nonempty granted advertise alias, 1..255 canonical bytes.
         * @param[in] respond Distinct nonempty response alias, 1..255 bytes.
         * @param[in] capacity Complete incoming-envelope bytes in 0..4193786.
         * @return Server owner with independent setup/rollback status.
         * @see ServiceServer::ServiceServer
         */
        template <class Service>
        ServiceServer<Service> create_service(std::string_view advertise, std::string_view respond, size_t capacity)
        {
            return {context(), advertise, respond, capacity};
        }

        /** @brief Construct one explicitly selected Fibonacci client-operation owner.
         * @details Borrows this Node's context; other action roles are not opened
         * implicitly and no local goal table or goal request is created.
         * @param[in] alias Borrowed exact granted operation alias.
         * @param[in] operation ACTION_SEND_GOAL through ACTION_RECEIVE_RESULT selector.
         * @param[in] capacity Complete response bytes in 0..4193786.
         * @return Single-role client with explicit acquisition status.
         * @see ActionClient::ActionClient
         */
        ActionClient create_action_client(std::string_view alias, roswasmc_operation operation, size_t capacity)
        {
            return {context(), alias, operation, capacity};
        }

        /** @brief Explicit four-role typed client, with optional separate cancel-any.
         * @details No alias is guessed/default-opened; all required roles validate
         * up front. Bundle copies context metadata inline and borrows its backend.
         * The stationary result is constructed directly through C++20 value elision.
         * @param[in] aliases Distinct explicit borrowed roles for acquisition.
         * @param[in] maximum_goals Concurrent local goal slots in 1..1024.
         * @param[in] maximum_reply_bytes Fixed receive bytes in 0..4193786.
         * @return Stationary bundle with setup/rollback status and no sent goal.
         * @see ActionClientBundle::ActionClientBundle
         */
        ActionClientBundle create_action_client(ActionClientAliases aliases, size_t maximum_goals, size_t maximum_reply_bytes)
        {
            return {context(), aliases, maximum_goals, maximum_reply_bytes};
        }

        /** @brief Construct a Fibonacci server with independent advertise/respond grants.
         * @details Borrows this Node's context and advertises once; no callback or
         * goal processing starts until the caller registers/dispatches it.
         * @param[in] advertise Nonempty granted advertise alias, 1..255 canonical bytes.
         * @param[in] respond Distinct nonempty response alias, 1..255 bytes.
         * @param[in] capacity Incoming goal-envelope capacity in 0..4193786 bytes.
         * @return Server owner with setup and rollback status.
         * @see ActionServer::ActionServer
         */
        ActionServer create_action_server(std::string_view advertise, std::string_view respond, size_t capacity)
        {
            return {context(), advertise, respond, capacity};
        }

        /** @brief Construct one exact parameter value/metadata operation owner.
         * @details Borrows this Node's context; host alias fixes node/name/type and
         * operation authority, with no value mutation during construction.
         * @param[in] alias Borrowed exact granted parameter operation alias.
         * @param[in] operation PARAMETER_GET through PARAMETER_UNDECLARE selector.
         * @param[in] capacity Complete reply storage bytes in 0..4193786.
         * @return Parameter owner with acquisition/precheck status.
         * @see Parameters::Parameters
         */
        Parameters parameters(std::string_view alias, roswasmc_operation operation, size_t capacity)
        {
            return {context(), alias, operation, capacity};
        }

        /** @brief Construct one host-filtered graph metadata operation owner.
         * @details Borrows this Node's context and performs no discovery query yet.
         * Visibility/scope is fixed by the explicit alias policy.
         * @param[in] alias Borrowed exact granted graph alias.
         * @param[in] operation GRAPH_INSPECT_TOPIC through GRAPH_LIST_SERVICES selector.
         * @param[in] capacity Complete reply bytes in 0..4193786.
         * @return Graph owner with acquisition/precheck status.
         * @see Graph::Graph
         */
        Graph graph(std::string_view alias, roswasmc_operation operation, size_t capacity)
        {
            return {context(), alias, operation, capacity};
        }

        /** @brief Construct one explicitly granted host clock-read owner.
         * @details Borrows this Node's context; construction performs no time query
         * and infers no WASI clock or timer scheduling authority.
         * @param[in] alias Borrowed exact time.read-* alias.
         * @param[in] operation TIME_READ_ROS, TIME_READ_SYSTEM or TIME_READ_STEADY.
         * @return Clock owner with acquisition/precheck status.
         * @see Clock::Clock
         */
        Clock clock(std::string_view alias, roswasmc_operation operation)
        {
            return {context(), alias, operation};
        }

        /** @brief Construct one host logger/severity role without writing a record.
         * @details Borrows this Node's context and creates no stdout/stderr fallback.
         * @param[in] alias Borrowed exact granted log.write alias.
         * @return Logger owner with acquisition/precheck status.
         * @see Logger::Logger
         */
        Logger logger(std::string_view alias)
        {
            return {context(), alias};
        }

        /** @brief Construct one transform lookup/broadcast role owner.
         * @details Borrows this Node's context; frame scope and geometric authority
         * remain host-selected, with no transform operation during construction.
         * @param[in] alias Borrowed exact granted transform alias.
         * @param[in] operation TF_LOOKUP or TF_BROADCAST selector.
         * @param[in] capacity Complete reply capacity in 0..4193786 bytes.
         * @return Transform owner with acquisition/precheck status.
         * @see TF::TF
         */
        TF tf(std::string_view alias, roswasmc_operation operation, size_t capacity)
        {
            return {context(), alias, operation, capacity};
        }

        /** @brief Construct one lifecycle query/change owner under an explicit alias.
         * @details Borrows this Node's context; host policy selects any allowed
         * transition. Construction executes no state query or transition.
         * @param[in] alias Borrowed exact granted lifecycle alias.
         * @param[in] operation LIFECYCLE_GET_STATE or LIFECYCLE_CHANGE_STATE.
         * @param[in] capacity Complete response bytes in 0..4193786.
         * @return Lifecycle owner with acquisition/precheck status.
         * @see Lifecycle::Lifecycle
         */
        Lifecycle lifecycle(std::string_view alias, roswasmc_operation operation, size_t capacity)
        {
            return {context(), alias, operation, capacity};
        }
    };
}  // namespace roswasmcpp
#endif  // ROSWASM_CPP_STANDARD
