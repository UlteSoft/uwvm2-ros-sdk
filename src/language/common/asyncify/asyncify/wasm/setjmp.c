/**
 * @file common/asyncify-v1/asyncify/wasm/setjmp.c
 * @brief Capture and restore genuine VM jump contexts with the retained Asyncify state machine.
 * @details Caller-owned contexts retain spill bounds and nonzero jump payloads. The top-level driver completes
 * unwind/rewind transitions; jumping to an expired C frame remains invalid. Original attribution and algorithm
 * notes are retained.
 */
/*
 This is a WebAssembly userland setjmp/longjmp implementation based on Binaryen's Asyncify.
 Inspired by Alon Zakai's snippet released under the MIT License:
 * https://github.com/kripken/talks/blob/991fb1e4b6d7e4b0ea6b3e462d5643f11d422771/jmp.c

 WebAssembly doesn't have context-switching mechanism for now, so emulate it by Asyncify,
 which transforms WebAssembly binary to unwind/rewind the execution point and store/restore
 locals.

 The basic concept of this implementation is:
 1. setjmp captures the current execution context by unwinding to the root frame, then immediately
    rewind to the setjmp call using the captured context. The context is saved in jmp_buf.
 2. longjmp unwinds to the root frame and rewinds to a setjmp call re-using a passed jmp_buf.

 This implementation also supports switching context across different call stack (non-standard)

 This approach is good at behavior reproducibility and self-containedness compared to Emscripten's
 JS exception approach. However this is super expensive because Asyncify inserts many glue code to
 control execution point in userland.

 This implementation will be replaced with future stack-switching feature.
 */
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>
#include <stdbool.h>
#include "wasm/asyncify.h"
#include "wasm/machine.h"
#include "wasm/setjmp.h"

#ifdef RB_WASM_ENABLE_DEBUG_LOG
#include <wasi/api.h>
#include <unistd.h>
// NOTE: We can't use printf() and most of library function that are
// Asyncified due to the use of them in the application itself.
// Use of printf() causes "unreachable" error because Asyncified
// function misunderstands Asyncify's internal state during
// start_unwind()...stop_unwind() and start_rewind()...stop_rewind().
#define RB_WASM_DEBUG_LOG_INTERNAL(msg)                                                                                \
    do                                                                                                                 \
    {                                                                                                                  \
        const uint8_t* msg_start = (uint8_t*)msg;                                                                      \
        const uint8_t* msg_end = msg_start;                                                                            \
        for (; *msg_end != '\0'; msg_end++)                                                                            \
        {                                                                                                              \
        }                                                                                                              \
        __wasi_ciovec_t iov = {.buf = msg_start, .buf_len = msg_end - msg_start};                                      \
        size_t nwritten;                                                                                               \
        __wasi_fd_write(STDERR_FILENO, &iov, 1, &nwritten);                                                            \
    } while (0)
#define RB_WASM_DEBUG_LOG(msg) RB_WASM_DEBUG_LOG_INTERNAL(__FILE__ ":" STRINGIZE(__LINE__) ": " msg "\n")
#else
#define RB_WASM_DEBUG_LOG(msg)
#endif

enum rb_wasm_jmp_buf_state
{
    // Initial state
    JMP_BUF_STATE_INITIALIZED = 0,
    // Unwinding to the root or rewinding to the setjmp call
    // to capture the current execution context
    JMP_BUF_STATE_CAPTURING = 1,
    // Ready for longjmp
    JMP_BUF_STATE_CAPTURED = 2,
    // Unwinding to the root or rewinding to the setjmp call
    // to restore the execution context
    JMP_BUF_STATE_RETURNING = 3,
};

/**
 * @brief Reset one jump buffer's spill range to its embedded byte array.
 * @details No allocation or control transfer occurs; the containing jump-context owner retains every byte.
 * @param buf Exclusive embedded jump buffer whose storage outlives all capture/rewind operations.
 */
void async_buf_init(struct __rb_wasm_asyncify_jmp_buf* buf)
{
    buf->top = &buf->buffer[0];
    buf->end = &buf->buffer[WASM_SETJMP_STACK_BUFFER_SIZE];
}

// Global unwinding/rewinding jmpbuf state
static rb_wasm_jmp_buf* _rb_wasm_active_jmpbuf;
void* rb_asyncify_unwind_buf;

/**
 * @brief Advance the existing Asyncify jump-context capture/return state machine.
 * @details Only the original capture/return phases are admitted; an unexpected state reaches the unchanged
 * assertion.
 * @param env Live caller-owned jump context initialized before the first capture.
 * @return Minus one while starting capture, zero on initial restoration, or the retained nonzero longjmp payload.
 */
__attribute__((noinline)) int _rb_wasm_setjmp_internal(rb_wasm_jmp_buf* env)
{
    RB_WASM_DEBUG_LOG("enter _rb_wasm_setjmp_internal");
    switch (env->state)
    {
        case JMP_BUF_STATE_INITIALIZED:
        {
            RB_WASM_DEBUG_LOG("  JMP_BUF_STATE_INITIALIZED");
            env->state = JMP_BUF_STATE_CAPTURING;
            env->payload = 0;
            env->longjmp_buf_ptr = NULL;
            _rb_wasm_active_jmpbuf = env;
            async_buf_init(&env->setjmp_buf);
            asyncify_start_unwind(&env->setjmp_buf);
            return -1; // return a dummy value
        }
        case JMP_BUF_STATE_CAPTURING:
        {
            asyncify_stop_rewind();
            RB_WASM_DEBUG_LOG("  JMP_BUF_STATE_CAPTURING");
            env->state = JMP_BUF_STATE_CAPTURED;
            _rb_wasm_active_jmpbuf = NULL;
            return 0;
        }
        case JMP_BUF_STATE_RETURNING:
        {
            asyncify_stop_rewind();
            RB_WASM_DEBUG_LOG("  JMP_BUF_STATE_RETURNING");
            env->state = JMP_BUF_STATE_CAPTURED;
            _rb_wasm_active_jmpbuf = NULL;
            return env->payload;
        }
        default:
            assert(0 && "unexpected state");
    }
    return 0;
}

/**
 * @brief Schedule restoration of a captured VM jump context.
 * @details The destination must be captured and the payload nonzero. This entry deliberately lacks noreturn
 * because Asyncify uses its return edge while unwinding.
 * @param env Live captured context whose destination C frame has not exited.
 * @param value Required nonzero payload retained for the restored setjmp call.
 */
void _rb_wasm_longjmp(rb_wasm_jmp_buf* env, int value)
{
    RB_WASM_DEBUG_LOG("enter _rb_wasm_longjmp");
    assert(env->state == JMP_BUF_STATE_CAPTURED);
    assert(value != 0);
    env->state = JMP_BUF_STATE_RETURNING;
    env->payload = value;
    // Asyncify buffer built during unwinding for longjmp will not
    // be used to rewind, so re-use static-variable.
    static struct __rb_wasm_asyncify_jmp_buf tmp_longjmp_buf;
    env->longjmp_buf_ptr = &tmp_longjmp_buf;
    _rb_wasm_active_jmpbuf = env;
    async_buf_init(env->longjmp_buf_ptr);
    asyncify_start_unwind(env->longjmp_buf_ptr);
}

enum try_catch_phase
{
    TRY_CATCH_PHASE_MAIN = 0,
    TRY_CATCH_PHASE_RESCUE = 1,
};

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
                            void* context)
{
    try_catch->state = TRY_CATCH_PHASE_MAIN;
    try_catch->try_f = try_f;
    try_catch->catch_f = catch_f;
    try_catch->context = context;
}

// NOTE: This function is not processed by Asyncify due to a call of asyncify_stop_rewind
/**
 * @brief Run and repeatedly catch VM jumps aimed at one live target.
 * @details The body runs first; matching jumps transition to rescue and can be caught again. Unrelated unwinds
 * remain for the outer VM driver.
 * @param try_catch Initialized caller-owned catcher and its borrowed callback context.
 * @param target Live target jump context, confined to the lifetime of the calling C frame.
 */
void rb_wasm_try_catch_loop_run(struct rb_wasm_try_catch* try_catch, rb_wasm_jmp_buf* target)
{
    extern void* rb_asyncify_unwind_buf;
    extern rb_wasm_jmp_buf* _rb_wasm_active_jmpbuf;

    target->state = JMP_BUF_STATE_CAPTURED;

    switch ((enum try_catch_phase)try_catch->state)
    {
        case TRY_CATCH_PHASE_MAIN:
            // may unwind
            try_catch->try_f(try_catch->context);
            break;
        case TRY_CATCH_PHASE_RESCUE:
            if (try_catch->catch_f)
            {
                // may unwind
                try_catch->catch_f(try_catch->context);
            }
            break;
    }

    {
        // catch longjmp with target jmp_buf
        while (rb_asyncify_unwind_buf && _rb_wasm_active_jmpbuf == target)
        {
            // do similar steps setjmp does when JMP_BUF_STATE_RETURNING

            // stop unwinding
            // (but call stop_rewind to update the asyncify state to "normal" from "unwind")
            asyncify_stop_rewind();
            // clear the active jmpbuf because it's already stopped
            _rb_wasm_active_jmpbuf = NULL;
            // reset jmpbuf state to be able to unwind again
            target->state = JMP_BUF_STATE_CAPTURED;
            // move to catch loop phase
            try_catch->state = TRY_CATCH_PHASE_RESCUE;
            if (try_catch->catch_f)
            {
                try_catch->catch_f(try_catch->context);
            }
        }
        // no unwind or unrelated unwind, then exit
    }
}

/**
 * @brief Select the retained jump buffer for the next VM rewind.
 * @details Capture saves the spill top; restoration reinstates it. The containing context remains caller-owned and
 * must outlive the rewind.
 * @return Borrowed active setjmp buffer, or NULL when no jump is pending.
 */
void* rb_wasm_handle_jmp_unwind(void)
{
    RB_WASM_DEBUG_LOG("enter rb_wasm_handle_jmp_unwind");
    if (!_rb_wasm_active_jmpbuf)
    {
        return NULL;
    }

    switch (_rb_wasm_active_jmpbuf->state)
    {
        case JMP_BUF_STATE_CAPTURING:
            RB_WASM_DEBUG_LOG("  JMP_BUF_STATE_CAPTURING");
            // save the captured Asyncify stack top
            _rb_wasm_active_jmpbuf->dst_buf_top = _rb_wasm_active_jmpbuf->setjmp_buf.top;
            break;
        case JMP_BUF_STATE_RETURNING:
            RB_WASM_DEBUG_LOG("  JMP_BUF_STATE_RETURNING");
            // restore the saved Asyncify stack top
            _rb_wasm_active_jmpbuf->setjmp_buf.top = _rb_wasm_active_jmpbuf->dst_buf_top;
            break;
        default:
            assert(0 && "unexpected state");
    }
    return &_rb_wasm_active_jmpbuf->setjmp_buf;
}
