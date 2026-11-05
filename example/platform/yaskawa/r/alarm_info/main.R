#' @file main.R
#' @brief Observe every original motoros2_interfaces/msg/AlarmInfo field using the genuine R guest engine.
#' @details No alias, native registration, grant or synthetic response is created.
arguments <- commandArgs(trailingOnly = TRUE)
if (length(arguments) != 1L) {
    .uwvm_exit <- 22L
} else {
    codec <- UwvmGeneratedRecords$Ros2Motoros2_interfacesMsgAlarmInfo
    report <- UwvmRObservation$receive(arguments[[1L]], codec, topic = TRUE)
    .uwvm_exit <- UwvmRObservation$output(report)
}
