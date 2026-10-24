/** @file
 * @brief Finite C++20 source adapter for explicitly selected minimal examples.
 * @details Topic/time/log operations use the checked ROS Wasm SDK and immutable
 * selected bindings. This surface supplies caller-driven source behavior, not
 * native rclcpp binary ABI, threads, generic RMW or discovery. Serialize global
 * initialization/spin/shutdown and related owners. Numeric failures record the
 * adapter error, then throw RCLError when exceptions are enabled or abort when
 * disabled; destructors instead retain the first cleanup error for inspection.
 * Unsupported input is refused rather than translated to a successful result.
 * @see roswasm_rclcpp::Selection
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#if ROSWASM_CPP_LEGACY || ROSWASM_CPP_STANDARD < 20
# error "This pinned rclcpp SOURCE adapter requires C++20; use the explicit stationary SDK migration examples for older standards"
#else
# include <platform/ros2/cpp/compat/rclcpp/roswasm_rclcpp/selection.hpp>
# include <platform/ros2/cpp/compat/rclcpp/std_msgs/msg/string.hpp>
# include <chrono>
# include <array>
# include <fast_io.h>  // Explicit current vendored C++20 SDK dependency.
# include <cstdlib>
# include <functional>
# include <limits>
# include <memory>
# include <stdexcept>
# include <string>
# include <type_traits>
# include <utility>
# include <vector>

namespace roswasmcpp
{
    /** @brief Canonical String codec for the selected source-message type.
     * @details Delegates the complete owned SDK String conversion without native
     * type-support lookup or I/O. Allocation behavior follows the C++ library.
     * @see std_msgs::msg::String
     */
    template <>
    struct Codec<::std_msgs::msg::String>
    {
        /** @brief Encode the source String with the complete SDK String codec.
         * @details Validates UTF-8 and canonical byte bounds before replacing out.
         * Empty text and embedded U+0000 follow the SDK String contract.
         * @param value Borrowed owning source text.
         * @param out Owning canonical destination, unchanged on false.
         * @return True after complete validation/conversion.
         * @see Codec::decode
         */
        static bool encode(::std_msgs::msg::String const& value, wire::bytes& out)
        {
            return Codec<msg::String>::encode(msg::String{value.data}, out);
        }

        /** @brief Decode a complete canonical String into independent source text.
         * @details A temporary protects out on validation failure; no borrowed input
         * span escapes. UTF-8 and exact framing follow the complete SDK codec.
         * @param bytes Borrowed complete wire payload.
         * @param out Replaced only after successful decoding.
         * @return True on complete conversion, otherwise false.
         * @see Codec::encode
         */
        static bool decode(std::span<unsigned char const> bytes, ::std_msgs::msg::String& out)
        {
            msg::String next;
            if(!Codec<msg::String>::decode(bytes, next))
            {
                return false;
            }
            out.data = std::move(next.data);
            return true;
        }
    };
}  // namespace roswasmcpp

namespace rclcpp
{
    namespace exceptions
    {
        /** @brief Exception carrying the finite adapter's numeric failure code.
         * @details Failure helpers record the same code globally before throwing.
         * Exception-disabled builds abort instead of fabricating an exception result.
         * @see roswasm_rclcpp_last_error
         */
        class RCLError : public std::runtime_error
        {
        public:
            /** @brief Numeric adapter/backend error associated with this exception.
             * @details Copying the exception copies this value without another operation.
             * @see RCLError::RCLError
             */
            std::uint32_t code;

            /** @brief Store a numeric code with the fixed finite-adapter error message.
             * @details Direct construction does not update global adapter state or I/O.
             * @param value Error value preserved without remapping.
             * @see RCLError::code
             */
            explicit RCLError(std::uint32_t value) : std::runtime_error("finite rclcpp adapter operation refused"), code{value}
            {
            }
        };
    }  // namespace exceptions

    namespace detail
    {
        struct Core;

        struct State
        {
            roswasm_rclcpp::Selection const* selection{};
            std::unique_ptr<roswasmcpp::Context> context;
            std::uint32_t last_error{}, cleanup_error{};
            std::size_t nodes{};
            bool initialized{}, spinning{}, service_dispatching{};
            // Fixed weak registry only for the explicit Service profile. A callback
            // lease snapshots strong facade owners before it consumes any event.
            std::array<std::weak_ptr<Core>, 16> service_cores{};
        };

        inline State& state()
        {
            static State value;
            return value;
        }

        [[noreturn]] inline void fail(std::uint32_t code)
        {
            state().last_error = code ? code : 22;
# if defined(__cpp_exceptions)
            throw exceptions::RCLError{state().last_error};
# else
            // Original uncaught-error main cannot continue. The external owner must
            // inspect this error and prove Host/module resource drain after a trap.
            std::abort();
# endif
        }

        inline void checked(std::uint32_t code)
        {
            if(code)
            {
                fail(code);
            }
        }

        inline void cleanup(std::uint32_t code) noexcept
        {
            if(code && !state().cleanup_error)
            {
                state().cleanup_error = code;
            }
        }

        inline bool text(std::string_view value, std::size_t maximum)
        {
            return !value.empty() && value.size() <= maximum && value.find('\0') == value.npos;
        }

        inline void running()
        {
            if(!state().initialized || !state().context || !state().context->running())
            {
                fail(125);
            }
        }

        struct Entity
        {
            virtual std::uint32_t poll(std::uint64_t) = 0;
            virtual std::uint32_t close() noexcept = 0;
            virtual ~Entity() = default;
        };

        struct Core
        {
            std::string node;
            roswasm_rclcpp::NodeBinding binding;
            roswasmc_context context_;
            std::vector<std::weak_ptr<Entity>> entities;
            std::unique_ptr<roswasmcpp::Clock> clock;
            std::unique_ptr<roswasmcpp::Logger> logger;
            bool dispatching{}, closed{};

            Core(std::string_view name, roswasm_rclcpp::NodeBinding row) : node{name}, binding{row}, context_{&state().context->backend()}
            {
                if(state().nodes >= 16)
                {
                    fail(90);
                }
                ++state().nodes;
            }

            roswasmc_context const& context() const
            {
                return context_;
            }

            std::uint64_t now()
            {
                running();
                if(!clock)
                {
                    if(state().service_dispatching)
                    {
                        fail(17);
                    }
                    if(!text(binding.steady_clock_alias, 64))
                    {
                        fail(13);
                    }
                    clock = std::make_unique<roswasmcpp::Clock>(context(), binding.steady_clock_alias, ROSWASMC_TIME_READ_STEADY);
                    checked(clock->error());
                }
                std::uint64_t value{};
                checked(clock->now(value));
                return value;
            }

            void prepare_factory()
            {
                if(dispatching || closed || state().service_dispatching)
                {
                    fail(17);
                }
                entities.reserve(64);
                std::erase_if(entities, [](auto const& value) { return value.expired(); });
                if(entities.size() >= 64)
                {
                    fail(90);
                }
            }

            void add(std::shared_ptr<Entity> const& owner)
            {
                if(dispatching || closed)
                {
                    fail(17);
                }
                entities.emplace_back(owner);
            }

            void close() noexcept
            {
                if(closed)
                {
                    return;
                }
                if(state().service_dispatching)
                {
                    cleanup(17);
                    return;
                }
                closed = true;
                for(auto i = entities.rbegin(); i != entities.rend(); ++i)
                {
                    if(auto owner = i->lock())
                    {
                        cleanup(owner->close());
                    }
                }
                entities.clear();
                if(logger)
                {
                    if(logger->is_open())
                    {
                        cleanup(logger->close());
                    }
                    logger.reset();
                }
                if(clock)
                {
                    if(clock->is_open())
                    {
                        cleanup(clock->close());
                    }
                    clock.reset();
                }
            }

            ~Core()
            {
                close();
                --state().nodes;
            }
        };

        inline roswasm_rclcpp::TopicBinding const& topic(Core& core, std::string_view name, std::size_t depth, roswasm_rclcpp::Role role)
        {
            running();
            core.prepare_factory();
            roswasm_rclcpp::TopicBinding const* selected{};
            for(auto const& row: state().selection->topics)
            {
                if(row.node == core.node && row.topic == name && row.role == role)
                {
                    if(selected)
                    {
                        fail(22);
                    }
                    selected = &row;
                }
            }
            if(!selected)
            {
                fail(13);
            }
            if(selected->keep_last_depth != depth)
            {
                fail(95);
            }
            return *selected;
        }
    }  // namespace detail

    /** Native rclcpp accepts many options. This finite profile accepts only the
     * unchanged example's argc0/1, never silently ignores ROS remaps/extra options.
     */
    /** @brief Validate the explicit static configuration and initialize local state.
     * @details Accepts at most the program-name argument, verifies core ABI version
     * 1, bounded unique nodes and topic rows, then owns a copied backend Context.
     * Selected spans/text/callback state remain borrowed. No alias or discovery is
     * opened here. Existing initialization/live nodes/spin is refused with 17;
     * missing selection is 13, malformed input/table is 22 and ABI mismatch is 95.
     * @param argc Argument count 0 or 1; ROS command-line remapping is unsupported.
     * @param argv Live array with nonnull argv[0] when argc is 1; text is not retained.
     * @see shutdown
     */
    inline void init(int argc, char const* const* argv)
    {
        auto& s = detail::state();
        if(s.initialized || s.nodes || s.spinning)
        {
            detail::fail(17);
        }
        if(argc < 0 || argc > 1 || (argc && (!argv || !argv[0])))
        {
            detail::fail(22);
        }
        auto selected = roswasm_rclcpp::selected_configuration();
        if(!selected)
        {
            detail::fail(13);
        }
        if(!selected->backend || selected->backend->version != 2 || !selected->backend->abi_version || !selected->step || !selected->maximum_spin_steps ||
           selected->maximum_spin_steps > 4096 || selected->topics.size() > 32 || selected->nodes.empty() || selected->nodes.size() > 16)
        {
            detail::fail(22);
        }
        for(std::size_t i{}; i != selected->nodes.size(); ++i)
        {
            auto const& n = selected->nodes[i];
            if(!detail::text(n.node, 128) || (!n.steady_clock_alias.empty() && !detail::text(n.steady_clock_alias, 64)) ||
               (!n.info_logger_alias.empty() && !detail::text(n.info_logger_alias, 64)))
            {
                detail::fail(22);
            }
            for(std::size_t j{}; j != i; ++j)
            {
                if(selected->nodes[j].node == n.node)
                {
                    detail::fail(22);
                }
            }
        }
        for(std::size_t i{}; i != selected->topics.size(); ++i)
        {
            auto const& r = selected->topics[i];
            if(!detail::text(r.node, 128) || !detail::text(r.topic, 255) || !detail::text(r.alias, 64) || !r.keep_last_depth || r.keep_last_depth > 4096 ||
               r.maximum_wire_bytes < 4 || r.maximum_wire_bytes > 32768 ||
               (r.role != roswasm_rclcpp::Role::publish && r.role != roswasm_rclcpp::Role::subscribe))
            {
                detail::fail(22);
            }
            bool found{};
            for(auto const& n: selected->nodes)
            {
                found = found || r.node == n.node;
            }
            if(!found)
            {
                detail::fail(22);
            }
            for(std::size_t j{}; j != i; ++j)
            {
                auto const& p = selected->topics[j];
                if(p.node == r.node && p.topic == r.topic && p.role == r.role)
                {
                    detail::fail(22);
                }
            }
        }
        if(selected->backend->abi_version() != 1)
        {
            detail::fail(95);
        }
        s.selection = selected;
        s.context = std::make_unique<roswasmcpp::Context>(*selected->backend);
        s.last_error = 0;
        s.cleanup_error = 0;
        s.initialized = true;
    }

    /** @brief Initialize from the ordinary mutable main argument-vector spelling.
     * @details Delegates the const argument overload with the same validation and
     * failure behavior; neither the array nor its strings are mutated or retained.
     * @param argc Supported argument count 0 or 1.
     * @param argv Mutable spelling of the live caller-owned argument vector.
     * @see init(int,char const*const*)
     */
    inline void init(int argc, char** argv)
    {
        init(argc, const_cast<char const* const*>(argv));
    }

    /** @brief Inspect local initialized/running state without host I/O.
     * @details True requires the adapter flag, owned Context and its running flag;
     * this does not query a native ROS graph, middleware or transport connection.
     * @return True while the local initialized context remains running.
     * @see shutdown
     */
    inline bool ok()
    {
        auto const& s = detail::state();
        return s.initialized && s.context && s.context->running();
    }

    /** @brief Stop local running state without cancelling or closing every entity.
     * @details Marks the Context and adapter stopped; dependent owners still need
     * normal checked/destructor cleanup. Service callback-group dispatch refuses
     * shutdown with 17. No native stop, thread join or policy update occurs.
     * @see ok
     */
    inline void shutdown()
    {
        auto& s = detail::state();
        if(s.service_dispatching)
        {
            detail::fail(17);
        }
        if(s.context)
        {
            s.context->shutdown();
        }
        s.initialized = false;
    }

    /** @brief Weak node-associated logger for the finite selected format grammar.
     * @details Lazily acquires the separately selected info alias. It retains no
     * node lifetime; expired/closed cores fail with 9. Actual logging remains
     * synchronous and host severity/policy stays independent of source spelling.
     * @see Node::get_logger
     */
    class Logger
    {
        std::weak_ptr<detail::Core> core_;

    public:
        /** @brief Borrow one internal node core weakly without opening a logger.
         * @details This public source spelling supports get_logger; callers normally
         * obtain it from Node rather than constructing internal Core values.
         * @param core Shared node-core owner whose lifetime is not extended here.
         * @see Node::get_logger
         */
        explicit Logger(std::shared_ptr<detail::Core> const& core) : core_{core}
        {
        }

        /** @brief Log the exact selected two-addend request format.
         * @details Accepts only the acquired request format using two PRId64
         * conversions; other text is 95. Uses the explicit info alias once.
         * @param format Live NUL-terminated exact supported request-format literal.
         * @param a First signed addend rendered without native printf varargs.
         * @param b Second signed addend rendered in source order.
         * @see Logger::info(char const*,std::int64_t,std::int64_t,std::int64_t)
         */
        void info(char const* format, std::int64_t a, std::int64_t b) const;
        /** @brief Log the exact selected three-value result format.
         * @details Accepts only the acquired result format with three PRId64
         * conversions. Invalid grammar is 95; no variadic printf interpretation runs.
         * @param format Live NUL-terminated exact supported result-format literal.
         * @param a First signed addend.
         * @param b Second signed addend.
         * @param c Signed service result, already computed by the service.
         * @see Logger::info(char const*,std::int64_t,std::int64_t)
         */
        void info(char const* format, std::int64_t a, std::int64_t b, std::int64_t c) const;
        /** @brief Log the exact selected service-waiting literal.
         * @details Only "waiting for service to appear..." is supported; other or
         * null text fails with 95. This call neither queries nor waits for readiness.
         * @param literal Live NUL-terminated supported literal.
         * @see Logger::info(char const*,char const*)
         */
        void info(char const* literal) const;
        /** @brief Refuse the unselected ERROR severity source path.
         * @details Always fails with 95; an INFO alias is never promoted to ERROR.
         * No logging import is performed by this unsupported spelling.
         * @param literal Unused source literal; no text is dereferenced.
         * @see Logger::info(char const*)
         */
        void error(char const* literal) const;

        /** @brief Render one complete string argument under the finite INFO grammar.
         * @details Requires exactly one %s and permits escaped %%; format is at most
         * 255 bytes, argument at most 32764 bytes and rendered text at most 4095.
         * Null inputs are 22, unsupported grammar 95 and bounds failures 90. The
         * separately granted info owner is lazy; creating it during service group
         * dispatch is refused with 17. No truncation or arbitrary varargs occurs.
         * @param format Live NUL-terminated format, borrowed for this call.
         * @param text Live NUL-terminated argument, borrowed for this call.
         * @see roswasm_rclcpp::NodeBinding::info_logger_alias
         */
        void info(char const* format, char const* text) const
        {
            auto core = core_.lock();
            if(!core || core->closed)
            {
                detail::fail(9);
            }
            detail::running();
            if(!format || !text)
            {
                detail::fail(22);
            }
            // Real libc formatting follows a finite checked format grammar: one
            // %s and optional %% only. No %n, width, arbitrary varargs or truncation.
            std::size_t size{}, conversions{};
            for(; format[size]; ++size)
            {
                if(size >= 255)
                {
                    detail::fail(90);
                }
                if(format[size] == '%')
                {
                    char next = format[++size];
                    if(next == 's')
                    {
                        ++conversions;
                    }
                    else if(next != '%')
                    {
                        detail::fail(95);
                    }
                }
            }
            if(conversions != 1)
            {
                detail::fail(95);
            }
            std::size_t length{};
            while(text[length])
            {
                if(length++ >= 32764)
                {
                    detail::fail(90);
                }
            }
            std::size_t expected{};
            for(std::size_t i{}; i != size; ++i)
            {
                std::size_t piece{1};
                if(format[i] == '%')
                {
                    char next = format[++i];
                    piece = next == 's' ? length : 1;
                }
                if(piece > 4095 - expected)
                {
                    detail::fail(90);
                }
                expected += piece;
            }
            // Only memory output: validated literal runs, one complete argument
            // and escaped percent. No varargs/printf parser or truncating buffer.
            std::string rendered;
            rendered.reserve(expected);
            ::fast_io::ostring_ref_std sink{std::addressof(rendered)};
            std::size_t start{};
            for(std::size_t i{}; i != size; ++i)
            {
                if(format[i] != '%')
                {
                    continue;
                }
                if(i != start)
                {
                    ::fast_io::print(sink, std::string_view{format + start, i - start});
                }
                if(format[++i] == 's')
                {
                    ::fast_io::print(sink, std::string_view{text, length});
                }
                else
                {
                    ::fast_io::print(sink, ::fast_io::mnp::chvw('%'));
                }
                start = i + 1;
            }
            if(start != size)
            {
                ::fast_io::print(sink, std::string_view{format + start, size - start});
            }
            if(rendered.size() != expected)
            {
                detail::fail(22);
            }
            if(!core->logger)
            {
                if(detail::state().service_dispatching)
                {
                    detail::fail(17);
                }
                if(!detail::text(core->binding.info_logger_alias, 64))
                {
                    detail::fail(13);
                }
                core->logger = std::make_unique<roswasmcpp::Logger>(core->context(), core->binding.info_logger_alias);
                detail::checked(core->logger->error());
            }
            detail::checked(core->logger->write(rendered));
        }
    };

    /** @brief Local caller-driven fixed-period timer entity.
     * @details Supplied timestamps are unsigned nanoseconds from the selected
     * clock. Polling skips missed periods while preserving the original phase and
     * invokes at most one copied callback. No thread, sleep or clock read is owned
     * by this object. Serialize poll/cancel/close and callback-state mutation.
     * @see Node::create_wall_timer
     */
    class TimerBase : public detail::Entity
    {
        std::uint64_t period_, due_, last_;
        std::function<void()> callback_;
        bool cancelled_{}, busy_{};

    public:
        /** @brief Shared ownership of one local timer and its callback storage.
         * @details Sharing this object creates no new time grant or callback thread.
         * @see TimerBase::cancel
         */
        using SharedPtr = std::shared_ptr<TimerBase>;

        /** @brief Initialize a nonzero fixed period from an explicit initial time.
         * @details Empty callbacks, zero period or overflowing now+period fail with
         * 22. No backend operation is performed by this constructor.
         * @param period Positive nanoseconds between fixed-phase deadlines.
         * @param now Initial timestamp in the same nanosecond domain as poll.
         * @param callback Owning callable copy, invoked synchronously when due.
         * @see TimerBase::poll
         */
        TimerBase(std::uint64_t period, std::uint64_t now, std::function<void()> callback) :
            period_{period}, due_{now}, last_{now}, callback_{std::move(callback)}
        {
            if(!period || !callback_ || period > std::numeric_limits<std::uint64_t>::max() - now)
            {
                detail::fail(22);
            }
            due_ += period;
        }

        /** @brief Mark this local timer cancelled without backend I/O.
         * @details Repeated cancellation is harmless; later polls report idle 11.
         * This cannot interrupt a callback already executing on the caller's stack.
         * @see TimerBase::close
         */
        void cancel() noexcept
        {
            cancelled_ = true;
        }

        /** @brief Cancel locally unless a service callback group is dispatching.
         * @details Returns 17 without cancellation during that protected group;
         * otherwise repeated calls simply preserve cancelled state.
         * @return Zero after local cancellation, or 17 for the dispatch guard.
         * @see TimerBase::cancel
         */
        std::uint32_t close() noexcept override
        {
            if(detail::state().service_dispatching)
            {
                return 17;
            }
            cancel();
            return 0;
        }

        /** @brief Observe one timestamp and invoke at most one due callback.
         * @details Returns 11 while cancelled/early, 17 on reentry, 22 for backward
         * time and 90 for deadline arithmetic overflow. A due deadline advances
         * before calling the copied callback; exceptions propagate without replay
         * and a scope guard clears busy state. No timestamp is acquired implicitly.
         * @param now Monotonic unsigned nanoseconds in the constructor's domain.
         * @return Zero after one callback, otherwise the documented numeric status.
         * @see TimerBase::TimerBase
         */
        std::uint32_t poll(std::uint64_t now) override
        {
            if(cancelled_)
            {
                return 11;
            }
            if(busy_)
            {
                return 17;
            }
            if(now < last_)
            {
                return 22;
            }
            last_ = now;
            if(now < due_)
            {
                return 11;
            }
            // Keep the original fixed-period phase and skip missed periods, as
            // actual rcl_timer_call_with_info does; do not drift to now+period.
            auto steps = (now - due_) / period_ + 1;
            if(steps > (std::numeric_limits<std::uint64_t>::max() - due_) / period_)
            {
                return 90;
            }
            due_ += steps * period_;

            struct Lease
            {
                bool& b;

                ~Lease()
                {
                    b = false;
                }
            } lease{busy_};

            busy_ = true;
            auto callback = callback_;
            callback();
            return 0;
        }
    };

    /** @brief Finite source publisher owning one explicitly selected String role.
     * @details Retains the node core to keep its C context alive. Calls use checked
     * synchronous SDK publication without retries; unsupported Message types fail
     * compilation. Obtain owners through Node so table/byte bounds are validated.
     * @tparam Message Exactly std_msgs::msg::String for this selected source profile.
     * @see Node::create_publisher
     */
    template <class Message>
    class Publisher : public detail::Entity
    {
        static_assert(std::is_same_v<Message, ::std_msgs::msg::String>, "This finite source adapter implements complete String only");
        std::shared_ptr<detail::Core> core_;
        roswasmcpp::Publisher<Message> publisher_;
        std::size_t maximum_;
        bool closed_{};

    public:
        /** @brief Shared facade ownership retaining one capability owner.
         * @details Copying the shared pointer does not reopen the selected alias.
         * @see Publisher::close
         */
        using SharedPtr = std::shared_ptr<Publisher<Message>>;

        /** @brief Acquire the selected publication alias using a retained node core.
         * @details Factory callers supply a nonnull live Core and a validated byte
         * capacity of at least four. Setup errors use the adapter failure path.
         * @param core Shared internal node owner retained through cleanup.
         * @param alias Explicit granted publication alias, borrowed during acquisition.
         * @param maximum Complete canonical byte capacity validated by the factory.
         * @see Node::create_publisher
         */
        Publisher(std::shared_ptr<detail::Core> core, std::string_view alias, std::size_t maximum) :
            core_{std::move(core)}, publisher_{core_->context(), alias}, maximum_{maximum}
        {
            detail::checked(publisher_.error());
        }

        /** @brief Publish one complete String through the selected role once.
         * @details Requires a running context/live facade, enforces maximum minus
         * four content bytes, then uses the full SDK codec and checked dispatch.
         * Errors use RCLError/abort; no partial send, resize or replay is added.
         * @param value Borrowed source message, valid throughout the synchronous call.
         * @see Publisher::close
         */
        void publish(Message const& value)
        {
            detail::running();
            if(closed_)
            {
                detail::fail(9);
            }
            if(value.data.size() > maximum_ - 4)
            {
                detail::fail(90);
            }
            detail::checked(publisher_.publish(value));
        }

        /** @brief Report no queued work for a publication-only entity.
         * @details Performs no backend call, including after close. The unnamed
         * entity timestamp is ignored without reading a clock.
         * @return Idle status 11.
         * @see Publisher::publish
         */
        std::uint32_t poll(std::uint64_t) override
        {
            return 11;
        }

        /** @brief Retire this facade and attempt one live publication-owner close.
         * @details Service group dispatch returns 17 without mutation. Otherwise
         * mark closed before attempting cleanup; repeated facade closes return zero
         * without replay, even when the original backend notification failed.
         * @return Zero, dispatch-guard 17, or the SDK owner's close error.
         * @see Publisher::~Publisher
         */
        std::uint32_t close() noexcept override
        {
            if(detail::state().service_dispatching)
            {
                return 17;
            }
            if(closed_)
            {
                return 0;
            }
            closed_ = true;
            return publisher_.is_open() ? publisher_.close() : 0;
        }

        /** @brief Perform best-effort close and retain the first cleanup error.
         * @details No exception is emitted by this explicit cleanup path. Remaining
         * member ownership follows its own destructor contract.
         * @see roswasm_rclcpp_cleanup_error
         */
        ~Publisher()
        {
            detail::cleanup(close());
        }
    };

    /** @brief Finite String subscription with caller-driven SDK callback delivery.
     * @details Owns a selected bounded subscription and retains its node core.
     * There is no native callback thread or implicit poll/retry. Callback exceptions
     * follow the SDK/caller stack; serialize use and mutation of shared state.
     * @tparam Message Exactly std_msgs::msg::String in this source profile.
     * @see Node::create_subscription
     */
    template <class Message>
    class Subscription : public detail::Entity
    {
        static_assert(std::is_same_v<Message, ::std_msgs::msg::String>, "This finite source adapter implements complete String only");
        std::shared_ptr<detail::Core> core_;
        roswasmcpp::Subscription<Message> subscription_;
        bool closed_{};

    public:
        /** @brief Shared facade ownership retaining one selected subscription.
         * @details Copying the pointer adds no native subscription or grant.
         * @see Subscription::close
         */
        using SharedPtr = std::shared_ptr<Subscription<Message>>;

        /** @brief Acquire/activate the selected alias and store a nonempty callback.
         * @details A live nonnull Core and validated maximum come from Node's factory.
         * Setup errors or an empty callback use the adapter failure path. Borrowed
         * callback arguments remain valid only during synchronous delivery.
         * @param core Shared node-core owner retained through capability cleanup.
         * @param alias Explicit independent topic-subscription grant.
         * @param maximum Complete canonical receive capacity in bytes.
         * @param callback Owning callable to invoke with a decoded const message.
         * @see Node::create_subscription
         */
        Subscription(std::shared_ptr<detail::Core> core, std::string_view alias, std::size_t maximum, std::function<void(Message const&)> callback) :
            core_{std::move(core)}, subscription_{core_->context(), alias, maximum}
        {
            detail::checked(subscription_.error());
            if(!callback)
            {
                detail::fail(22);
            }
            subscription_.on_message(std::move(callback));
        }

        /** @brief Poll the SDK subscription once and deliver at most one message.
         * @details A closed facade returns 9. Otherwise preserve the SDK's numeric
         * status, including idle 11 and validation failures; no auto-resize occurs.
         * The unnamed entity timestamp is ignored without reading a clock.
         * @return Closed status 9 or the SDK poll_once result.
         * @see Subscription::close
         */
        std::uint32_t poll(std::uint64_t) override
        {
            return closed_ ? 9 : subscription_.poll_once();
        }

        /** @brief Attempt one close while preserving the SDK's reentry guard.
         * @details Service group dispatch returns 17 without mutation. An SDK close
         * result of 17 leaves this facade open for explicit later cleanup; other
         * results mark it closed and subsequent facade closes return zero.
         * @return Zero, guard 17 or the SDK subscription close status.
         * @see Subscription::~Subscription
         */
        std::uint32_t close() noexcept override
        {
            if(detail::state().service_dispatching)
            {
                return 17;
            }
            if(closed_)
            {
                return 0;
            }
            auto code = subscription_.is_open() ? subscription_.close() : 0;
            if(code != 17)
            {
                closed_ = true;
            }
            return code;
        }

        /** @brief Best-effort close with first cleanup-error capture.
         * @details Member owners then follow their own destructor lifetime rules;
         * no cancellation, stronger grant or cleanup retry loop is created.
         * @see roswasm_rclcpp_cleanup_error
         */
        ~Subscription()
        {
            detail::cleanup(close());
        }
    };
    /** @brief Forward declaration of the finite AddTwoInts server facade.
     * @details Its complete source definition is supplied by service_profile.hpp.
     * @tparam ServiceT Exactly the selected source AddTwoInts service association.
     * @see Node::create_service
     */
    template <class ServiceT>
    class Service;
    /** @brief Forward declaration of the finite event-backed client facade.
     * @details Completion requires real selected event dispatch rather than a
     * synchronous service call wrapped in a ready future.
     * @tparam ServiceT Exactly the selected source AddTwoInts service association.
     * @see Node::create_client
     */
    template <class ServiceT>
    class Client;

    /** @brief Finite selected node retaining topic/time/log/service source owners.
     * @details Requires prior initialization and one exact NodeBinding. At most
     * 16 cores and 64 live entity facades per core are supported. Actual aliases
     * are independently selected when their factories/operations are used. Copies
     * are disabled; shared facades retain the core through dependent cleanup.
     * @see roswasm_rclcpp::NodeBinding
     */
    class Node
    {
        std::shared_ptr<detail::Core> core_;

    public:
        /** @brief Shared source-node ownership alias.
         * @details It owns this C++ facade rather than a native rclcpp node ABI object.
         * @see Node::make_shared
         */
        using SharedPtr = std::shared_ptr<Node>;

        /** @brief Construct a shared finite Node for an exact selected name.
         * @details Delegates the ordinary constructor and standard shared allocation;
         * failures follow the same numeric exception/abort and allocation behavior.
         * @param name Owning source name compared with immutable selected rows.
         * @return Shared node facade after successful construction.
         * @see Node::Node
         */
        static SharedPtr make_shared(std::string const& name)
        {
            return std::make_shared<Node>(name);
        }
        /** @brief Construct the independently selected finite service server.
         * @details Requires the optional exact service profile and separate advertise/
         * respond aliases. No topic row or node name authorizes a service operation.
         * @tparam ServiceT Selected AddTwoInts source service association.
         * @tparam Callback Supported service callback signature, copied into the owner.
         * @param name Exact selected service name, borrowed during factory lookup.
         * @param callback Owning callable construction source.
         * @return Shared service facade retained in the local entity registry.
         * @see Service
         */
        template <class ServiceT, class Callback>
        std::shared_ptr<Service<ServiceT>> create_service(std::string_view name, Callback&& callback);
        /** @brief Construct the independently selected event-backed service client.
         * @details Requires explicit call/observer aliases; optional readiness uses
         * its own separate backend/alias rather than graph or topic inference.
         * @tparam ServiceT Selected AddTwoInts source service association.
         * @param name Exact selected service name, borrowed during lookup.
         * @return Shared finite client facade with bounded pending requests.
         * @see Client
         */
        template <class ServiceT>
        std::shared_ptr<Client<ServiceT>> create_client(std::string_view name);

        /** @brief Retain the internal source-adapter core for service integration.
         * @details This exposes a local C++ lifetime owner, not a native node pointer,
         * serialized handle or additional business authority.
         * @return Shared internal core without opening or dispatching anything.
         * @see Node::create_client
         */
        std::shared_ptr<detail::Core> _service_core() const
        {
            return core_;
        }

        /** @brief Create one core for an explicitly selected source node name.
         * @details Requires running state, refuses service-group reentry with 17 and
         * an unselected name with 13. Core/optional-service registry exhaustion is 90.
         * Name text is copied; selected table text remains borrowed as documented.
         * @param name Exact name to match, without implicit namespace/remapping.
         * @see Node::make_shared
         */
        explicit Node(std::string const& name)
        {
            detail::running();
            if(detail::state().service_dispatching)
            {
                detail::fail(17);
            }
            roswasm_rclcpp::NodeBinding const* selected{};
            for(auto const& row: detail::state().selection->nodes)
            {
                if(row.node == name)
                {
                    selected = &row;
                }
            }
            if(!selected)
            {
                detail::fail(13);
            }
            core_ = std::make_shared<detail::Core>(name, *selected);
            if(detail::state().selection->services)
            {
                bool retained{};
                for(auto& slot: detail::state().service_cores)
                {
                    if(slot.expired())
                    {
                        slot = core_;
                        retained = true;
                        break;
                    }
                }
                if(!retained)
                {
                    detail::fail(90);
                }
            }
        }

        /** @brief Request reverse entity and clock/logger cleanup for this core.
         * @details Core cleanup retains its first numeric error. Shared dependent
         * facades keep context storage alive; no native thread or controller is stopped.
         * @see roswasm_rclcpp_cleanup_error
         */
        virtual ~Node()
        {
            core_->close();
        }

        /** @brief Disable copying a node facade and its registry association.
         * @details Share the explicit SharedPtr rather than copying core ownership.
         * @see Node::SharedPtr
         */
        Node(Node const&) = delete;
        /** @brief Disable replacing one node by copy assignment.
         * @details This deleted operation performs no cleanup or alias acquisition.
         * @see Node::SharedPtr
         */
        Node& operator= (Node const&) = delete;

        /** @brief Obtain a weak local logger associated with this node core.
         * @details No logger alias is opened until a supported log operation needs
         * it; the returned Logger does not independently extend node lifetime.
         * @return Copyable weak Logger facade.
         * @see Logger
         */
        Logger get_logger() const
        {
            return Logger{core_};
        }

        /** @brief Create one publisher for an exact selected topic/depth binding.
         * @details Lookup requires running state, factory capacity and the explicit
         * publish role. Missing binding is 13, depth mismatch 95 and mutation during
         * dispatch 17. Opens only the selected publication alias.
         * @tparam Message Exactly the selected std_msgs::msg::String source type.
         * @param topic Counted exact selected topic spelling, borrowed during lookup.
         * @param depth Keep-last entries exactly equal to the selected row.
         * @return Shared publication facade with the row's complete byte bound.
         * @see Publisher
         */
        template <class Message>
        typename Publisher<Message>::SharedPtr create_publisher(std::string_view topic, std::size_t depth)
        {
            auto const& row = detail::topic(*core_, topic, depth, roswasm_rclcpp::Role::publish);
            auto value = std::make_shared<Publisher<Message>>(core_, row.alias, row.maximum_wire_bytes);
            core_->add(value);
            return value;
        }

        /** @brief Create and activate one exact selected bounded topic subscription.
         * @details Requires an independent subscribe row and matching keep-last
         * depth. Stores an owning callable; decoded const message references are
         * borrowed only during the synchronous caller-driven delivery callback.
         * @tparam Message Exactly the selected std_msgs::msg::String source type.
         * @tparam Callback Convertible to void(Message const&).
         * @param topic Exact selected topic name, borrowed during lookup.
         * @param depth Keep-last entry count matching the selected row.
         * @param callback Callable construction source, retained by the subscription.
         * @return Shared activated source subscription facade.
         * @see Subscription
         */
        template <class Message, class Callback>
        typename Subscription<Message>::SharedPtr create_subscription(std::string_view topic, std::size_t depth, Callback&& callback)
        {
            auto const& row = detail::topic(*core_, topic, depth, roswasm_rclcpp::Role::subscribe);
            auto value = std::make_shared<Subscription<Message>>(core_,
                                                                 row.alias,
                                                                 row.maximum_wire_bytes,
                                                                 std::function<void(Message const&)>{std::forward<Callback>(callback)});
            core_->add(value);
            return value;
        }

        /** @brief Create a local timer paced by the independently selected clock.
         * @details Supports positive integral milliseconds only, with Rep at most
         * eight bytes. Converts exactly to nanoseconds within signed-64 bounds;
         * zero/negative durations are 22 and overflow is 90. Clock acquisition is
         * explicit through the node's alias. No native timer/thread is created.
         * @tparam Rep Integral duration count representation of at most eight bytes.
         * @tparam Period Exactly std::milli in this finite source profile.
         * @tparam Callback Convertible to a nonempty void() callable.
         * @param period Positive fixed interval in integral milliseconds.
         * @param callback Owning callable construction source.
         * @return Shared local timer retained by the caller and weak entity registry.
         * @see TimerBase::poll
         */
        template <class Rep, class Period, class Callback>
        TimerBase::SharedPtr create_wall_timer(std::chrono::duration<Rep, Period> period, Callback&& callback)
        {
            detail::running();
            core_->prepare_factory();
            static_assert(std::is_integral_v<Rep> && sizeof(Rep) <= 8 && std::ratio_equal_v<Period, std::milli>,
                          "Finite official fixture profile supports integral milliseconds only");
            auto count = period.count();
            if(count <= 0)
            {
                detail::fail(22);
            }
            auto ticks = static_cast<std::uint64_t>(count);
            if(ticks > static_cast<std::uint64_t>(std::numeric_limits<std::int64_t>::max()) / 1000000)
            {
                detail::fail(90);
            }
            auto ns = ticks * 1000000;
            auto timer = std::make_shared<TimerBase>(static_cast<std::uint64_t>(ns), core_->now(), std::function<void()>{std::forward<Callback>(callback)});
            core_->add(timer);
            return timer;
        }

        /** @brief Dispatch this finite node under the explicit pacing/pass bound.
         * @details Requires running state and no global/core/service reentry. Each
         * pass calls the selected pacing hook, snapshots live entities and polls
         * them once. Code 125 requests shutdown; other failures propagate, idle 11
         * is tolerated and budget exhaustion is 110. A guard closes this core on
         * every exit, including callback exceptions. This starts no worker thread.
         * @see spin
         */
        void _spin()
        {
            auto& s = detail::state();
            detail::running();
            if(s.spinning || s.service_dispatching || core_->dispatching || core_->closed)
            {
                detail::fail(17);
            }

            struct Guard
            {
                bool& busy;
                std::shared_ptr<detail::Core> core;

                ~Guard()
                {
                    busy = false;
                    core->dispatching = false;
                    core->close();
                }
            } guard{s.spinning, core_};

            s.spinning = true;
            for(std::size_t pass{}; pass != s.selection->maximum_spin_steps; ++pass)
            {
                if(!ok())
                {
                    return;
                }
                auto step = s.selection->step(s.selection->step_context);
                if(step == 125)
                {
                    shutdown();
                    return;
                }
                detail::checked(step);
                if(!ok())
                {
                    return;
                }
                auto now = core_->clock ? core_->now() : 0;
                std::vector<std::shared_ptr<detail::Entity>> owners;
                for(auto const& weak: core_->entities)
                {
                    if(auto owner = weak.lock())
                    {
                        owners.push_back(std::move(owner));
                    }
                }
                core_->dispatching = true;
                for(auto const& owner: owners)
                {
                    if(!ok())
                    {
                        break;
                    }
                    auto code = owner->poll(now);
                    if(code != 11)
                    {
                        detail::checked(code);
                    }
                }
                core_->dispatching = false;
            }
            detail::fail(110);  // A finite preparation/test budget is a failure, never fake normal shutdown.
        }
    };

    /** @brief Retain a finite Node and run its caller-driven bounded dispatch loop.
     * @details Null input is 22. After normal loop exit, a retained cleanup failure
     * is raised through the adapter failure path. Callbacks execute on this stack;
     * no native executor thread or generic wait-set compatibility is supplied.
     * @tparam NodeT Node or a public derived source-node type.
     * @param node Nonnull shared facade retained for the complete dispatch call.
     * @see Node::_spin
     */
    template <class NodeT>
    void spin(std::shared_ptr<NodeT> const& node)
    {
        static_assert(std::is_base_of_v<Node, NodeT>);
        if(!node)
        {
            detail::fail(22);
        }
        auto retained = node;
        retained->_spin();
        detail::checked(detail::state().cleanup_error);
    }
}  // namespace rclcpp

/** @brief Forward a source INFO invocation to the finite Logger overloads.
 * @details The logger expression is evaluated once. Supported exact formats and
 * the independently granted info alias follow Logger's contract.
 * @param logger Expression yielding the selected source Logger facade.
 * @param ... Supported literal/typed arguments for Logger::info.
 * @see rclcpp::Logger::info
 */
# define RCLCPP_INFO(logger, ...) ((logger).info(__VA_ARGS__))
/** @brief Forward source ERROR spelling to the explicitly unsupported path.
 * @details Logger::error refuses 95 without promoting an INFO grant's severity.
 * @param logger Source Logger expression evaluated once.
 * @param ... Arguments matching the finite Logger::error declaration.
 * @see rclcpp::Logger::error
 */
# define RCLCPP_ERROR(logger, ...) ((logger).error(__VA_ARGS__))

/** @brief Inspect the last recorded local adapter failure without host I/O.
 * @details Initialization resets the slot; cleanup errors are tracked separately.
 * This value does not establish native controller state or capability authority.
 * @return Stored numeric failure, or zero before a recorded adapter failure.
 * @see roswasm_rclcpp_cleanup_error
 */
extern "C" inline std::uint32_t roswasm_rclcpp_last_error() noexcept
{
    return rclcpp::detail::state().last_error;
}

/** @brief Inspect the first retained adapter cleanup error without retrying it.
 * @details Initialization resets the slot; this is independent of the primary
 * failure and does not prove live native resources after a failed notification.
 * @return First nonzero retained cleanup status, otherwise zero.
 * @see roswasm_rclcpp_last_error
 */
extern "C" inline std::uint32_t roswasm_rclcpp_cleanup_error() noexcept
{
    return rclcpp::detail::state().cleanup_error;
}

// Additive service profile; the original topic selection remains absent by default.
# include <platform/ros2/cpp/compat/rclcpp/rclcpp/service_profile.hpp>
#endif  // pinned rclcpp SOURCE adapter standard contract
