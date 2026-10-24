import org.uwvm.flexiv.ros2jazzyv22.BoundedRecords
/** @brief Execute genuine Kotlin application logic over the full selected JVM type. */
fun main() {
    val bytes = System.`in`.readNBytes(17651)
    val value = BoundedRecords.Ros2Flexiv_msgsSrvGetOperationalStatus_Response.CODEC.decode(bytes)
    val encoded = BoundedRecords.Ros2Flexiv_msgsSrvGetOperationalStatus_Response.CODEC.encode(value)
    val output = StringBuilder()
    for (item in encoded) {
        val bits = item.toInt() and 255
        output.append(Character.forDigit(bits ushr 4, 16))
        output.append(Character.forDigit(bits and 15, 16))
    }
    println(output)
}
