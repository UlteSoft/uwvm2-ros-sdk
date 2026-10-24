/**
 * @file abi.h
 * @brief Exact C scalar declarations for source-language FFI importers.
 * @details This header exposes transport primitives only. It defines no vendor
 * record, codec, capability owner, application decision or implicit retry.
 * Unsigned int is wasm32 i32; unsigned long long is the full ABI i64.
 */
#ifndef UWVM_NATIVE_SOURCE_ABI_H
#define UWVM_NATIVE_SOURCE_ABI_H
/** @brief Observe the selected ROS ABI. @return Version value. */
unsigned int nl_version(void);
/** @brief Borrow an exact alias and open. @param alias UTF-8 bytes.
 * @param size Byte extent. @param handle Writable LE slot. @return ABI errno. */
unsigned int nl_open(unsigned char const* alias, unsigned int size, unsigned long long* handle);
/** @brief Retire a caller-owned handle once. @param handle Opaque ID. @return ABI errno. */
unsigned int nl_close(unsigned long long handle);
/** @brief Activate a granted subscription. @param handle Opaque ID. @return ABI errno. */
unsigned int nl_subscribe(unsigned long long handle);
/** @brief Publish one complete language-encoded String value without retry.
 * @param handle Exact acquired owner. @param data Borrowed canonical bytes.
 * @param size Complete byte extent. @return Original unsigned ROS ABI status. */
unsigned int nl_publish(unsigned long long handle, unsigned char const* data, unsigned int size);
/** @brief Poll once. @param handle Opaque ID. @param output Writable storage.
 * @param capacity Byte extent. @param length Sentinel slot. @return ABI errno. */
unsigned int nl_poll(unsigned long long handle, unsigned char* output, unsigned int capacity, unsigned long long* length);
/** @brief Call once. @param handle Opaque ID. @param input Request storage.
 * @param size Request extent. @param output Response storage. @param capacity Extent.
 * @param length Sentinel slot. @return ABI errno. */
unsigned int
    nl_call(unsigned long long handle, unsigned char const* input, unsigned int size, unsigned char* output, unsigned int capacity, unsigned long long* length);
/** @brief Pause after idle. @param milliseconds Finite 0..1000 duration. @return Status. */
unsigned int nl_pause(unsigned int milliseconds);
/** @brief Borrow one WASI argument. @param index Argument index. @param size Byte count.
 * @return Immutable pointer valid until command return, or NULL when absent. */
unsigned char const* nl_argument(unsigned int index, unsigned int* size);
/** @brief Emit language-owned facts and canonical bytes. @param primary First error.
 * @param cleanup Independent close result. @param cleanup_present Close observation.
 * @param rpc Original transport status. @param rpc_present RPC observation.
 * @param length Original slot. @param present Complete response observation.
 * @param wire Complete canonical bytes. @param size Encoded extent. @return Status. */
unsigned int nl_report(unsigned int primary,
                       unsigned int cleanup,
                       unsigned int cleanup_present,
                       unsigned int rpc,
                       unsigned int rpc_present,
                       unsigned long long length,
                       unsigned int present,
                       unsigned char const* wire,
                       unsigned int size);
#endif
