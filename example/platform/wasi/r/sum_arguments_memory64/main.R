#' @file main.R
#' @brief Execute sum_arguments in the genuine r language engine.
#' @details Standard streams only; no path, clock, random, network or ROS resource is opened.
#' @brief Sum admitted i32 values exactly using R's scalar numeric arithmetic.
main <- function() {
    values <- commandArgs(trailingOnly = TRUE)
    if (length(values) > 1024L) return(22L)
    total <- 0
    for (text in values) {
        if (nchar(text, type = "bytes") > 11L || !grepl("^[+-]?[0-9]+$", text) || grepl("[^+0-9-]", text)) return(22L)
        value <- as.numeric(text)
        if (!is.finite(value) || value < -2147483648 || value > 2147483647) return(22L)
        total <- total + value
        if (total < -2147483648 || total > 2147483647) return(22L)
    }
    output <- file("stdout", open = "wb")
    on.exit(close(output), add = TRUE)
    writeBin(charToRaw(sprintf("%.0f\n", total)), output)
    flush(output)
    0L
}
quit(save = "no", status = tryCatch(main(), error = function(error) 5L), runLast = FALSE)
