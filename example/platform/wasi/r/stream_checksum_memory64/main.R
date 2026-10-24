#' @file main.R
#' @brief Execute stream_checksum in the genuine r language engine.
#' @details Standard streams only; no path, clock, random, network or ROS resource is opened.
#' @brief Compute FNV-1a with exact 16-bit limbs without unsigned integer coercion.
main <- function() {
    #' @brief Read bounded raw chunks from the inherited binary stdin connection.
    #' @details Connection handles remain local and are closed once on return.
    input <- file("stdin", open = "rb")
    on.exit(close(input), add = TRUE)
    output <- file("stdout", open = "wb")
    on.exit(close(output), add = TRUE)
    high <- 33052
    low <- 40389
    repeat {
        bytes <- readBin(input, what = "raw", n = 256L)
        if (length(bytes) == 0L) break
        for (byte in bytes) {
            low <- bitwXor(as.integer(low), as.integer(byte))
            product <- low * 403
            high <- (high * 403 + low * 256 + floor(product / 65536)) %% 65536
            low <- product %% 65536
        }
    }
    writeBin(charToRaw(sprintf("%04x%04x\n", as.integer(high), as.integer(low))), output)
    flush(output)
    0L
}
quit(save = "no", status = tryCatch(main(), error = function(error) 5L), runLast = FALSE)
