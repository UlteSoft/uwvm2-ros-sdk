# @file main.R
# @brief Observe the complete original uwvm_fourier_bridge/srv/GetFsmState_Response with genuine GNU R.
# @details Requires the shared real R VM, static .Call bridge and original
# codecs. No dyn.load, HTTP bridge, alternate parser or sidecar is used.
# This source is unqualified until the genuine standalone R port is built.
args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 2L) {
    .uwvm_exit <- 22
} else {
    codec <- UwvmFourierRos2AuroraBridgeV1$records$Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
    request_codec <- UwvmFourierRos2AuroraBridgeV1$records$Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
    request <- request_codec$encode(request_codec$new(list(sequence = UwvmRos$from_decimal(args[2L]))))
    facts <- UwvmRObservation$receive(args[1L], codec, request, FALSE)
    if (facts$response_present) {
        facts$rpc_status_present <- TRUE
        facts$rpc_status <- as.character(facts$value$status)
    }
    .uwvm_exit <- UwvmRObservation$output(facts)
}
