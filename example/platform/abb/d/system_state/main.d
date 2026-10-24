/** @file main.d
 * @brief Read complete ABB system_state values in genuine betterC D.
 * @details WASI arguments select the exact granted alias and optional IO name.
 */
module main;
import abb.d.observation;
/// @brief Execute one bounded observation. @return Original full numeric status.
extern(C) uint nl_entry() @nogc nothrow
{
    auto outcome = observe(3, argument(1), argument(2), 1000);
    return report(outcome);
}
