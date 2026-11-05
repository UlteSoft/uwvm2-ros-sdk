#' @file main.R
#' @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus with the genuine shared R engine.
#' @details The ordered SDK source graph embeds wire and record factories in this
#' Wasm command. All values are local fixtures; full-width words retain exact bytes.
classes <- records(roswasm_wire())
codec <- classes[["Ros2Kuka_driver_interfacesMsgKssStatus"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"kuka_driver_interfaces/msg/KssStatus","bytes":%d}\n', length(bytes)))
