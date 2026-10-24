## @file main.nim
## @brief Execute complete ros1 subscribe_string using genuine Nim records/codecs.
## @details The original policy alias is explicit. Only scalar ABI adaptation
## uses C; Nim owns all fields, operation choices, errors, and cleanup.
import ros/nim/native_command
## @brief Run one finite original operation and retain all independent status facts.
## @return First operation, once-only close, or ordinary stdout error.
proc nlEntry(): uint32 {.exportc: "nl_entry", cdecl.} =
  const capabilityAlias = [byte(115), 97, 109, 112, 108, 101]
  var facts = run(2, capabilityAlias)
  report(facts)
