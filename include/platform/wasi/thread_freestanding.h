#ifndef UWVM_WASIP1_THREAD_FREESTANDING_H
#define UWVM_WASIP1_THREAD_FREESTANDING_H
/* Guest-owned stack ABI only. No libc allocator, TLS image, pthread or std::thread. */
typedef __UINT32_TYPE__ uwvm_thread_u32;
typedef struct uwvm_wasip1_thread_context {
    uwvm_thread_u32 stack_top;
    uwvm_thread_u32 stack_bottom;
    uwvm_thread_u32 user_argument;
} uwvm_wasip1_thread_context;
#ifdef __cplusplus
extern "C" {
#endif
__attribute__((import_module("wasi"), import_name("thread-spawn")))
int uwvm_wasip1_thread_spawn(uwvm_thread_u32 context_address);
void uwvm_wasip1_thread_main(int tid, uwvm_wasip1_thread_context *context);
#ifdef __cplusplus
}
#endif
#endif
