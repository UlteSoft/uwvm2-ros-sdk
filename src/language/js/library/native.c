/**
 * @file native.c
 * @brief Install the existing complete QuickJS ROS2 bridge in a shared instance.
 * @details The maintained command source supplies the exact checked marshalling
 * functions. Its unused command entry and embedded source slot are discarded by
 * section GC. No command engine, compiler, registry, permission or source result
 * is replaced. The shared module retains its own genuine QuickJS state.
 */
#define main uwvm_unused_original_command_entry
#include "command.c"
#undef main

/**
 * @brief Install one owned native function while preserving allocation errors.
 * @param context Borrowed initialized QuickJS context in this module.
 * @param object Borrowed object receiving ownership of the new function value.
 * @param name Exact public native operation name.
 * @param function Maintained command bridge function, not application logic.
 * @param arguments Public declared arity, with actual validation in the bridge.
 * @return Zero on success; 12 with the original pending allocation exception.
 */
static uint32_t install_function(JSContext* context, JSValueConst object, char const* name, JSCFunction* function, int arguments)
{
    JSValue value = JS_NewCFunction(context, function, name, arguments);
    if(JS_IsException(value))
    {
        return 12;
    }
    return JS_SetPropertyStr(context, object, name, value) < 0 ? 12 : 0;
}

/**
 * @brief Expose the original raw ABI in this context without issuing a ROS call.
 * @param context Owning module's initialized genuine QuickJS context.
 * @return Zero after installation, otherwise 12 with a pending JS exception.
 * @details No alias is opened and no policy is created. A later source-defined
 * apply function explicitly calls the same 43-operation checked bridge as a
 * command. All buffers and handle words remain inside this module's memory.
 */
uint32_t uwvm_install_native_ros(JSContext* context)
{
    JSValue global = JS_GetGlobalObject(context);
    JSValue native = JS_NewObject(context);
    if(JS_IsException(global) || JS_IsException(native))
    {
        JS_FreeValue(context, global);
        JS_FreeValue(context, native);
        return 12;
    }
    uint32_t error = install_function(context, native, "invoke", invoke, 4);
    if(!error)
    {
        error = install_function(context, native, "pause_ms", pause_ms, 1);
    }
    if(!error)
    {
        error = install_function(context, native, "output", output_line, 1);
    }
    if(!error)
    {
        JSValue arguments = JS_NewArray(context);
        if(JS_IsException(arguments))
        {
            error = 12;
        }
        else if(JS_SetPropertyStr(context, native, "argv", arguments) < 0)
        {
            error = 12;
        }
    }
    if(!error)
    {
        if(JS_SetPropertyStr(context, global, "__uwvm", native) < 0)
        {
            error = 12;
        }
    }
    else
    {
        JS_FreeValue(context, native);
    }
    JS_FreeValue(context, global);
    return error;
}
