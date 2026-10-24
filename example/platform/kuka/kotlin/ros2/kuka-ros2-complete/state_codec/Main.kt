/** @file Main.kt
 * @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus through genuine Kotlin/JVM AOT.
 */
import uwvm.kukakukaros2complete.Ros2Kuka_driver_interfacesMsgKssStatus
fun main() {
    val codec = Ros2Kuka_driver_interfacesMsgKssStatus.CODEC
    val bytes = codec.encode(Ros2Kuka_driver_interfacesMsgKssStatus())
    check(codec.encode(codec.decode(bytes)).contentEquals(bytes))
    println("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":${bytes.size}}")
}
