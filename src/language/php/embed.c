/**
 * @file embed.c
 * @brief Keep one genuine PHP/Zend request alive for native Wasm library calls.
 * @details Original PHP source is evaluated by Zend. All calls enter the same
 * maintained Asyncify root, preserving real exceptions/fibers and static raw
 * ROS imports. Scalars cross export boundaries; pointers stay in this module's
 * memory. Entry is serialized, and retirement never reinitializes Zend.
 * This source is unqualified until real archive/reactor execution is retained.
 */
#define main uwvm_php_unused_command_main
#include "command.c"
#undef main
#include <language/php/embed.h>

/** @brief Synchronous borrowed request; persistent PHP values live in Zend. */
static struct
{
    char const* source;
    char const* function;
    size_t length;
    int32_t argument, result;
    unsigned operation;
} library_request;

static unsigned library_state, library_busy;
static uint32_t library_status;

/** @brief Default registration seam; an explicit strong Zend binding may replace it. */
__attribute__((weak, noinline)) uint32_t uwvm_php_embed_bindings(void)
{
    return 0;
}

/** @brief Execute one original Zend evaluation/call/retirement operation. */
static int library_entry(int argc, char** argv)
{
    if (library_state == 0)
    {
        library_state = 2;
        command_argc = argc;
        command_argv = argv;
        php_embed_module.php_ini_ignore = 1;
        if (php_embed_init(argc, argv) == FAILURE)
        {
            return 5;
        }
        if (zend_register_functions(NULL, functions, NULL, MODULE_TEMPORARY) != SUCCESS)
        {
            php_embed_shutdown();
            return 5;
        }
        if (uwvm_php_embed_bindings() != 0)
        {
            php_embed_shutdown();
            return 5;
        }
        library_state = 1;
    }
    if (library_request.operation == 3)
    {
        library_state = 2;
        php_embed_shutdown();
        return 0;
    }
    volatile int status = 5;
    zend_first_try
    {
        if (library_request.operation == 1)
        {
            if (zend_eval_stringl(library_request.source, library_request.length, NULL, "uwvm-library") == SUCCESS &&
                EG(exception) == NULL)
            {
                status = 0;
            }
        }
        else if (library_request.operation == 2)
        {
            zval function, argument, result;
            ZVAL_STRING(&function, library_request.function);
            ZVAL_LONG(&argument, library_request.argument);
            ZVAL_UNDEF(&result);
            if (call_user_function(EG(function_table), NULL, &function, &result, 1, &argument) == SUCCESS &&
                EG(exception) == NULL && Z_TYPE(result) == IS_LONG && Z_LVAL(result) >= INT32_MIN &&
                Z_LVAL(result) <= INT32_MAX)
            {
                library_request.result = (int32_t)Z_LVAL(result);
                status = 0;
            }
            zval_ptr_dtor(&result);
            zval_ptr_dtor(&function);
        }
        if (EG(exception) != NULL)
        {
            zend_clear_exception();
        }
    }
    zend_catch
    {
        status = 5;
        if (EG(exception) != NULL)
        {
            zend_clear_exception();
        }
    }
    zend_end_try();
    return status;
}

/** @brief Enter one maintained Asyncify root without allowing callback reentry. */
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
    /* Native argv remains valid for the complete retained Zend request. */
    static char program[] = "uwvm-php-library";
    static char* arguments[] = {program, NULL};
    library_status = (uint32_t)uwvm_asyncify_start(library_entry, 1, arguments);
    library_request.source = NULL;
    library_request.function = NULL;
    library_busy = 0;
    return library_status;
}

/**
 * @brief Evaluate counted original PHP source without an opening PHP tag.
 * @param source Borrowed non-NUL source in this module's memory.
 * @param length One through four MiB of original source bytes.
 * @return Zero or an independent error; evaluation never retries an effect.
 */
uint32_t uwvm_php_embed_eval(char const* source, size_t length)
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
 * @brief Call an actual PHP function using an exact signed i32 argument.
 * @param function Borrowed NUL-terminated name, fewer than 256 bytes.
 * @param argument Original signed i32; PHP's wasm32 zend_long is preserved.
 * @return Exact i32 result or zero on failure; inspect last_status every time.
 * @details Wider integers require an explicit exact-word source contract and
 * are not silently rounded through PHP doubles. This scalar profile rejects
 * other result types, exceptions and retirement with distinct status facts.
 */
int32_t uwvm_php_embed_call_i32(char const* function, int32_t argument)
{
    if (library_busy)
    {
        return 0;
    }
    if (function == NULL || *function == 0 || strnlen(function, 256) == 256)
    {
        library_status = 22;
        return 0;
    }
    library_request.function = function;
    library_request.argument = argument;
    library_request.result = 0;
    library_request.operation = 2;
    return library_enter() == 0 ? library_request.result : 0;
}

/** @brief Observe the preceding serialized call's status without changing it. */
uint32_t uwvm_php_embed_last_status(void)
{
    return library_busy ? 16 : library_status;
}

/** @brief Retire once before genuine Zend shutdown; repeat calls return 125. */
uint32_t uwvm_php_embed_retire(void)
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
