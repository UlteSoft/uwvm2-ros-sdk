/** @file Main.kt
 * @brief Exercise the complete original ur_msgs/IOStates through genuine Kotlin/JVM AOT.
 */
import uwvm.universalrobotsuniversalrobotsros1complete.Ros1Ur_msgsIOStates
fun main() {
    val codec = Ros1Ur_msgsIOStates.CODEC
    val bytes = codec.encode(Ros1Ur_msgsIOStates())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"ur_msgs/IOStates\",\"bytes\":${bytes.size}}")
}
