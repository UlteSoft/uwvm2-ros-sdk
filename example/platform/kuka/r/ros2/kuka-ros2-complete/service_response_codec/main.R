#' @file main.R
#' @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("kuka/r/ros2/kuka-ros2-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros2Lifecycle_msgsSrvChangeState_Response"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"lifecycle_msgs/srv/ChangeState_Response","bytes":%d}\n', length(bytes)))
