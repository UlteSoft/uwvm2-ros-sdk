#' @file main.R
#' @brief Observe every original abb_rapid_sm_addin_msgs/RuntimeState field using the genuine R guest engine.
#' @details No alias, native registration, grant or synthetic response is created.
records <- roswasm::module("abb/r/ros1/records")
arguments <- commandArgs(trailingOnly = TRUE)
if (length(arguments) != 1L) { quit(status = 22L) }
report <- roswasm::observe(arguments[[1L]], records$SCHEMAS, "Ros1Abb_rapid_sm_addin_msgsRuntimeState", attempts = 250L, pause_ms = 20L)
quit(status = roswasm::output(report))
