/**
 * @file command.c
 *
 * @brief Execute complete ECMAScript modules in the genuine QuickJS interpreter.
 *
 * @details Only checked byte/number marshalling crosses the static ROS builtin.
 * Unitree values, codecs, lifecycle and operation policy are ordinary JavaScript.
 * The complete module bundle lives in this command; no host JavaScript exists.
 */
#include "abi.h"
#include "application.h"
#include "quickjs.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * @brief One finite immutable source module borrowed from the application slot.
 */
struct module_source
{
    char name[160];
    unsigned char const* source;
    uint32_t size;
};
/**
 * @brief Complete finite module registry for this one command invocation.
 */
static struct module_source modules[64];
static uint32_t module_count;

/**
 * @brief Resolve only public bundle module identities using QuickJS's real loader.
 *
 * @param context Borrowed genuine VM context on its owning synchronous thread.
 *
 * @param name Exact import identity normalized by QuickJS.
 *
 * @param opaque Unused loader state; source lifetime equals the entire command.
 *
 * @return Compiled genuine module, or null with the original JavaScript exception.
 */
static JSModuleDef* load_module(JSContext* context, char const* name, void* opaque)
{
    (void)opaque;
    for (uint32_t index = 0; index < module_count; ++index)
    {
        if (strcmp(modules[index].name, name) == 0)
        {
            JSValue value = JS_Eval(context,
                                    (char const*)modules[index].source,
                                    modules[index].size,
                                    name,
                                    JS_EVAL_TYPE_MODULE | JS_EVAL_FLAG_COMPILE_ONLY);
            if (JS_IsException(value))
            {
                return NULL;
            }
            JSModuleDef* module = JS_VALUE_GET_PTR(value);
            JS_FreeValue(context, value);
            return module;
        }
    }
    JS_ThrowReferenceError(context, "Unbundled module: %s", name);
    return NULL;
}

/**
 * @brief Convert only exact nonnegative BigInt handles without modulo narrowing.
 *
 * @param context Borrowed genuine VM context on its owning synchronous thread.
 *
 * @param value Borrowed value; only a nonnegative BigInt representable as u64 is accepted.
 *
 * @param[out] output Caller-owned eight-byte result storage; written only on success.
 *
 * @return Zero on success, otherwise -1 with a pending JavaScript exception.
 * Non-BigInt input raises TypeError, conversion can fail, and an out-of-range
 * decimal value raises RangeError; the output slot is unchanged on every failure.
 */
static int exact_handle(JSContext* context, JSValueConst value, uint64_t* output)
{
    if (!JS_IsBigInt(context, value))
    {
        JS_ThrowTypeError(context, "handle must be an exact BigInt");
        return -1;
    }
    size_t length;
    char const* decimal = JS_ToCStringLen(context, &length, value);
    if (decimal == NULL)
    {
        return -1;
    }
    uint64_t result = 0;
    int valid = length > 0 && length <= 20;
    for (size_t index = 0; index < length && valid; ++index)
    {
        unsigned digit = (unsigned)(decimal[index] - '0');
        if (digit > 9 || result > (UINT64_MAX - digit) / 10)
        {
            valid = 0;
        }
        else
        {
            result = result * 10 + digit;
        }
    }
    JS_FreeCString(context, decimal);
    if (!valid)
    {
        JS_ThrowRangeError(context, "handle must fit unsigned 64-bit");
        return -1;
    }
    *output = result;
    return 0;
}

/**
 * @brief Marshal one synchronous raw import without language-level transport logic.
 *
 * @param context Borrowed genuine VM context on its owning synchronous thread.
 *
 * @param self Unused receiver.
 *
 * @param argc Four legacy arguments or six arguments including exact other/correlation words.
 *
 * @param argv Four borrowed values: operation name, exact BigInt handle, one-byte
 * typed-array input and capacity converted by QuickJS to a bounded int64. The
 * optional other handle and correlation are exact unsigned64 BigInts.
 *
 * @return [errno, owned Uint8Array, conditional required BigInt, conditional handle].
 *
 * @details Every input buffer remains pinned through the original import. The exclusive
 * raw response storage is allocated before the call. JavaScript result arrays,
 * copied buffers and BigInts can still fail to allocate after the import has
 * already happened. Result construction remains fallible after that effect;
 * this adapter provides no rollback or automatic replay.
 * A successful buffer result with an out-of-capacity length becomes status 22.
 * Other statuses retain the original u32 errno. A required BigInt is supplied
 * only when the length sentinel changed and status is 0 or 90; errno alone does
 * not establish a size. This bridge performs no automatic close or retry.
 */
static JSValue invoke(JSContext* context, JSValueConst self, int argc, JSValueConst* argv)
{
    (void)self;
    if (argc != 4 && argc != 6)
    {
        return JS_ThrowTypeError(context, "invoke needs four or six arguments");
    }
    size_t name_size;
    char const* name = JS_ToCStringLen(context, &name_size, argv[0]);
    uint64_t handle, other = 0, correlation = 0;
    int64_t capacity;
    if (name == NULL)
    {
        return JS_EXCEPTION;
    }
    if (strlen(name) != name_size || exact_handle(context, argv[1], &handle) ||
        (argc == 6 && (exact_handle(context, argv[4], &other) || exact_handle(context, argv[5], &correlation))) ||
        JS_ToInt64(context, &capacity, argv[3]) || capacity < 0 || capacity > UWVM_ABI_MAX_OUTPUT)
    {
        JS_FreeCString(context, name);
        return JS_ThrowRangeError(context, "exact unsigned64 words, NUL-free name and bounded ABI capacity required");
    }
    size_t offset, size, width;
    JSValue buffer = JS_GetTypedArrayBuffer(context, argv[2], &offset, &size, &width);
    if (JS_IsException(buffer))
    {
        JS_FreeCString(context, name);
        return buffer;
    }
    size_t extent;
    uint8_t* base = JS_GetArrayBuffer(context, &extent, buffer);
    if (width != 1 || size > UWVM_ABI_MAX_INPUT || offset > extent || size > extent - offset)
    {
        JS_FreeCString(context, name);
        JS_FreeValue(context, buffer);
        return JS_ThrowRangeError(context, "bounded byte input required");
    }
    uint8_t* output = calloc(capacity ? (size_t)capacity : 1, 1);
    if (output == NULL)
    {
        JS_FreeCString(context, name);
        JS_FreeValue(context, buffer);
        return JS_ThrowOutOfMemory(context);
    }
    uwvm_call_frame frame = {
        handle, other, correlation, size ? base + offset : NULL, size, output, (size_t)capacity, UINT64_MAX, 22, 0};
    uwvm_dispatch(name, &frame);
    uwvm_frame_validate(&frame);
    JS_FreeCString(context, name);
    JS_FreeValue(context, buffer);
    JSValue result = JS_NewArray(context);
    JS_SetPropertyUint32(context, result, 0, JS_NewUint32(context, frame.code));
    JSValue output_buffer = JS_NewArrayBufferCopy(context, output, uwvm_frame_size(&frame));
    JSValue output_arguments[3] = {output_buffer, JS_NewInt32(context, 0), JS_UNDEFINED};
    JSValue output_view = JS_NewTypedArray(context, 3, output_arguments, JS_TYPED_ARRAY_UINT8);
    JS_FreeValue(context, output_buffer);
    JS_SetPropertyUint32(context, result, 1, output_view);
    JS_SetPropertyUint32(context,
                         result,
                         2,
                         frame.kind == 1 && frame.slot != UINT64_MAX && (frame.code == 0 || frame.code == 90)
                             ? JS_NewBigUint64(context, frame.slot)
                             : JS_NULL);
    JS_SetPropertyUint32(context,
                         result,
                         3,
                         (frame.kind == 2 || frame.kind == 4) && frame.code == 0 ? JS_NewBigUint64(context, frame.slot)
                                                                                 : JS_NULL);
    free(output);
    return result;
}

/**
 * @brief Wait on an explicitly granted monotonic timer.
 *
 * @param context Owning VM.
 *
 * @param self Unused receiver.
 *
 * @param argc Argument count.
 *
 * @param argv One borrowed duration, converted by QuickJS to int32 and then
 * checked within 0..5000 milliseconds; no clock permission is granted here.
 *
 * @return Original WASI errno as a JavaScript number, or a JavaScript range
 * exception for an invalid converted duration.
 */
static JSValue pause_ms(JSContext* context, JSValueConst self, int argc, JSValueConst* argv)
{
    (void)self;
    int32_t duration;
    if (argc != 1 || JS_ToInt32(context, &duration, argv[0]) || duration < 0 || duration > 5000)
    {
        return JS_ThrowRangeError(context, "duration must be 0..5000");
    }
    return JS_NewUint32(context, uwvm_pause((uint32_t)duration));
}

/**
 * @brief Write a converted UTF-8 string and append a diagnostic newline.
 *
 * @param context Owning VM.
 *
 * @param self Unused receiver.
 *
 * @param argc Argument count.
 *
 * @param argv One borrowed value converted by QuickJS to an owned UTF-8 view;
 * the view is released before returning and embedded line breaks are retained.
 *
 * @return Zero or I/O status 5, or the original JavaScript conversion exception.
 */
static JSValue output_line(JSContext* context, JSValueConst self, int argc, JSValueConst* argv)
{
    (void)self;
    if (argc != 1)
    {
        return JS_ThrowTypeError(context, "one output line required");
    }
    size_t length;
    char const* text = JS_ToCStringLen(context, &length, argv[0]);
    if (text == NULL)
    {
        return JS_EXCEPTION;
    }
    int failed = fwrite(text, 1, length, stdout) != length || fputc('\n', stdout) == EOF || fflush(stdout) != 0;
    JS_FreeCString(context, text);
    return JS_NewUint32(context, failed ? 5 : 0);
}

/**
 * @brief Initialize the genuine VM and execute its complete application module.
 *
 * @param argc WASI argument count.
 *
 * @param argv WASI argument strings; no file path or source mount is interpreted.
 *
 * @return QuickJS int32-converted exitCode mapped into 0..125, status 12 when
 * VM/context allocation fails, status 22 for an invalid bundle, or 1 on execution failure.
 *
 * @details Bundle storage is borrowed for this complete synchronous invocation.
 * The module loader accepts only bundled identities. Pending jobs are drained
 * on this same thread; no background host JavaScript worker is started. Every
 * context and runtime are released by the normal cleanup path before return.
 */
int main(int argc, char** argv)
{
    uint32_t length = uwvm_load32(application.length);
    if (length == 0 || length > UWVM_APPLICATION_CAPACITY)
    {
        return 22;
    }
    uint32_t at = 0;
    while (at < length)
    {
        if (length - at < 8 || module_count == 64)
        {
            return 22;
        }
        uint32_t namesize = uwvm_load32(application.source + at);
        at += 4;
        uint32_t size = uwvm_load32(application.source + at);
        at += 4;
        if (namesize == 0 || namesize >= 160 || namesize > length - at || size >= length - at - namesize)
        {
            return 22;
        }
        memcpy(modules[module_count].name, (void const*)(application.source + at), namesize);
        at += namesize;
        modules[module_count].source = (unsigned char const*)(application.source + at);
        modules[module_count++].size = size;
        at += size;
        if (application.source[at++] != 0)
        {
            return 22;
        }
    }
    JSRuntime* runtime = JS_NewRuntime();
    if (runtime == NULL)
    {
        return 12;
    }
    JS_SetMemoryLimit(runtime, 134217728);
    JS_SetMaxStackSize(runtime, 4194304);
    JSContext* context = JS_NewContext(runtime);
    if (context == NULL)
    {
        JS_FreeRuntime(runtime);
        return 12;
    }
    JS_SetModuleLoaderFunc(runtime, NULL, load_module, NULL);
    JSValue global = JS_GetGlobalObject(context);
    JSValue native = JS_NewObject(context);
    JS_SetPropertyStr(context, native, "invoke", JS_NewCFunction(context, invoke, "invoke", 4));
    JS_SetPropertyStr(context, native, "pause_ms", JS_NewCFunction(context, pause_ms, "pause_ms", 1));
    JS_SetPropertyStr(context, native, "output", JS_NewCFunction(context, output_line, "output", 1));
    JSValue arguments = JS_NewArray(context);
    for (int index = 0; index < argc; ++index)
    {
        JS_SetPropertyUint32(context, arguments, index, JS_NewString(context, argv[index]));
    }
    JS_SetPropertyStr(context, native, "argv", arguments);
    JS_SetPropertyStr(context, global, "__uwvm", native);
    JS_SetPropertyStr(context, global, "exitCode", JS_NewInt32(context, 0));
    JSValue value = JS_UNDEFINED;
    for (uint32_t index = 0; index < module_count; ++index)
    {
        if (strcmp(modules[index].name, "application") == 0)
        {
            value = JS_Eval(
                context, (char const*)modules[index].source, modules[index].size, "application", JS_EVAL_TYPE_MODULE);
            break;
        }
    }
    int result = 1;
    if (!JS_IsException(value))
    {
        int pending;
        JSContext* pending_context;
        while ((pending = JS_ExecutePendingJob(runtime, &pending_context)) > 0)
        {
        }
        if (pending >= 0 && JS_PromiseState(context, value) == JS_PROMISE_REJECTED)
        {
            JS_Throw(context, JS_PromiseResult(context, value));
            pending = -1;
        }
        if (pending >= 0)
        {
            JSValue status = JS_GetPropertyStr(context, global, "exitCode");
            int32_t code = 1;
            if (JS_ToInt32(context, &code, status) == 0)
            {
                result = code < 0 ? 1 : code > 125 ? 125 : code;
            }
            JS_FreeValue(context, status);
        }
    }
    if (result == 1)
    {
        JSValue exception = JS_GetException(context);
        char const* message = JS_ToCString(context, exception);
        fprintf(stderr, "QuickJS application failed: %s\n", message == NULL ? "unknown exception" : message);
        JS_FreeCString(context, message);
        JS_FreeValue(context, exception);
    }
    JS_FreeValue(context, value);
    JS_FreeValue(context, global);
    JS_FreeContext(context);
    JS_FreeRuntime(runtime);
    return result;
}
