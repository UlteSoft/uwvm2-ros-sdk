#' @file main.R
#' @brief Exercise the complete original dsr_msgs2/msg/RobotState with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("doosan/r/ros2/doosan-ros2-humble-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros2Dsr_msgs2MsgRobotState"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"dsr_msgs2/msg/RobotState","bytes":%d}\n', length(bytes)))
