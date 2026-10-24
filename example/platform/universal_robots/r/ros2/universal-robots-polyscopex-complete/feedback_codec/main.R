#' @file main.R
#' @brief Exercise the complete original urinterfaces/action/SetMode_Feedback with the genuine shared R engine.
#' @details All values are local fixtures; full-width words retain exact bytes.
source("ros/r/roswasm/wire.R", local = TRUE)
source("universal_robots/r/ros2/universal-robots-polyscopex-complete/records.R", local = TRUE)
classes <- records(roswasm_wire())
codec <- classes[["Ros2UrinterfacesActionSetMode_Feedback"]]
bytes <- codec$encode(codec$new())
stopifnot(identical(codec$encode(codec$decode(bytes)), bytes))
cat(sprintf('{"type":"urinterfaces/action/SetMode_Feedback","bytes":%d}\n', length(bytes)))
