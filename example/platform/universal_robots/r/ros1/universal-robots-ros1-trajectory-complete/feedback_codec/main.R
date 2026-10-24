#' @file main.R
#' @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("universal_robots/r/ros1/universal-robots-ros1-trajectory-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros1Control_msgsFollowJointTrajectoryFeedback"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"control_msgs/FollowJointTrajectoryFeedback","bytes":%d}\n', length(bytes)))
