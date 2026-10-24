/**
 * @file observation.hpp
 * @brief Provide typed C++ value results for complete Unitree observations.
 * @details This header requires C++11 or later and borrows the genuine C
 * capability transport. Templates preserve the original full record types.
 * No exception, RTTI, standard-library allocation, or native C++ ABI is needed.
 */
#ifndef UWVM_UNITREE_CPP_OBSERVATION_HPP
#define UWVM_UNITREE_CPP_OBSERVATION_HPP
#include <unitree/c/observation.h>

namespace unitree
{
    /**
     * @brief Own a complete typed record and its independent observation facts.
     * @tparam T Original generated Unitree record supported by Observer<T>.
     * @details value is usable only when facts.response_present is true. The
     * object owns inline storage and no native capability. Copying it grants
     * no ROS authority. Serialize mutable access to the same value.
     */
    template <typename T>
    struct Outcome
    {
        unitree_observation facts; /**< @brief Original operation, last poll, and close facts. */
        T value;                   /**< @brief Entire owned record, governed by facts.response_present. */

        /** @brief Construct empty local result storage without any host call. */
        Outcome() : facts(), value()
        {
        }

        /**
         * @brief Select the original primary error before cleanup failure.
         * @return Full unsigned numeric status; zero requires both to succeed.
         * @details Pure immutable local read, with no ownership transfer.
         */
        uint32_t status() const
        {
            return unitree_observation_status(&facts);
        }
    };
    /** @brief Closed type dispatch; unsupported original records fail to instantiate. */
    template <typename T>
    struct Observer;
#define UWVM_UNITREE_CPP_OBSERVER(Type, Function)                                                                                                              \
    template <>                                                                                                                                                \
    struct Observer<Type>                                                                                                                                      \
    {                                                                                                                                                          \
        static unitree_observation read(roswasmc_context const* context, char const* alias, uint32_t attempts, unitree_pause_fn pause, Type* output)           \
        {                                                                                                                                                      \
            return Function(context, alias, attempts, pause, output);                                                                                          \
        }                                                                                                                                                      \
    }
    UWVM_UNITREE_CPP_OBSERVER(unitree_motion_state, unitree_wait_motion_state);
    UWVM_UNITREE_CPP_OBSERVER(unitree_low_state, unitree_wait_low_state);
#if UWVM_UNITREE_ROS_VERSION == 2
    UWVM_UNITREE_CPP_OBSERVER(unitree_wireless_controller, unitree_wait_wireless_controller);
#else
    UWVM_UNITREE_CPP_OBSERVER(unitree_motor_state, unitree_wait_motor_state);
#endif
#undef UWVM_UNITREE_CPP_OBSERVER

    /**
     * @brief Read one complete original Unitree record through typed dispatch.
     * @tparam T Supported complete original message, never a projection.
     * @param[in] context Borrowed selected-backend context, stable through return.
     * @param[in] alias Existing exact native type subscription alias.
     * @param[in] attempts Poll budget in [1,250], including the immediate poll.
     * @param[in] pause Caller wait between idle polls; required above one attempt.
     * @return Owned complete value and independent operation/cleanup facts.
     * @details Every normal successful acquisition is closed once before the
     * value is returned. No native allocation, background task, automatic
     * capacity replay, or robot command is created. Fatal traps cannot promise
     * normal cleanup. All borrowed inputs remain stable through the call.
     */
    template <typename T>
    Outcome<T> observe(roswasmc_context const& context, char const* alias, uint32_t attempts = 1, unitree_pause_fn pause = 0)
    {
        Outcome<T> result;
        result.facts = Observer<T>::read(&context, alias, attempts, pause, &result.value);
        return result;
    }
}  // namespace unitree
#endif
