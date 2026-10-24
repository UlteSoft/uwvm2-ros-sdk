/**
 * @file embed.c
 * @brief Keep one genuine CRuby VM alive for native Wasm library entry points.
 * @details Every exported call enters the original CRuby Asyncify root. Module
 * source is parsed by CRuby; no Ruby expression is translated or precomputed.
 * Calls are synchronous and serialized. Borrowed pointers belong to this module's
 * memory and never cross an independently instantiated Wasm memory boundary.
 * This source needs real archive, reactor and repeated-call qualification.
 */
#define main uwvm_ruby_unused_command_main
#include "command.c"
#undef main
#include <language/ruby/embed.h>

/** @brief Request state borrowed only while the synchronous root is active. */
static struct
{
    char const* source;
    char const* module;
    char const* method;
    size_t length;
    int32_t argument, result;
    unsigned operation;
} library_request;

/** @brief Lifecycle: zero new, one live, two retired/failed; no resurrection. */
static unsigned library_state, library_busy;
static uint32_t library_status;

/** @brief Default registration seam; an explicit strong C binding may replace it. */
__attribute__((weak, noinline)) uint32_t uwvm_ruby_embed_bindings(void)
{
    return 0;
}

/** @brief Invoke a genuine Ruby method and check its exact signed i32 result. */
static VALUE library_call(VALUE unused)
{
    (void)unused;
    VALUE receiver = rb_path2class(library_request.module);
    VALUE result = rb_funcall(receiver, rb_intern(library_request.method), 1, INT2NUM(library_request.argument));
    if (!RB_INTEGER_TYPE_P(result))
    {
        rb_raise(rb_eTypeError, "native library export requires an Integer result");
    }
    library_request.result = NUM2INT(result);
    return Qnil;
}

/** @brief Initialize once, then evaluate, call or retire under the real VM root. */
static int library_entry(int argc, char** argv)
{
    RUBY_INIT_STACK;
    if (library_state == 0)
    {
        library_state = 2;
        int setup = ruby_setup();
        if (setup != 0)
        {
            ruby_cleanup(setup);
            return 5;
        }
        char* options[] = {"uwvm-cruby-library", "--disable=gems", "-EUTF-8", "-e", "", NULL};
        int startup = ruby_exec_node(ruby_options(5, options));
        if (startup != 0)
        {
            ruby_cleanup(startup);
            return 5;
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
        if (uwvm_ruby_embed_bindings() != 0)
        {
            ruby_cleanup(0);
            return 5;
        }
        library_state = 1;
    }
    if (library_request.operation == 3)
    {
        library_state = 2;
        return ruby_cleanup(0) == 0 ? 0 : 5;
    }
    int state = 0;
    if (library_request.operation == 1)
    {
        char* source = malloc(library_request.length + 1);
        if (source == NULL)
        {
            return 12;
        }
        memcpy(source, library_request.source, library_request.length);
        source[library_request.length] = 0;
        rb_eval_string_protect(source, &state);
        free(source);
    }
    else if (library_request.operation == 2)
    {
        rb_protect(library_call, Qnil, &state);
    }
    else
    {
        return 22;
    }
    if (state != 0)
    {
        rb_set_errinfo(Qnil);
        return 5;
    }
    return 0;
}

/**
 * @brief Serialize one real Asyncify root; no host callback or thread is used.
 * @return Zero, native local error, 16 on reentry or 125 after retirement.
 */
static uint32_t library_enter(void)
{
    if (library_busy)
    {
        return 16;
    }
    if (library_state == 2)
    {
        library_status = 125;
        return library_status;
    }
    library_busy = 1;
    int argc = 1;
    static char program[] = "uwvm-cruby-library";
    static char* arguments[] = {program, NULL};
    char** argv = arguments;
    if (library_state == 0)
    {
        ruby_sysinit(&argc, &argv);
    }
    library_status = (uint32_t)rb_wasm_rt_start(library_entry, argc, argv);
    library_request.source = NULL;
    library_request.module = NULL;
    library_request.method = NULL;
    library_busy = 0;
    return library_status;
}

/**
 * @brief Parse and evaluate counted original UTF-8 Ruby source once per caller.
 * @param source Borrowed non-NUL source in this module's memory.
 * @param length Source bytes, one through the shared four-MiB application bound.
 * @return Zero or an independent VM/local error; failed effects are not replayed.
 */
uint32_t uwvm_ruby_embed_eval(char const* source, size_t length)
{
    if (library_busy)
    {
        return 16;
    }
    if (source == NULL || length == 0 || length > UWVM_APPLICATION_CAPACITY || memchr(source, 0, length))
    {
        library_status = 22;
        return library_status;
    }
    library_request.source = source;
    library_request.length = length;
    library_request.operation = 1;
    return library_enter();
}

/**
 * @brief Call a source-defined module method with one signed i32 argument.
 * @param module Borrowed constant path; must be NUL terminated within 256 bytes.
 * @param method Borrowed method name; must be NUL terminated within 128 bytes.
 * @param argument Exact original signed i32 value.
 * @return Ruby's exact i32 result, or zero on error; inspect last_status always.
 * @details An exception or out-of-range/type result produces status 5. Nothing
 * is retried. The returned scalar never denotes a pointer or owner in a peer.
 */
int32_t uwvm_ruby_embed_call_i32(char const* module, char const* method, int32_t argument)
{
    if (library_busy)
    {
        return 0;
    }
    if (module == NULL || method == NULL || *module == 0 || *method == 0 || strnlen(module, 256) == 256 ||
        strnlen(method, 128) == 128)
    {
        library_status = 22;
        return 0;
    }
    library_request.module = module;
    library_request.method = method;
    library_request.argument = argument;
    library_request.result = 0;
    library_request.operation = 2;
    return library_enter() == 0 ? library_request.result : 0;
}

/** @brief Observe the preceding serialized call's status without changing it. */
uint32_t uwvm_ruby_embed_last_status(void)
{
    return library_busy ? 16 : library_status;
}

/** @brief Retire before genuine Ruby cleanup; a second retirement returns 125. */
uint32_t uwvm_ruby_embed_retire(void)
{
    if (library_busy)
    {
        return 16;
    }
    if (library_state == 0)
    {
        library_state = 2;
        library_status = 0;
        return 0;
    }
    library_request.operation = 3;
    return library_enter();
}
