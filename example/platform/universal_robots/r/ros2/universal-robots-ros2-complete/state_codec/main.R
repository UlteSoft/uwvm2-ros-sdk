#' @file main.R
#' @brief Exercise the complete original ur_msgs/msg/IOStates with the genuine shared R engine.
#' @details The ordered SDK source graph embeds wire and record factories in this
#' Wasm command. All values are local fixtures; full-width words retain exact bytes.
classes <- records(roswasm_wire())
codec <- classes[["Ros2Ur_msgsMsgIOStates"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"ur_msgs/msg/IOStates","bytes":%d}\n', length(bytes)))
