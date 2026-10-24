#' @file main.R
#' @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("universal_robots/r/ros2/universal-robots-ros2-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros2Ur_dashboard_msgsSrvAddToLog_Response"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"ur_dashboard_msgs/srv/AddToLog_Response","bytes":%d}\n', length(bytes)))
