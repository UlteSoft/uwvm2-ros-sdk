/**
 * @file Main.kt
 * @brief Execute the genuine agibot Main application over its explicit SDK imports.
 * @details The application owns its values and closes explicitly acquired capabilities. An installed
 * compiler/engine and exact native deployment remain separate requirements.
 */
@file:JvmName("Main")
package agibot.examples

import agibot.kotlin.Client
import uwvm.ros.Wasi

/** Execute one original AimDK operation inside the genuine Kotlin AOT Wasm command.
 * [args] must contain one explicitly granted capability alias. Results own full
 * original-field JSON; the SDK closes its owner before this entry prints data.
 */
fun main(args: Array<String>)
{
    if(args.size != 1)
    {
        System.err.println("Expected exactly one granted Agibot alias")
        Wasi.exit(22)
        return
    }
    val result = Client.listResources(args[0])
    if(result.error != 0 || result.cleanup != 0)
    {
        System.err.println("Agibot observation failed: ${result.error}; close: ${result.cleanup}")
        Wasi.exit(1)
        return
    }
    println(result.json)
    Wasi.exit(if(result.vendor == 0L) 0 else 1)
}
