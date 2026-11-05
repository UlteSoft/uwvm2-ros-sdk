#' @file main.R
#' @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback with the genuine shared R engine.
#' @details The ordered SDK source graph embeds wire and record factories in this
#' Wasm command. All values are local fixtures; full-width words retain exact bytes.
classes <- records(roswasm_wire())
codec <- classes[["Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"ur_msgs/action/FollowJointTrajectoryUntil_Feedback","bytes":%d}\n', length(bytes)))
