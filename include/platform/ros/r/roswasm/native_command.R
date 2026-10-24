#' @file native_command.R
#' @brief Execute native ROS operations inside the genuine shared R guest engine.
#' @details The package owns complete R records, exact raw u64 words and original
#' transport statuses. Its registered C bridge only performs scalar ABI calls.
#' @param operation One for String publication, two for subscription, three for Trigger.
#' @return Original primary errno before independent once-only cleanup errno.
ros_native_command <- function(operation) {
    if (length(operation) != 1L || is.na(operation) || !operation %in% 1:3) stop("operation 1, 2 or 3 required")
    invoke <- function(name, handle = raw(8), request = raw(), capacity = 0) {
        .Call("uwvm_ros_invoke", name, handle, request, as.double(capacity), PACKAGE = "uwvmros")
    }
    word_one <- c(as.raw(1), raw(7))
    version <- invoke("abi_version")
    if (version$status != 0 || !identical(version$value, word_one)) return(95)
    opened <- invoke("capability_open", request = charToRaw("sample"))
    if (opened$status != 0) return(opened$status)
    handle <- opened$value
    primary <- 0
    rpc <- NULL
    required <- NULL
    wire <- raw()
    value <- ""
    response <- FALSE
    success <- FALSE
    cleanup <- NULL
    decode <- function(bytes, offset, maximum) {
        if (length(bytes) < offset + 4L) stop("truncated original length")
        size <- sum(as.double(bytes[offset + seq_len(4L)]) * 256^(0:3))
        if (size > maximum || length(bytes) != offset + 4L + size) stop("whole record and byte quota required")
        text <- if (size) bytes[offset + 4L + seq_len(size)] else raw()
        if (any(text == as.raw(0))) stop("NUL refused")
        result <- rawToChar(text)
        if (!validUTF8(result)) stop("strict scalar UTF-8 required")
        result
    }
    tryCatch({
        if (operation == 1L) {
            value <- "hello native ROS"
            bytes <- charToRaw(enc2utf8(value))
            request <- c(as.raw(c(length(bytes), 0, 0, 0)), bytes)
            for (sample in 1:2) {
                rpc <- invoke("topic_publish", handle, request)$status
                primary <- rpc
                if (primary != 0) break
                Sys.sleep(if (sample == 1L) 1 else 0.2)
            }
        } else if (operation == 2L) {
            primary <- invoke("topic_subscribe", handle)$status
            if (primary == 0) {
                for (attempt in seq_len(250L)) {
                    frame <- invoke("event_poll", handle, capacity = 256)
                    rpc <- primary <- frame$status
                    wire <- frame$data
                    required <- frame$length
                    if (primary != 11 || attempt == 250L) break
                    Sys.sleep(0.02)
                }
            }
        } else {
            frame <- invoke("service_call", handle, capacity = 256)
            rpc <- primary <- frame$status
            wire <- frame$data
            required <- frame$length
        }
        if (primary == 0 && operation != 1L) {
            if (is.null(required) || length(required) != 8L) stop("original length observation required")
            if (any(required[5:8] != as.raw(0))) stop("response exceeds bounded u32 extent")
            count <- sum(as.double(required[1:4]) * 256^(0:3))
            if (count != length(wire)) stop("successful response extent mismatch")
            if (operation == 2L) {
                value <- decode(wire, 0L, 252L)
            } else {
                if (length(wire) == 0L || as.integer(wire[1L]) > 1L) stop("canonical Bool required")
                success <- wire[1L] == as.raw(1)
                value <- decode(wire, 1L, 251L)
            }
            response <- TRUE
            if (operation == 3L && !success) primary <- 5
        }
    }, error = function(error) {
        primary <<- 22
    }, finally = {
        cleanup <- invoke("capability_close", handle)$status
    })
    print(list(primary = primary, rpc_status = rpc, original_length_bits = required,
               cleanup = cleanup, cleanup_present = TRUE, response_present = response,
               success = success, text = value, wire = wire))
    if (primary != 0) primary else cleanup
}
