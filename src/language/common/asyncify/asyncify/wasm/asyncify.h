/**
 * @file common/asyncify-v1/asyncify/wasm/asyncify.h
 * @brief Declare Binaryen Asyncify control imports and pending-unwind tracking.
 * @details The paired unwind macros maintain the single-threaded rb_asyncify_unwind_buf pointer. Buffer owners
 * retain their storage through matching unwind/rewind completion; no native exception service is involved.
 */
#ifndef RB_WASM_SUPPORT_ASYNCIFY_H
#define RB_WASM_SUPPORT_ASYNCIFY_H

/**
 * @brief Begin Binaryen Asyncify unwinding into the supplied owned buffer.
 * @details The paired macro also records rb_asyncify_unwind_buf. The top-level VM driver must stop unwinding
 * before beginning a rewind.
 * @param buf Live Asyncify buffer whose top/end fields delimit writable spill storage.
 */
__attribute__((import_module("asyncify"), import_name("start_unwind"))) void asyncify_start_unwind(void* buf);
#define asyncify_start_unwind(buf)                                                                                     \
    do                                                                                                                 \
    {                                                                                                                  \
        extern void* rb_asyncify_unwind_buf;                                                                           \
        rb_asyncify_unwind_buf = (buf);                                                                                \
        asyncify_start_unwind((buf));                                                                                  \
    } while (0)
/**
 * @brief Stop the current Asyncify unwind and clear its tracked buffer.
 * @details Call from the VM's top-level unwind handler, with the selected buffer still alive; the macro clears the
 * shared single-threaded pending-buffer pointer.
 */
__attribute__((import_module("asyncify"), import_name("stop_unwind"))) void asyncify_stop_unwind(void);
#define asyncify_stop_unwind()                                                                                         \
    do                                                                                                                 \
    {                                                                                                                  \
        extern void* rb_asyncify_unwind_buf;                                                                           \
        rb_asyncify_unwind_buf = NULL;                                                                                 \
        asyncify_stop_unwind();                                                                                        \
    } while (0)
/**
 * @brief Resume execution from a previously captured Asyncify buffer.
 * @details The buffer owner retains storage until the restored frame reaches asyncify_stop_rewind.
 * @param buf Live captured buffer with its original spill extent and rewind position restored.
 */
__attribute__((import_module("asyncify"), import_name("start_rewind"))) void asyncify_start_rewind(void* buf);
/**
 * @brief Finish rewinding when execution reaches its captured VM frame.
 * @details The restored frame, rather than an unrelated host callback, completes this control transition.
 */
__attribute__((import_module("asyncify"), import_name("stop_rewind"))) void asyncify_stop_rewind(void);

#endif
