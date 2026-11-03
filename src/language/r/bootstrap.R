#' @file bootstrap.R
#' @brief Initialize the single shared canonical GNU R codec namespace.
#' @details Load the common wire factory immediately before this module, then
#' native.R and platform record modules. Evaluation constructs only ordinary R
#' functions and values; it performs no .Call, native load, I/O or ROS operation.
#' This source does not supply or qualify the required genuine R interpreter.
#' @return UwvmRos, the shared records and exact 64-bit word toolkit.
UwvmRos <- roswasm_wire()
