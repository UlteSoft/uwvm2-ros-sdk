#' @file main.R
#' @brief Exercise the complete original dsr_msgs/RobotState with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("doosan/r/ros1/doosan-ros1-patch-1-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros1Dsr_msgsRobotState"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"dsr_msgs/RobotState","bytes":%d}\n', length(bytes)))
