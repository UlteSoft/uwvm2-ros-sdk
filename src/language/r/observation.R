# @file observation.R
# @brief Receive complete canonical GNU R values through one explicit capability.
# @details Only idle topic polls repeat. Services run once; cleanup happens once
# before facts are returned. This source requires the genuine unqualified R port.
UwvmRObservation <- local({
    # @brief Construct independent operation, cleanup, response and RPC facts.
    # @return Owning ordinary R list; absence is independent of zero status.
    outcome <- function() list(primary = 0, cleanup = 0, cleanup_present = FALSE,
        response_present = FALSE, required = NULL, rpc_status_present = FALSE,
        rpc_status = NULL, wire_hex = "", value = NULL)

    # @brief Encode a generated value and attempt one publication in genuine R.
    # @param alias Explicit publisher grant matching the complete native message.
    # @param codec Trusted generated codec with encode and maximum_wire_bytes.
    # @param value Complete generated record; no host/native R executes this code.
    # @return Separate operation/cleanup facts; no subscriber-delivery claim.
    # @details Encoding is local and precedes acquisition. Host type/QoS policy
    # remains explicit. Accepted means raw errno0, not an acknowledgement. No
    # pointer/loan ABI, automatic replay or hidden cleanup is introduced.
    publish <- function(alias, codec, value) {
        facts <- outcome()
        facts$publish_invoked <- FALSE
        facts$publish_accepted <- FALSE
        if (!is.list(codec) && !is.environment(codec)) {
            facts$primary <- 22
            return(facts)
        }
        maximum <- codec$maximum_wire_bytes
        minimum <- codec$minimum_wire_bytes
        if (!is.character(alias) || length(alias) != 1L || is.na(alias) ||
            !validUTF8(alias) || !is.function(codec$encode) ||
            !is.numeric(maximum) || length(maximum) != 1L || !is.finite(maximum) ||
            !is.numeric(minimum) || length(minimum) != 1L || !is.finite(minimum) ||
            maximum != floor(maximum) || minimum != floor(minimum) ||
            minimum < 0 || maximum < minimum || maximum > 32768) {
            facts$primary <- 22
            return(facts)
        }
        name <- charToRaw(enc2utf8(alias))
        if (length(name) < 1L || length(name) > 255L || any(name == as.raw(0L))) {
            facts$primary <- 22
            return(facts)
        }
        bytes <- tryCatch(codec$encode(value), error = function(condition) NULL)
        if (!is.raw(bytes) || length(bytes) < minimum || length(bytes) > maximum) {
            facts$primary <- 22
            return(facts)
        }
        facts$wire_hex <- paste0(sprintf("%02x", as.integer(bytes)), collapse = "")
        version <- UwvmRNative$invoke("abi_version")
        if (version[[1L]] != 0 || !identical(version[[4L]], c(as.raw(1L), raw(7L)))) {
            facts$primary <- if (version[[1L]] != 0) version[[1L]] else 38
            return(facts)
        }
        opened <- UwvmRNative$invoke("capability_open", raw(8L), name, 0)
        facts$primary <- opened[[1L]]
        if (facts$primary != 0) return(facts)
        owner <- opened[[4L]]
        if (!is.raw(owner) || length(owner) != 8L || !any(owner != as.raw(0L))) {
            stop("successful acquisition omitted its exact nonzero owner")
        }
        tryCatch({
            facts$publish_invoked <- TRUE
            facts$primary <- UwvmRNative$invoke("topic_publish", owner, bytes, 0)[[1L]]
            facts$publish_accepted <- facts$primary == 0
        }, finally = {
            facts$cleanup_present <- TRUE
            facts$cleanup <- UwvmRNative$invoke("capability_close", owner)[[1L]]
        })
        facts
    }

    # @brief Receive one complete value with finite polling and explicit cleanup.
    # @param alias One manually granted UTF-8 alias, 1..255 bytes.
    # @param codec Original generated codec with decode and maximum_wire_bytes.
    # @param request Owning complete canonical raw request bytes.
    # @param topic TRUE for subscription; FALSE for a single service call.
    # @param polls Integral idle poll limit in 1..250.
    # @return Outcome after the sole close attempt; no capability escapes.
    receive <- function(alias, codec, request = raw(), topic = TRUE, polls = 250L) {
        facts <- outcome()
        if (!is.character(alias) || length(alias) != 1L || is.na(alias) ||
            !validUTF8(alias) || !is.raw(request) || length(request) > 32768L ||
            length(polls) != 1L || !is.finite(polls) || polls != floor(polls) ||
            polls < 1L || polls > 250L) {
            facts$primary <- 22
            return(facts)
        }
        bytes <- charToRaw(enc2utf8(alias))
        if (length(bytes) < 1L || length(bytes) > 255L || any(bytes == as.raw(0L))) {
            facts$primary <- 22
            return(facts)
        }
        opened <- UwvmRNative$invoke("capability_open", raw(8L), bytes, 0)
        facts$primary <- opened[[1L]]
        if (facts$primary != 0) return(facts)
        owner <- opened[[4L]]
        tryCatch({
            if (topic) facts$primary <- UwvmRNative$invoke("topic_subscribe", owner)[[1L]]
            if (facts$primary == 0) {
                limit <- if (topic) polls else 1L
                for (attempt in seq_len(limit)) {
                    frame <- UwvmRNative$invoke(if (topic) "event_poll" else "service_call",
                        owner, request, codec$maximum_wire_bytes)
                    facts$primary <- frame[[1L]]
                    facts$required <- frame[[3L]]
                    if (facts$primary != 11 || attempt == limit) break
                    facts$primary <- UwvmRNative$pause_ms(20)
                    if (facts$primary != 0) break
                }
                if (facts$primary == 0) {
                    expected <- as.raw(UwvmRos$from_decimal(as.character(length(frame[[2L]]))))
                    if (!identical(frame[[3L]], expected)) stop("complete returned extent required")
                    facts$value <- codec$decode(frame[[2L]])
                    facts$wire_hex <- paste0(sprintf("%02x", as.integer(frame[[2L]])), collapse = "")
                    facts$response_present <- TRUE
                }
            }
        }, error = function(condition) {
            facts$primary <<- 22
        }, finally = {
            facts$cleanup_present <- TRUE
            facts$cleanup <- UwvmRNative$invoke("capability_close", owner)[[1L]]
        })
        facts
    }

    # @brief Emit ASCII JSON facts only after capability retirement.
    # @param facts Outcome; any RPC status is exact decimal text.
    # @return Primary/cleanup status clamped to 125, or output condition 5.
    output <- function(facts) {
        boolean <- function(value) if (isTRUE(value)) "true" else "false"
        required <- if (is.null(facts$required)) "null" else paste0('"',
            UwvmRos$to_decimal(UwvmRos$word64(facts$required)), '"')
        rpc <- if (is.null(facts$rpc_status)) "null" else paste0('"', facts$rpc_status, '"')
        text <- paste0('{"primary":', facts$primary, ',"cleanup":', facts$cleanup,
            ',"cleanup_present":', boolean(facts$cleanup_present),
            ',"response_present":', boolean(facts$response_present),
            ',"required":', required, ',"rpc_status_present":', boolean(facts$rpc_status_present),
            ',"rpc_status":', rpc, ',"wire_hex":"', facts$wire_hex, '"}\n')
        status <- if (facts$primary != 0) facts$primary else facts$cleanup
        if (status == 0 && facts$rpc_status_present && facts$rpc_status != "0") status <- 5
        tryCatch({cat(text, file = stdout()); flush(stdout()); min(125, status)},
            error = function(condition) 5)
    }
    list(outcome = outcome, publish = publish, receive = receive, output = output)
})
