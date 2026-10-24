# @file main.R
# @brief Observe the complete original grab_demo_msgs/msg/GraspCandidate with genuine GNU R.
# @details Requires the shared real R VM, static .Call bridge and original
# codecs. No dyn.load, HTTP bridge, alternate parser or sidecar is used.
# This source is unqualified until the genuine standalone R port is built.
args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1L) {
    .uwvm_exit <- 22
} else {
    codec <- UwvmUbtechRos2Main$records$Ros2Grab_demo_msgsMsgGraspCandidate
    request <- raw()
    facts <- UwvmRObservation$receive(args[1L], codec, request, TRUE)
    if (facts$response_present) {
        q <- facts$value$pose$pose$orientation
        norm2 <- q$x * q$x + q$y * q$y + q$z * q$z + q$w * q$w
        if (!is.finite(norm2) || norm2 <= 0) facts$primary <- 22
    }
    .uwvm_exit <- UwvmRObservation$output(facts)
}
