/**
 * @file command.c
 * @brief Execute original Ruby application bytes in the genuine CRuby WASI VM.
 * @details The upstream Asyncify root preserves CRuby exceptions and fibers.
 * This adapter marshals raw imports only; Ruby owns every codec and lifetime.
 */
#include "abi.h"
#include "application.h"
#include "ruby.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * @brief Check an exact unsigned 64-bit Ruby Integer without narrowing first.
 * @param value Original Ruby value.
 * @return Exact nonnegative integer; invalid values raise RangeError.
 */
static uint64_t exact_handle(VALUE value)
{
    if (!RB_INTEGER_TYPE_P(value))
    {
        rb_raise(rb_eRangeError, "exact unsigned 64-bit Integer required");
    }
    uint64_t result = 0;
    int sign = rb_integer_pack(value, &result, 1, sizeof result, 0, INTEGER_PACK_NATIVE_BYTE_ORDER);
    if (sign < 0 || sign > 1)
    {
        rb_raise(rb_eRangeError, "exact unsigned 64-bit Integer required");
    }
    return result;
}

/**
 * @brief Issue exactly one synchronous original raw ABI operation.
 * @param argc Four required and up to two optional raw arguments.
 * @param arguments Operation String, unsigned owner, rooted request bytes, finite
 * capacity, optional other owner and optional correlation. Omitted words are zero.
 * @param self Unused module receiver.
 * @return [errno, owned bytes, conditional required Integer, conditional value].
 */
static VALUE invoke(int argc, VALUE* arguments, VALUE self)
{
    (void)self;
    VALUE operation, owner, request, extent, other, correlation;
    rb_scan_args(argc, arguments, "42", &operation, &owner, &request, &extent, &other, &correlation);
    if (argc < 5)
        other = INT2FIX(0);
    if (argc < 6)
        correlation = INT2FIX(0);
    Check_Type(operation, T_STRING);
    Check_Type(request, T_STRING);
    uint64_t handle = exact_handle(owner);
    uint64_t capacity = exact_handle(extent);
    uint64_t second = exact_handle(other);
    uint64_t identifier = exact_handle(correlation);
    long size = RSTRING_LEN(request);
    if (capacity > UWVM_ROS_MAX_OUTPUT || size > UWVM_ROS_MAX_INPUT || RSTRING_LEN(operation) == 0 ||
        RSTRING_LEN(operation) > 64 || memchr(RSTRING_PTR(operation), 0, RSTRING_LEN(operation)))
    {
        rb_raise(rb_eRangeError, "canonical bounded raw operation and bytes required");
    }
    VALUE output = rb_str_new(NULL, (long)capacity);
    VALUE result = rb_ary_new_capa(4);
    if (capacity != 0)
        memset(RSTRING_PTR(output), 0, (size_t)capacity);
    char const* name = StringValueCStr(operation);
    struct uwvm_ros_frame frame = {.handle = handle,
                                   .other = second,
                                   .correlation = identifier,
                                   .input = (unsigned char const*)RSTRING_PTR(request),
                                   .input_size = (uint64_t)size,
                                   .output = (unsigned char*)RSTRING_PTR(output),
                                   .capacity = capacity};
    uint32_t code = uwvm_ros_dispatch(&frame, name);
    rb_str_set_len(output, (long)uwvm_ros_data_size(&frame));
    rb_ary_push(result, UINT2NUM(code));
    rb_ary_push(result, output);
    rb_ary_push(result, uwvm_ros_has_length(&frame) ? ULL2NUM(frame.slot) : Qnil);
    rb_ary_push(result, uwvm_ros_has_value(&frame) ? ULL2NUM(frame.slot) : Qnil);
    RB_GC_GUARD(request);
    RB_GC_GUARD(operation);
    return result;
}

/**
 * @brief Poll one granted monotonic timer.
 * @param self Unused receiver.
 * @param duration Exact Integer milliseconds.
 * @return Original WASI errno.
 */
static VALUE pause_ms(VALUE self, VALUE duration)
{
    (void)self;
    uint64_t value = exact_handle(duration);
    return UINT2NUM(value <= 5000 ? uwvm_pause((uint32_t)value) : 22);
}

/**
 * @brief Initialize full CRuby and evaluate the complete bundled source.
 * @param argc Actual WASI argument count.
 * @param argv Actual WASI arguments preserved for the guest language.
 * @return Explicit guest status, or the original Ruby exception status.
 */
static int ruby_application(int argc, char** argv)
{
    RUBY_INIT_STACK;
    int setup = ruby_setup();
    if (setup != 0)
    {
        VALUE exception = rb_errinfo();
        VALUE message = rb_obj_as_string(exception);
        fprintf(stderr, "CRuby initialization failed: %.*s\n", (int)RSTRING_LEN(message), RSTRING_PTR(message));
        return ruby_cleanup(setup);
    }
    char* options[] = {"uwvm-cruby", "--disable=gems", "-EUTF-8", "-e", "", NULL};
    int startup = ruby_exec_node(ruby_options(5, options));
    if (startup != 0)
    {
        return ruby_cleanup(startup);
    }
    VALUE root = rb_define_module("Uwvm");
    VALUE native = rb_define_module_under(root, "Native");
    rb_define_singleton_method(native, "invoke", invoke, -1);
    rb_define_singleton_method(native, "pause_ms", pause_ms, 1);
    VALUE arguments = rb_ary_new_capa(argc);
    for (int index = 0; index < argc; ++index)
    {
        rb_ary_push(arguments, rb_utf8_str_new_cstr(argv[index]));
    }
    rb_define_const(native, "ARGV", arguments);
    uint32_t length = uwvm_load32(application.length);
    if (length == 0 || length > UWVM_APPLICATION_CAPACITY)
    {
        ruby_cleanup(0);
        return 22;
    }
    char* source = malloc((size_t)length + 1);
    if (source == NULL)
    {
        ruby_cleanup(0);
        return 12;
    }
    memcpy(source, (void const*)application.source, length);
    source[length] = 0;
    int state = 0;
    rb_eval_string_protect(source, &state);
    free(source);
    if (state != 0)
    {
        VALUE exception = rb_errinfo();
        VALUE message = rb_obj_as_string(exception);
        fprintf(stderr, "CRuby application failed: %.*s\n", (int)RSTRING_LEN(message), RSTRING_PTR(message));
    }
    int status = state;
    if (state == 0)
    {
        VALUE value = rb_gv_get("$uwvm_exit");
        status = NIL_P(value) ? 0 : NUM2INT(value);
        status = status < 0 ? 1 : status > 125 ? 125 : status;
    }
    if (state != 0)
    {
        return ruby_cleanup(state);
    }
    int cleanup = ruby_cleanup(0);
    return status != 0 ? status : cleanup;
}

/**
 * @brief Upstream Asyncify root; it preserves genuine CRuby nonlocal control.
 */
int rb_wasm_rt_start(int (*entry)(int, char**), int argc, char** argv);

/**
 * @brief Enter the upstream standalone WASI execution root.
 * @param argc WASI count.
 * @param argv WASI strings.
 * @return Guest status.
 */
int main(int argc, char** argv)
{
    ruby_sysinit(&argc, &argv);
    return rb_wasm_rt_start(ruby_application, argc, argv);
}
