#' @file main.R
#' @brief Observe every original fanuc_msgs/msg/ConnectionStatus field using the genuine R guest engine.
#' @details No alias, native registration, grant or synthetic response is created.
arguments <- commandArgs(trailingOnly = TRUE)
if (length(arguments) != 1L) {
    .uwvm_exit <- 22L
} else {
    codec <- UwvmGeneratedRecords$Ros2Fanuc_msgsMsgConnectionStatus
    report <- UwvmRObservation$receive(arguments[[1L]], codec, topic = TRUE)
    .uwvm_exit <- UwvmRObservation$output(report)
}
