#' @file main.R
#' @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("kuka/r/ros2/kuka-ros2-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros2Kuka_driver_interfacesMsgKssStatus"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"kuka_driver_interfaces/msg/KssStatus","bytes":%d}\n', length(bytes)))
