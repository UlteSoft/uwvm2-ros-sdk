#' @file main.R
#' @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("kuka/r/ros2/kuka-ros2-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros2Control_msgsActionFollowJointTrajectory_Feedback"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"control_msgs/action/FollowJointTrajectory_Feedback","bytes":%d}\n', length(bytes)))
