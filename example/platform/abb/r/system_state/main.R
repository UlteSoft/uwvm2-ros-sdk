#' @file main.R
#' @brief Observe every original abb_robot_msgs/msg/SystemState field using the genuine R guest engine.
#' @details No alias, native registration, grant or synthetic response is created.
arguments <- commandArgs(trailingOnly = TRUE)
if (length(arguments) != 1L) {
    .uwvm_exit <- 22L
} else {
    codec <- UwvmGeneratedRecords$Ros2Abb_robot_msgsMsgSystemState
    report <- UwvmRObservation$receive(arguments[[1L]], codec, topic = TRUE)
    .uwvm_exit <- UwvmRObservation$output(report)
}
