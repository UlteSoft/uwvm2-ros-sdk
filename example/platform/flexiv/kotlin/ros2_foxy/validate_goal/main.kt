import org.uwvm.flexiv.ros2foxy.BoundedRecords
/** @brief Execute genuine Kotlin application logic over the full selected JVM type. */
fun main() {
    val bytes = System.`in`.readNBytes(113)
    val value = BoundedRecords.Ros2Flexiv_msgsMsgJointPosVel.CODEC.decode(bytes)
    val encoded = BoundedRecords.Ros2Flexiv_msgsMsgJointPosVel.CODEC.encode(value)
    val output = StringBuilder()
    for (item in encoded) {
        val bits = item.toInt() and 255
        output.append(Character.forDigit(bits ushr 4, 16))
        output.append(Character.forDigit(bits and 15, 16))
    }
    println(output)
}
