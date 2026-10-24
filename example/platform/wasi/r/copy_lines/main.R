#' @file main.R
#' @brief Execute copy_lines in the genuine r language engine.
#' @details Standard streams only; no path, clock, random, network or ROS resource is opened.
#' @brief Copy actual raw bytes without converting text or treating NUL as EOF.
main <- function() {
    #' @brief Read bounded raw chunks from the inherited binary stdin connection.
    #' @details Connection handles remain local and are closed once on return.
    input <- file("stdin", open = "rb")
    on.exit(close(input), add = TRUE)
    output <- file("stdout", open = "wb")
    on.exit(close(output), add = TRUE)
    repeat {
        bytes <- readBin(input, what = "raw", n = 256L)
        if (length(bytes) == 0L) break
        writeBin(bytes, output)
    }
    flush(output)
    0L
}
quit(save = "no", status = tryCatch(main(), error = function(error) 5L), runLast = FALSE)
