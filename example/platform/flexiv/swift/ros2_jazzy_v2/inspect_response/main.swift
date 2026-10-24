import FlexivRecords
/// @brief Execute genuine Swift logic over the full original canonical value.
import RosWasm
import WASILibc

var input: [UInt8] = []
while input.count < 262 {
  let code = getchar()
  if code < 0 { break }
  input.append(UInt8(code))
}
do {
  let value = try Ros2Flexiv_msgsActionGrasp_Result.decode(input)
  let encoded = try value.encode()
  for byte in encoded { if putchar(Int32(byte)) < 0 { exit(5) } }
} catch let failure as RosError {
  exit(Int32(failure.code))
} catch {
  exit(22)
}
