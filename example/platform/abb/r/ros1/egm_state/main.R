#' @file main.R
#' @brief Observe every original abb_egm_msgs/EGMState field using the genuine R guest engine.
#' @details No alias, native registration, grant or synthetic response is created.
arguments <- commandArgs(trailingOnly = TRUE)
if (length(arguments) != 1L) {
    .uwvm_exit <- 22L
} else {
    codec <- UwvmGeneratedRecords$Ros1Abb_egm_msgsEGMState
    report <- UwvmRObservation$receive(arguments[[1L]], codec, topic = TRUE)
    .uwvm_exit <- UwvmRObservation$output(report)
}
