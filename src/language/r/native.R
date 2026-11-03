# @file native.R
# @brief Access only the statically registered raw functions of genuine GNU R.
# @details This module does no dynamic loading or HTTP request. Exact handles and
# lengths remain raw words. Callers own capability lifetime and application codecs.
UwvmRNative <- local({
    # @brief Issue one explicit original ABI operation without implicit retry.
    # @param operation Existing shared ABI operation name.
    # @param owner Eight raw little-endian bytes; zero for capability_open.
    # @param request Complete canonical raw bytes or raw alias bytes.
    # @param capacity Integral response capacity within the canonical ABI bound.
    # @param other Exact second owner word for watch/submit; zero otherwise.
    # @param correlation Exact event watcher word; zero for other operations.
    # @return List [errno, bytes, conditional required word, conditional value].
    invoke <- function(operation, owner = raw(8L), request = raw(), capacity = 0, other = raw(8L), correlation = raw(8L)) {
        .Call("uwvm_ros_invoke", operation, owner, request, capacity, other, correlation)
    }
    # @brief Wait once on a manually granted WASI monotonic timer.
    # @param milliseconds Exact finite integral value in 0..5000.
    # @return Original WASI errno; this wait never replays an operation.
    pause_ms <- function(milliseconds) .Call("uwvm_ros_pause_ms", milliseconds)

    # @brief Read four exact readiness words without consuming or reserving.
    # @param owner Explicitly granted observer's exact nonzero raw8 owner.
    # @return List [original errno, named raw8 counters or NULL].
    # @details No u64 value crosses R numeric/double conversion or a pointer.
    readiness <- function(owner) {
        if (!is.raw(owner) || length(owner) != 8L)
            return(list(22L, NULL))
        if (!any(owner != as.raw(0L))) return(list(9L, NULL))
        frame <- invoke("event_ready", owner, raw(), 32L)
        if (frame[[1L]] != 0) return(list(frame[[1L]], NULL))
        if (!is.raw(frame[[2L]]) || length(frame[[2L]]) != 32L ||
            !is.null(frame[[3L]]) || !is.null(frame[[4L]]))
            stop("successful readiness omitted its exact32-byte snapshot")
        values <- lapply(seq_len(4L), function(i) frame[[2L]][seq.int((i - 1L) * 8L + 1L, i * 8L)])
        names(values) <- c("ready_events", "next_event_bytes", "admission_slots", "admission_bytes")
        list(0L, values)
    }

    # @brief Admit one canonical service request without automatic replay.
    # @param source Exact live raw8 service.call owner.
    # @param observer Separately granted, explicitly paired live raw8 observer.
    # @param request Complete canonical raw bytes, at most4193778 bytes.
    # @return Original [errno, bytes, required, owned-request-ID-or-NULL] list.
    # @details Zero is admission only;11 has no credit,107/110 may follow an
    # effect. Owners stay caller-owned. An ID supplies no capability authority.
    submit_service <- function(source, observer, request = raw()) {
        word <- function(value) is.raw(value) && length(value) == 8L
        if (!word(source) || !word(observer) || !is.raw(request) || length(request) > 4193778L)
            return(list(22L, raw(), NULL, NULL))
        if (!any(source != as.raw(0L)) || !any(observer != as.raw(0L)))
            return(list(9L, raw(), NULL, NULL))
        frame <- invoke("service_submit", source, request, 0L, observer)
        if (frame[[1L]] == 0 && (!is.raw(frame[[2L]]) || length(frame[[2L]]) != 0L ||
            !is.null(frame[[3L]]) || !word(frame[[4L]]) || !any(frame[[4L]] != as.raw(0L))))
            stop("successful admission omitted its exact nonzero request ID; do not infer safe replay")
        frame
    }
    list(invoke = invoke, pause_ms = pause_ms, readiness = readiness, submit_service = submit_service)
})
