/**
 * @file js_module.c
 * @brief Marshal scalar exports into a genuine instance-owned QuickJS context.
 * @details This library adapter uses the single source-built common engine core.
 * It evaluates the original source in the guest. No result is computed by C.
 * All pointers remain inside this module; only Wasm numeric values cross calls.
 */
#include "quickjs.h"
#include "module_source.h"
#include <limits.h>
#include <stdint.h>
#if defined(UWVM_CONSUMER_HOOKS)
# include "foreign.h"
#endif

static JSRuntime* runtime;
static JSContext* context;
static int entered;

#if defined(UWVM_LIBRARY_NATIVE_ROS2)
/** @brief Install the maintained raw bridge in this owned context; grant nothing. */
uint32_t uwvm_install_native_ros(JSContext* context);
#endif

/** @brief Release the owned context once; a later call starts a fresh instance. */
uint32_t uwvm_module_close(void)
{
    if(entered)
    {
        return 16;
    }
    if(context != NULL)
    {
        JS_FreeContext(context);
        context = NULL;
    }
    if(runtime != NULL)
    {
        JS_FreeRuntime(runtime);
        runtime = NULL;
    }
    return 0;
}

/** @brief Initialize actual module source without granting any ROS resource. */
static uint32_t initialize(void)
{
    if(context != NULL)
    {
        return 0;
    }
    runtime = JS_NewRuntime();
    if(runtime == NULL)
    {
        return 12;
    }
    JS_SetMemoryLimit(runtime, 134217728);
    JS_SetMaxStackSize(runtime, 4194304);
    context = JS_NewContext(runtime);
    if(context == NULL)
    {
        uwvm_module_close();
        return 12;
    }
#if defined(UWVM_LIBRARY_NATIVE_ROS2)
    if(uwvm_install_native_ros(context) != 0)
    {
        uwvm_module_close();
        return 12;
    }
#endif
#if defined(UWVM_CONSUMER_HOOKS)
    if(uwvm_install_foreign(context) != 0)
    {
        uwvm_module_close();
        return 12;
    }
#endif
    JSValue result = JS_Eval(context, (char const*)module_source, sizeof(module_source) - 1, "/__uwvm_source__/module.mjs", JS_EVAL_TYPE_MODULE);
    int failed = JS_IsException(result);
    JS_FreeValue(context, result);
    JSContext* pending_context;
    int pending = 0;
    if(!failed)
    {
        while((pending = JS_ExecutePendingJob(runtime, &pending_context)) > 0)
        {
        }
        failed = pending < 0;
    }
    if(failed)
    {
        JSValue exception = JS_GetException(context);
        JS_FreeValue(context, exception);
        uwvm_module_close();
        return 22;
    }
    return 0;
}

/**
 * @brief Invoke apply(i32, i32) synchronously in the actual JavaScript engine.
 * @param a First signed 32-bit application argument.
 * @param b Second signed 32-bit application argument.
 * @return Error in the upper 32 bits and exact signed-result bits in the lower 32.
 * @details Reentry refuses with 16. Language failures or noninteger results give 22.
 * The caller receives no pointer, retained borrow, object handle or ROS authority.
 */
uint64_t uwvm_module_apply(int32_t a, int32_t b)
{
    if(entered)
    {
        return UINT64_C(16) << 32;
    }
    uint32_t error = initialize();
    if(error)
    {
        return (uint64_t)error << 32;
    }
    entered = 1;
    JSValue global = JS_GetGlobalObject(context);
    JSValue function = JS_GetPropertyStr(context, global, "apply");
    JSValue arguments[] = {JS_NewInt32(context, a), JS_NewInt32(context, b)};
    JSValue result = JS_Call(context, function, JS_UNDEFINED, 2, arguments);
    double number = 0;
    int32_t value = 0;
    if(JS_IsException(result) || !JS_IsNumber(result) || JS_ToFloat64(context, &number, result) != 0 || !(number >= INT32_MIN && number <= INT32_MAX))
    {
        error = 22;
    }
    else
    {
        value = (int32_t)number;
        if((double)value != number)
        {
            error = 22;
        }
    }
    if(error)
    {
        JSValue exception = JS_GetException(context);
        JS_FreeValue(context, exception);
    }
    JS_FreeValue(context, result);
    JS_FreeValue(context, arguments[0]);
    JS_FreeValue(context, arguments[1]);
    JS_FreeValue(context, function);
    JS_FreeValue(context, global);
    entered = 0;
    return (uint64_t)error << 32 | (error ? 0 : (uint32_t)value);
}

/** @brief Evaluate a command body in the genuine engine and release its owned state.
 * @return Original initialization error or completed cleanup status.
 * @details No source-defined function is required for a command. Module libraries
 * instead retain their state until their explicit scalar close export is called.
 */
uint32_t uwvm_module_execute(void)
{
    if(entered)
    {
        return 16;
    }
    uint32_t error = initialize();
    return error != 0 ? error : uwvm_module_close();
}
