# @file main.R
# @brief Exercise typed publisher/refusal/fresh echo in the genuine GNU R port.
# @details All assertions execute in the installed genuine GNU R Wasm engine.
# GroupValues is an authored bridge fixture, not a vendor-official API.
.uwvm_exit <- 1L
echo <- NULL
echo_retired <- FALSE
publisher <- NULL
publisher_retired <- FALSE
passed <- 0L
current <- "bootstrap"
check <- function(ok) if (!isTRUE(ok)) stop("required publisher API assertion failed")
report <- function(name, ok) {
    check(ok)
    cat(paste0('{"format":"uwvm-sdk-publisher-api-case-v1","language":"r","case":"',
        name, '","passed":true}\n'), file = stdout())
    flush(stdout())
    passed <<- passed + 1L
}
tryCatch({
    args <- commandArgs(trailingOnly = TRUE)
    check(length(args) == 1L && grepl("^[0-9a-f]{32}$", args[[1L]], perl = TRUE))
    nonce <- args[[1L]]
    codec <- UwvmFourierRos2AuroraBridgeV1$records$Ros2Uwvm_fourier_bridgeMsgGroupValues
    current <- "genuine-pinned-engine"
    report(current, as.character(getRversion()) == "4.5.1")
    current <- "reject-oversized-field-before-acquisition"
    bad <- codec$new(list(group = paste(rep("x", 129L), collapse = ""), values = list(1.25)))
    facts <- UwvmRObservation$publish("publish", codec, bad)
    report(current, facts$primary == 22 && !facts$publish_invoked && !facts$cleanup_present)
    current <- "reject-nonfinite-field-before-acquisition"
    bad <- codec$new(list(group = nonce, values = list(NaN)))
    facts <- UwvmRObservation$publish("publish", codec, bad)
    report(current, facts$primary == 22 && !facts$publish_invoked && !facts$cleanup_present)
    message <- codec$new(list(group = nonce, values = list(1.25, -2.5)))
    current <- "default-denied-publisher-has-no-publish-call"
    facts <- UwvmRObservation$publish("publisher-denied", codec, message)
    report(current, facts$primary == 13 && !facts$publish_invoked && !facts$cleanup_present)
    opened <- UwvmRNative$invoke("capability_open", raw(8L), charToRaw("echo"), 0)
    check(opened[[1L]] == 0 && is.raw(opened[[4L]]) && length(opened[[4L]]) == 8L)
    echo <- opened[[4L]]
    check(UwvmRNative$invoke("topic_subscribe", echo)[[1L]] == 0)
    current <- "one-accepted-typed-publish-and-explicit-close"
    facts <- UwvmRObservation$publish("publish", codec, message)
    expected_hex <- paste0(sprintf("%02x", as.integer(codec$encode(message))), collapse = "")
    report(current, facts$primary == 0 && facts$publish_invoked && facts$publish_accepted &&
        facts$cleanup_present && facts$cleanup == 0 && !facts$response_present && facts$wire_hex == expected_hex)
    current <- "fresh-complete-typed-echo-inside-guest"
    # Retain the owner for this separate transient-local delivery sample.
    roundtrip_nonce <- paste0(nonce, "-roundtrip")
    roundtrip <- codec$new(list(group = roundtrip_nonce, values = list(1.25, -2.5)))
    opened <- UwvmRNative$invoke("capability_open", raw(8L), charToRaw("publish"), 0)
    check(opened[[1L]] == 0 && is.raw(opened[[4L]]) && length(opened[[4L]]) == 8L)
    publisher <- opened[[4L]]
    check(UwvmRNative$invoke("topic_publish", publisher, codec$encode(roundtrip))[[1L]] == 0)
    for (attempt in seq_len(250L)) {
        frame <- UwvmRNative$invoke("event_poll", echo, raw(), codec$maximum_wire_bytes)
        if (frame[[1L]] == 0) {
            check(identical(frame[[3L]], as.raw(roswasm_wire()$from_decimal(as.character(length(frame[[2L]]))))) && is.null(frame[[4L]]))
            if (identical(frame[[2L]], codec$encode(roundtrip))) break
            check(identical(frame[[2L]], codec$encode(message)))
        } else check(frame[[1L]] == 11)
        check(UwvmRNative$pause_ms(20) == 0)
    }
    check(frame[[1L]] == 0)
    received <- codec$decode(frame[[2L]])
    report(current, identical(frame[[2L]], codec$encode(roundtrip)) && identical(received$group, roundtrip_nonce) &&
        identical(received$values, list(1.25, -2.5)))
    publisher_retired <- TRUE
    check(UwvmRNative$invoke("capability_close", publisher)[[1L]] == 0)
    echo_retired <- TRUE
    check(UwvmRNative$invoke("capability_close", echo)[[1L]] == 0 && passed == 6L)
    cat(paste0('{"format":"uwvm-sdk-publisher-api-summary-v1","language":"r","nonce":"', nonce,
        '","required":6,"selected":6,"executed":6,"passed":6,"failed":0,"blocked":0,"not_run":0,',
        '"vendor_official_API_compatibility":false,"component_isolation_pass":false}\n'), file = stdout())
    flush(stdout())
    .uwvm_exit <- 0L
}, error = function(condition) {
    cat(paste0('{"format":"uwvm-sdk-publisher-api-failure-v1","language":"r","case":"',
        current, '","passed_before_failure":', passed, '}\n'), file = stdout())
    flush(stdout())
    .uwvm_exit <<- 1L
}, finally = {
    if (!is.null(publisher) && !publisher_retired && UwvmRNative$invoke("capability_close", publisher)[[1L]] != 0)
        .uwvm_exit <- 1L
    if (!is.null(echo) && !echo_retired && UwvmRNative$invoke("capability_close", echo)[[1L]] != 0)
        .uwvm_exit <- 1L
})
