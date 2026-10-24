import org.uwvm.franka.ros2.BoundedRecords
/** @brief Execute genuine Kotlin application logic over the full selected JVM type. */
fun main() {
    val bytes = System.`in`.readNBytes(41)
    val value = BoundedRecords.Ros2Franka_msgsActionGrasp_Goal.CODEC.decode(bytes)
    val encoded = BoundedRecords.Ros2Franka_msgsActionGrasp_Goal.CODEC.encode(value)
    val output = StringBuilder()
    for (item in encoded) {
        val bits = item.toInt() and 255
        output.append(Character.forDigit(bits ushr 4, 16))
        output.append(Character.forDigit(bits and 15, 16))
    }
    println(output)
}
