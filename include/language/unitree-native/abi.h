/**
 * @file abi.h
 * @brief Declare scalar infrastructure for genuine Unitree source-language guests.
 * @details Vendor records, codecs, owners, polling and cleanup decisions live in
 * the calling language. Every opaque handle and observed length retains 64 bits.
 * Pointer arguments borrow only the calling Wasm command's own linear memory.
 */
#ifndef UWVM_UNITREE_NATIVE_ABI_H
#define UWVM_UNITREE_NATIVE_ABI_H

/** @brief Read the selected original ROS ABI version without acquiring an owner. */
unsigned int nl_version(void);

/**
 * @brief Open one existing exact-type subscription alias.
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
 * @brief Wait through the actual WASI monotonic clock after an idle poll.
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
 * @details This formatter interprets no Unitree field and performs no ROS action.
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
#endif
