# @file main.R
# @brief Observe the complete original aimdk_msgs/msg/McCommonState with genuine GNU R.
# @details Requires the shared real R VM, static .Call bridge and original
# codecs. No dyn.load, HTTP bridge, alternate parser or sidecar is used.
# This source is unqualified until the genuine standalone R port is built.
args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1L) {
    .uwvm_exit <- 22
} else {
    codec <- UwvmAgibotRos2SdkV110Main$records$Ros2Aimdk_msgsMsgMcCommonState
    request <- raw()
    facts <- UwvmRObservation$receive(args[1L], codec, request, TRUE)
    .uwvm_exit <- UwvmRObservation$output(facts)
}
