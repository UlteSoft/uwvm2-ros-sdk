#' @file main.R
#' @brief Observe every original industrial_msgs/msg/RobotStatus field using the genuine R guest engine.
#' @details No alias, native registration, grant or synthetic response is created.
arguments <- commandArgs(trailingOnly = TRUE)
if (length(arguments) != 1L) {
    .uwvm_exit <- 22L
} else {
    codec <- UwvmGeneratedRecords$Ros2Industrial_msgsMsgRobotStatus
    report <- UwvmRObservation$receive(arguments[[1L]], codec, topic = TRUE)
    .uwvm_exit <- UwvmRObservation$output(report)
}
