# @file main.R
# @brief Observe the complete original uwvm_fourier_bridge/msg/Status with genuine GNU R.
# @details Requires the shared real R VM, static .Call bridge and original
# codecs. No dyn.load, HTTP bridge, alternate parser or sidecar is used.
# This source is unqualified until the genuine standalone R port is built.
args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1L) {
    .uwvm_exit <- 22
} else {
    codec <- UwvmFourierRos2AuroraBridgeV1$records$Ros2Uwvm_fourier_bridgeMsgStatus
    request <- raw()
    facts <- UwvmRObservation$receive(args[1L], codec, request, TRUE)
    .uwvm_exit <- UwvmRObservation$output(facts)
}
