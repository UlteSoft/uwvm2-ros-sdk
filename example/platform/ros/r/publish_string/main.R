#' @file main.R
#' @brief Execute complete publish_string in the genuine bundled R engine.
#' @details The standard embedded package uses registered scalar ROS native routines.
library(uwvmros)
quit(save = "no", status = ros_native_command(1L), runLast = FALSE)
