#' @file main.R
#' @brief Exercise the complete original ur_msgs/msg/IOStates with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("universal_robots/r/ros2/universal-robots-ros2-trajectory-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros2Ur_msgsMsgIOStates"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"ur_msgs/msg/IOStates","bytes":%d}\n', length(bytes)))
