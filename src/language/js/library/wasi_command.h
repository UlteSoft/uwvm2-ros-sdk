/* SPDX-License-Identifier: Apache-2.0
 * Command-only QuickJS standard streams. These functions marshal actual guest
 * libc I/O; the original JavaScript computes all application results. The WASI
 * module's explicit host policy governs every read, write and process exit.
 */
#pragma once
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static FILE* command_stream(int descriptor)
{
    return descriptor == 0 ? stdin : descriptor == 1 ? stdout : stderr;
}

static JSValue command_transfer(JSContext* context, JSValueConst self,
    int argc, JSValueConst* argv, int operation)
{
    (void)self;
    if(argc != 3) { return JS_ThrowTypeError(context, "read/write needs buffer, offset and length"); }
    uint64_t offset, length;
    if(JS_ToIndex(context, &offset, argv[1]) || JS_ToIndex(context, &length, argv[2]))
    {
        return JS_EXCEPTION;
    }
    size_t extent = 0;
    unsigned char* bytes = JS_GetArrayBuffer(context, &extent, argv[0]);
    if(bytes == NULL && JS_HasException(context)) { return JS_EXCEPTION; }
    /* Both subtraction and pointer formation follow the same actual buffer. */
    if(offset > extent || length > extent - (size_t)offset)
    {
        return JS_ThrowRangeError(context, "read/write range exceeds its ArrayBuffer");
    }
    if(length == 0) { return JS_NewInt32(context, 0); }
    FILE* stream = command_stream(operation & 3);
    size_t count = operation & 4
        ? fwrite(bytes + (size_t)offset, 1, (size_t)length, stream)
        : fread(bytes + (size_t)offset, 1, (size_t)length, stream);
    return JS_NewInt64(context, (int64_t)count);
}

static JSValue command_puts(JSContext* context, JSValueConst self,
    int argc, JSValueConst* argv, int descriptor)
{
    (void)self;
    FILE* stream = command_stream(descriptor);
    for(int index = 0; index < argc; ++index)
    {
        size_t size;
        char const* text = JS_ToCStringLen(context, &size, argv[index]);
        if(text == NULL) { return JS_EXCEPTION; }
        size_t written = fwrite(text, 1, size, stream);
        JS_FreeCString(context, text);
        if(written != size) { return JS_NewInt32(context, EOF); }
    }
    return JS_NewInt32(context, 0);
}

static JSValue command_stream_state(JSContext* context, JSValueConst self,
    int argc, JSValueConst* argv, int operation)
{
    (void)self; (void)argc; (void)argv;
    FILE* stream = command_stream(operation & 3);
    int result = operation & 8 ? feof(stream) : operation & 4 ? ferror(stream) : fflush(stream);
    return JS_NewInt32(context, result);
}

static JSValue command_exit_function(JSContext* context, JSValueConst self,
    int argc, JSValueConst* argv)
{
    (void)self;
    int32_t code = 0;
    if(argc && JS_ToInt32(context, &code, argv[0])) { return JS_EXCEPTION; }
    exit(code);
}

static int command_standard_module(JSContext* context, JSModuleDef* module)
{
    char const* names[] = {"in", "out", "err"};
    for(int descriptor = 0; descriptor != 3; ++descriptor)
    {
        JSValue stream = JS_NewObject(context);
        if(JS_IsException(stream)) { return -1; }
#define COMMAND_METHOD(name, function, count, operation) \
        if(JS_SetPropertyStr(context, stream, name, JS_NewCFunctionMagic(context, function, name, count, JS_CFUNC_generic_magic, operation)) < 0) \
        { JS_FreeValue(context, stream); return -1; }
        COMMAND_METHOD("read", command_transfer, 3, descriptor)
        COMMAND_METHOD("write", command_transfer, 3, descriptor | 4)
        COMMAND_METHOD("puts", command_puts, 1, descriptor)
        COMMAND_METHOD("flush", command_stream_state, 0, descriptor)
        COMMAND_METHOD("error", command_stream_state, 0, descriptor | 4)
        COMMAND_METHOD("eof", command_stream_state, 0, descriptor | 8)
#undef COMMAND_METHOD
        if(JS_SetModuleExport(context, module, names[descriptor], stream) < 0) { return -1; }
    }
    return JS_SetModuleExport(context, module, "exit",
        JS_NewCFunction(context, command_exit_function, "exit", 1));
}

static int install_command_io(JSContext* context, int argc, char** argv)
{
    JSModuleDef* module = JS_NewCModule(context, "std", command_standard_module);
    if(module == NULL) { return -1; }
    char const* names[] = {"in", "out", "err", "exit"};
    for(unsigned index = 0; index != sizeof(names) / sizeof(names[0]); ++index)
    {
        if(JS_AddModuleExport(context, module, names[index]) < 0) { return -1; }
    }
    JSValue arguments = JS_NewArray(context);
    if(JS_IsException(arguments)) { return -1; }
    for(int index = 0; index < argc; ++index)
    {
        if(JS_SetPropertyUint32(context, arguments, (uint32_t)index, JS_NewString(context, argv[index])) < 0)
        {
            JS_FreeValue(context, arguments);
            return -1;
        }
    }
    JSValue global = JS_GetGlobalObject(context);
    int code = JS_SetPropertyStr(context, global, "scriptArgs", arguments);
    JS_FreeValue(context, global);
    return code < 0 ? -1 : 0;
}
