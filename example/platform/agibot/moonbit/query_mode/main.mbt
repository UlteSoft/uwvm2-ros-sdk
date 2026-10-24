// @file main.mbt
// @brief Execute the genuine agibot main application over its explicit SDK imports.
// @details The application owns its values and closes explicitly acquired capabilities. An installed
// compiler/engine and exact native deployment remain separate requirements.
// SPDX-License-Identifier: Apache-2.0
///|
/// Execute the complete original AimDK operation in a genuine MoonBit Wasm
/// command. Xmake resolves @agibot through the global SDK namespace. The SDK
/// retires its owner before this entry prints data or ends the process.
fn main {
    if @agibot.argument_count() != 2 {
        @agibot.exit(@agibot.usage())
    } else {
        let result = @agibot.query_mode(@agibot.argument(1))
        if result.error != 0U || result.cleanup != 0U {
            @agibot.exit(@agibot.diagnostic(result.error, result.cleanup))
        } else {
            let output_error = @agibot.write_json(result.bytes, result.written)
            @agibot.exit(if output_error == 0U && result.vendor == 0L { 0U } else { 1U })
        }
    }
}
