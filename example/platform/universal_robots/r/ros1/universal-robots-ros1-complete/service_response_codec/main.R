#' @file main.R
#' @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("universal_robots/r/ros1/universal-robots-ros1-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros1Ur_dashboard_msgsAddToLogResponse"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"ur_dashboard_msgs/AddToLogResponse","bytes":%d}\n', length(bytes)))
