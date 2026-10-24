# @file main.R
# @brief Observe the complete original aimdk_msgs/srv/GetRobotResources_Response with genuine GNU R.
# @details Requires the shared real R VM, static .Call bridge and original
# codecs. No dyn.load, HTTP bridge, alternate parser or sidecar is used.
# This source is unqualified until the genuine standalone R port is built.
args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1L) {
    .uwvm_exit <- 22
} else {
    codec <- UwvmAgibotRos2SdkV110Main$records$Ros2Aimdk_msgsSrvGetRobotResources_Response
    request_codec <- UwvmAgibotRos2SdkV110Main$records$Ros2Aimdk_msgsSrvGetRobotResources_Request
    request <- request_codec$encode(request_codec$new())
    facts <- UwvmRObservation$receive(args[1L], codec, request, FALSE)
    if (facts$response_present) {
        facts$rpc_status_present <- TRUE
        facts$rpc_status <- UwvmRos$to_decimal(facts$value$header$header$code)
    }
    .uwvm_exit <- UwvmRObservation$output(facts)
}
