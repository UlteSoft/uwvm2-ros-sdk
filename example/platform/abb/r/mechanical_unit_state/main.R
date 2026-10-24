#' @file main.R
#' @brief Observe every original abb_robot_msgs/msg/MechanicalUnitState field using the genuine R guest engine.
#' @details No alias, native registration, grant or synthetic response is created.
records <- roswasm::module("abb/r/ros2/records")
arguments <- commandArgs(trailingOnly = TRUE)
if (length(arguments) != 1L) { quit(status = 22L) }
report <- roswasm::observe(arguments[[1L]], records$SCHEMAS, "Ros2Abb_robot_msgsMsgMechanicalUnitState", attempts = 250L, pause_ms = 20L)
quit(status = roswasm::output(report))
