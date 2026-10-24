/**
 * @file observation.ts
 * @brief Own complete Unitree observations and independent transport/close facts.
 * @details Managed values and copied bytes belong to this guest. No native ROS
 * pointer, callback, authority, timer, task, or default topic is represented.
 */
import {Reply} from 'ros/as/roswasm';

/**
 * @brief Own one complete typed native-message observation.
 * @tparam T Complete generated original Unitree record class.
 * @details value is accepted only when nonnull. A copied result grants no native
 * rights. Serialize mutable access; fatal allocation/traps cannot promise cleanup.
 */
export class Observation<T>
{
    primary: u32 = 0;                     /**< @brief First validation/open/subscribe/poll/decode failure. */
    cleanup: u32 = 0;                     /**< @brief Original single checked-close status when present. */
    cleanupPresent: bool = false;         /**< @brief True only after closing an acquired owner. */
    polls: u32 = 0;                       /**< @brief Number of actual event polls, including idle results. */
    rpc: Reply|null = null;               /**< @brief Entire last copied transport/length result. */
    value: T|null = null;                 /**< @brief Whole owned decoded original record; null on refusal. */
    wire: Uint8Array = new Uint8Array(0); /**< @brief Complete validated canonical message bytes. */

    /**
     * @brief Select primary failure before independent cleanup failure.
     * @return Full unsigned status; zero requires the observation and close to succeed.
     * @details Local immutable read with no native operation or ownership transfer.
     */
    status(): u32
    {
        return this.primary ? this.primary : this.cleanup;
    }
}
