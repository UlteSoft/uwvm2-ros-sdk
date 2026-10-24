import dobot.ros1_v4.BoundedRecords
import dobot.ros1_v4.kotlin.Ros1Dobot_v4_bringupRobotModeResponse
import uwvm.ros.Client
import uwvm.ros.Wasi

/**
 * @file Main.kt
 * @brief Preserve every original dobot_v4_bringup/RobotMode field through genuine Kotlin/JVM interop.
 * @details Kotlin executes the application; complete Java value/codec classes are shared JVM objects.
 * @param arguments One independently granted exact alias, without a program name.
 * @return Unit; primary, independent cleanup and output failure select the process code.
 */
fun main(arguments: Array<String>) {
    if (arguments.size != 1 || Client.backend() != 1) { Wasi.exit(22); return }
    val result = Client.call(arguments[0], BoundedRecords.Ros1Dobot_v4_bringupRobotModeRequest.CODEC.encode(BoundedRecords.Ros1Dobot_v4_bringupRobotModeRequest()), 8)
    var present = false
    var bytes = byteArrayOf()
    if (result.primary == 0) {
        try {
            val value: Ros1Dobot_v4_bringupRobotModeResponse = BoundedRecords.Ros1Dobot_v4_bringupRobotModeResponse.CODEC.decode(result.wire)
            bytes = BoundedRecords.Ros1Dobot_v4_bringupRobotModeResponse.CODEC.encode(value)
            present = true
        } catch (invalid: IllegalArgumentException) { result.primary = 22 }
    }
    val hex = StringBuilder()
    if (present) for (value in bytes) {
        val unsigned = value.toInt() and 255
        hex.append("0123456789abcdef"[unsigned ushr 4])
        hex.append("0123456789abcdef"[unsigned and 15])
    }
    println("{\"primary\":" + Integer.toUnsignedString(result.primary) +
        ",\"cleanup\":" + Integer.toUnsignedString(result.cleanup) +
        ",\"cleanup_present\":" + result.cleanupPresent + ",\"response_present\":" + present +
        ",\"wire_hex\":\"" + hex + "\"}")
    var status = if (result.primary != 0) result.primary else result.cleanup
    if (status == 0 && System.out.checkError()) status = 5
    Wasi.exit(if (Integer.compareUnsigned(status, 125) > 0) 125 else status)
}
