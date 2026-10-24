import org.uwvm.flexiv.ros2jazzyv2.BoundedRecords
/** @brief Execute genuine Kotlin application logic over the full selected JVM type. */
fun main() {
    val bytes = System.`in`.readNBytes(262)
    val value = BoundedRecords.Ros2Flexiv_msgsActionGrasp_Result.CODEC.decode(bytes)
    val encoded = BoundedRecords.Ros2Flexiv_msgsActionGrasp_Result.CODEC.encode(value)
    val output = StringBuilder()
    for (item in encoded) {
        val bits = item.toInt() and 255
        output.append(Character.forDigit(bits ushr 4, 16))
        output.append(Character.forDigit(bits and 15, 16))
    }
    println(output)
}
