/** Genuine upstream topic expansion and final-name checks in private Wasm memory. */
#include <rcl/expand_topic_name.h>
#include <rcl/error_handling.h>
#include <rmw/validate_full_topic_name.h>
#include <rcutils/types/string_map.h>
#include <stdio.h>
#include <string.h>
#if !defined(__wasm__)
#error "Execute this public component as genuine Wasm"
#endif

static int assertion(const char * expression, unsigned line)
{
    fprintf(stderr, "rcl expansion assertion at line %u: %s\n", line, expression);
    return 0;
}
#define REQUIRE(expr) do { if (!(expr)) return assertion(#expr, __LINE__); } while (0)

static int expand_ok(const char * input, const char * node, const char * ns,
                     const char * expected, const rcutils_string_map_t * substitutions,
                     rcl_allocator_t allocator)
{
    char * output = NULL;
    rcl_ret_t ret = rcl_expand_topic_name(input, node, ns, substitutions, allocator, &output);
    int pass = ret == RCL_RET_OK && output != NULL && strcmp(output, expected) == 0;
    if (output != NULL) allocator.deallocate(output, allocator.state);
    REQUIRE(pass);
    return 1;
}

static int official_expand(rcutils_string_map_t * subs, rcl_allocator_t allocator,
                           unsigned * vectors)
{
    const char * values[][4] = {
        {"/chatter", "my_node", "/my_ns", "/chatter"},
        {"chatter", "my_node", "/my_ns", "/my_ns/chatter"},
        {"{node}/chatter", "my_node", "/my_ns", "/my_ns/my_node/chatter"},
        {"/{node}", "my_node", "/my_ns", "/my_node"},
        {"{node}", "my_node", "/my_ns", "/my_ns/my_node"},
        {"{ns}", "my_node", "/my_ns", "/my_ns"},
        {"{namespace}", "my_node", "/my_ns", "/my_ns"},
        {"{namespace}/{node}/chatter", "my_node", "/my_ns", "/my_ns/my_node/chatter"},
        {"/foo/{namespace}", "my_node", "/my_ns", "/foo//my_ns"},
        {"ping", "my_node", "/", "/ping"},
        {"ping", "my_node", "/my_ns", "/my_ns/ping"},
        {"/ping", "my_node", "/", "/ping"},
        {"/ping", "my_node", "/my_ns", "/ping"},
        {"~", "my_node", "/", "/my_node"},
        {"~", "my_node", "/my_ns", "/my_ns/my_node"},
        {"~/ping", "my_node", "/", "/my_node/ping"},
        {"~/ping", "my_node", "/my_ns", "/my_ns/my_node/ping"}
    };
    for (size_t i = 0; i < sizeof(values) / sizeof(values[0]); ++i) {
        REQUIRE(expand_ok(values[i][0], values[i][1], values[i][2],
                          values[i][3], subs, allocator));
        ++*vectors;
    }
    return 1;
}

static int custom_substitution(rcutils_string_map_t * subs, rcl_allocator_t allocator,
                               unsigned * vectors)
{
    REQUIRE(rcutils_string_map_set(subs, "ping", "pong") == RCUTILS_RET_OK);
    REQUIRE(expand_ok("{ping}", "my_node", "/my_ns", "/my_ns/pong", subs, allocator));
    ++*vectors;
    return 1;
}

static int invalid_arguments(rcutils_string_map_t * subs, rcl_allocator_t allocator,
                             unsigned * vectors)
{
    for (unsigned i = 0; i < 5; ++i) {
        char * output = NULL;
        rcl_ret_t ret = rcl_expand_topic_name(
            i == 0 ? NULL : "topic", i == 1 ? NULL : "my_node",
            i == 2 ? NULL : "/my_ns", i == 3 ? NULL : subs,
            allocator, i == 4 ? NULL : &output);
        REQUIRE(ret == RCL_RET_INVALID_ARGUMENT && output == NULL && rcl_error_is_set());
        rcl_reset_error();
        ++*vectors;
    }
    return 1;
}

static int invalid_names(rcutils_string_map_t * subs, rcl_allocator_t allocator,
                         unsigned * vectors)
{
    const char * values[][3] = {
        {"white space", "my_node", "/my_ns"},
        {"topic", "/invalid_node", "/my_ns"},
        {"topic", "my_node", "white space"}
    };
    const rcl_ret_t errors[] = {
        RCL_RET_TOPIC_NAME_INVALID, RCL_RET_NODE_INVALID_NAME,
        RCL_RET_NODE_INVALID_NAMESPACE
    };
    for (size_t i = 0; i < 3; ++i) {
        char * output = NULL;
        rcl_ret_t ret = rcl_expand_topic_name(
            values[i][0], values[i][1], values[i][2], subs, allocator, &output);
        REQUIRE(ret == errors[i] && output == NULL && rcl_error_is_set());
        rcl_reset_error();
        ++*vectors;
    }
    return 1;
}

static int unknown_substitution(rcutils_string_map_t * subs, rcl_allocator_t allocator,
                                unsigned * vectors)
{
    char * output = NULL;
    rcl_ret_t ret = rcl_expand_topic_name(
        "{doesnotexist}", "my_node", "/my_ns", subs, allocator, &output);
    REQUIRE(ret == RCL_RET_UNKNOWN_SUBSTITUTION && output == NULL && rcl_error_is_set());
    rcl_reset_error();
    ++*vectors;
    return 1;
}

static void * fail_allocate(size_t size, void * state)
{
    (void)size; (void)state;
    return NULL;
}
static void * fail_reallocate(void * pointer, size_t size, void * state)
{
    (void)pointer; (void)size; (void)state;
    return NULL;
}
static void * fail_zero_allocate(size_t count, size_t size, void * state)
{
    (void)count; (void)size; (void)state;
    return NULL;
}
static int allocation_failure(rcutils_string_map_t * subs, rcl_allocator_t allocator,
                              unsigned * vectors)
{
    rcl_allocator_t failing = allocator;
    failing.allocate = fail_allocate;
    failing.reallocate = fail_reallocate;
    failing.zero_allocate = fail_zero_allocate;
    const char * values[] = {"/absolute", "relative", "~/private"};
    for (size_t i = 0; i < 3; ++i) {
        char * output = NULL;
        rcl_ret_t ret = rcl_expand_topic_name(
            values[i], "my_node", "/my_ns", subs, failing, &output);
        REQUIRE(ret == RCL_RET_BAD_ALLOC && output == NULL && rcl_error_is_set());
        rcl_reset_error();
        ++*vectors;
    }
    return 1;
}

static int default_substitutions(rcutils_string_map_t * subs, unsigned * vectors)
{
    size_t before = 42, after = 43;
    REQUIRE(rcutils_string_map_get_size(subs, &before) == RCUTILS_RET_OK);
    REQUIRE(rcl_get_default_topic_name_substitutions(subs) == RCL_RET_OK);
    REQUIRE(rcutils_string_map_get_size(subs, &after) == RCUTILS_RET_OK);
    REQUIRE(before == 0 && after == before);
    ++*vectors;
    rcutils_string_map_t uninitialized = rcutils_get_zero_initialized_string_map();
    REQUIRE(rcl_get_default_topic_name_substitutions(&uninitialized) == RCL_RET_OK);
    REQUIRE(uninitialized.impl == NULL);
    ++*vectors;
    REQUIRE(rcl_get_default_topic_name_substitutions(NULL) == RCL_RET_INVALID_ARGUMENT);
    REQUIRE(rcl_error_is_set());
    rcl_reset_error();
    ++*vectors;
    return 1;
}

static int full_name_validation(unsigned * vectors)
{
    const char * names[] = {"/foo//bar", "/my_ns/topic"};
    const int expected[] = {RMW_TOPIC_INVALID_CONTAINS_REPEATED_FORWARD_SLASH,
                            RMW_TOPIC_VALID};
    const size_t expected_index[] = {5, 42};
    for (size_t i = 0; i < 2; ++i) {
        int result = -1;
        size_t index = 42;
        REQUIRE(rmw_validate_full_topic_name(names[i], &result, &index) == RMW_RET_OK);
        REQUIRE(result == expected[i] && index == expected_index[i]);
        result = -1; index = 42;
        REQUIRE(rmw_validate_full_topic_name_with_size(
            names[i], strlen(names[i]), &result, &index) == RMW_RET_OK);
        REQUIRE(result == expected[i] && index == expected_index[i]);
        const char * diagnostic = rmw_full_topic_name_validation_result_string(result);
        REQUIRE(i == 1 ? diagnostic == NULL : diagnostic != NULL);
        ++*vectors;
    }
    return 1;
}

int main(int argc, char ** argv)
{
    if (argc != 2) { (void)assertion("select a named component case", __LINE__); return 1; }
    rcl_allocator_t allocator = rcl_get_default_allocator();
    rcutils_string_map_t substitutions = rcutils_get_zero_initialized_string_map();
    if (rcutils_string_map_init(&substitutions, 0, allocator) != RCUTILS_RET_OK) return 1;
    unsigned vectors = 0;
    int pass = 0;
    if (strcmp(argv[1], "official-expand") == 0)
        pass = official_expand(&substitutions, allocator, &vectors);
    else if (strcmp(argv[1], "custom-substitution") == 0)
        pass = custom_substitution(&substitutions, allocator, &vectors);
    else if (strcmp(argv[1], "invalid-arguments") == 0)
        pass = invalid_arguments(&substitutions, allocator, &vectors);
    else if (strcmp(argv[1], "invalid-names") == 0)
        pass = invalid_names(&substitutions, allocator, &vectors);
    else if (strcmp(argv[1], "unknown-substitution") == 0)
        pass = unknown_substitution(&substitutions, allocator, &vectors);
    else if (strcmp(argv[1], "allocation-failure") == 0)
        pass = allocation_failure(&substitutions, allocator, &vectors);
    else if (strcmp(argv[1], "default-substitutions") == 0)
        pass = default_substitutions(&substitutions, &vectors);
    else if (strcmp(argv[1], "full-name-validation") == 0)
        pass = full_name_validation(&vectors);
    rcl_reset_error();
    if (rcutils_string_map_fini(&substitutions) != RCUTILS_RET_OK) pass = 0;
    if (!pass) return 1;
    printf("{\"case\":\"%s\",\"vectors\":%u}\n", argv[1], vectors);
    return 0;
}
