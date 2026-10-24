#' @file main.R
#' @brief Validate every original franka_msgs/srv/SetCartesianStiffness_Response field from runtime input.
#' @details Uses the shared genuine GNU R engine and ordered public modules.
#' Source preparation does not qualify the missing standalone R port.
#' @return .uwvm_exit contains primary errno, or independent cleanup errno.
run <- function() {
    primary <- 0
    cleanup <- 0
    input <- NULL
    bytes <- raw()
    tryCatch({
        input <- file("stdin", open = "rb")
        bytes <- readBin(input, what = "raw", n = 262)
    }, error = function(error) { primary <<- 5 })
    if (primary == 0) {
        tryCatch({
            codec <- UwvmFrankaRos2$records$Ros2Franka_msgsSrvSetCartesianStiffness_Response
            value <- codec$decode(bytes)
            encoded <- codec$encode(value)
            if (!identical(bytes, encoded)) stop("whole-value re-encoding changed bytes")
        }, error = function(error) { primary <<- 22 })
    }
    if (primary == 0) {
        tryCatch({
            cat(paste(sprintf("%02x", as.integer(encoded)), collapse = ""), "\n", sep = "")
            flush(stdout())
        }, error = function(error) { primary <<- 5 })
    }
    if (!is.null(input)) {
        tryCatch(close(input), error = function(error) { cleanup <<- 5 })
    }
    cat(sprintf("primary=%d cleanup=%d\n", primary, cleanup), file = stderr())
    if (primary != 0) primary else cleanup
}
.uwvm_exit <- run()
