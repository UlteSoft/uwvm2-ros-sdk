/**
 * @file common/asyncify-v1/asyncify/wasm/setjmp.h
 * @brief Declare original Asyncify jump storage, POSIX aliases and the lightweight VM catcher.
 * @details Jump buffers and catcher callback contexts remain caller-owned. Signal masks are deliberately absent,
 * and every destination C frame must still be live when a jump targets it.
 */
#ifndef RB_WASM_SUPPORT_SETJMP_H
#define RB_WASM_SUPPORT_SETJMP_H

#define NOINLINE(declaration) __attribute__((noinline)) declaration
#include <stdbool.h>

#ifndef WASM_SETJMP_STACK_BUFFER_SIZE
#define WASM_SETJMP_STACK_BUFFER_SIZE 6144
#endif

struct __rb_wasm_asyncify_jmp_buf
{
    void* top;
    void* end;
    char buffer[WASM_SETJMP_STACK_BUFFER_SIZE];
};

typedef struct
{
    // Internal Asyncify buffer space to save execution context
    struct __rb_wasm_asyncify_jmp_buf setjmp_buf;
    // Internal Asyncify buffer space used while unwinding from longjmp
    // but never used for rewinding.
    struct __rb_wasm_asyncify_jmp_buf* longjmp_buf_ptr;
    // Used to save top address of Asyncify stack `setjmp_buf`, which is
    // overwritten during first rewind.
    void* dst_buf_top;
    // A payload value given by longjmp and returned by setjmp for the second time
    int payload;
    // Internal state field
    int state;
} rb_wasm_jmp_buf;

// noinline to avoid breaking Asyncify assumption
/**
 * @brief Capture a jump context while preserving the linear C stack pointer.
 * @details The assembly wrapper saves/restores __stack_pointer around the internal Asyncify operation; do not
 * target an expired C frame.
 * @param env Caller-owned jump context, initialized by rb_wasm_setjmp and kept alive for later longjmp.
 * @return Zero after capture or the later nonzero payload when restored.
 */
NOINLINE(int _rb_wasm_setjmp(rb_wasm_jmp_buf* env));
/**
 * @brief Schedule restoration of a captured VM jump context.
 * @details The destination must be captured and the payload nonzero. This entry deliberately lacks noreturn
 * because Asyncify uses its return edge while unwinding.
 * @param env Live captured context whose destination C frame has not exited.
 * @param payload Required nonzero payload retained for the restored setjmp call.
 */
NOINLINE(void _rb_wasm_longjmp(rb_wasm_jmp_buf* env, int payload));

#define rb_wasm_setjmp(env) ((env).state = 0, _rb_wasm_setjmp(&(env)))

// NOTE: Why is `_rb_wasm_longjmp` not `noreturn`? Why put `unreachable` in the call site?
// Asyncify expects that `_rb_wasm_longjmp` returns its control, and Asyncify inserts a return
// for unwinding after the call. This means that "`_rb_wasm_longjmp` returns its control but the
// next line in the caller (C level) won't be executed".
// On the other hand, `noreturn` means the callee won't return its control to the caller,
// so compiler can assume that a function with the attribute won't reach the end of the function.
// Therefore `_rb_wasm_longjmp`'s semantics is not exactly same as `noreturn`.
#define rb_wasm_longjmp(env, payload) (_rb_wasm_longjmp(&env, payload), __builtin_unreachable())

// Returns the Asyncify buffer of next rewinding if unwound for setjmp capturing or longjmp.
// Used by the top level Asyncify handling in wasm/runtime.c
/**
 * @brief Select the retained jump buffer for the next VM rewind.
 * @details Capture saves the spill top; restoration reinstates it. The containing context remains caller-owned and
 * must outlive the rewind.
 * @return Borrowed active setjmp buffer, or NULL when no jump is pending.
 */
void* rb_wasm_handle_jmp_unwind(void);

//
// POSIX-compatible declarations
//

typedef rb_wasm_jmp_buf jmp_buf;

#define setjmp(env) rb_wasm_setjmp(env)
#define longjmp(env, payload) rb_wasm_longjmp(env, (payload) == 0 ? 1 : (payload))
typedef rb_wasm_jmp_buf sigjmp_buf;
#define sigsetjmp(env, save_mask) ((void)(save_mask), rb_wasm_setjmp(env))
#define siglongjmp(env, payload) longjmp(env, payload)

typedef void (*rb_wasm_try_catch_func_t)(void* ctx);

struct rb_wasm_try_catch
{
    rb_wasm_try_catch_func_t try_f;
    rb_wasm_try_catch_func_t catch_f;
    void* context;
    int state;
};

//
// Lightweight try-catch API without unwinding to root frame.
//

/**
 * @brief Initialize the existing lightweight VM jump catcher in caller storage.
 * @details Initialization sets the main phase and does not allocate, capture a host exception or invoke a
 * callback.
 * @param try_catch Exclusive catcher storage retained throughout its loop.
 * @param try_f Borrowed body callback.
 * @param catch_f Borrowed rescue callback, or NULL when no rescue callback is needed.
 * @param context Opaque borrowed callback context; no ownership is transferred.
 */
void rb_wasm_try_catch_init(struct rb_wasm_try_catch* try_catch,
                            rb_wasm_try_catch_func_t try_f,
                            rb_wasm_try_catch_func_t catch_f,
                            void* context);

// Run, catch longjmp thrown by run, and re-catch longjmp thrown by catch, ...
//
// 1. run try_f of try_catch struct
// 2. catch longjmps with the given target jmp_buf or exit
// 3. run catch_f if not NULL, otherwise exit
// 4. catch longjmps with the given target jmp_buf or exit
// 5. repeat from step 3
//
// NOTICE: This API assumes that all longjmp targeting the given jmp_buf are NOT called
// after the function that called this function has exited.
//
/**
 * @brief Run and repeatedly catch VM jumps aimed at one live target.
 * @details The body runs first; matching jumps transition to rescue and can be caught again. Unrelated unwinds
 * remain for the outer VM driver.
 * @param try_catch Initialized caller-owned catcher and its borrowed callback context.
 * @param target Live target jump context, confined to the lifetime of the calling C frame.
 */
void rb_wasm_try_catch_loop_run(struct rb_wasm_try_catch* try_catch, rb_wasm_jmp_buf* target);

#endif
