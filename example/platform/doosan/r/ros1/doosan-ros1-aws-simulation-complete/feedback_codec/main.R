#' @file main.R
#' @brief Exercise the complete original dsr_msgs/LogAlarm with the genuine shared R engine.
#' @details The ordered SDK source graph embeds wire and record factories in this
#' Wasm command. All values are local fixtures; full-width words retain exact bytes.
classes <- records(roswasm_wire())
codec <- classes[["Ros1Dsr_msgsLogAlarm"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"dsr_msgs/LogAlarm","bytes":%d}\n', length(bytes)))
