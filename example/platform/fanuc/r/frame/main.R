#' @file main.R
#' @brief Observe every original fanuc_msgs/msg/Frame field using the genuine R guest engine.
#' @details No alias, native registration, grant or synthetic response is created.
records <- roswasm::module("fanuc/r/ros2/records")
arguments <- commandArgs(trailingOnly = TRUE)
if (length(arguments) != 1L) { quit(status = 22L) }
report <- roswasm::observe(arguments[[1L]], records$SCHEMAS, "Ros2Fanuc_msgsMsgFrame", attempts = 250L, pause_ms = 20L)
quit(status = roswasm::output(report))
