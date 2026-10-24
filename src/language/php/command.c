/**
 * @file command.c
 * @brief Execute genuine PHP/Zend source with a static namespace-only raw adapter.
 * @details PHP owns application records, canonical codecs, authority and cleanup policy.
 * Full-width handles and lengths cross this adapter as exact eight-byte values.
 */
/* Zend selects libc feature declarations before the shared dispatcher includes
   string.h. Reversing this order hides GNU memrchr/mempcpy declarations. */
#include "php.h"
#include "php_embed.h"
#include "Zend/zend_exceptions.h"
#include "abi.h"
#include "application.h"
#include <stdio.h>
#include <string.h>

/**
 * @brief Original WASI argument bytes borrowed for the command lifetime.
 */
static int command_argc;
static char** command_argv;

/**
 * @brief Marshal one synchronous ABI call using exact little-endian words.
 * @param execute_data Genuine Zend frame: operation, owner, input, capacity,
 * optional other-owner and optional correlation as exact eight-byte strings.
 * @param return_value Owning four-element PHP result array.
 */
PHP_FUNCTION(uwvm_ros_invoke)
{
    zend_string *operation, *owner, *input, *other = NULL, *correlation = NULL;
    zend_long capacity;
    ZEND_PARSE_PARAMETERS_START(4, 6)
    Z_PARAM_STR(operation)
    Z_PARAM_STR(owner)
    Z_PARAM_STR(input)
    Z_PARAM_LONG(capacity)
    Z_PARAM_OPTIONAL
    Z_PARAM_STR(other)
    Z_PARAM_STR(correlation)
    ZEND_PARSE_PARAMETERS_END();
    if (ZSTR_LEN(owner) != 8 || (other && ZSTR_LEN(other) != 8) || (correlation && ZSTR_LEN(correlation) != 8) ||
        capacity < 0 || (uint64_t)capacity > UWVM_ROS_MAX_OUTPUT || ZSTR_LEN(input) > UWVM_ROS_MAX_INPUT ||
        ZSTR_LEN(operation) == 0 || ZSTR_LEN(operation) > 64 || memchr(ZSTR_VAL(operation), 0, ZSTR_LEN(operation)))
    {
        zend_value_error("exact eight-byte words and canonical bounded buffers required");
        RETURN_THROWS();
    }
    uint64_t handle, second = 0, identifier = 0;
    memcpy(&handle, ZSTR_VAL(owner), 8);
    if (other)
        memcpy(&second, ZSTR_VAL(other), 8);
    if (correlation)
        memcpy(&identifier, ZSTR_VAL(correlation), 8);
    zend_string* output = zend_string_alloc((size_t)capacity, 0);
    memset(ZSTR_VAL(output), 0, (size_t)capacity + 1);
    array_init_size(return_value, 4);
    struct uwvm_ros_frame frame = {.handle = handle,
                                   .other = second,
                                   .correlation = identifier,
                                   .input = (unsigned char const*)ZSTR_VAL(input),
                                   .input_size = ZSTR_LEN(input),
                                   .output = (unsigned char*)ZSTR_VAL(output),
                                   .capacity = (uint64_t)capacity};
    uint32_t code = uwvm_ros_dispatch(&frame, ZSTR_VAL(operation));
    ZSTR_LEN(output) = uwvm_ros_data_size(&frame);
    ZSTR_VAL(output)[ZSTR_LEN(output)] = 0;
    if ((uint64_t)code <= (uint64_t)ZEND_LONG_MAX)
    {
        add_next_index_long(return_value, (zend_long)code);
    }
    else
    {
        /* Every u32 is exactly representable as an IEEE double; u64 words below
           remain raw bytes and are never converted through this representation. */
        add_next_index_double(return_value, (double)code);
    }
    add_next_index_str(return_value, output);
    if (uwvm_ros_has_length(&frame))
    {
        add_next_index_stringl(return_value, (char const*)&frame.slot, 8);
    }
    else
    {
        add_next_index_null(return_value);
    }
    if (uwvm_ros_has_value(&frame))
    {
        add_next_index_stringl(return_value, (char const*)&frame.slot, 8);
    }
    else
    {
        add_next_index_null(return_value);
    }
}

/**
 * @brief Poll a single granted monotonic timer.
 * @param execute_data Zend frame.
 * @param return_value Original WASI errno.
 */
PHP_FUNCTION(uwvm_ros_pause)
{
    zend_long duration;
    ZEND_PARSE_PARAMETERS_START(1, 1)
    Z_PARAM_LONG(duration)
    ZEND_PARSE_PARAMETERS_END();
    RETURN_LONG(duration < 0 || duration > 5000 ? 22 : uwvm_pause((uint32_t)duration));
}

/**
 * @brief Copy original WASI arguments into ordinary PHP strings.
 * @param execute_data Zend frame.
 * @param return_value Owning PHP argument array.
 */
PHP_FUNCTION(uwvm_ros_argv)
{
    ZEND_PARSE_PARAMETERS_NONE();
    array_init_size(return_value, command_argc);
    for (int index = 0; index < command_argc; ++index)
    {
        add_next_index_string(return_value, command_argv[index]);
    }
}

/**
 * @brief Write exactly one guest-produced diagnostic line after cleanup.
 * @param execute_data Zend frame.
 * @param return_value Zero or output error 5.
 */
PHP_FUNCTION(uwvm_ros_output)
{
    zend_string* line;
    ZEND_PARSE_PARAMETERS_START(1, 1)
    Z_PARAM_STR(line)
    ZEND_PARSE_PARAMETERS_END();
    int failed = fwrite(ZSTR_VAL(line), 1, ZSTR_LEN(line), stdout) != ZSTR_LEN(line) || fputc('\n', stdout) == EOF ||
                 fflush(stdout) != 0;
    RETURN_LONG(failed ? 5 : 0);
}

/**
 * @brief Declare exact builtin PHP signatures for the raw namespace.
 */
ZEND_BEGIN_ARG_INFO_EX(invoke_arguments, 0, 0, 4)
ZEND_ARG_TYPE_INFO(0, operation, IS_STRING, 0)
ZEND_ARG_TYPE_INFO(0, owner, IS_STRING, 0)
ZEND_ARG_TYPE_INFO(0, input, IS_STRING, 0)
ZEND_ARG_TYPE_INFO(0, capacity, IS_LONG, 0)
ZEND_ARG_TYPE_INFO(0, other, IS_STRING, 0)
ZEND_ARG_TYPE_INFO(0, correlation, IS_STRING, 0)
ZEND_END_ARG_INFO()
ZEND_BEGIN_ARG_INFO_EX(output_arguments, 0, 0, 1)
ZEND_ARG_TYPE_INFO(0, line, IS_STRING, 0)
ZEND_END_ARG_INFO()
ZEND_BEGIN_ARG_INFO_EX(pause_arguments, 0, 0, 1)
ZEND_ARG_TYPE_INFO(0, duration, IS_LONG, 0)
ZEND_END_ARG_INFO()
ZEND_BEGIN_ARG_INFO_EX(argv_arguments, 0, 0, 0)
ZEND_END_ARG_INFO()

/**
 * @brief Bind raw functions only beneath Uwvm\\Native.
 */
// clang-format off
// Preserve the declaration-list layout of PHP's function-entry macros.
static zend_function_entry const functions[] = {
    ZEND_NS_NAMED_FE("Uwvm\\Native", invoke, ZEND_FN(uwvm_ros_invoke), invoke_arguments)
    ZEND_NS_NAMED_FE("Uwvm\\Native", pause_ms, ZEND_FN(uwvm_ros_pause), pause_arguments)
    ZEND_NS_NAMED_FE("Uwvm\\Native", argv, ZEND_FN(uwvm_ros_argv), argv_arguments)
    ZEND_NS_NAMED_FE("Uwvm\\Native", output, ZEND_FN(uwvm_ros_output), output_arguments)
    ZEND_FE_END
};
// clang-format on

/**
 * @brief Start genuine Zend and execute the packed PHP source.
 * @param argc Original WASI count.
 * @param argv Original WASI strings.
 * @return Original PHP execution status, clamped to the admitted range.
 */
static int php_application(int argc, char** argv)
{
    command_argc = argc;
    command_argv = argv;
    php_embed_module.php_ini_ignore = 1;
    if (php_embed_init(argc, argv) == FAILURE)
    {
        return 1;
    }
    int status = 1;
    zend_first_try
    {
        uint32_t length = uwvm_load32(application.length);
        if (length == 0 || length > UWVM_APPLICATION_CAPACITY)
        {
            status = 22;
        }
        else if (zend_register_functions(NULL, functions, NULL, MODULE_TEMPORARY) == SUCCESS)
        {
            if (zend_eval_stringl((char const*)application.source, length, NULL, "uwvm-application") == SUCCESS)
            {
                zval* value = zend_hash_str_find(&EG(symbol_table), "uwvm_exit", sizeof("uwvm_exit") - 1);
                status = value == NULL ? 0 : (int)zval_get_long(value);
            }
        }
    }
    zend_catch
    {
        status = EG(exit_status) == 0 ? 1 : EG(exit_status);
    }
    zend_end_try();
    php_embed_shutdown();
    return status < 0 ? 1 : status > 125 ? 125 : status;
}

/**
 * @brief Maintained Asyncify root entry for the genuine interpreter.
 */
int uwvm_asyncify_start(int (*entry)(int, char**), int argc, char** argv);

/**
 * @brief Enter the actual standalone PHP VM.
 * @param argc WASI count.
 * @param argv WASI strings.
 * @return Guest status.
 */
int main(int argc, char** argv)
{
    return uwvm_asyncify_start(php_application, argc, argv);
}
