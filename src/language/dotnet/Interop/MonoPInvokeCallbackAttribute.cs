/**
 * @file MonoPInvokeCallbackAttribute.cs
 * @brief Declare the original Mono native callback convention for CLR sources.
 * @details The fixed Mono AOT compiler and original WasmAppBuilder recognize
 * this attribute by its standard name. A real delegate describes the native
 * signature. The caller explicitly invokes the exported initialize_runtime
 * function before calling a library's original generated callback symbols.
 */
using System;

namespace Uwvm.RosWasm.Interop
{
    /** @brief Identify a genuine static scalar method for Mono's native callback generator. */
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false, Inherited = false)]
    public sealed class MonoPInvokeCallbackAttribute : Attribute
    {
        /** @brief Preserve the actual delegate type supplied in attribute metadata. */
        public Type DelegateType { get; }

        /** @param delegateType Real nongeneric delegate with the exact method signature. */
        public MonoPInvokeCallbackAttribute(Type delegateType)
        {
            DelegateType = delegateType ?? throw new ArgumentNullException(nameof(delegateType));
        }
    }
}
