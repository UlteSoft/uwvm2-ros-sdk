/**
 * @file abi.h
 * @brief Declare scalar infrastructure for genuine native source-language guests.
 * @details Vendor records, codecs, owners, polling and cleanup decisions live in
 * the calling language. Every opaque handle and observed length retains 64 bits.
 * Pointer arguments borrow only the calling Wasm command's own linear memory.
 */
#ifndef UWVM_NATIVE_ABI_H
#define UWVM_NATIVE_ABI_H

#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Read the selected original ROS ABI version without acquiring an owner. */
    unsigned int nl_version(void);

    /**
     * @brief Open one explicitly granted exact-type native alias.
     * @param alias_bytes Immutable strict UTF-8 bytes borrowed until return.
     * @param size Complete alias byte extent, without a trailing NUL.
     * @param owner Exclusive writable eight-byte acquired-owner slot.
     * @return Original unsigned ABI status; zero acquires one caller-owned handle.
     */
    unsigned int nl_open(unsigned char const* alias_bytes, unsigned int size, unsigned long long* owner);

    /**
     * @brief Retire the caller's acquired owner once.
     * @param owner Full-width opaque same-instance capability identifier.
     * @return Original independent unsigned close status.
     */
    unsigned int nl_close(unsigned long long owner);

    /**
     * @brief Activate one already granted native topic subscription.
     * @param owner Full-width caller-owned exact-type subscription capability.
     * @return Original unsigned ABI status; zero does not imply delivered data.
     */
    unsigned int nl_subscribe(unsigned long long owner);

    /**
     * @brief Poll one event without decoding, allocation or implicit retry.
     * @param owner Existing full-width same-instance subscription owner.
     * @param output Exclusive writable canonical storage, borrowed until return.
     * @param capacity Complete writable byte extent.
     * @param length Exclusive eight-byte original output-length slot.
     * @return Original unsigned status, preserving the caller's original length slot.
     */
    unsigned int
    nl_poll(unsigned long long owner, unsigned char* output, unsigned int capacity, unsigned long long* length);

    /**
     * @brief Wait through the Preview1 realtime clock for bounded pacing.
     * @param milliseconds Explicit finite delay in the inclusive range 0..1000.
     * @return Zero after the wait, or local status 22/5 on refusal/failure.
     */
    unsigned int nl_pause(unsigned int milliseconds);

    /** @brief Count original WASI arguments, including the executable name. */
    unsigned int nl_argument_count(void);

    /**
     * @brief Borrow one original WASI argument until the compiled command returns.
     * @param index Original zero-based command argument index.
     * @param size Exclusive writable byte-count slot.
     * @return Immutable argument bytes, or NULL with size zero when absent.
     */
    unsigned char const* nl_argument(unsigned int index, unsigned int* size);

    /**
     * @brief Emit already-owned facts and complete language-encoded canonical bytes.
     * @param primary First original operation or complete-codec failure.
     * @param cleanup Independent original acquired-owner close result.
     * @param cleanup_present Nonzero only after one acquired-owner close attempt.
     * @param rpc Original unsigned last event-poll status.
     * @param rpc_present Nonzero only after an actual event poll returned.
     * @param length Original full-width length slot, including its unwritten sentinel.
     * @param present Nonzero only after complete source-language decoding and encoding.
     * @param polls Number of actual event polls, including idle results.
     * @param wire Complete immutable language-encoded canonical record body.
     * @param size Complete initialized canonical byte extent.
     * @return Primary, independent cleanup, then stdout error; no status narrowing.
     * @details This formatter interprets no vendor field and performs no ROS action.
     */
    unsigned int nl_report(unsigned int primary,
                           unsigned int cleanup,
                           unsigned int cleanup_present,
                           unsigned int rpc,
                           unsigned int rpc_present,
                           unsigned long long length,
                           unsigned int present,
                           unsigned int polls,
                           unsigned char const* wire,
                           unsigned int size);

    /**
     * @brief Publish complete source-language canonical bytes exactly once.
     * @param owner Live full-width publisher owner from the selected backend.
     * @param wire Complete immutable encoded record, borrowed until return.
     * @param size Initialized canonical byte extent.
     * @return Original unsigned ABI status. A timeout never authorizes replay.
     */
    unsigned int nl_publish(unsigned long long owner, unsigned char const* wire, unsigned int size);

    /** @brief Exact synchronous operation selector for nl_request. */
    enum nl_request_operation
    {
        NL_SERVICE_CALL = 1,
        NL_ACTION_SEND_GOAL = 2,
        NL_ACTION_CANCEL_OWN = 3,
        NL_ACTION_FEEDBACK = 4,
        NL_ACTION_RESULT = 5
    };

    /**
     * @brief Make one selected synchronous request using source-language bytes.
     * @details This adapter encodes no record and performs no automatic retry. The
     * caller initializes length to UINT64_MAX and publishes no partial response.
     * Input/output/length storage must remain live, disjoint and correctly bounded
     * until synchronous return. Every effect needs its own trusted capability.
     * @param operation One exact nl_request_operation value.
     * @param owner Same-instance full-width owner for this exact operation/type.
     * @param input Complete immutable canonical request bytes, borrowed.
     * @param size Complete initialized request byte extent.
     * @param output Exclusive writable response bytes.
     * @param capacity Complete writable response capacity.
     * @param length Exclusive eight-byte output-length slot, initialized by caller.
     * @return Original unsigned ABI status, or 22 for an invalid local selector.
     */
    unsigned int nl_request(unsigned int operation,
                            unsigned long long owner,
                            unsigned char const* input,
                            unsigned int size,
                            unsigned char* output,
                            unsigned int capacity,
                            unsigned long long* length);

#ifdef __cplusplus
}
#endif
#endif
