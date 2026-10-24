/** @file js_foreign.h
 * @brief Expose real scalar Wasm/library calls to the genuine JS consumer.
 */
#pragma once
#include "foreign_binding.h"
#include <limits.h>

/** @brief Validate an exact source Number before crossing an i32 parameter. */
static int foreign_i32(JSContext* context, JSValueConst source, int32_t* output)
{
    double value;
    if(!JS_IsNumber(source) || JS_ToFloat64(context, &value, source) != 0 || !(value >= INT32_MIN && value <= INT32_MAX))
    {
        return 0;
    }
    int32_t integer = (int32_t)value;
    if((double)integer != value)
    {
        return 0;
    }
    *output = integer;
    return 1;
}

/** @brief Call the real producer; return all64 result bits as an exact BigInt. */
static JSValue foreign_apply_js(JSContext* context, JSValueConst self, int count, JSValueConst* arguments)
{
    (void)self;
    int32_t a, b;
    if(count != 2 || !foreign_i32(context, arguments[0], &a) || !foreign_i32(context, arguments[1], &b))
    {
        return JS_ThrowTypeError(context, "two exact i32 arguments required");
    }
    return JS_NewBigUint64(context, foreign_apply(a, b));
}

/** @brief Initialize the separately owned producer reactor once. */
static JSValue foreign_initialize_js(JSContext* context, JSValueConst self, int count, JSValueConst* arguments)
{
    (void)context;
    (void)self;
    (void)count;
    (void)arguments;
    foreign_initialize();
    return JS_UNDEFINED;
}

/** @brief Close producer state while preserving the exact independent status. */
static JSValue foreign_close_js(JSContext* context, JSValueConst self, int count, JSValueConst* arguments)
{
    (void)self;
    (void)count;
    (void)arguments;
    return JS_NewUint32(context, foreign_close());
}

/** @brief Install only the explicit borrowed-call interface in this owned context. */
static int uwvm_install_foreign(JSContext* context)
{
    JSValue global = JS_GetGlobalObject(context);
    JSValue native = JS_NewObject(context);
    int failed = JS_IsException(native);
    if(!failed)
    {
        failed = JS_SetPropertyStr(context, native, "apply", JS_NewCFunction(context, foreign_apply_js, "apply", 2)) < 0;
    }
    if(!failed)
    {
        failed = JS_SetPropertyStr(context, native, "initialize", JS_NewCFunction(context, foreign_initialize_js, "initialize", 0)) < 0;
    }
    if(!failed)
    {
        failed = JS_SetPropertyStr(context, native, "close", JS_NewCFunction(context, foreign_close_js, "close", 0)) < 0;
    }
    if(!failed)
    {
        failed = JS_SetPropertyStr(context, global, "__foreign", native) < 0;
    }
    else
    {
        JS_FreeValue(context, native);
    }
    JS_FreeValue(context, global);
    return failed ? 22 : 0;
}
