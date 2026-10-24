#!/usr/bin/env python3
"""@file patch_interp.py
@brief Repair real saved-IL exception boundaries and filter result storage.
@details The original upstream interpreter and native carrier execute every
clause. The WASI/native-EH-only result slot keeps ENDFILTER from overwriting
live arguments or locals when the saved frame is copied back to AOT state.
"""


def reviewed_interp(source, replace_once):
    """@brief Apply two exact reviewed body repairs to the fixed upstream blob."""
    old = '''\tif (mono_aot_mode == MONO_AOT_MODE_LLVMONLY_INTERP) {
\t\t/* Catch the exception thrown by the native code using a try-catch */
\t\tmono_llvm_catch_exception (jit_call_cb, &cb_data, &thrown);
\t} else {
\t\tjit_call_cb (&cb_data);
\t}'''
    new = '''\t/*
\t * Native LLVMOnly handlers resume saved IL through this interpreter.
\t * Subsequent AOT calls need the original genuine C++ catch boundary,
\t * pending-exception handling, and interpreter-stack cleanup.
\t */
\tif (mono_aot_mode == MONO_AOT_MODE_LLVMONLY_INTERP
#if defined(HOST_WASI) && defined(ENABLE_WASM_NATIVE_EH)
\t\t|| (mono_aot_mode == MONO_AOT_MODE_LLVMONLY && !mono_opt_llvm_emulate_unwind)
#endif
\t) {
\t\t/* Catch the exception thrown by the native code using a try-catch */
\t\tmono_llvm_catch_exception (jit_call_cb, &cb_data, &thrown);
\t} else {
\t\tjit_call_cb (&cb_data);
\t}'''
    source = replace_once(source, old, new)
    old = '''\t/* Allocate frame */
\tInterpFrame frame = {0};
\tframe.imethod = imethod;
\tframe.stack = sp;
\tframe.retval = sp;

\tint params_size = get_arg_offset_fast (imethod, NULL, first_param_index + sig->param_count);'''
    new = old.replace('\n\tint params_size', '''
#if defined(HOST_WASI) && defined(ENABLE_WASM_NATIVE_EH)
\t/* ENDFILTER returns a scalar, independently of the saved method frame.
\t * Sharing sp would overwrite arg0 or local0 before IL-state copyback.
\t * Ordinary method/value-type return buffers retain their original slot.
\t */
\tstackval filter_retval = {0};
#endif

\tint params_size''')
    source = replace_once(source, old, new)
    old = '''\tif (clause_type == MONO_EXCEPTION_CLAUSE_FILTER)
\t\tclause_args.start_with_ip = (const guint16*)ei->data.filter;
\telse
\t\tclause_args.start_with_ip = (const guint16*)ei->handler_start;'''
    new = '''\tif (clause_type == MONO_EXCEPTION_CLAUSE_FILTER) {
#if defined(HOST_WASI) && defined(ENABLE_WASM_NATIVE_EH)
\t\tframe.retval = &filter_retval;
#endif
\t\tclause_args.start_with_ip = (const guint16*)ei->data.filter;
\t} else
\t\tclause_args.start_with_ip = (const guint16*)ei->handler_start;'''
    return replace_once(source, old, new)
