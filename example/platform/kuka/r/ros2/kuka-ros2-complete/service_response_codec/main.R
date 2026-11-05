#' @file main.R
#' @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response with the genuine shared R engine.
#' @details The ordered SDK source graph embeds wire and record factories in this
#' Wasm command. All values are local fixtures; full-width words retain exact bytes.
classes <- records(roswasm_wire())
codec <- classes[["Ros2Lifecycle_msgsSrvChangeState_Response"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"lifecycle_msgs/srv/ChangeState_Response","bytes":%d}\n', length(bytes)))
