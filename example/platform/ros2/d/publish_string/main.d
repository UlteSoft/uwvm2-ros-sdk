/**
 * @file main.d
 * @brief Execute complete ros2 publish_string in genuine betterC D.
 * @details The source-language library owns all original String/Trigger fields,
 * the operation policy, and one explicit close. C adapts scalar pointers only.
 */
module main;
import ros.d.native_command;

/// @brief Run one finite command with the exact existing native policy alias.
/// @return First operation, independent close, or ordinary stdout error.
extern(C) uint nl_entry() @nogc nothrow
{
    auto facts = run(1, cast(const(ubyte)[]) "sample");
    return report(facts);
}
