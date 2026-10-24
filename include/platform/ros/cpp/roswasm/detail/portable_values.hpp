/** @file
 * @brief Owning message values and canonical codecs for C++98 through C++17.
 * @details Values own their Strings/vectors and retain no source-buffer views.
 * Codecs map fields to ABI v1 rather than serializing native C++ object layout.
 * Calls are synchronous local conversions requiring no host permission; serialize
 * mutation of the same value or destination. A false validation result preserves
 * the destination, but allocation exceptions/termination follow the selected
 * standard library and are not reported as false. Encoders returning a vector
 * use empty as failure; even empty Strings/arrays have nonempty wire framing.
 * @see roswasmcpp::Codec
 * @see roswasmcpp::ParameterCodec
 */
#pragma once
#include <platform/ros/cpp/roswasm/views.hpp>
#include <stdint.h>
#include <platform/ros/c/roswasm/codec.h>

namespace roswasmcpp
{
    namespace wire
    {
        /** @brief Owning vector of canonical wire bytes.
         * @details Each element holds one octet; vector reallocation invalidates views.
         * No message type, authority or byte order is implied by the container alone.
         * @see roswasmcpp::ByteView
         */
        typedef std::vector<unsigned char> bytes;
    }  // namespace wire

    /** @brief Numeric C resource result shared by all standard profiles.
     * @details Preserves the C error, reported byte count and required-length
     * validity flag. Only the documented operation determines whether to retry.
     * @see roswasmc_result
     */
    typedef roswasmc_result Result;
    /** @brief Specialization point for complete typed message conversions.
     * @details A supported specialization supplies encode(value, bytes&) and
     * decode(ByteView, value&), returning false on canonical validation failure.
     * No primary implementation is provided for arbitrary C++ object layouts.
     * @tparam T Owning message type with an explicit canonical specialization.
     * @see roswasmcpp::ParameterCodec
     */
    template <class T>
    struct Codec;

    namespace detail
    {
        inline roswasmc_string text(StringView value)
        {
            roswasmc_string out = {value.data(), value.size()};
            return out;
        }

        inline std::string own(roswasmc_string value)
        {
            return value.size ? std::string(value.data, value.size) : std::string();
        }

        inline bool sized(size_t& total, size_t extra)
        {
            if(extra > 4193786u || total > 4193786u - extra)
            {
                return false;
            }
            total += extra;
            return true;
        }

        inline bool finish(uint32_t code, wire::bytes& next, size_t used, wire::bytes& out)
        {
            if(code || used > next.size())
            {
                return false;
            }
            next.resize(used);
            out.swap(next);
            return true;
        }

        inline Result failure(uint32_t code)
        {
            Result r = {code, 0, 0};
            return r;
        }

        inline bool text_valid(std::string const& value, bool nul = true)
        {
            return roswasmc_utf8(text(value), nul ? 1 : 0) != 0;
        }
    }  // namespace detail

    namespace msg
    {
        /** @brief Owning std_msgs/String payload.
         * @details The codec validates UTF-8 and permits embedded U+0000 under the
         * scalar-String contract. Empty text is a valid value.
         * @see roswasmcpp::Codec<roswasmcpp::msg::String>
         */
        struct String
        {
            /** @brief Complete owning UTF-8 content, without a stored terminator length.
             * @details Wire length counts content bytes, including any embedded NULs.
             * @see roswasmcpp::wire::string
             */
            std::string data;
        };

        /** @brief Owning std_msgs/Bool payload.
         * @details Canonical bytes use exactly 0 or 1, independently of native layout.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Bool>
         */
        struct Bool
        {
            /** @brief Boolean payload, initially false.
             * @details Encoded in one canonical byte, with true mapped to 1.
             * @see Bool::Bool
             */
            bool data;

            /** @brief Initialize a false Bool payload.
             * @details Creates a complete encodable value without allocation or imports.
             * @see Bool::data
             */
            Bool() : data(false)
            {
            }
        };

        /** @brief Complete linear/angular geometry_msgs/Twist value.
         * @details Default FixedArray construction zeros all six components. The codec
         * requires finite doubles; host aliases separately constrain motion and rights.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Twist>
         */
        struct Twist
        {
            /** @brief Linear XYZ velocity in metres/second.
             * @details All components must be finite before encoding.
             * @see Twist::angular
             */
            FixedArray<double, 3> linear;
            /** @brief Angular XYZ velocity in radians/second.
             * @details All components must be finite; no normalization is performed.
             * @see Twist::linear
             */
            FixedArray<double, 3> angular;
        };

        /** @brief Complete owning Image representation shared across ROS backends.
         * @details Retains canonical sequence even when ROS2's native Header omits it.
         * No pixel format is inferred or converted; callers supply all metadata/data.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Image>
         */
        struct Image
        {
            /** @brief Canonical unsigned Header sequence number.
             * @details Full uint32 domain; native ROS2 projection is backend-specific.
             * @see Image::seconds
             */
            uint32_t sequence;
            /** @brief Timestamp seconds in the selected ROS clock domain.
             * @details Stored independently from nanoseconds; no clock is read here.
             * @see Image::nanoseconds
             */
            uint32_t seconds;
            /** @brief Subsecond timestamp field in nanoseconds.
             * @details Supply a normalized value below 1000000000 for ROS timestamps.
             * @see Image::seconds
             */
            uint32_t nanoseconds;
            /** @brief Number of image rows in pixels.
             * @details Caller supplies dimensions consistent with encoding and data.
             * @see Image::step
             */
            uint32_t height;
            /** @brief Number of pixels in each row.
             * @details This is a pixel count, independently of row stride in bytes.
             * @see Image::height
             */
            uint32_t width;
            /** @brief Row stride in bytes, including any padding.
             * @details The codec does not resample or repack the pixel buffer.
             * @see Image::data
             */
            uint32_t step;
            /** @brief Owning image coordinate-frame name.
             * @details Exact bytes are preserved; allowed frames are host policy.
             * @see Image::seconds
             */
            std::string frame_id;
            /** @brief Owning native image encoding name.
             * @details Describes pixel storage; no automatic format conversion occurs.
             * @see Image::data
             */
            std::string encoding;
            /** @brief Whether pixel scalar storage is big-endian.
             * @details Does not change the little-endian framing of canonical fields.
             * @see Image::encoding
             */
            bool bigendian;
            /** @brief Complete owning pixel-storage bytes.
             * @details Includes caller-supplied row padding; never borrows input pixels.
             * @see Image::step
             */
            wire::bytes data;

            /** @brief Create an empty Image with zero metadata and little-endian pixels.
             * @details Strings/data are empty; callers populate fields before publishing.
             * @see Image::encoding
             */
            Image() : sequence(0), seconds(0), nanoseconds(0), height(0), width(0), step(0), bigendian(false)
            {
            }
        };

        /** @brief Complete owning timestamped parent-to-child transform.
         * @details Translation uses metres and quaternion uses XYZW order. Codec
         * representation checks are separate from host frame, norm and motion policy.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Transform>
         */
        struct Transform
        {
            /** @brief Canonical Header sequence number.
             * @details Unsigned 32-bit field retained across backend projections.
             * @see Transform::seconds
             */
            uint32_t sequence;
            /** @brief Timestamp seconds in the transform service's clock domain.
             * @details No epoch conversion or clock query occurs in this value type.
             * @see Transform::nanoseconds
             */
            uint32_t seconds;
            /** @brief Normalized subsecond timestamp in nanoseconds.
             * @details ROS timestamps require this field below 1000000000.
             * @see Transform::seconds
             */
            uint32_t nanoseconds;
            /** @brief Owning parent coordinate-frame name.
             * @details Exact frame permission is determined by the host alias.
             * @see Transform::child_frame
             */
            std::string parent_frame;
            /** @brief Owning child coordinate-frame name.
             * @details Does not establish or change a host frame graph by itself.
             * @see Transform::parent_frame
             */
            std::string child_frame;
            /** @brief Finite XYZ translation in metres.
             * @details Physical bounds remain part of the host transform policy.
             * @see Transform::quaternion
             */
            FixedArray<double, 3> translation;
            /** @brief Finite XYZW orientation quaternion.
             * @details Default is (0,0,0,1); no implicit normalization is performed.
             * @see Transform::Transform
             */
            FixedArray<double, 4> quaternion;

            /** @brief Initialize an identity transform with empty frame names.
             * @details Zeros timestamp, sequence and translation; sets quaternion W to 1.
             * @see Transform::quaternion
             */
            Transform() : sequence(0), seconds(0), nanoseconds(0)
            {
                quaternion[3] = 1;
            }
        };

        /** @brief Owning legacy String-valued parameter event.
         * @details Carries the complete timestamp, event kind, node/name and String
         * value. Prefer TypedParameterEvent for non-String and deletion payloads.
         * @see roswasmcpp::Codec<roswasmcpp::msg::ParameterEvent>
         */
        struct ParameterEvent
        {
            /** @brief Event timestamp seconds.
             * @details Legacy framing preserves uint32 bits; callers select a clock
             * and supply a timestamp valid for their backend.
             * @see ParameterEvent::nanoseconds
             */
            uint32_t seconds;
            /** @brief Event timestamp fractional nanoseconds.
             * @details Supply a normalized value below 1000000000 for ROS timestamps;
             * the legacy encoder preserves this field without normalization.
             * @see ParameterEvent::seconds
             */
            uint32_t nanoseconds;
            /** @brief Parameter event kind byte.
             * @details Canonical kinds are 1 added, 2 changed and 3 deleted.
             * @see ParameterEvent::value
             */
            unsigned char kind;
            /** @brief Owning absolute node name that emitted the event.
             * @details Interpretation/authority belongs to the selected host event source.
             * @see ParameterEvent::name
             */
            std::string node;
            /** @brief Owning parameter name.
             * @details This is metadata, not permission to read or write that parameter.
             * @see ParameterEvent::node
             */
            std::string name;
            /** @brief Owning legacy String parameter value.
             * @details Carries complete scalar text; deletion kind 3 requires it empty.
             * @see TypedParameterEvent
             */
            std::string value;

            /** @brief Create an empty, not-yet-valid event value.
             * @details Zeros time/kind and empties all Strings; set kind before encoding.
             * @see ParameterEvent::kind
             */
            ParameterEvent() : seconds(0), nanoseconds(0), kind(0)
            {
            }
        };

        /** @brief Exact parameter-value tags used by typed event framing.
         * @details The enclosing struct permits ParameterTag::boolean in C++98. Tags
         * identify the selected owning field; they never grant parameter authority.
         * @see TypedParameterEvent::tag
         */
        struct ParameterTag
        {
            /** @brief Stable wire discriminants 0..9.
             * @details Numeric values match roswasmc_parameter_tag; do not reorder them.
             * @see roswasmc_parameter_tag
             */
            enum Value
            {
                /** @brief Tag 0 for a deletion-only event.
                 * @details Has no payload and is admitted only with event kind 3.
                 * @see TypedParameterEvent::kind
                 */
                deletion = 0,
                /** @brief Tag 1 selecting one Boolean scalar.
                 * @details Canonical payload is one 0/1 byte.
                 * @see TypedParameterEvent::bool_value
                 */
                boolean = 1,
                /** @brief Tag 2 selecting one signed 64-bit integer.
                 * @details Preserves all signed bits in eight little-endian bytes.
                 * @see TypedParameterEvent::integer_value
                 */
                integer = 2,
                /** @brief Tag 3 selecting one finite binary64 scalar.
                 * @details Nonfinite values fail canonical validation.
                 * @see TypedParameterEvent::double_value
                 */
                float64 = 3,
                /** @brief Tag 4 selecting one scalar UTF-8 String.
                 * @details The scalar String contract permits embedded U+0000.
                 * @see TypedParameterEvent::string_value
                 */
                string = 4,
                /** @brief Tag 5 selecting unsigned bytes.
                 * @details Elements accept all values 0..255.
                 * @see TypedParameterEvent::byte_array_value
                 */
                byte_array = 5,
                /** @brief Tag 6 selecting Boolean-array bytes.
                 * @details Every payload element must be 0 or 1.
                 * @see TypedParameterEvent::bool_array_value
                 */
                boolean_array = 6,
                /** @brief Tag 7 selecting signed 64-bit integer elements.
                 * @details Uses the canonical bounded count-prefixed array format.
                 * @see TypedParameterEvent::integer_array_value
                 */
                integer_array = 7,
                /** @brief Tag 8 selecting finite binary64 elements.
                 * @details Every element must satisfy finite-value validation.
                 * @see TypedParameterEvent::double_array_value
                 */
                float64_array = 8,
                /** @brief Tag 9 selecting UTF-8 String-array elements.
                 * @details Unlike scalar Strings, these elements reject embedded NULs.
                 * @see TypedParameterEvent::string_array_value
                 */
                string_array = 9
            };
        };

        /** @brief Complete owning typed/deletion-only parameter event.
         * @details Kind 1 adds, 2 changes and 3 deletes a parameter. For nondeletions,
         * tag selects exactly one payload field. A deletion encodes no value payload.
         * Unselected owning fields are ignored by encoding and defaulted by decoding.
         * @see roswasmcpp::Codec<roswasmcpp::msg::TypedParameterEvent>
         */
        struct TypedParameterEvent
        {
            /** @brief Nonnegative event timestamp seconds.
             * @details Typed-event validation admits 0..2147483647 seconds.
             * @see TypedParameterEvent::nanoseconds
             */
            uint32_t seconds;
            /** @brief Fractional timestamp in nanoseconds.
             * @details Typed-event validation admits 0..999999999.
             * @see TypedParameterEvent::seconds
             */
            uint32_t nanoseconds;
            /** @brief Event kind: 1 added, 2 changed or 3 deleted.
             * @details Zero is a construction default and must be replaced before encode.
             * @see TypedParameterEvent::tag
             */
            unsigned char kind;
            /** @brief Owning absolute slash-separated node name.
             * @details Canonical grammar permits 2..1024 ASCII identifier bytes.
             * @see roswasmc_parameter_name
             */
            std::string node;
            /** @brief Owning dot-separated parameter name.
             * @details Canonical grammar permits 1..255 ASCII identifier bytes.
             * @see roswasmc_parameter_name
             */
            std::string name;
            /** @brief Discriminant selecting one payload field.
             * @details Tags 1..9 select values; tag 0 is valid only for kind 3.
             * @see ParameterTag::Value
             */
            ParameterTag::Value tag;
            /** @brief Boolean scalar selected by tag 1.
             * @details Defaults false and encodes as one 0/1 byte when selected.
             * @see ParameterTag::boolean
             */
            bool bool_value;
            /** @brief Signed 64-bit scalar selected by tag 2.
             * @details Defaults zero and preserves the full int64_t bit domain.
             * @see ParameterTag::integer
             */
            int64_t integer_value;
            /** @brief Finite binary64 scalar selected by tag 3.
             * @details Defaults zero; NaNs and infinities fail selected-value encoding.
             * @see ParameterTag::float64
             */
            double double_value;
            /** @brief Owning scalar UTF-8 String selected by tag 4.
             * @details Embedded NULs are accepted under the scalar-String contract.
             * @see ParameterTag::string
             */
            std::string string_value;
            /** @brief Owning unsigned-byte elements selected by tag 5.
             * @details All values 0..255 are admitted, within canonical array bounds.
             * @see ParameterTag::byte_array
             */
            std::vector<uint8_t> byte_array_value;
            /** @brief Owning 0/1 elements selected by tag 6.
             * @details Byte storage distinguishes the representation from vector<bool>.
             * @see ParameterTag::boolean_array
             */
            std::vector<uint8_t> bool_array_value;
            /** @brief Owning signed 64-bit elements selected by tag 7.
             * @details Count and aggregate byte bounds apply to the selected payload.
             * @see ParameterTag::integer_array
             */
            std::vector<int64_t> integer_array_value;
            /** @brief Owning finite binary64 elements selected by tag 8.
             * @details Each selected element must be finite; no unit conversion occurs.
             * @see ParameterTag::float64_array
             */
            std::vector<double> double_array_value;
            /** @brief Owning UTF-8 String elements selected by tag 9.
             * @details Elements reject NULs; all length prefixes count toward byte bounds.
             * @see ParameterTag::string_array
             */
            std::vector<std::string> string_array_value;

            /** @brief Create an empty event with Boolean payload defaults.
             * @details Zeros time/kind/scalars and empties Strings/arrays. Set a valid
             * kind and node/name before encoding; defaults alone are not a valid event.
             * @see TypedParameterEvent::kind
             */
            TypedParameterEvent() : seconds(0), nanoseconds(0), kind(0), tag(ParameterTag::boolean), bool_value(false), integer_value(0), double_value(0)
            {
            }
        };
    }  // namespace msg

    namespace wire
    {
        /** @brief Owning canonical Image alias for old-standard wire helpers.
         * @details Identical to msg::Image; no conversion or additional storage.
         * @see roswasmcpp::msg::Image
         */
        typedef msg::Image image;
        /** @brief Owning timestamped-transform wire alias.
         * @details Identical to msg::Transform, including both frame names and XYZW.
         * @see roswasmcpp::msg::Transform
         */
        typedef msg::Transform transform;
        /** @brief Owning legacy String parameter-event wire alias.
         * @details Selects the complete legacy envelope rather than typed payloads.
         * @see roswasmcpp::msg::ParameterEvent
         */
        typedef msg::ParameterEvent parameter_event;
        /** @brief Owning typed/deletion-only parameter-event wire alias.
         * @details Retains the complete selected scalar/array field and event metadata.
         * @see roswasmcpp::msg::TypedParameterEvent
         */
        typedef msg::TypedParameterEvent typed_parameter_event;
        /** @brief Compatibility scope for stable typed-event discriminants.
         * @details Alias retains ParameterTag::Value syntax in every old profile.
         * @see roswasmcpp::msg::ParameterTag
         */
        typedef msg::ParameterTag parameter_event_value_tag;

        /** @brief Owning Trigger/SetBool response body without a request ID.
         * @details Contains a canonical Bool followed by a complete UTF-8 String.
         * @see roswasmcpp::Codec<roswasmcpp::wire::service_response>
         */
        struct service_response
        {
            /** @brief Application success flag.
             * @details Separate from a host transport error; defaults false.
             * @see service_response::message
             */
            bool success;
            /** @brief Owning response explanation.
             * @details Scalar UTF-8 String; embedded NULs follow the C String contract.
             * @see service_response::success
             */
            std::string message;

            /** @brief Initialize an unsuccessful response with an empty explanation.
             * @details Does not send or complete any service request.
             * @see service_response::success
             */
            service_response() : success(false)
            {
            }
        };

        /** @brief Owning correlated Fibonacci feedback/result sequence.
         * @details Holds at most 48 elements for canonical encoding. A kind byte is
         * present only when selected by the wire encoder's framing argument.
         * @see roswasmc_action_sequence
         */
        struct action_sequence
        {
            /** @brief Nonzero host-correlated goal ID.
             * @details Default zero is invalid for sequence encoding.
             * @see action_sequence::action_sequence
             */
            uint64_t goal;
            /** @brief Wire status marker when kind framing is selected.
             * @details Values 1..4 are encoded: feedback 1 and terminal outcomes 2..4.
             * @see roswasmc_encode_action_sequence
             */
            unsigned char kind;
            /** @brief Complete owning sequence of signed 32-bit values.
             * @details Canonical encoding admits 0..48 elements with exact signed bits.
             * @see roswasmc_decode_action_sequence
             */
            std::vector<int32_t> values;

            /** @brief Initialize an empty sequence without a valid goal or kind.
             * @details Sets goal/kind to zero; set the correlation fields before encoding.
             * @see action_sequence::goal
             */
            action_sequence() : goal(0), kind(0)
            {
            }
        };

        /** @brief Owning lifecycle state byte and descriptive label.
         * @details Represents a state query result; it does not request a transition.
         * @see roswasmc_lifecycle_state
         */
        struct lifecycle_state
        {
            /** @brief Native lifecycle state identifier byte.
             * @details Preserves values 0..255 without guessing unsupported transitions.
             * @see lifecycle_state::label
             */
            uint8_t id;
            /** @brief Owning UTF-8 state label.
             * @details Scalar String contract permits embedded NULs.
             * @see lifecycle_state::id
             */
            std::string label;

            /** @brief Initialize state ID zero with an empty label.
             * @details No host lifecycle query occurs during construction.
             * @see lifecycle_state::id
             */
            lifecycle_state() : id(0)
            {
            }
        };

        /** @brief Owning request-correlation prefix and opaque service body.
         * @details Canonical envelopes contain eight ID bytes plus up to 4193778 body
         * bytes; local encoding does not consume the matching host request.
         * @see roswasmc_encode_service_envelope
         */
        struct service_envelope
        {
            /** @brief Nonzero service request correlation identifier.
             * @details Use the ID returned by the matching server poll; zero is invalid.
             * @see service_envelope::payload
             */
            uint64_t request_id;
            /** @brief Owning complete service-specific body.
             * @details The envelope codec preserves opaque bytes without body validation.
             * @see service_envelope::request_id
             */
            bytes payload;

            /** @brief Initialize an empty envelope without a valid request ID.
             * @details Sets request_id to zero; callers must supply correlation.
             * @see service_envelope::request_id
             */
            service_envelope() : request_id(0)
            {
            }
        };

        /** @brief Incoming Fibonacci action goal fields owned by the caller.
         * @details Canonical framing is a nonzero uint64 goal ID and signed int32 order.
         * @see roswasmcpp::wire::action_sequence
         */
        struct incoming_goal
        {
            /** @brief Nonzero goal ID from the matching action-server poll.
             * @details An ID alone does not establish host goal ownership or permission.
             * @see incoming_goal::order
             */
            uint64_t goal_id;
            /** @brief Signed Fibonacci order requested by the client.
             * @details Wire conversion preserves the full int32 domain; the endpoint
             * separately checks supported algorithm bounds.
             * @see incoming_goal::goal_id
             */
            int32_t order;

            /** @brief Initialize zero ID/order before a successful decode or assignment.
             * @details Zero goal_id is a sentinel and cannot be encoded as a valid goal.
             * @see incoming_goal::goal_id
             */
            incoming_goal() : goal_id(0), order(0)
            {
            }
        };
    }  // namespace wire

    namespace srv
    {
        /** @brief Trigger service request/response types.
         * @details The request is exactly empty; the response is a Bool and UTF-8 String.
         * @see roswasmcpp::ServiceCodec<roswasmcpp::srv::Trigger>
         */
        struct Trigger
        {
            /** @brief Empty Trigger request value.
             * @details Has no wire fields; only an exact zero-byte request is canonical.
             * @see Trigger::Response
             */
            struct Request
            {
            };

            /** @brief Owning Trigger response body.
             * @details Uses the shared success/message structure without a request ID.
             * @see roswasmcpp::wire::service_response
             */
            typedef wire::service_response Response;
        };

        /** @brief SetBool service request/response types.
         * @details The request is one Bool; response uses the shared success/message body.
         * @see roswasmcpp::ServiceCodec<roswasmcpp::srv::SetBool>
         */
        struct SetBool
        {
            /** @brief Owning single-Boolean SetBool request.
             * @details Canonical request framing is exactly one 0/1 byte.
             * @see SetBool::Response
             */
            struct Request
            {
                /** @brief Requested Boolean setting, initially false.
                 * @details Encoding this value does not authorize a host state change.
                 * @see Request::Request
                 */
                bool data;

                /** @brief Initialize the requested setting to false.
                 * @details Creates a complete local request value with no host operation.
                 * @see Request::data
                 */
                Request() : data(false)
                {
                }
            };

            /** @brief Owning SetBool response body.
             * @details Shares the complete Bool-plus-String response representation.
             * @see roswasmcpp::wire::service_response
             */
            typedef wire::service_response Response;
        };
    }  // namespace srv

    /** @brief Canonical UTF-8 String message codec.
     * @details Uses a uint32 byte-length prefix and up to 4193782 content bytes.
     * Embedded U+0000 is allowed; invalid UTF-8 is rejected in both directions.
     * @see roswasmc_encode_string
     */
    template <>
    struct Codec<msg::String>
    {
        /** @brief Encode a complete UTF-8 String into owning bytes.
         * @details Validates text/size before swapping the complete temporary buffer.
         * @param[in] value Owning message read only during this call.
         * @param[out] out Owning byte destination, unchanged on false.
         * @return True for complete canonical encoding, including empty text.
         * @see Codec<msg::String>::decode
         */
        static bool encode(msg::String const& value, wire::bytes& out)
        {
            size_t n = 4, used = 0;
            if(!detail::sized(n, value.data.size()))
            {
                return false;
            }
            wire::bytes next(n);
            uint32_t code = roswasmc_encode_string(detail::text(value.data), buffer_data(next), next.size(), &used);
            return detail::finish(code, next, used, out);
        }

        /** @brief Decode exact UTF-8 String bytes and copy the content.
         * @details Rejects truncation/trailing bytes and invalid UTF-8; the result
         * owns its text independently of the borrowed input.
         * @param[in] bytes Complete counted String encoding for this call.
         * @param[out] out Owning message destination, unchanged on false.
         * @return True after successful complete validation and copying.
         * @see roswasmc_decode_string
         */
        static bool decode(ByteView bytes, msg::String& out)
        {
            roswasmc_string raw;
            if(roswasmc_decode_string(bytes.data(), bytes.size(), &raw))
            {
                return false;
            }
            msg::String next;
            next.data = detail::own(raw);
            out = next;
            return true;
        }
    };

    /** @brief Canonical single-byte Bool message codec.
     * @details Valid bytes are exactly 0 and 1; native bool layout is never copied.
     * @see roswasmc_decode_bool
     */
    template <>
    struct Codec<msg::Bool>
    {
        /** @brief Encode a Bool payload as one owning byte.
         * @details Maps false to 0 and true to 1 with no validation failure case.
         * @param[in] value Complete message read during this call.
         * @param[out] out Replaced by the one-byte encoding.
         * @return True after committing the byte; allocation uses library policy.
         * @see Codec<msg::Bool>::decode
         */
        static bool encode(msg::Bool const& value, wire::bytes& out)
        {
            wire::bytes next(1, value.data ? 1 : 0);
            out.swap(next);
            return true;
        }

        /** @brief Decode exactly one canonical 0/1 byte.
         * @details Any other byte value or extent fails before changing out.data.
         * @param[in] bytes Borrowed complete Bool payload.
         * @param[out] out Destination, unchanged on false.
         * @return True for an exact canonical Boolean.
         * @see roswasmc_decode_bool
         */
        static bool decode(ByteView bytes, msg::Bool& out)
        {
            int value = 0;
            if(roswasmc_decode_bool(bytes.data(), bytes.size(), &value))
            {
                return false;
            }
            out.data = value != 0;
            return true;
        }
    };

    /** @brief Codec for six finite Twist binary64 components.
     * @details Linear XYZ in metres/second precedes angular XYZ in radians/second.
     * Physical limits and host motion permission are outside this local codec.
     * @see roswasmc_encode_twist
     */
    template <>
    struct Codec<msg::Twist>
    {
        /** @brief Encode all six finite Twist components.
         * @details Requires supported binary64 representation and finite values;
         * canonical payload size is exactly 48 bytes.
         * @param[in] value Complete owning linear/angular fields.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete valid payload.
         * @see roswasmc_encode_twist
         */
        static bool encode(msg::Twist const& value, wire::bytes& out)
        {
            roswasmc_twist raw;
            size_t used = 0;
            for(unsigned i = 0; i < 3; ++i)
            {
                raw.linear[i] = value.linear[i];
                raw.angular[i] = value.angular[i];
            }
            wire::bytes next(48);
            uint32_t code = roswasmc_encode_twist(&raw, buffer_data(next), next.size(), &used);
            return detail::finish(code, next, used, out);
        }

        /** @brief Decode a complete finite Twist without partial output updates.
         * @details Requires exactly 48 canonical bytes; rejects nonfinite components.
         * @param[in] bytes Borrowed complete payload.
         * @param[out] out Linear/angular fields in their original units, unchanged
         * on false.
         * @return True after validating all six components.
         * @see roswasmc_decode_twist
         */
        static bool decode(ByteView bytes, msg::Twist& out)
        {
            roswasmc_twist raw;
            if(roswasmc_decode_twist(bytes.data(), bytes.size(), &raw))
            {
                return false;
            }
            msg::Twist next;
            for(unsigned i = 0; i < 3; ++i)
            {
                next.linear[i] = raw.linear[i];
                next.angular[i] = raw.angular[i];
            }
            out = next;
            return true;
        }
    };

    /** @brief Complete owning Image field codec.
     * @details Preserves sequence, time, frame, dimensions, encoding, endian flag,
     * stride and pixels. It does not infer pixel semantics or validate a physical
     * camera model. Encoding enforces the 4193786-byte aggregate bound.
     * @see roswasmc_image
     */
    template <>
    struct Codec<msg::Image>
    {
        /** @brief Encode the complete caller-supplied Image fields.
         * @details Accounts for every length prefix before allocation and delegates
         * framing to the C codec; it does not repack/convert pixel data.
         * @param[in] value Owning Image read only during this call.
         * @param[out] out Owning complete bytes, unchanged on false.
         * @return True after complete bounded encoding.
         * @see roswasmc_encode_image
         */
        static bool encode(msg::Image const& value, wire::bytes& out)
        {
            size_t n = 37, used = 0;
            if(!detail::sized(n, value.frame_id.size()) || !detail::sized(n, value.encoding.size()) || !detail::sized(n, value.data.size()))
            {
                return false;
            }
            roswasmc_image raw;
            raw.sequence = value.sequence;
            raw.seconds = value.seconds;
            raw.nanoseconds = value.nanoseconds;
            raw.height = value.height;
            raw.width = value.width;
            raw.step = value.step;
            raw.bigendian = value.bigendian ? 1 : 0;
            raw.frame_id = detail::text(value.frame_id);
            raw.encoding = detail::text(value.encoding);
            raw.data.data = buffer_data(value.data);
            raw.data.size = value.data.size();
            wire::bytes next(n);
            uint32_t code = roswasmc_encode_image(&raw, buffer_data(next), next.size(), &used);
            return detail::finish(code, next, used, out);
        }

        /** @brief Decode an Image and copy all variable-sized fields.
         * @details C framing checks precede the owning copy. Pixel dimensions,
         * encoding meaning and backend-specific timestamp constraints remain the
         * caller/host's responsibility; no source pointer escapes.
         * @param[in] bytes Borrowed complete canonical Image encoding.
         * @param[out] out Owning destination, unchanged on validation failure.
         * @return True after complete structural decoding and copying.
         * @see roswasmc_decode_image
         */
        static bool decode(ByteView bytes, msg::Image& out)
        {
            roswasmc_image raw;
            if(roswasmc_decode_image(bytes.data(), bytes.size(), &raw))
            {
                return false;
            }
            msg::Image next;
            next.sequence = raw.sequence;
            next.seconds = raw.seconds;
            next.nanoseconds = raw.nanoseconds;
            next.height = raw.height;
            next.width = raw.width;
            next.step = raw.step;
            next.frame_id = detail::own(raw.frame_id);
            next.encoding = detail::own(raw.encoding);
            next.bigendian = raw.bigendian != 0;
            if(raw.data.size)
            {
                next.data.assign(raw.data.data, raw.data.data + raw.data.size);
            }
            out = next;
            return true;
        }
    };

    /** @brief Complete owning timestamped-transform codec.
     * @details Maps both frame names and seven finite doubles, preserving XYZW
     * order. Encoding enforces 4193786 total bytes without normalizing orientation.
     * @see roswasmc_transform
     */
    template <>
    struct Codec<msg::Transform>
    {
        /** @brief Encode frames, timestamp and complete finite transform fields.
         * @details Translation is in metres. Quaternion normalization, frame
         * permission and geometric bounds are checked separately by host policy.
         * @param[in] value Complete owning transform for this call.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete bounded encoding accepted by the C codec.
         * @see roswasmc_encode_transform
         */
        static bool encode(msg::Transform const& value, wire::bytes& out)
        {
            size_t n = 76, used = 0;
            if(!detail::sized(n, value.parent_frame.size()) || !detail::sized(n, value.child_frame.size()))
            {
                return false;
            }
            roswasmc_transform raw;
            raw.sequence = value.sequence;
            raw.seconds = value.seconds;
            raw.nanoseconds = value.nanoseconds;
            raw.parent_frame = detail::text(value.parent_frame);
            raw.child_frame = detail::text(value.child_frame);
            for(unsigned i = 0; i < 3; ++i)
            {
                raw.translation[i] = value.translation[i];
            }
            for(unsigned i = 0; i < 4; ++i)
            {
                raw.quaternion[i] = value.quaternion[i];
            }
            wire::bytes next(n);
            uint32_t code = roswasmc_encode_transform(&raw, buffer_data(next), next.size(), &used);
            return detail::finish(code, next, used, out);
        }

        /** @brief Decode complete transform fields and own both frame names.
         * @details Uses exact C framing and finite-double checks, then copies all
         * fields; no transform publication or frame lookup is performed.
         * @param[in] bytes Borrowed complete canonical transform.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after successful complete decoding.
         * @see roswasmc_decode_transform
         */
        static bool decode(ByteView bytes, msg::Transform& out)
        {
            roswasmc_transform raw;
            if(roswasmc_decode_transform(bytes.data(), bytes.size(), &raw))
            {
                return false;
            }
            msg::Transform next;
            next.sequence = raw.sequence;
            next.seconds = raw.seconds;
            next.nanoseconds = raw.nanoseconds;
            next.parent_frame = detail::own(raw.parent_frame);
            next.child_frame = detail::own(raw.child_frame);
            for(unsigned i = 0; i < 3; ++i)
            {
                next.translation[i] = raw.translation[i];
            }
            for(unsigned i = 0; i < 4; ++i)
            {
                next.quaternion[i] = raw.quaternion[i];
            }
            out = next;
            return true;
        }
    };

    /** @brief Shared Bool-plus-String service-response codec.
     * @details Encodes a body without request correlation. Scalar text is UTF-8
     * with embedded U+0000 allowed; complete encoding is at most 4193786 bytes.
     * @see roswasmc_service_response
     */
    template <>
    struct Codec<wire::service_response>
    {
        /** @brief Encode the success flag and complete response message.
         * @details Validates UTF-8 and aggregate size before committing output.
         * @param[in] value Complete owning response body.
         * @param[out] out Owning bytes, unchanged on false.
         * @return True for a canonical response body.
         * @see roswasmc_encode_service_response
         */
        static bool encode(wire::service_response const& value, wire::bytes& out)
        {
            size_t n = 5, used = 0;
            if(!detail::sized(n, value.message.size()))
            {
                return false;
            }
            roswasmc_service_response raw;
            raw.success = value.success ? 1 : 0;
            raw.message = detail::text(value.message);
            wire::bytes next(n);
            uint32_t code = roswasmc_encode_service_response(raw, buffer_data(next), next.size(), &used);
            return detail::finish(code, next, used, out);
        }

        /** @brief Decode a complete service-response body into owning fields.
         * @details Checks exact Bool-plus-String framing through the C codec; this
         * does not match or consume any service request ID.
         * @param[in] bytes Borrowed complete body, without an envelope prefix.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete supported body.
         * @see roswasmc_decode_service_response
         */
        static bool decode(ByteView bytes, wire::service_response& out)
        {
            roswasmc_service_response raw;
            if(roswasmc_decode_service_response(bytes.data(), bytes.size(), &raw))
            {
                return false;
            }
            wire::service_response next;
            next.success = raw.success != 0;
            next.message = detail::own(raw.message);
            out = next;
            return true;
        }
    };

    /** @brief Codec for the legacy String-valued parameter-event envelope.
     * @details Encoding validates kind 1..3, UTF-8 and an empty deletion value.
     * Decoding follows the C structural contract; it does not apply typed-event
     * name/time rules or retroactively apply all encoder-side text checks.
     * @see roswasmc_parameter_event
     */
    template <>
    struct Codec<msg::ParameterEvent>
    {
        /** @brief Encode complete legacy event metadata and String value.
         * @details Enforces 4193786 aggregate bytes, no NUL in node/name, UTF-8
         * scalar value, and an empty value for deletion kind 3. Time bits are
         * preserved without normalization or a clock query.
         * @param[in] value Complete owning legacy event.
         * @param[out] out Owning bytes, unchanged on false.
         * @return True for a complete encoding accepted by the C codec.
         * @see roswasmc_encode_parameter_event
         */
        static bool encode(msg::ParameterEvent const& value, wire::bytes& out)
        {
            size_t n = 21, used = 0;
            if(!detail::sized(n, value.node.size()) || !detail::sized(n, value.name.size()) || !detail::sized(n, value.value.size()))
            {
                return false;
            }
            roswasmc_parameter_event raw;
            raw.seconds = value.seconds;
            raw.nanoseconds = value.nanoseconds;
            raw.kind = value.kind;
            raw.node = detail::text(value.node);
            raw.name = detail::text(value.name);
            raw.value = detail::text(value.value);
            wire::bytes next(n);
            uint32_t code = roswasmc_encode_parameter_event(&raw, buffer_data(next), next.size(), &used);
            return detail::finish(code, next, used, out);
        }

        /** @brief Decode the exact legacy event structure into owning fields.
         * @details Checks lengths, kind 1..3 and exact extent. It copies String
         * bytes without typed-event name/time validation; validate text separately
         * if accepting data outside a trusted canonical event source.
         * @param[in] bytes Borrowed complete legacy envelope.
         * @param[out] out Owning destination, unchanged on structural failure.
         * @return True after complete structural decoding and copying.
         * @see roswasmc_decode_parameter_event
         */
        static bool decode(ByteView bytes, msg::ParameterEvent& out)
        {
            roswasmc_parameter_event raw;
            if(roswasmc_decode_parameter_event(bytes.data(), bytes.size(), &raw))
            {
                return false;
            }
            msg::ParameterEvent next;
            next.seconds = raw.seconds;
            next.nanoseconds = raw.nanoseconds;
            next.kind = raw.kind;
            next.node = detail::own(raw.node);
            next.name = detail::own(raw.name);
            next.value = detail::own(raw.value);
            out = next;
            return true;
        }
    };
    /** @brief Specialization point for scalar/array parameter wire conversions.
     * @details Supported specializations preserve signed bits and canonical array
     * bounds. encode returns owning bytes with empty as validation failure; decode
     * commits only a complete validated value. Neither operation reads/writes a
     * host parameter. There is no implementation for arbitrary native types.
     * @tparam T Supported scalar, bounded vector element type or BooleanArray.
     * @see roswasmc_decode_parameter
     */
    template <class T>
    struct ParameterCodec;

    namespace detail
    {
        template <class T>
        struct ParameterElement;

        template <>
        struct ParameterElement<uint8_t>
        {
            enum
            {
                width = 1,
                tag = ROSWASMC_PARAM_BYTES
            };

            static bool write(roswasmc_writer* w, uint8_t v)
            {
                return roswasmc_write_integer(w, v, 1) != 0;
            }

            static bool read(roswasmc_reader* r, uint8_t& v)
            {
                uint64_t n;
                if(!roswasmc_read_integer(r, &n, 1))
                {
                    return false;
                }
                v = static_cast<uint8_t>(n);
                return true;
            }
        };

        template <>
        struct ParameterElement<int32_t>
        {
            enum
            {
                width = 4,
                tag = ROSWASMC_PARAM_INT32S
            };

            static bool write(roswasmc_writer* w, int32_t v)
            {
                uint32_t bits = 0;
                roswasmc_copy_object(&bits, &v, 4);
                return roswasmc_write_integer(w, bits, 4) != 0;
            }

            static bool read(roswasmc_reader* r, int32_t& v)
            {
                uint64_t n;
                uint32_t bits;
                if(!roswasmc_read_integer(r, &n, 4))
                {
                    return false;
                }
                bits = static_cast<uint32_t>(n);
                roswasmc_copy_object(&v, &bits, 4);
                return true;
            }
        };

        template <>
        struct ParameterElement<int64_t>
        {
            enum
            {
                width = 8,
                tag = ROSWASMC_PARAM_INT64S
            };

            static bool write(roswasmc_writer* w, int64_t v)
            {
                uint64_t bits = 0;
                roswasmc_copy_object(&bits, &v, 8);
                return roswasmc_write_integer(w, bits, 8) != 0;
            }

            static bool read(roswasmc_reader* r, int64_t& v)
            {
                uint64_t n;
                if(!roswasmc_read_integer(r, &n, 8))
                {
                    return false;
                }
                roswasmc_copy_object(&v, &n, 8);
                return true;
            }
        };

        template <>
        struct ParameterElement<double>
        {
            enum
            {
                width = 8,
                tag = ROSWASMC_PARAM_FLOAT64S
            };

            static bool write(roswasmc_writer* w, double v)
            {
                return roswasmc_write_float64(w, v) != 0;
            }

            static bool read(roswasmc_reader* r, double& v)
            {
                return roswasmc_read_float64(r, &v) != 0;
            }
        };
    }  // namespace detail

    /** @brief One-byte Boolean parameter codec.
     * @details Exactly 0 and 1 are valid wire values; no native bool bytes escape.
     * @see roswasmc_decode_bool
     */
    template <>
    struct ParameterCodec<bool>
    {
        /** @brief Encode one Boolean as an owning canonical byte.
         * @details Has no validation failure for a C++ bool value.
         * @param[in] v Boolean parameter value.
         * @return One byte, 0 for false or 1 for true.
         * @see ParameterCodec<bool>::decode
         */
        static wire::bytes encode(bool v)
        {
            return wire::bytes(1, v ? 1 : 0);
        }

        /** @brief Decode exactly one 0/1 parameter byte.
         * @details Rejects invalid Boolean values and any non-one-byte extent.
         * @param[in] b Borrowed complete scalar encoding.
         * @param[out] v Value destination, unchanged on false.
         * @return True for a canonical Boolean scalar.
         * @see roswasmc_decode_bool
         */
        static bool decode(ByteView b, bool& v)
        {
            int n;
            if(roswasmc_decode_bool(b.data(), b.size(), &n))
            {
                return false;
            }
            v = n != 0;
            return true;
        }
    };

    /** @brief Signed 32-bit parameter codec with exact bit preservation.
     * @details Maps the full int32_t domain to four little-endian bytes.
     * @see roswasmcpp::wire::parameter_int32
     */
    template <>
    struct ParameterCodec<int32_t>
    {
        /** @brief Encode a complete signed 32-bit value.
         * @details Stores two's-complement bits without unit conversion.
         * @param[in] v Scalar in the parameter's application-defined units.
         * @return Exactly four owning bytes.
         * @see ParameterCodec<int32_t>::decode
         */
        static wire::bytes encode(int32_t v)
        {
            wire::bytes out(4);
            roswasmc_writer w = roswasmc_writer_init(buffer_data(out), out.size());
            detail::ParameterElement<int32_t>::write(&w, v);
            return out;
        }

        /** @brief Decode an exact four-byte signed scalar.
         * @details Reconstructs signed bits without accepting trailing data.
         * @param[in] b Borrowed little-endian scalar encoding.
         * @param[out] v Destination, unchanged on false.
         * @return True for four readable canonical bytes.
         * @see ParameterCodec<int32_t>::encode
         */
        static bool decode(ByteView b, int32_t& v)
        {
            if(b.size() != 4)
            {
                return false;
            }
            roswasmc_reader r = roswasmc_reader_init(b.data(), b.size());
            return detail::ParameterElement<int32_t>::read(&r, v);
        }
    };

    /** @brief Signed 64-bit parameter codec with exact bit preservation.
     * @details Maps the full int64_t domain to eight little-endian bytes.
     * @see roswasmcpp::wire::parameter_int64
     */
    template <>
    struct ParameterCodec<int64_t>
    {
        /** @brief Encode a complete signed 64-bit value.
         * @details Does not reinterpret the value as a pointer, time or authority.
         * @param[in] v Scalar in the parameter's application-defined units.
         * @return Exactly eight owning bytes.
         * @see ParameterCodec<int64_t>::decode
         */
        static wire::bytes encode(int64_t v)
        {
            wire::bytes out(8);
            roswasmc_writer w = roswasmc_writer_init(buffer_data(out), out.size());
            detail::ParameterElement<int64_t>::write(&w, v);
            return out;
        }

        /** @brief Decode an exact eight-byte signed scalar.
         * @details Preserves all signed bits and rejects truncated/trailing input.
         * @param[in] b Borrowed complete little-endian encoding.
         * @param[out] v Destination, unchanged on false.
         * @return True for eight readable canonical bytes.
         * @see ParameterCodec<int64_t>::encode
         */
        static bool decode(ByteView b, int64_t& v)
        {
            if(b.size() != 8)
            {
                return false;
            }
            roswasmc_reader r = roswasmc_reader_init(b.data(), b.size());
            return detail::ParameterElement<int64_t>::read(&r, v);
        }
    };

    /** @brief Finite binary64 parameter codec.
     * @details Requires a supported native binary64 representation; all NaNs and
     * infinities are rejected, while finite signed zeros preserve their bits.
     * @see roswasmc_write_float64
     */
    template <>
    struct ParameterCodec<double>
    {
        /** @brief Encode one finite binary64 parameter scalar.
         * @details Uses the C representation check before returning bytes.
         * @param[in] v Finite scalar in application-defined units.
         * @return Eight owning little-endian bytes, or empty on invalid value/layout.
         * @see ParameterCodec<double>::decode
         */
        static wire::bytes encode(double v)
        {
            wire::bytes out(8);
            roswasmc_writer w = roswasmc_writer_init(buffer_data(out), out.size());
            if(!roswasmc_write_float64(&w, v))
            {
                out.clear();
            }
            return out;
        }

        /** @brief Decode one exact finite binary64 scalar.
         * @details Rejects nonfinite exponent patterns, unsupported native layout
         * and all extents other than eight bytes.
         * @param[in] b Borrowed complete scalar encoding.
         * @param[out] v Destination in encoded units, unchanged on false.
         * @return True for a supported finite scalar.
         * @see roswasmc_read_float64
         */
        static bool decode(ByteView b, double& v)
        {
            if(b.size() != 8)
            {
                return false;
            }
            roswasmc_reader r = roswasmc_reader_init(b.data(), b.size());
            return roswasmc_read_float64(&r, &v) != 0;
        }
    };

    /** @brief Owning scalar UTF-8 String parameter codec.
     * @details Reuses msg::String validation, including embedded-NUL acceptance.
     * @see roswasmcpp::Codec<roswasmcpp::msg::String>
     */
    template <>
    struct ParameterCodec<std::string>
    {
        /** @brief Encode a complete scalar UTF-8 parameter String.
         * @details Content is bounded to 4193782 bytes plus its four-byte prefix.
         * @param[in] v Owning UTF-8 text, read only during this call.
         * @return Complete owning bytes, or empty on invalid text/size.
         * @see ParameterCodec<std::string>::decode
         */
        static wire::bytes encode(std::string const& v)
        {
            msg::String value;
            value.data = v;
            wire::bytes out;
            Codec<msg::String>::encode(value, out);
            return out;
        }

        /** @brief Decode an exact scalar UTF-8 String and own its bytes.
         * @details Rejects invalid UTF-8 and nonexact framing before swapping text.
         * @param[in] b Borrowed complete counted String.
         * @param[out] v Owning destination, unchanged on false.
         * @return True after complete validation and copying.
         * @see roswasmc_decode_string
         */
        static bool decode(ByteView b, std::string& v)
        {
            msg::String next;
            if(!Codec<msg::String>::decode(b, next))
            {
                return false;
            }
            v.swap(next.data);
            return true;
        }
    };

    /** @brief Bounded owning parameter-array codec for supported scalar elements.
     * @details At most 1048576 elements and 4193786 total bytes are admitted.
     * Supported T values are uint8_t, int32_t, int64_t and double; use BooleanArray
     * for Boolean semantics and the String specialization for owning text.
     * @tparam T Scalar with a canonical detail::ParameterElement specialization.
     * @see roswasmcpp::BooleanArray
     */
    template <class T>
    struct ParameterCodec<std::vector<T> >
    {
        /** @brief Encode count-prefixed scalar array elements.
         * @details Writes four count bytes followed by fixed-width little-endian
         * elements. Double elements must all be finite; signed bits are preserved.
         * @param[in] value Owning elements read only during this call.
         * @return Complete owning bytes, or empty on count/size/element failure.
         * @see roswasmcpp::wire::encode_array
         */
        static wire::bytes encode(std::vector<T> const& value)
        {
            wire::bytes out;
            if(value.size() > 1048576u || value.size() > (4193786u - 4) / detail::ParameterElement<T>::width)
            {
                return out;
            }
            out.resize(4 + value.size() * detail::ParameterElement<T>::width);
            roswasmc_writer w = roswasmc_writer_init(buffer_data(out), out.size());
            roswasmc_write_integer(&w, value.size(), 4);
            for(size_t i = 0; i < value.size(); ++i)
            {
                if(!detail::ParameterElement<T>::write(&w, value[i]))
                {
                    out.clear();
                    break;
                }
            }
            return out;
        }

        /** @brief Decode a complete bounded array into independent storage.
         * @details The C parameter codec checks the element tag, count, byte bound
         * and exact extent before typed element reads and the final swap.
         * @param[in] bytes Borrowed complete count-prefixed array.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after validating and decoding every element.
         * @see roswasmc_decode_parameter
         */
        static bool decode(ByteView bytes, std::vector<T>& out)
        {
            roswasmc_parameter_value checked;
            if(roswasmc_decode_parameter(static_cast<roswasmc_parameter_tag>(detail::ParameterElement<T>::tag), bytes.data(), bytes.size(), &checked))
            {
                return false;
            }
            roswasmc_reader r = roswasmc_reader_init(bytes.data(), bytes.size());
            uint64_t n;
            if(!roswasmc_read_integer(&r, &n, 4))
            {
                return false;
            }
            std::vector<T> next(static_cast<size_t>(n));
            for(size_t i = 0; i < next.size(); ++i)
            {
                if(!detail::ParameterElement<T>::read(&r, next[i]))
                {
                    return false;
                }
            }
            out.swap(next);
            return true;
        }
    };

    /** @brief Bounded owning UTF-8 String-array parameter codec.
     * @details All elements reject embedded NULs. The uint32 count and every
     * String's uint32 byte length contribute to the 4193786-byte total bound.
     * @see roswasmcpp::wire::encode_parameter_string_array
     */
    template <>
    struct ParameterCodec<std::vector<std::string> >
    {
        /** @brief Encode a complete bounded String array.
         * @details Validates UTF-8/no-NUL content and at most 1048576 elements
         * before allocating and writing the complete canonical buffer.
         * @param[in] value Owning String elements for this call.
         * @return Complete owning bytes, or empty on text/count/byte-bound failure.
         * @see ParameterCodec<std::vector<std::string> >::decode
         */
        static wire::bytes encode(std::vector<std::string> const& value)
        {
            wire::bytes out;
            size_t n = 4;
            if(value.size() > 1048576u)
            {
                return out;
            }
            for(size_t i = 0; i < value.size(); ++i)
            {
                if(!detail::text_valid(value[i], false) || !detail::sized(n, 4) || !detail::sized(n, value[i].size()))
                {
                    return out;
                }
            }
            out.resize(n);
            roswasmc_writer w = roswasmc_writer_init(buffer_data(out), out.size());
            roswasmc_write_integer(&w, value.size(), 4);
            for(size_t i = 0; i < value.size(); ++i)
            {
                roswasmc_write_string(&w, detail::text(value[i]));
            }
            return out;
        }

        /** @brief Decode every bounded String-array element into owning storage.
         * @details Validates exact count/length framing and UTF-8/no-NUL content
         * through the C parameter codec, then copies each accepted String.
         * @param[in] bytes Borrowed complete canonical array encoding.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for the complete bounded String array.
         * @see roswasmc_decode_parameter
         */
        static bool decode(ByteView bytes, std::vector<std::string>& out)
        {
            roswasmc_parameter_value checked;
            if(roswasmc_decode_parameter(ROSWASMC_PARAM_STRINGS, bytes.data(), bytes.size(), &checked))
            {
                return false;
            }
            roswasmc_reader r = roswasmc_reader_init(bytes.data(), bytes.size());
            uint64_t n;
            if(!roswasmc_read_integer(&r, &n, 4))
            {
                return false;
            }
            std::vector<std::string> next;
            for(size_t i = 0; i < n; ++i)
            {
                roswasmc_string text;
                if(!roswasmc_read_string(&r, &text))
                {
                    return false;
                }
                next.push_back(detail::own(text));
            }
            out.swap(next);
            return true;
        }
    };

    /** @brief Owning Boolean parameter array stored as ordinary bytes.
     * @details Distinguishes Boolean type semantics from unrestricted byte arrays
     * without vector<bool>'s proxy representation.
     * @see roswasmcpp::ParameterCodec<roswasmcpp::BooleanArray>
     */
    struct BooleanArray
    {
        /** @brief Complete owning 0/1 Boolean elements.
         * @details Each byte must be at most 1 before canonical Boolean encoding.
         * @see roswasmcpp::wire::encode_parameter_bool_array
         */
        std::vector<uint8_t> values;
    };

    /** @brief Bounded Boolean-array codec with per-element 0/1 validation.
     * @details Uses a uint32 count followed by byte elements; array count/aggregate
     * bounds match the canonical C Boolean parameter representation.
     * @see roswasmc_decode_parameter
     */
    template <>
    struct ParameterCodec<BooleanArray>
    {
        /** @brief Encode a complete Boolean array after validating each element.
         * @details Rejects any byte above 1, count above 1048576 or excess byte size.
         * @param[in] value Owning Boolean elements for this call.
         * @return Complete owning bytes, or empty on value/bounds failure.
         * @see ParameterCodec<BooleanArray>::decode
         */
        static wire::bytes encode(BooleanArray const& value)
        {
            for(size_t i = 0; i < value.values.size(); ++i)
            {
                if(value.values[i] > 1)
                {
                    return wire::bytes();
                }
            }
            return ParameterCodec<std::vector<uint8_t> >::encode(value.values);
        }

        /** @brief Decode an exact bounded Boolean array into owning bytes.
         * @details Applies the Boolean tag check before the unrestricted-byte array
         * copy, so non-0/1 elements cannot enter a successful result.
         * @param[in] bytes Borrowed complete count-prefixed Boolean encoding.
         * @param[out] value Owning destination, unchanged on false.
         * @return True for the complete canonical Boolean array.
         * @see roswasmc_decode_parameter
         */
        static bool decode(ByteView bytes, BooleanArray& value)
        {
            roswasmc_parameter_value checked;
            if(roswasmc_decode_parameter(ROSWASMC_PARAM_BOOLS, bytes.data(), bytes.size(), &checked))
            {
                return false;
            }
            return ParameterCodec<std::vector<uint8_t> >::decode(bytes, value.values);
        }
    };

    /** @brief Complete owning typed/deletion-only parameter-event codec.
     * @details Checks nonnegative signed-32-bit seconds, normalized nanoseconds,
     * event kind, canonical name grammar, payload discriminant and value bounds.
     * Values are encoded only for kinds 1/2; deletion kind 3 carries no payload.
     * @see roswasmc_typed_parameter_event
     */
    template <>
    struct Codec<msg::TypedParameterEvent>
    {
        /** @brief Encode the complete selected typed event payload and metadata.
         * @details Selects exactly the field identified by tag and enforces array,
         * UTF-8, finite-number and total 4193786-byte bounds. Unselected owning
         * fields are ignored; a deletion carries no value payload.
         * @param[in] value Complete owning event, borrowed only for this call.
         * @param[out] out Owning bytes, unchanged on false.
         * @return True after full canonical validation and encoding.
         * @see roswasmc_encode_typed_parameter_event
         */
        static bool encode(msg::TypedParameterEvent const& value, wire::bytes& out)
        {
            roswasmc_typed_parameter_event raw;
            wire::bytes payload;
            raw.seconds = value.seconds;
            raw.nanoseconds = value.nanoseconds;
            raw.kind = value.kind;
            raw.node = detail::text(value.node);
            raw.name = detail::text(value.name);
            roswasmc_parameter_value empty = roswasmc_parameter_value();
            raw.value = empty;
            raw.value.tag = static_cast<roswasmc_parameter_tag>(value.tag);
            if(value.kind != 3)
            {
                switch(value.tag)
                {
                    case msg::ParameterTag::boolean: payload = ParameterCodec<bool>::encode(value.bool_value); break;
                    case msg::ParameterTag::integer: payload = ParameterCodec<int64_t>::encode(value.integer_value); break;
                    case msg::ParameterTag::float64: payload = ParameterCodec<double>::encode(value.double_value); break;
                    case msg::ParameterTag::string: payload = ParameterCodec<std::string>::encode(value.string_value); break;
                    case msg::ParameterTag::byte_array: payload = ParameterCodec<std::vector<uint8_t> >::encode(value.byte_array_value); break;
                    case msg::ParameterTag::boolean_array:
                    {
                        BooleanArray b;
                        b.values = value.bool_array_value;
                        payload = ParameterCodec<BooleanArray>::encode(b);
                        break;
                    }
                    case msg::ParameterTag::integer_array: payload = ParameterCodec<std::vector<int64_t> >::encode(value.integer_array_value); break;
                    case msg::ParameterTag::float64_array: payload = ParameterCodec<std::vector<double> >::encode(value.double_array_value); break;
                    case msg::ParameterTag::string_array: payload = ParameterCodec<std::vector<std::string> >::encode(value.string_array_value); break;
                    default: return false;
                }
                if(payload.empty() || roswasmc_decode_parameter(raw.value.tag, buffer_data(payload), payload.size(), &raw.value))
                {
                    return false;
                }
            }
            size_t n = 23, used = 0;
            if(!detail::sized(n, value.node.size()) || !detail::sized(n, value.name.size()) || !detail::sized(n, payload.size()))
            {
                return false;
            }
            wire::bytes next(n), scratch(payload.size());
            uint32_t code = roswasmc_encode_typed_parameter_event(&raw, buffer_data(scratch), scratch.size(), buffer_data(next), next.size(), &used);
            return detail::finish(code, next, used, out);
        }

        /** @brief Decode a complete typed event into owning metadata and payload.
         * @details Validates exact framing, time, names, kind and selected value
         * before copying. Only the selected payload is populated; unselected fields
         * retain constructor defaults. No input views survive the call.
         * @param[in] bytes Borrowed complete typed-event encoding.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after complete canonical decoding and copying.
         * @see roswasmc_decode_typed_parameter_event
         */
        static bool decode(ByteView bytes, msg::TypedParameterEvent& out)
        {
            roswasmc_typed_parameter_event raw;
            if(roswasmc_decode_typed_parameter_event(bytes.data(), bytes.size(), &raw))
            {
                return false;
            }
            msg::TypedParameterEvent next;
            next.seconds = raw.seconds;
            next.nanoseconds = raw.nanoseconds;
            next.kind = raw.kind;
            next.node = detail::own(raw.node);
            next.name = detail::own(raw.name);
            next.tag = static_cast<msg::ParameterTag::Value>(raw.value.tag);
            if(raw.kind != 3)
            {
                switch(next.tag)
                {
                    case msg::ParameterTag::boolean: next.bool_value = raw.value.boolean != 0; break;
                    case msg::ParameterTag::integer: roswasmc_copy_object(&next.integer_value, &raw.value.integer_bits, 8); break;
                    case msg::ParameterTag::float64: next.double_value = raw.value.real; break;
                    case msg::ParameterTag::string: next.string_value = detail::own(raw.value.text); break;
                    case msg::ParameterTag::byte_array:
                        if(!ParameterCodec<std::vector<uint8_t> >::decode(ByteView(raw.value.array_wire.data, raw.value.array_wire.size),
                                                                          next.byte_array_value))
                        {
                            return false;
                        }
                        break;
                    case msg::ParameterTag::boolean_array:
                    {
                        BooleanArray b;
                        if(!ParameterCodec<BooleanArray>::decode(ByteView(raw.value.array_wire.data, raw.value.array_wire.size), b))
                        {
                            return false;
                        }
                        next.bool_array_value.swap(b.values);
                        break;
                    }
                    case msg::ParameterTag::integer_array:
                        if(!ParameterCodec<std::vector<int64_t> >::decode(ByteView(raw.value.array_wire.data, raw.value.array_wire.size),
                                                                          next.integer_array_value))
                        {
                            return false;
                        }
                        break;
                    case msg::ParameterTag::float64_array:
                        if(!ParameterCodec<std::vector<double> >::decode(ByteView(raw.value.array_wire.data, raw.value.array_wire.size),
                                                                         next.double_array_value))
                        {
                            return false;
                        }
                        break;
                    case msg::ParameterTag::string_array:
                        if(!ParameterCodec<std::vector<std::string> >::decode(ByteView(raw.value.array_wire.data, raw.value.array_wire.size),
                                                                              next.string_array_value))
                        {
                            return false;
                        }
                        break;
                    default: return false;
                }
            }
            out = next;
            return true;
        }
    };
}  // namespace roswasmcpp

#include <platform/ros/cpp/roswasm/detail/portable_wire.hpp>
